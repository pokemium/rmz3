OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)

MEMORY
{
    ewram_region (w!x) : ORIGIN = 0x02000000, LENGTH = 0x40000
    iwram_region (w!x) : ORIGIN = 0x03000000, LENGTH = 0x8000
    rom_region (rx) : ORIGIN = 0x08000000, LENGTH = 0x800000
}

SECTIONS {
    . = 0x8000000;
    .text :
    ALIGN(4)
    {
	    asm/main.o (.text);
	    asm/code_080f0654.o (.text);
	    asm/code_080f3238.o (.text);
	    asm/m4a.o (.text);
	    asm/libagbsyscall.o (.text);
	    asm/agb_sram.o (.text);
	    asm/libgcc.o (.text);
	    asm/libc.o (.text);
	    asm/data.o (.text);
    } =0

    /* Discard everything not specifically mentioned above. */
	/DISCARD/ :
    {
        *(*);
    }
}