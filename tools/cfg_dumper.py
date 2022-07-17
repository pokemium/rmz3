# Dump cfg file for camthesaxman/gbadisasm
# @author   Otomo Akihiro (2022-02-26)
# @category GBA

import os

cur_file_idx = 0  # main.s

file_begins = [
    [0x08000000, "main"],
    [0x080f0654, "code_080f0654"],
    [0x080f3238, "code_080f3238"],
    [0x080FC44C, "m4a"],
    [0x080FE534, "libagbsyscall"],
    [0x080FE550, "agb_sram"],
    [0x080FE6E4, "libgcc"],
    [0x080FE9C0, "libc"],
]

func_modes = {
    True: "thumb_func",
    False: "arm_func",
}


def is_thumb_function(func):
    # https://github.com/NationalSecurityAgency/ghidra/issues/1132#issuecomment-540840481
    r = currentProgram.getRegister("TMode")
    value = currentProgram.programContext.getRegisterValue(r, func.entryPoint)
    return value.unsignedValueIgnoreMask == 1


def dump_gbadisasm_config(start_addr, max=-1):
    # https://github.com/camthesaxman/gbadisasm
    result = "file_begin 0x08000000 main\n"

    i = 0
    f = getFunctionAfter(toAddr(start_addr))
    if f is not None:
        result += dump_row(f)
        i += 1
        while True:
            f = getFunctionAfter(f)
            if f is None:
                break
            result += dump_row(f)
            i += 1
            if max >= 0 and i == max:
                break
    return result


def dump_row(func):
    mode = func_modes[is_thumb_function(func)]
    name = func.getName()
    addr = func.getEntryPoint()
    for elm in file_begins:
        if toAddr(elm[0]) == addr:
            return "file_begin 0x{} {}\n{} 0x{} {}\n".format(toAddr(elm[0]), elm[1], mode, addr, name)
    return "{} 0x{} {}\n".format(mode, addr, name)


result = dump_gbadisasm_config(0x08000000, -1)

cwd = os.getcwd()
dst = cwd + "/rmz3.cfg"
print("Write cfg file into {}".format(dst))
with open(dst, 'w') as f:
    f.write(result)
