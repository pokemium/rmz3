# Dump GBA ewram symbols
# @author   Otomo Akihiro (2022-07-17)
# @category GBA

import os

print_only = True


def get_all_symbols(addr):
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


def toInt(addr):
    return int("0x{}".format(addr), 16)


def main():
    result = ""
    ss = get_all_symbols(toAddr(0x02000000-1))
    for s in ss:
        addr = s.getAddress()
        if toInt(addr) >= 0x03000000:
            break
        result += "0x{}: {}\n".format(addr, get_symbol_name(addr))
    if print_only:
        print(result)
        return
    cwd = os.getcwd()
    dst = cwd + "/sym_ewram.txt"
    print("Write symfile into {}".format(dst))
    with open(dst, 'w') as f:
        f.write(result)


if __name__ == "__main__":
    main()
