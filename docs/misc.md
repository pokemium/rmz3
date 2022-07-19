# Misc

## Mission

If you want to start any mission, hook into 08019e94 and rewrite R0. R0 represents stage id.

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

