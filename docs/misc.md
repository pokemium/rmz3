# Misc

## Disable command-dash

The command-dash is triggered by the function starting with `08033708`.

So, command-dash can be disabled by preventing the execution of this function.

I mean...

```s
# Calling function 08033708 from 080335cc.
# 0x46c0 is nop instruction
080335cc = 0xc0
080335cd = 0x46
080335ce = 0xc0
080335cf = 0x46
```

## Secret Disk

Secret Disk(SD) flag is from `02036e78`. Size is 45 bytes

Each entry has following bitfields.

```
bit0: unlocked   n+0 
bit1: unlocked   n+1 
bit2: unlocked   n+2 
bit3: unlocked   n+3 
bit4: analysised n+0
bit5: analysised n+1
bit6: analysised n+2
bit7: analysised n+3
```

So, 1 byte store 4 SD flags.

## Sunken Library algorithm

Sunken Library's door coords is in `0834cdb8`. Size is 192 bytes (`Coord[24]`).

```
0834cdb8: Door idx00 Coord (s32, s32)
0834cdc0: Door idx01 Coord (s32, s32)
...
0834ce70: Door idx23 Coord (s32, s32)
```

It corresponds to the coordinates of 6x4, 24 doors in total. The mapping between the array indexes and the doors is as follows.

```
08 09 10 11 12 13
14 00 01 02 03 15
16 04 05 06 07 17
18 19 20 21 22 23
```

Door idx is in `0202fff4..0202fff7`.

```
0202fff4: Weil
0202fff5: Omega
0202fff6: Darkelf
0202fff7: Elf War
```

Calculate idx is executed on fuction `0801f7ac`. This function is executed only once, immediately after zero enters the search room.

## Unix-like process scheduling

RockmanZero3 has a process scheduling system like Unix.

Address `03002a68` contains an array of structures representing the process. The size of the structure is 24 bytes and the length of the array is 3. 

```c
struct Process {
    enum ProcessStatus status;
    bool8 doReset;
    u16 sleep;
    u16 * fn;                   // Addr to jump to when the process is scheduled.
    u16 * sp;                   // Saved stack pointer
    u8 field5_0xc[4];           // Unused?
    u8 field6_0x10[8];          // Unused?
};

typedef enum ProcessStatus {
    DISABLE=1,                  // If this flag is set, the process will never be executed.
    OK=2,                       // If DISABLE is cleared, the process is executed by the scheduler if this flag is set.
    SLEEP=4,                    // When this flag is set (and OK is cleared), if proc->sleep is non-zero, no scheduling is done. proc->sleep is decremented every frame.
    DISABLE_08=8                // Unused flag(always 0)
} ProcessStatus;
```

In an array of processes(`03002a68`), the use of each element is already determined.

```
  proc0: SoftResetProcess(0800187c), IntroProcess(080eb8b8)
  proc1: MainProcess (080edfd8)
  proc2: SystemProcess (08001978)
```

They are scheduled by the GameLoop function (Address: `080021f4`). For convenience, the GameLoop function is referred to as the scheduler.

Each process has its own stack, and when the scheduler switches processes, it also switches stacks.

Of course, the GBA is single-core, so the scheduler and processes cannot run in parallel. The process returns the CPU to the scheduler by calling the function present in `08000300`.

