    .include "asm/macros.inc"

# tail -c 7345548 ROM.gba > data.bin
Data: @ 0x080fea74
    .incbin "data/data.bin"
