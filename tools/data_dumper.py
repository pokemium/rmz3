# Dump RockmanZero3 data file for camthesaxman/gbadisasm
# @author   Otomo Akihiro (2022-02-26)
# @category GBA

import os
from ghidra.app.services import DataTypeManagerService

print_only = True


def get_all_symbols(addr=0):
    s = getSymbolAfter(addr)
    while s is not None:
        yield s
        s = getSymbolAfter(s)


def get_symbol_name(addr):
    name = "DAT_{}".format(addr)
    sym = getSymbolAt(addr)
    if sym is None:
        return name
    return sym.getName(False)


def listup_data(start_addr, max=-1):
    blocks = []

    i = 0
    addr = toAddr(start_addr)

    ss = get_all_symbols(addr)
    for s in ss:
        i += 1
        if max > 0 and i > max:
            break
        addr = s.getAddress()
        name = get_symbol_name(addr)
        if name != "":
            blocks.append({
                "name": name,
                "addr": int(addr.toString(), 16),
            })

    return blocks


def i8_to_u8(i8):
    if i8 < 0:
        return 256+i8
    return i8


def dump_block(b, size):
    result = "{}:: @ 0x{:08X}\n".format(b["name"], b["addr"])
    result += " .byte "
    for a in range(b["addr"], b["addr"]+size):
        i8 = getByte(toAddr(a))
        u8 = i8_to_u8(i8)
        result += "0x{:02x}, ".format(u8)
    result = result.rstrip(", ")
    result += "\n"
    return result


def dump(blocks):
    result = ""
    for i, b in enumerate(blocks):
        if i < len(blocks)-1:
            size = blocks[i+1]["addr"]-b["addr"]
        else:
            size = 0x08800000-b["addr"]
        print("Block {}/{}: Size is {}bytes in 0x{:02x}".format(i +
              1, len(blocks), size, b["addr"]))
        if size > 100000:
            print("Size is too large, so skip this.")
            continue
        result += dump_block(b, size)

    return result


data_begin = 0x080fea74
count = 2
blocks = listup_data(data_begin-1, count)

result = dump(blocks)
print(result)

if (not print_only) and (result != ""):
    cwd = os.getcwd()
    dst = cwd + "/rmz3_data.s"
    print("Write data file into {}".format(dst))
    with open(dst, 'w') as f:
        f.write(result)
