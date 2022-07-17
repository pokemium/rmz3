AS = tools/binutils/bin/arm-none-eabi-as
LD = tools/binutils/bin/arm-none-eabi-ld
OBJCOPY = tools/binutils/bin/arm-none-eabi-objcopy
OBJDUMP := tools/binutils/bin/arm-none-eabi-objdump

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

ASFILE := $(wildcard asm/*.s)
CFILE := $(wildcard src/*.c)
ASOBJFILE := $(ASFILE:.s=.o)
COBJFILE := $(CFILE:.c=.o)

NAME := rmz3
ROM := $(NAME).gba

ELF := $(NAME).elf

ARCH = -mcpu=arm7tdmi -march=armv4t -mthumb -mthumb-interwork
ASFLAGS := $(ARCH) -g --agbasm-colonless-labels --agbasm-colon-defined-global-labels --agbasm-local-labels --agbasm-multiline-macros \
	--agbasm-charmap --agbasm-no-gba-thumb-after-label-disasm-fix

CC1             := tools/agbcc/bin/old_agbcc$(EXE)
override CFLAGS += -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm

CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc

SHA1SUM := sha1sum -c

.PHONY: all compare clean

all: $(ROM) clean compare

compare: $(ROM)
	$(SHA1SUM) $(NAME).sha1

clean:
	rm -f $(ELF) $(ASOBJFILE) $(COBJFILE)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@

$(ELF): %.elf: $(ASOBJFILE) $(COBJFILE) ld_script.ld
	$(LD) -T ld_script.ld -Map $*.map -o $@ $(ASOBJFILE) $(COBJFILE) -L tools/agbcc/lib -lgcc -lc

$(COBJFILE): %.o: %.c
	$(CPP) $(CPPFLAGS) $< | $(CC1) $(CFLAGS) | $(AS) $(ASFLAGS) -o $@ 

$(ASOBJFILE): %.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<