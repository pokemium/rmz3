	.include "asm/macros.inc"

	.syntax unified
	
	.text
	
	thumb_func_start optionHandleScript
optionHandleScript: @ 0x080F3238
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080F32C0 @ =0x02001EB0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F3258
	movs r0, #1
	bl playSound
	ldrh r0, [r4, #0xa]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strh r0, [r4, #0xa]
_080F3258:
	ldrh r1, [r5, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F3272
	movs r0, #1
	bl playSound
	ldrh r0, [r4, #0xa]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strh r0, [r4, #0xa]
_080F3272:
	ldr r0, _080F32C4 @ =0x08372210
	ldrh r1, [r0]
	ldr r0, _080F32C8 @ =0x08372AA0
	adds r5, r1, r0
	movs r2, #0
	ldr r0, _080F32CC @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	cmp r1, #0
	bne _080F328C
	ldrb r0, [r3, #4]
	cmp r0, #1
	bne _080F328E
_080F328C:
	movs r2, #1
_080F328E:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	lsls r2, r2, #1
	adds r2, #2
	ldrb r3, [r3, #5]
	adds r2, r2, r3
	adds r0, r5, #0
	bl print
	ldr r0, _080F32C0 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F32D0
	movs r0, #3
	bl playSound
	movs r0, #2
	rsbs r0, r0, #0
	b _080F32F2
	.align 2, 0
_080F32C0: .4byte 0x02001EB0
_080F32C4: .4byte 0x08372210
_080F32C8: .4byte 0x08372AA0
_080F32CC: .4byte 0x020308D8
_080F32D0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F32F0
	movs r0, #2
	bl playSound
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080F32EA
	movs r0, #1
	b _080F32F2
_080F32EA:
	movs r0, #1
	rsbs r0, r0, #0
	b _080F32F2
_080F32F0:
	movs r0, #0
_080F32F2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start FUN_080f32f8
FUN_080f32f8: @ 0x080F32F8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080F3388 @ =0x02001EB0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F331C
	movs r0, #1
	bl playSound
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strh r0, [r4, #0xa]
_080F331C:
	ldrh r1, [r5, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F333A
	movs r0, #1
	bl playSound
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	adds r0, #2
	movs r1, #3
	bl __modsi3
	strh r0, [r4, #0xa]
_080F333A:
	ldr r0, _080F338C @ =0x08372210
	ldrh r1, [r0]
	ldr r0, _080F3390 @ =0x08372AA0
	adds r5, r1, r0
	movs r2, #0
	ldr r0, _080F3394 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	cmp r1, #0
	bne _080F3354
	ldrb r0, [r3, #4]
	cmp r0, #1
	bne _080F3356
_080F3354:
	movs r2, #1
_080F3356:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	lsls r2, r2, #1
	ldrb r3, [r3, #5]
	adds r2, r2, r3
	adds r0, r5, #0
	bl print
	ldr r0, _080F3388 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F3398
	movs r0, #3
	bl playSound
	movs r0, #2
	rsbs r0, r0, #0
	b _080F33B2
	.align 2, 0
_080F3388: .4byte 0x02001EB0
_080F338C: .4byte 0x08372210
_080F3390: .4byte 0x08372AA0
_080F3394: .4byte 0x020308D8
_080F3398:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F33A4
	movs r0, #0
	b _080F33B2
_080F33A4:
	movs r0, #2
	bl playSound
	ldrh r0, [r4, #0xa]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080F33B2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start printSaveDataRow
printSaveDataRow: @ 0x080F33B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r2
	ldr r2, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r2, #0
	ldr r0, _080F357C @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r3, r0, #0
	cmp r1, #0
	bne _080F33F6
	ldrb r0, [r3, #4]
	cmp r0, #1
	bne _080F33F8
_080F33F6:
	movs r2, #1
_080F33F8:
	lsls r1, r2, #3
	subs r1, r1, r2
	movs r0, #9
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r3, #5]
	adds r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r7, _080F3580 @ =0x08372210
	adds r0, r6, #0
	adds r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	ldr r6, _080F3584 @ =0x08372AA0
	adds r0, r0, r6
	adds r1, r5, #0
	adds r2, r4, #0
	bl print
	mov r0, sl
	adds r0, #0x28
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #2
	adds r2, r4, #0
	bl print
	ldr r1, _080F3588 @ =0x0020F580
	mov r0, r8
	bl __udivsi3
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #7
	adds r2, r4, #0
	bl print
	ldr r1, _080F358C @ =0x00034BC0
	mov r0, r8
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #8
	adds r2, r4, #0
	bl print
	ldrh r0, [r7, #0xe]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #9
	adds r2, r4, #0
	bl print
	ldr r1, _080F3590 @ =0x00008CA0
	mov r0, r8
	bl __udivsi3
	movs r1, #6
	bl __umodsi3
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0xa
	adds r2, r4, #0
	bl print
	movs r1, #0xe1
	lsls r1, r1, #4
	mov r0, r8
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0xb
	adds r2, r4, #0
	bl print
	ldrh r0, [r7, #0x10]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0xc
	adds r2, r4, #0
	bl print
	movs r1, #0x96
	lsls r1, r1, #2
	mov r0, r8
	bl __udivsi3
	movs r1, #6
	bl __umodsi3
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0xd
	adds r2, r4, #0
	bl print
	mov r0, r8
	movs r1, #0x3c
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0xe
	adds r2, r4, #0
	bl print
	mov r0, sb
	cmp r0, #0
	beq _080F3560
	cmp r0, #9
	bls _080F3542
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x3c
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0x10
	adds r2, r4, #0
	bl print
_080F3542:
	mov r0, sb
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x3c
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r5, #0
	adds r1, #0x11
	adds r2, r4, #0
	bl print
_080F3560:
	ldr r0, [sp]
	cmp r0, #1
	bne _080F3594
	ldr r0, _080F3580 @ =0x08372210
	ldrh r0, [r0, #6]
	ldr r1, _080F3584 @ =0x08372AA0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x12
	adds r2, r4, #0
	bl print
	b _080F35AC
	.align 2, 0
_080F357C: .4byte 0x020308D8
_080F3580: .4byte 0x08372210
_080F3584: .4byte 0x08372AA0
_080F3588: .4byte 0x0020F580
_080F358C: .4byte 0x00034BC0
_080F3590: .4byte 0x00008CA0
_080F3594:
	ldr r0, [sp]
	cmp r0, #2
	bne _080F35AC
	ldr r0, _080F35BC @ =0x08372210
	ldrh r0, [r0, #8]
	ldr r1, _080F35C0 @ =0x08372AA0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x12
	adds r2, r4, #0
	bl print
_080F35AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F35BC: .4byte 0x08372210
_080F35C0: .4byte 0x08372AA0

	thumb_func_start menuScript
menuScript: @ 0x080F35C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080F35E4 @ =0x083862B4
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl bxR1
	adds r0, r4, #0
	bl menu_080f39a8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F35E4: .4byte 0x083862B4

	thumb_func_start initMenu
initMenu: @ 0x080F35E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, _080F3690 @ =0x000064AC
	adds r0, r4, r1
	ldr r3, [r0]
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r6, [r4, #4]
	adds r2, r3, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0xc]
	ldr r5, _080F3694 @ =0x00000E12
	adds r0, r4, r5
	strb r1, [r0]
	ldrb r1, [r2, #0xd]
	adds r5, #1
	adds r0, r4, r5
	strb r1, [r0]
	ldrb r1, [r2, #0xe]
	adds r5, #3
	adds r0, r4, r5
	strb r1, [r0]
	adds r3, #0xd9
	ldrb r1, [r3]
	ldr r3, _080F3698 @ =0x00000E1E
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r1, [r2]
	subs r5, #2
	adds r0, r4, r5
	strb r1, [r0]
	ldrb r1, [r2, #1]
	ldr r2, _080F369C @ =0x00000E15
	adds r0, r4, r2
	strb r1, [r0]
	subs r3, #2
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080F36A0 @ =0x00000E18
	adds r5, r4, r0
	mov r1, r8
	strb r1, [r5]
	adds r0, r4, #0
	bl menu_080f394c
	ldr r2, _080F36A4 @ =0x02002140
	ldrh r1, [r2]
	ldr r0, _080F36A8 @ =0x0000FFF8
	ands r0, r1
	ldr r1, _080F36AC @ =0x0000F0FF
	ands r0, r1
	movs r3, #0x98
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080F36B0 @ =0x00004206
	adds r0, r1, #0
	strh r0, [r2, #6]
	str r6, [r2, #0x10]
	ldr r1, _080F36B4 @ =0x083862A4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl bxR1
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl openMenu
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F3690: .4byte 0x000064AC
_080F3694: .4byte 0x00000E12
_080F3698: .4byte 0x00000E1E
_080F369C: .4byte 0x00000E15
_080F36A0: .4byte 0x00000E18
_080F36A4: .4byte 0x02002140
_080F36A8: .4byte 0x0000FFF8
_080F36AC: .4byte 0x0000F0FF
_080F36B0: .4byte 0x00004206
_080F36B4: .4byte 0x083862A4

	thumb_func_start openMenu
openMenu: @ 0x080F36B8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	adds r1, r0, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080F36FC
	ldr r1, _080F36F0 @ =0x03002AC0
	ldr r2, _080F36F4 @ =0x00000402
	adds r0, r1, r2
	movs r2, #0x20
	strb r2, [r0]
	ldr r3, _080F36F8 @ =0x00000401
	adds r0, r1, r3
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	strb r2, [r1]
	movs r0, #2
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl menuFrameScript
	b _080F3716
	.align 2, 0
_080F36F0: .4byte 0x03002AC0
_080F36F4: .4byte 0x00000402
_080F36F8: .4byte 0x00000401
_080F36FC:
	ldr r2, _080F3724 @ =0x03002AC0
	ldr r3, _080F3728 @ =0x00000402
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0xff
	ands r0, r1
	subs r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	strb r0, [r2]
_080F3716:
	adds r0, r4, #0
	bl menu_080f39a8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F3724: .4byte 0x03002AC0
_080F3728: .4byte 0x00000402

	thumb_func_start menuFrameScript
menuFrameScript: @ 0x080F372C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080F376C @ =0x00000E1D
	adds r4, r5, r0
	movs r0, #0
	strb r0, [r4]
	ldr r1, _080F3770 @ =0x083862A4
	ldr r2, _080F3774 @ =0x00000E18
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl bxR1
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F3764
	ldr r0, _080F3778 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F3764
	movs r0, #3
	strb r0, [r5, #1]
	strb r0, [r5, #2]
_080F3764:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F376C: .4byte 0x00000E1D
_080F3770: .4byte 0x083862A4
_080F3774: .4byte 0x00000E18
_080F3778: .4byte 0x02001EB0

	thumb_func_start blackoutMenu
blackoutMenu: @ 0x080F377C
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	subs r0, #1
	movs r3, #0
	adds r1, r0, #0
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F37BC
	ldr r0, _080F37B4 @ =0x03002AC0
	ldr r4, _080F37B8 @ =0x00000402
	adds r1, r0, r4
	strb r3, [r1]
	subs r4, #1
	adds r1, r0, r4
	strb r3, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	strb r3, [r0]
	movs r0, #4
	strb r0, [r2, #1]
	adds r0, r2, #0
	bl closeMenu
	b _080F37D6
	.align 2, 0
_080F37B4: .4byte 0x03002AC0
_080F37B8: .4byte 0x00000402
_080F37BC:
	ldr r2, _080F37DC @ =0x03002AC0
	ldr r3, _080F37E0 @ =0x00000402
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0xff
	ands r0, r1
	ldr r4, _080F37E4 @ =0x00000401
	adds r1, r2, r4
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	strb r0, [r2]
_080F37D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F37DC: .4byte 0x03002AC0
_080F37E0: .4byte 0x00000402
_080F37E4: .4byte 0x00000401

	thumb_func_start closeMenu
closeMenu: @ 0x080F37E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r1, _080F3864 @ =0x000064AC
	adds r0, r6, r1
	ldr r7, [r0]
	adds r0, r6, #0
	bl menu_080f39fc
	adds r0, r6, #0
	bl menu_080f3ab0
	ldr r2, _080F3868 @ =0x00000E1E
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _080F3822
	adds r0, r7, #0
	adds r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #2
	bne _080F3822
	adds r1, r7, #0
	adds r1, #0xda
	movs r0, #0
	strb r0, [r1]
_080F3822:
	ldr r3, _080F386C @ =0x00000E16
	adds r0, r6, r3
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r0, [r0]
	adds r4, r1, #0
	ldrb r1, [r4, #0xe]
	cmp r0, r1
	beq _080F383A
	ldrb r0, [r4, #0xe]
	bl setWramElement
_080F383A:
	movs r5, #0
	ldr r2, _080F3870 @ =0x00000E1C
	adds r2, r2, r6
	mov r8, r2
	movs r3, #0xa4
	adds r3, r3, r7
	mov sb, r3
	ldr r0, _080F3874 @ =0x00000E18
	adds r0, r0, r6
	mov sl, r0
_080F384E:
	cmp r5, #0
	bne _080F387C
	ldr r1, _080F3878 @ =0x00000E14
	adds r0, r6, r1
	ldrb r0, [r0]
	ldrb r2, [r4]
	cmp r0, r2
	beq _080F3892
	ldrb r1, [r4]
	b _080F388A
	.align 2, 0
_080F3864: .4byte 0x000064AC
_080F3868: .4byte 0x00000E1E
_080F386C: .4byte 0x00000E16
_080F3870: .4byte 0x00000E1C
_080F3874: .4byte 0x00000E18
_080F3878: .4byte 0x00000E14
_080F387C:
	ldr r3, _080F392C @ =0x00000E15
	adds r0, r6, r3
	ldrb r0, [r0]
	ldrb r1, [r4, #1]
	cmp r0, r1
	beq _080F3892
	ldrb r1, [r4, #1]
_080F388A:
	adds r0, r7, #0
	adds r2, r5, #0
	bl elfHovering
_080F3892:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080F384E
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _080F38D2
	ldr r4, _080F3930 @ =0x083862C8
	ldr r1, _080F3934 @ =0x08371B44
	adds r2, r0, #0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r3, [r0, #1]
	lsls r3, r3, #2
	adds r3, r3, r4
	ldrb r1, [r0, #2]
	ldr r0, _080F3938 @ =0x020302FC
	ldr r0, [r0]
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1f
	ldr r4, [r3]
	adds r0, r7, #0
	movs r3, #0
	bl bxR4
	ldr r1, _080F393C @ =0x0202F350
	movs r0, #1
	strb r0, [r1]
_080F38D2:
	adds r0, r7, #0
	bl getMaxZeroHP
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r3, sb
	movs r2, #0
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bge _080F38F4
	adds r0, r7, #0
	bl getMaxZeroHP
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r3, sb
	strh r0, [r3]
_080F38F4:
	ldr r1, _080F3940 @ =0x083862A4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl bxR1
	ldr r0, _080F3944 @ =FUN_080f3d44
	bl FUN_08036d34
	ldr r0, _080F3948 @ =FUN_080f3d64
	bl FUN_080e1540
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r6, #0
	bl FUN_080ee000
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F392C: .4byte 0x00000E15
_080F3930: .4byte 0x083862C8
_080F3934: .4byte 0x08371B44
_080F3938: .4byte 0x020302FC
_080F393C: .4byte 0x0202F350
_080F3940: .4byte 0x083862A4
_080F3944: .4byte FUN_080f3d44
_080F3948: .4byte FUN_080f3d64

	thumb_func_start menu_080f394c
menu_080f394c: @ 0x080F394C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080F3994 @ =0x00000DC4
	adds r1, r5, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #4]
	ldr r0, _080F3998 @ =0x00000DB8
	adds r6, r5, r0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0800469c
	ldr r0, _080F399C @ =0x00000BAC
	adds r4, r5, r0
	adds r0, r4, #0
	bl FUN_08004e14
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_08004e4c
	ldr r0, _080F39A0 @ =0x00000978
	adds r5, r5, r0
	ldr r1, _080F39A4 @ =0x0203BB50
	adds r0, r5, #0
	movs r2, #0x40
	bl FUN_080e5e44
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F3994: .4byte 0x00000DC4
_080F3998: .4byte 0x00000DB8
_080F399C: .4byte 0x00000BAC
_080F39A0: .4byte 0x00000978
_080F39A4: .4byte 0x0203BB50

	thumb_func_start menu_080f39a8
menu_080f39a8: @ 0x080F39A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080F39E8 @ =0x00000DC4
	adds r2, r5, r0
	ldr r0, _080F39EC @ =0x02002150
	ldrh r1, [r0]
	ldr r0, _080F39F0 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _080F39F4 @ =0x00000BAC
	adds r5, r5, r0
	adds r0, r5, #0
	bl FUN_08004f00
	ldr r4, _080F39F8 @ =0x02030300
	ldr r0, [r4]
	bl runStateFn
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_08016fa4
	adds r0, r5, #0
	bl FUN_08004eb0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F39E8: .4byte 0x00000DC4
_080F39EC: .4byte 0x02002150
_080F39F0: .4byte 0x000001FF
_080F39F4: .4byte 0x00000BAC
_080F39F8: .4byte 0x02030300

	thumb_func_start menu_080f39fc
menu_080f39fc: @ 0x080F39FC
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r2, _080F3A2C @ =0x000064AC
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r3, _080F3A30 @ =0x00000E12
	adds r0, r1, r3
	adds r6, r2, #0
	adds r6, #0xb4
	ldrb r7, [r6, #0xc]
	ldrb r0, [r0]
	mov ip, r0
	adds r4, r7, #0
	cmp ip, r4
	bne _080F3A3A
	adds r1, r2, #0
	adds r1, #0xe4
	ldrb r0, [r1]
	cmp r0, r4
	bne _080F3A34
	ldrb r1, [r6, #0xd]
	adds r0, r2, #0
	adds r0, #0xe5
	b _080F3AA6
	.align 2, 0
_080F3A2C: .4byte 0x000064AC
_080F3A30: .4byte 0x00000E12
_080F3A34:
	ldrb r0, [r6, #0xd]
	strb r0, [r1]
	b _080F3AA8
_080F3A3A:
	ldr r3, _080F3A5C @ =0x00000E13
	adds r0, r1, r3
	ldrb r5, [r6, #0xd]
	ldrb r3, [r0]
	adds r1, r5, #0
	cmp r3, r1
	bne _080F3A64
	adds r1, r2, #0
	adds r1, #0xe5
	ldrb r0, [r1]
	cmp r0, r3
	bne _080F3A60
	adds r0, r2, #0
	adds r0, #0xe4
	strb r7, [r0]
	b _080F3AA8
	.align 2, 0
_080F3A5C: .4byte 0x00000E13
_080F3A60:
	strb r7, [r1]
	b _080F3AA8
_080F3A64:
	cmp ip, r1
	bne _080F3A82
	cmp r3, r4
	beq _080F3AA8
	adds r3, r2, #0
	adds r3, #0xe4
	ldrb r0, [r3]
	cmp r0, r1
	bne _080F3A7E
	adds r0, r2, #0
	adds r0, #0xe5
	strb r7, [r0]
	b _080F3AA8
_080F3A7E:
	strb r7, [r3]
	b _080F3AA8
_080F3A82:
	cmp r3, r4
	bne _080F3A9C
	adds r1, r2, #0
	adds r1, #0xe4
	ldrb r0, [r1]
	cmp r0, r3
	bne _080F3A98
	adds r0, r2, #0
	adds r0, #0xe5
	strb r5, [r0]
	b _080F3AA8
_080F3A98:
	strb r5, [r1]
	b _080F3AA8
_080F3A9C:
	adds r0, r2, #0
	adds r0, #0xe4
	strb r7, [r0]
	ldrb r1, [r6, #0xd]
	adds r0, #1
_080F3AA6:
	strb r1, [r0]
_080F3AA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start menu_080f3ab0
menu_080f3ab0: @ 0x080F3AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _080F3B40 @ =0x000064AC
	add r0, r8
	ldr r4, [r0]
	adds r5, r4, #0
	adds r5, #0xb4
	movs r0, #0x92
	lsls r0, r0, #1
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r1, r1, #0x1f
	str r1, [sp]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	mov sb, r0
	adds r6, r4, #0
	adds r6, #0xdc
	ldrb r1, [r6]
	str r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xdd
	ldrb r0, [r0]
	mov sl, r0
	ldr r7, _080F3B44 @ =0x00000E12
	add r7, r8
	ldrb r0, [r7]
	ldrb r2, [r5, #0xc]
	cmp r0, r2
	beq _080F3B5E
	ldrb r1, [r5, #0xd]
	cmp r0, r1
	beq _080F3B1C
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r2, r2, r4
	mov ip, r2
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r2]
	ldr r2, _080F3B48 @ =0x083862FC
	ldrb r0, [r7]
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
_080F3B1C:
	ldr r0, _080F3B4C @ =0x00000E13
	add r0, r8
	ldrb r0, [r0]
	ldrb r5, [r5, #0xc]
	cmp r0, r5
	bne _080F3B50
	mov r1, sb
	lsls r2, r1, #4
	ldrb r1, [r3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	mov r2, sl
	strb r2, [r6]
	b _080F3B5E
	.align 2, 0
_080F3B40: .4byte 0x000064AC
_080F3B44: .4byte 0x00000E12
_080F3B48: .4byte 0x083862FC
_080F3B4C: .4byte 0x00000E13
_080F3B50:
	ldrb r0, [r3]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r3]
	movs r0, #0
	strb r0, [r6]
_080F3B5E:
	ldr r5, _080F3BC4 @ =0x00000E13
	add r5, r8
	adds r3, r4, #0
	adds r3, #0xb4
	ldrb r0, [r5]
	ldrb r1, [r3, #0xd]
	cmp r0, r1
	beq _080F3BE8
	ldrb r2, [r3, #0xc]
	cmp r0, r2
	beq _080F3B94
	movs r0, #0x9b
	lsls r0, r0, #1
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	movs r1, #0x80
	orrs r1, r0
	mov r2, ip
	strb r1, [r2]
	ldr r2, _080F3BC8 @ =0x083862FC
	ldrb r0, [r5]
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
_080F3B94:
	ldr r0, _080F3BCC @ =0x00000E12
	add r0, r8
	ldrb r0, [r0]
	ldrb r3, [r3, #0xd]
	cmp r0, r3
	bne _080F3BD0
	movs r1, #0x92
	lsls r1, r1, #1
	adds r2, r4, r1
	ldr r0, [sp]
	lsls r3, r0, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xdd
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	b _080F3BE8
	.align 2, 0
_080F3BC4: .4byte 0x00000E13
_080F3BC8: .4byte 0x083862FC
_080F3BCC: .4byte 0x00000E12
_080F3BD0:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0xdd
	movs r0, #0
	strb r0, [r1]
_080F3BE8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start slideMenu
slideMenu: @ 0x080F3BF8
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080F3C14 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080F3C18
	movs r0, #3
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	b _080F3C7C
	.align 2, 0
_080F3C14: .4byte 0x02001EB0
_080F3C18:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080F3C44
	ldr r1, _080F3C3C @ =0x00000E18
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #3
	movs r1, #3
	ands r0, r1
	ldr r4, _080F3C40 @ =0x00000E19
	adds r1, r3, r4
	strb r0, [r1]
	strb r2, [r3, #2]
	b _080F3C66
	.align 2, 0
_080F3C3C: .4byte 0x00000E18
_080F3C40: .4byte 0x00000E19
_080F3C44:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F3C52
	movs r0, #0
	b _080F3C7E
_080F3C52:
	ldr r1, _080F3C84 @ =0x00000E18
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	ldr r2, _080F3C88 @ =0x00000E19
	adds r1, r3, r2
	strb r0, [r1]
	strb r4, [r3, #2]
_080F3C66:
	ldr r2, _080F3C8C @ =0x083862A4
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r3, #0
	bl bxR1
	movs r0, #0x33
	bl playSound
_080F3C7C:
	movs r0, #1
_080F3C7E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080F3C84: .4byte 0x00000E18
_080F3C88: .4byte 0x00000E19
_080F3C8C: .4byte 0x083862A4

	thumb_func_start loadBgMap
loadBgMap: @ 0x080F3C90
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldrb r6, [r4, #4]
	ldrb r7, [r4, #6]
	adds r4, #8
	lsrs r3, r3, #0x12
	add r3, ip
	lsrs r2, r2, #0x17
	adds r3, r3, r2
	mov ip, r3
	movs r1, #0
	cmp r1, r7
	bhs _080F3CDA
_080F3CB0:
	lsls r0, r1, #6
	mov r2, ip
	adds r3, r2, r0
	movs r2, #0
	adds r5, r1, #1
	cmp r2, r6
	bhs _080F3CD2
_080F3CBE:
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r6
	blo _080F3CBE
_080F3CD2:
	lsls r0, r5, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r7
	blo _080F3CB0
_080F3CDA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start printNumber
printNumber: @ 0x080F3CE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r5, #0
	ldr r0, _080F3D30 @ =0x08372210
	mov r8, r0
_080F3CF8:
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #0x3c
	add r0, r8
	ldrh r0, [r0]
	ldr r1, _080F3D34 @ =0x08372AA0
	adds r0, r0, r1
	subs r1, r7, r5
	adds r2, r6, #0
	bl print
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080F3D38
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _080F3CF8
	.align 2, 0
_080F3D30: .4byte 0x08372210
_080F3D34: .4byte 0x08372AA0
_080F3D38:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080f3d44
FUN_080f3d44: @ 0x080F3D44
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F3D60 @ =0x08386300
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _080F3D5C
	adds r0, r2, #0
	bl bxR1
_080F3D5C:
	pop {r0}
	bx r0
	.align 2, 0
_080F3D60: .4byte 0x08386300

	thumb_func_start FUN_080f3d64
FUN_080f3d64: @ 0x080F3D64
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F3D80 @ =0x08386344
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _080F3D7C
	adds r0, r2, #0
	bl bxR1
_080F3D7C:
	pop {r0}
	bx r0
	.align 2, 0
_080F3D80: .4byte 0x08386344

	thumb_func_start mainMenuScript
mainMenuScript: @ 0x080F3D84
	push {lr}
	ldr r2, _080F3D98 @ =0x08386410
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080F3D98: .4byte 0x08386410

	thumb_func_start initMainMenu
initMainMenu: @ 0x080F3D9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, _080F4084 @ =0x000064AC
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp]
	bl getMaxZeroHP
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, [sp]
	adds r4, #0xa4
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080F3DD2
	ldr r0, [sp]
	bl getMaxZeroHP
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4]
_080F3DD2:
	ldr r3, _080F4088 @ =0x00000DCC
	adds r2, r7, r3
	movs r3, #0
	strb r3, [r2]
	strb r3, [r2, #2]
	movs r0, #0xff
	strb r0, [r2, #3]
	strb r3, [r2, #4]
	strb r3, [r2, #5]
	strb r3, [r2, #0xe]
	ldr r0, [sp]
	adds r0, #0xb4
	ldrb r1, [r0, #0x10]
	strb r1, [r2, #0x10]
	ldrb r1, [r0, #0x1a]
	str r0, [sp, #4]
	cmp r1, #2
	bne _080F3DFA
	movs r0, #7
	strb r0, [r2, #0x10]
_080F3DFA:
	ldr r4, [sp, #4]
	ldrb r0, [r4, #0x1a]
	cmp r0, #1
	bne _080F3E06
	movs r0, #6
	strb r0, [r2, #0x10]
_080F3E06:
	strb r3, [r2, #0x11]
	ldr r0, _080F408C @ =0x08547410
	ldr r5, _080F4090 @ =0x02002146
	ldrh r2, [r5]
	movs r4, #0xc
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F4094 @ =0x0854741C
	movs r1, #0
	bl transferPalette
	ldr r0, _080F4098 @ =0x085475DC
	ldrh r1, [r5]
	ands r4, r1
	lsls r4, r4, #0xc
	adds r1, r4, #0
	bl loadGraphics
	ldr r0, _080F409C @ =0x085475E8
	movs r1, #0
	bl transferPalette
	ldr r0, _080F40A0 @ =0x085222F0
	ldr r0, [r0]
	ldr r5, _080F40A4 @ =0x085222F8
	adds r0, r0, r5
	ldr r1, _080F40A8 @ =0x00000ED8
	adds r4, r7, r1
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuFastSet
	mov r8, r4
	ldr r0, _080F40AC @ =0x0202FE20
	ldr r3, [r0]
	ldrb r6, [r3]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r0, r2
	mov r5, r8
	strh r0, [r5, #0x18]
	movs r0, #0xf3
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r4, #0xb4
	lsls r4, r4, #1
	adds r0, r6, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r1, [r3, #1]
	movs r0, #6
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r5, #0xf7
	lsls r5, r5, #4
	adds r1, r7, r5
	subs r4, #0x28
	adds r0, r6, r4
	orrs r0, r2
	strh r0, [r1]
	adds r5, #0x40
	adds r1, r7, r5
	adds r4, #0x20
	adds r0, r6, r4
	orrs r0, r2
	strh r0, [r1]
	ldr r5, [r3, #0xc]
	ldr r1, _080F40B0 @ =0x0020F580
	adds r0, r5, #0
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080F40B4 @ =0x00000F76
	adds r1, r7, r0
	movs r2, #0xba
	lsls r2, r2, #1
	mov sl, r2
	mov r3, sl
	adds r0, r6, r3
	movs r4, #0xc0
	lsls r4, r4, #7
	mov sb, r4
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _080F40B8 @ =0x00034BC0
	adds r0, r5, #0
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, _080F40BC @ =0x00000F78
	adds r1, r7, r3
	mov r4, sl
	adds r0, r6, r4
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	movs r1, #0xe1
	lsls r1, r1, #4
	adds r0, r5, #0
	bl __udivsi3
	movs r1, #0x3c
	bl __umodsi3
	adds r4, r0, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, _080F40C0 @ =0x00000F7C
	adds r1, r7, r3
	mov r2, sl
	adds r0, r6, r2
	mov r3, sb
	orrs r0, r3
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080F40C4 @ =0x00000F7E
	adds r1, r7, r4
	mov r2, sl
	adds r0, r6, r2
	mov r3, sb
	orrs r0, r3
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x3c
	bl __udivsi3
	movs r1, #0x3c
	bl __umodsi3
	adds r4, r0, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _080F40C8 @ =0x00000F82
	adds r1, r7, r5
	mov r2, sl
	adds r0, r6, r2
	mov r3, sb
	orrs r0, r3
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080F40CC @ =0x00000F84
	adds r1, r7, r4
	mov r5, sl
	adds r0, r6, r5
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r3, [sp, #4]
	ldrh r1, [r3, #6]
	ldr r0, _080F40D0 @ =0x000003E7
	cmp r1, r0
	bls _080F3F98
	adds r0, r1, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #6
	adds r1, r7, r4
	adds r0, r6, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r1]
_080F3F98:
	ldr r1, [sp, #4]
	ldrh r0, [r1, #6]
	cmp r0, #0x63
	bls _080F3FC2
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, _080F40D4 @ =0x00000F8C
	adds r1, r7, r2
	mov r3, sl
	adds r0, r6, r3
	mov r4, sb
	orrs r0, r4
	strh r0, [r1]
_080F3FC2:
	ldr r5, [sp, #4]
	ldrh r0, [r5, #6]
	cmp r0, #9
	bls _080F3FEC
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080F40D8 @ =0x00000F8E
	adds r1, r7, r0
	mov r2, sl
	adds r0, r6, r2
	mov r3, sb
	orrs r0, r3
	strh r0, [r1]
_080F3FEC:
	ldr r4, [sp, #4]
	ldrh r0, [r4, #6]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r5, #0xf9
	lsls r5, r5, #4
	adds r1, r7, r5
	mov r2, sl
	adds r0, r6, r2
	mov r3, sb
	orrs r0, r3
	strh r0, [r1]
	ldr r0, [sp]
	bl getMaxHP1x
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bne _080F40E0
	movs r6, #0
	ldr r4, [sp]
	adds r4, #0xbc
	str r4, [sp, #8]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r4, r5, #0
_080F4026:
	lsls r0, r6, #6
	mov r1, r8
	adds r3, r0, r1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r3, r2
	lsls r2, r6, #5
	ldr r5, _080F40DC @ =0x00000109
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #1
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8b
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #1
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r3, r0
	subs r5, #4
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r2, r3
	orrs r0, r4
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080F4026
	b _080F4254
	.align 2, 0
_080F4084: .4byte 0x000064AC
_080F4088: .4byte 0x00000DCC
_080F408C: .4byte 0x08547410
_080F4090: .4byte 0x02002146
_080F4094: .4byte 0x0854741C
_080F4098: .4byte 0x085475DC
_080F409C: .4byte 0x085475E8
_080F40A0: .4byte 0x085222F0
_080F40A4: .4byte 0x085222F8
_080F40A8: .4byte 0x00000ED8
_080F40AC: .4byte 0x0202FE20
_080F40B0: .4byte 0x0020F580
_080F40B4: .4byte 0x00000F76
_080F40B8: .4byte 0x00034BC0
_080F40BC: .4byte 0x00000F78
_080F40C0: .4byte 0x00000F7C
_080F40C4: .4byte 0x00000F7E
_080F40C8: .4byte 0x00000F82
_080F40CC: .4byte 0x00000F84
_080F40D0: .4byte 0x000003E7
_080F40D4: .4byte 0x00000F8C
_080F40D8: .4byte 0x00000F8E
_080F40DC: .4byte 0x00000109
_080F40E0:
	ldr r0, [sp]
	bl getMaxHP1x
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bne _080F415C
	movs r6, #0
	ldr r4, [sp]
	adds r4, #0xbc
	str r4, [sp, #8]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r4, r5, #0
_080F40FC:
	lsls r0, r6, #6
	mov r1, r8
	adds r3, r0, r1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r3, r2
	lsls r2, r6, #5
	ldr r5, _080F4158 @ =0x00000109
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #3
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8b
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #1
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #1
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r2, r3
	orrs r0, r4
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080F40FC
	b _080F4254
	.align 2, 0
_080F4158: .4byte 0x00000109
_080F415C:
	ldr r0, [sp]
	bl getMaxHP1x
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bne _080F41DC
	movs r6, #0
	ldr r4, [sp]
	adds r4, #0xbc
	str r4, [sp, #8]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r4, r5, #0
_080F4178:
	lsls r0, r6, #6
	mov r1, r8
	adds r3, r0, r1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r3, r2
	lsls r2, r6, #5
	ldr r5, _080F41D4 @ =0x00000109
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #3
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8b
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #3
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r5, #1
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r3, _080F41D8 @ =0x00000111
	adds r0, r2, r3
	orrs r0, r4
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080F4178
	b _080F4254
	.align 2, 0
_080F41D4: .4byte 0x00000109
_080F41D8: .4byte 0x00000111
_080F41DC:
	ldr r0, [sp]
	bl getMaxHP1x
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, [sp]
	adds r4, #0xbc
	str r4, [sp, #8]
	cmp r0, #0x20
	bne _080F4254
	movs r6, #0
	movs r5, #0x89
	lsls r5, r5, #1
	mov sb, r5
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r0, #0
_080F41FE:
	lsls r0, r6, #6
	mov r1, r8
	adds r2, r0, r1
	mov r3, sb
	adds r1, r2, r3
	lsls r3, r6, #5
	ldr r5, _080F429C @ =0x00000109
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r5, #3
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8b
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r5, #3
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r2, r0
	mov r5, sb
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r2, _080F42A0 @ =0x00000113
	adds r0, r3, r2
	orrs r0, r4
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080F41FE
_080F4254:
	ldr r3, _080F42A4 @ =0x00000ED8
	adds r3, r3, r7
	mov r8, r3
	ldr r0, _080F42A8 @ =0x0202FE20
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	mov ip, r0
	cmp r1, #0
	bne _080F42B4
	movs r6, #0
	movs r4, #0x8f
	lsls r4, r4, #1
	mov sb, r4
	ldr r5, _080F42AC @ =0x083863E8
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r0, #0
	ldr r1, _080F42B0 @ =0xFFFFF000
	adds r3, r1, #0
_080F427A:
	lsls r1, r6, #1
	add r1, r8
	add r1, sb
	ldrb r0, [r2, #2]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r0, r4
	adds r0, r0, r6
	orrs r0, r3
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _080F427A
	b _080F4378
	.align 2, 0
_080F429C: .4byte 0x00000109
_080F42A0: .4byte 0x00000113
_080F42A4: .4byte 0x00000ED8
_080F42A8: .4byte 0x0202FE20
_080F42AC: .4byte 0x083863E8
_080F42B0: .4byte 0xFFFFF000
_080F42B4:
	movs r6, #0
	ldr r3, _080F444C @ =0x083863D0
	mov sl, r3
	movs r4, #0x8f
	lsls r4, r4, #1
	mov sb, r4
	mov r5, sl
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r0, #0
	ldr r1, _080F4450 @ =0xFFFFF000
	adds r3, r1, #0
_080F42CC:
	lsls r1, r6, #1
	add r1, r8
	add r1, sb
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r0, r4
	adds r0, r0, r6
	orrs r0, r3
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _080F42CC
	mov r3, ip
	ldr r2, [r3]
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r0, [r2, #2]
	lsls r0, r0, #1
	ldr r5, _080F4454 @ =0x083863E8
	adds r5, #1
	adds r0, r0, r5
	ldrb r4, [r0]
	adds r1, r3, r4
	cmp r1, #9
	ble _080F431A
	subs r1, #9
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080F431A:
	ldr r1, _080F4458 @ =0x00000DCC
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #8
	bne _080F4330
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080F4330:
	movs r6, #0
	cmp r6, r4
	bhs _080F4378
	ldr r4, _080F4454 @ =0x083863E8
	mov sl, r4
	adds r4, r2, #0
	mov sb, r5
	movs r5, #0xaf
	lsls r5, r5, #1
	mov ip, r5
_080F4344:
	adds r2, r3, r6
	lsls r2, r2, #1
	add r2, r8
	add r2, ip
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	add r0, sl
	ldrb r0, [r0]
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r1, r5, #0
	adds r0, r0, r1
	adds r0, r0, r6
	ldr r5, _080F4450 @ =0xFFFFF000
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F4344
_080F4378:
	movs r0, #4
	movs r1, #0
	bl loadBeatPalette
	ldr r0, _080F4458 @ =0x00000DCC
	adds r4, r7, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080F43A2
	adds r0, #0xab
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r4, #0x10]
	adds r0, #0xab
	bl FUN_08004068
	ldrb r0, [r4, #0x10]
	adds r0, #0xab
	bl clearValFrom0x02001fe0
_080F43A2:
	movs r4, #0x8c
	lsls r4, r4, #1
	ldr r1, _080F445C @ =0x085D78F8
	mov r8, r1
	adds r0, r4, r1
	ldr r6, _080F4460 @ =0x0202F790
	ldrh r1, [r6, #0x1c]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r3, _080F4464 @ =0x085D7904
	adds r4, r4, r3
	ldr r5, _080F4468 @ =0x0202F590
	ldrh r1, [r5, #0x1c]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0x96
	lsls r4, r4, #1
	mov r1, r8
	adds r0, r4, r1
	ldrh r1, [r6, #0x1e]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r3, _080F4464 @ =0x085D7904
	adds r4, r4, r3
	ldrh r1, [r5, #0x1e]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	ldr r4, _080F446C @ =0x00000A14
	add r8, r4
	movs r0, #0x81
	lsls r0, r0, #1
	mov sb, r0
	add r6, sb
	ldrh r1, [r6]
	mov r2, r8
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	mov r0, r8
	bl loadGraphics
	ldr r0, _080F4464 @ =0x085D7904
	adds r4, r4, r0
	add r5, sb
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	movs r6, #0
	b _080F4480
	.align 2, 0
_080F444C: .4byte 0x083863D0
_080F4450: .4byte 0xFFFFF000
_080F4454: .4byte 0x083863E8
_080F4458: .4byte 0x00000DCC
_080F445C: .4byte 0x085D78F8
_080F4460: .4byte 0x0202F790
_080F4464: .4byte 0x085D7904
_080F4468: .4byte 0x0202F590
_080F446C: .4byte 0x00000A14
_080F4470:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl FUN_080e67ac
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080F4480:
	ldr r0, [sp]
	bl getMaxHP1x
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	cmp r6, r0
	blo _080F4470
	ldr r1, _080F4664 @ =0x00000DCC
	adds r4, r7, r1
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6240
	ldr r2, [sp, #4]
	ldrb r1, [r2, #0xc]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl FUN_080e5ecc
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0xf]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xf]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl FUN_080e6240
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0xd]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl FUN_080e5ecc
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r4, #0xf]
	movs r6, #0
	ldr r5, _080F4664 @ =0x00000DCC
	adds r4, r7, r5
_080F44E0:
	ldr r1, [sp, #8]
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080F44FA
	ldrb r2, [r4, #0xe]
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_080e6574
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_080F44FA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080F44E0
	ldr r2, _080F4664 @ =0x00000DCC
	adds r4, r7, r2
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080F4520
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl FUN_080e6240
	ldrb r1, [r4, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0xf]
_080F4520:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F453C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F453C
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F455C
_080F453C:
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	bl FUN_080e6240
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6980
	ldr r4, _080F4664 @ =0x00000DCC
	adds r2, r7, r4
	ldrb r1, [r2, #0xf]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #0xf]
_080F455C:
	ldr r5, [sp, #4]
	ldrb r1, [r5, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F4588
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F4588
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080F4588
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080F4588
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F45A8
_080F4588:
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	bl FUN_080e6240
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl FUN_080e6980
	ldr r0, _080F4664 @ =0x00000DCC
	adds r2, r7, r0
	ldrb r1, [r2, #0xf]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #0xf]
_080F45A8:
	ldr r2, [sp, #4]
	ldrb r1, [r2, #0x19]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F45E4
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F45E4
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F45E4
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080F45E4
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080F45E4
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080F45E4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F4604
_080F45E4:
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	bl FUN_080e6240
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl FUN_080e6980
	ldr r3, _080F4664 @ =0x00000DCC
	adds r2, r7, r3
	ldrb r1, [r2, #0xf]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #0xf]
_080F4604:
	ldr r5, _080F4664 @ =0x00000DCC
	adds r4, r7, r5
	movs r0, #0
	str r0, [r4, #0x20]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	bl FUN_080e6240
	ldrb r1, [r4, #0xf]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r4, #0xf]
	movs r1, #0x38
	ands r0, r1
	cmp r0, #0
	beq _080F4638
	ldr r1, _080F4668 @ =0x00000ED8
	adds r0, r7, r1
	ldr r2, _080F466C @ =0x08522300
	ldr r1, [r2]
	adds r1, r1, r2
	movs r2, #0xc
	movs r3, #7
	bl loadBgMap
_080F4638:
	ldr r2, _080F4668 @ =0x00000ED8
	adds r0, r7, r2
	ldr r1, _080F4670 @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
	movs r0, #2
	strb r0, [r7, #2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4664: .4byte 0x00000DCC
_080F4668: .4byte 0x00000ED8
_080F466C: .4byte 0x08522300
_080F4670: .4byte 0x02002146

	thumb_func_start mainMenuFrameScript
mainMenuFrameScript: @ 0x080F4674
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _080F4710 @ =0x000064AC
	adds r0, r6, r1
	ldr r7, [r0]
	ldr r1, _080F4714 @ =0x08386420
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl bxR1
	ldr r0, _080F4718 @ =0x00000DCC
	adds r4, r6, r0
	ldrb r1, [r4, #0xf]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0
	beq _080F46A2
	adds r0, r6, #0
	bl menu_080f54a0
_080F46A2:
	movs r0, #4
	bl FUN_08004068
	ldrb r2, [r4, #0x10]
	adds r1, r2, #0
	cmp r1, #5
	bhi _080F473E
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _080F46D4
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r0, [r0, #0x10]
	cmp r1, r0
	beq _080F46CE
	adds r0, r2, #0
	adds r0, #0xab
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	movs r1, #0
	bl loadBeatPalette
_080F46CE:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _080F473E
_080F46D4:
	ldr r1, _080F4718 @ =0x00000DCC
	adds r5, r6, r1
	ldrb r0, [r5, #0x11]
	bl FUN_08004068
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080F473E
	ldrb r0, [r5, #0x11]
	bl clearValFrom0x02001fe0
	ldrb r0, [r5, #0x11]
	cmp r0, #0xb2
	bhi _080F471C
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r0, [r0, #0x10]
	strb r0, [r5, #0x10]
	adds r0, #0xb3
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r5, #0x11]
	bl FUN_08004068
	b _080F473E
	.align 2, 0
_080F4710: .4byte 0x000064AC
_080F4714: .4byte 0x08386420
_080F4718: .4byte 0x00000DCC
_080F471C:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r0, [r0, #0x10]
	adds r0, #0xab
	movs r4, #0
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r5, #0x11]
	bl FUN_08004068
	ldrb r0, [r5, #0x11]
	bl clearValFrom0x02001fe0
	strb r4, [r5, #0x11]
_080F473E:
	adds r0, r6, #0
	bl printMainMenuString
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start slideOutMainMenu
slideOutMainMenu: @ 0x080F474C
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F4764 @ =0x00000E19
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080F476C
	ldr r1, _080F4768 @ =0x02002150
	ldrh r0, [r1]
	adds r0, #0x10
	b _080F4772
	.align 2, 0
_080F4764: .4byte 0x00000E19
_080F4768: .4byte 0x02002150
_080F476C:
	ldr r1, _080F47A0 @ =0x02002150
	ldrh r0, [r1]
	subs r0, #0x10
_080F4772:
	strh r0, [r1]
	adds r3, r1, #0
	ldrh r0, [r3]
	ldr r1, _080F47A4 @ =0x000001FF
	ands r1, r0
	strh r1, [r3]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080F479C
	ldr r3, _080F47A8 @ =0x00000E19
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #1
	strb r0, [r2, #2]
	adds r0, r2, #0
	bl exitMainMenu
_080F479C:
	pop {r0}
	bx r0
	.align 2, 0
_080F47A0: .4byte 0x02002150
_080F47A4: .4byte 0x000001FF
_080F47A8: .4byte 0x00000E19

	thumb_func_start exitMainMenu
exitMainMenu: @ 0x080F47AC
	push {r4, lr}
	ldr r1, _080F47D8 @ =0x00000DCC
	adds r4, r0, r1
	movs r0, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #3]
	cmp r0, #0xff
	beq _080F47C0
	bl clearValFrom0x02001fe0
_080F47C0:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _080F47CA
	bl clearValFrom0x02001fe0
_080F47CA:
	movs r0, #4
	bl clearValFrom0x02001fe0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F47D8: .4byte 0x00000DCC

	thumb_func_start mainMenuNoSelectedScript
mainMenuNoSelectedScript: @ 0x080F47DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, _080F4828 @ =0x00000DCC
	mov sb, r0
	adds r6, r4, r0
	ldr r2, _080F482C @ =0x00000E17
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl slideMenu
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080F4804
	b _080F4908
_080F4804:
	ldr r2, _080F4830 @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080F4858
	ldrb r2, [r6]
	cmp r2, #5
	bhi _080F4834
	adds r0, r2, #1
	strb r0, [r4, #3]
	ldrb r0, [r6]
	cmp r0, #2
	bne _080F4844
	strb r3, [r6, #1]
	b _080F4844
	.align 2, 0
_080F4828: .4byte 0x00000DCC
_080F482C: .4byte 0x00000E17
_080F4830: .4byte 0x02001EB0
_080F4834:
	ldr r0, _080F484C @ =0x0202FDC0
	ldrb r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F4850
	adds r0, r2, #1
	strb r0, [r4, #3]
_080F4844:
	movs r0, #2
	bl playSound
	b _080F4908
	.align 2, 0
_080F484C: .4byte 0x0202FDC0
_080F4850:
	movs r0, #4
	bl playSound
	b _080F4908
_080F4858:
	movs r5, #0xff
	ldrh r1, [r2, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F4866
	movs r5, #0
_080F4866:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F4870
	movs r5, #1
_080F4870:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F487A
	movs r5, #2
_080F487A:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F4884
	movs r5, #3
_080F4884:
	ldrb r0, [r6]
	mov r8, r0
	cmp r5, #0xff
	beq _080F4908
	ldr r0, _080F48A8 @ =0x08386398
	mov r2, r8
	lsls r1, r2, #2
	adds r1, r5, r1
	adds r1, r1, r0
	ldrb r3, [r1]
	ldrb r0, [r6, #0xf]
	asrs r0, r3
	ands r0, r7
	cmp r0, #0
	beq _080F48C0
	strb r3, [r6]
	b _080F48F8
	.align 2, 0
_080F48A8: .4byte 0x08386398
_080F48AC:
	movs r0, #1
	strb r0, [r2]
	b _080F48F8
_080F48B2:
	ldr r0, _080F48BC @ =0x00000DCC
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	b _080F48F8
	.align 2, 0
_080F48BC: .4byte 0x00000DCC
_080F48C0:
	mov r6, sb
	ldr r1, _080F4914 @ =0x083863B4
	mov ip, r1
	movs r7, #8
_080F48C8:
	cmp r3, #4
	bne _080F48DC
	cmp r5, #0
	bne _080F48DC
	adds r2, r4, r6
	ldrb r1, [r2, #0xf]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080F48AC
_080F48DC:
	lsls r0, r3, #2
	adds r0, r5, r0
	add r0, ip
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _080F48B2
	adds r2, r4, r6
	ldrb r0, [r2, #0xf]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F48C8
	strb r3, [r2]
_080F48F8:
	ldr r2, _080F4918 @ =0x00000DCC
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r8, r0
	beq _080F4908
	movs r0, #1
	bl playSound
_080F4908:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4914: .4byte 0x083863B4
_080F4918: .4byte 0x00000DCC

	thumb_func_start equipMainWeapon
equipMainWeapon: @ 0x080F491C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080F4940 @ =0x000064AC
	adds r0, r5, r1
	ldr r7, [r0]
	ldr r2, _080F4944 @ =0x00000DCC
	adds r4, r5, r2
	ldr r0, _080F4948 @ =0x00000E17
	adds r6, r5, r0
	ldrb r2, [r6]
	cmp r2, #1
	beq _080F4998
	cmp r2, #1
	bgt _080F494C
	cmp r2, #0
	beq _080F4954
	b _080F4A6C
	.align 2, 0
_080F4940: .4byte 0x000064AC
_080F4944: .4byte 0x00000DCC
_080F4948: .4byte 0x00000E17
_080F494C:
	cmp r2, #2
	bne _080F4952
	b _080F4A5C
_080F4952:
	b _080F4A6C
_080F4954:
	ldr r2, _080F4994 @ =0x00000E1D
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	bhi _080F4966
	b _080F4A6C
_080F4966:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r1, [r1, #0xc]
	strb r1, [r4, #1]
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	adds r1, #0x44
	adds r0, #0x74
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	adds r0, #0x76
	movs r1, #0x38
	strh r1, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080F4A6C
	.align 2, 0
_080F4994: .4byte 0x00000E1D
_080F4998:
	ldr r3, _080F49C4 @ =0x02001EB0
	ldrh r1, [r3, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F49E4
	ldr r0, [r4, #0x1c]
	adds r0, #0x78
	strb r2, [r0]
	strb r2, [r4, #5]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r1, [r3, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F49C8
	movs r0, #3
	bl playSound
	b _080F4A6C
	.align 2, 0
_080F49C4: .4byte 0x02001EB0
_080F49C8:
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r0, [r1, #0xd]
	ldrb r2, [r4, #1]
	cmp r0, r2
	bne _080F49D8
	ldrb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
_080F49D8:
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xc]
	movs r0, #2
	bl playSound
	b _080F4A6C
_080F49E4:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r1, [r0, #0x16]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080F4A2C
	ldrh r1, [r3, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F4A10
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	str r3, [sp]
	bl playSound
	ldr r3, [sp]
_080F4A10:
	ldrh r1, [r3, #6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F4A46
	ldrb r0, [r4, #1]
	adds r0, #3
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	bl playSound
	b _080F4A46
_080F4A2C:
	ldrh r1, [r3, #6]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080F4A46
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	bl playSound
_080F4A46:
	ldr r1, _080F4A58 @ =0x00000DCC
	adds r0, r5, r1
	ldr r1, [r0, #0x1c]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, #0x44
	adds r1, #0x74
	strh r0, [r1]
	b _080F4A6C
	.align 2, 0
_080F4A58: .4byte 0x00000DCC
_080F4A5C:
	ldr r2, _080F4A74 @ =0x00000E1D
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080F4A6C
	strb r0, [r5, #3]
_080F4A6C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4A74: .4byte 0x00000E1D

	thumb_func_start equipSubWeapon
equipSubWeapon: @ 0x080F4A78
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080F4A9C @ =0x000064AC
	adds r0, r5, r1
	ldr r7, [r0]
	ldr r2, _080F4AA0 @ =0x00000DCC
	adds r4, r5, r2
	ldr r0, _080F4AA4 @ =0x00000E17
	adds r6, r5, r0
	ldrb r2, [r6]
	cmp r2, #1
	beq _080F4AF4
	cmp r2, #1
	bgt _080F4AA8
	cmp r2, #0
	beq _080F4AB0
	b _080F4BC8
	.align 2, 0
_080F4A9C: .4byte 0x000064AC
_080F4AA0: .4byte 0x00000DCC
_080F4AA4: .4byte 0x00000E17
_080F4AA8:
	cmp r2, #2
	bne _080F4AAE
	b _080F4BB8
_080F4AAE:
	b _080F4BC8
_080F4AB0:
	ldr r2, _080F4AF0 @ =0x00000E1D
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	bhi _080F4AC2
	b _080F4BC8
_080F4AC2:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r1, [r1, #0xd]
	strb r1, [r4, #1]
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	adds r1, #0x44
	adds r0, #0x74
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	adds r0, #0x76
	movs r1, #0x50
	strh r1, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080F4BC8
	.align 2, 0
_080F4AF0: .4byte 0x00000E1D
_080F4AF4:
	ldr r3, _080F4B20 @ =0x02001EB0
	ldrh r1, [r3, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F4B40
	ldr r0, [r4, #0x1c]
	adds r0, #0x78
	strb r2, [r0]
	strb r2, [r4, #5]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r1, [r3, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F4B24
	movs r0, #3
	bl playSound
	b _080F4BC8
	.align 2, 0
_080F4B20: .4byte 0x02001EB0
_080F4B24:
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r0, [r1, #0xc]
	ldrb r2, [r4, #1]
	cmp r0, r2
	bne _080F4B34
	ldrb r0, [r1, #0xd]
	strb r0, [r1, #0xc]
_080F4B34:
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xd]
	movs r0, #2
	bl playSound
	b _080F4BC8
_080F4B40:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r1, [r0, #0x16]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080F4B88
	ldrh r1, [r3, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F4B6C
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	str r3, [sp]
	bl playSound
	ldr r3, [sp]
_080F4B6C:
	ldrh r1, [r3, #6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F4BA2
	ldrb r0, [r4, #1]
	adds r0, #3
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	bl playSound
	b _080F4BA2
_080F4B88:
	ldrh r1, [r3, #6]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080F4BA2
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	bl playSound
_080F4BA2:
	ldr r1, _080F4BB4 @ =0x00000DCC
	adds r0, r5, r1
	ldr r1, [r0, #0x1c]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, #0x44
	adds r1, #0x74
	strh r0, [r1]
	b _080F4BC8
	.align 2, 0
_080F4BB4: .4byte 0x00000DCC
_080F4BB8:
	ldr r2, _080F4BD0 @ =0x00000E1D
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080F4BC8
	strb r0, [r5, #3]
_080F4BC8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4BD0: .4byte 0x00000E1D

	thumb_func_start useSubtankInMenu
useSubtankInMenu: @ 0x080F4BD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r1, _080F4C28 @ =0x000064AC
	adds r0, r5, r1
	ldr r7, [r0]
	movs r1, #0
	movs r2, #0
	movs r0, #0xbc
	adds r0, r0, r7
	mov r8, r0
	mov r4, r8
	ldr r0, _080F4C2C @ =0x00000DCC
	adds r3, r5, r0
_080F4BF2:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080F4C06
	ldrb r0, [r3, #1]
	cmp r2, r0
	beq _080F4C4C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F4C06:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080F4BF2
_080F4C10:
	ldr r1, _080F4C30 @ =0x00000E17
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #4
	bls _080F4C1E
	b _080F4E16
_080F4C1E:
	lsls r0, r1, #2
	ldr r1, _080F4C34 @ =_080F4C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F4C28: .4byte 0x000064AC
_080F4C2C: .4byte 0x00000DCC
_080F4C30: .4byte 0x00000E17
_080F4C34: .4byte _080F4C38
_080F4C38: @ jump table
	.4byte _080F4C58 @ case 0
	.4byte _080F4C7C @ case 1
	.4byte _080F4CC0 @ case 2
	.4byte _080F4D98 @ case 3
	.4byte _080F4DF2 @ case 4
_080F4C4C:
	ldr r2, _080F4C54 @ =0x00000E1B
	adds r0, r5, r2
	strb r1, [r0]
	b _080F4C10
	.align 2, 0
_080F4C54: .4byte 0x00000E1B
_080F4C58:
	ldr r0, _080F4C70 @ =0x00000DCC
	adds r3, r5, r0
	ldr r2, _080F4C74 @ =0x00000E1D
	adds r1, r5, r2
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r3, #0x1c]
	ldr r0, _080F4C78 @ =0x00000E1A
	adds r1, r5, r0
	movs r0, #8
	b _080F4D12
	.align 2, 0
_080F4C70: .4byte 0x00000DCC
_080F4C74: .4byte 0x00000E1D
_080F4C78: .4byte 0x00000E1A
_080F4C7C:
	ldr r1, _080F4CB4 @ =0x00000DCC
	adds r4, r5, r1
	ldr r2, _080F4CB8 @ =0x00000E1D
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080F4CBC @ =0x00000E1A
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080F4C9C
	b _080F4E16
_080F4C9C:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4, #0x1c]
	adds r0, #0x76
	movs r2, #0
	movs r1, #0x68
	strh r1, [r0]
	strb r2, [r4, #1]
	b _080F4D14
	.align 2, 0
_080F4CB4: .4byte 0x00000DCC
_080F4CB8: .4byte 0x00000E1D
_080F4CBC: .4byte 0x00000E1A
_080F4CC0:
	ldr r2, _080F4CEC @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _080F4D20
	adds r0, r7, #0
	bl getMaxZeroHP
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	adds r1, #0xa4
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bne _080F4CF0
	movs r0, #4
	bl playSound
	b _080F4E2A
	.align 2, 0
_080F4CEC: .4byte 0x02001EB0
_080F4CF0:
	ldr r1, _080F4D08 @ =0x00000E1B
	adds r0, r5, r1
	ldrb r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080F4D0C
	movs r0, #4
	bl playSound
	b _080F4E16
	.align 2, 0
_080F4D08: .4byte 0x00000E1B
_080F4D0C:
	ldr r2, _080F4D1C @ =0x00000E1A
	adds r1, r5, r2
	movs r0, #0
_080F4D12:
	strb r0, [r1]
_080F4D14:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080F4E16
	.align 2, 0
_080F4D1C: .4byte 0x00000E1A
_080F4D20:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F4D54
	movs r0, #3
	bl playSound
	ldr r0, _080F4D4C @ =0x00000DCC
	adds r2, r5, r0
	ldr r0, [r2, #0x1c]
	adds r0, #0x78
	movs r1, #1
	strb r1, [r0]
	str r4, [r2, #0x1c]
	ldr r2, _080F4D50 @ =0x00000E1A
	adds r1, r5, r2
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #2
	strb r0, [r6]
	b _080F4E16
	.align 2, 0
_080F4D4C: .4byte 0x00000DCC
_080F4D50: .4byte 0x00000E1A
_080F4D54:
	ldr r0, _080F4D94 @ =0x00000DCC
	adds r4, r5, r0
	ldrb r7, [r4, #1]
	ldrh r6, [r2, #6]
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080F4D6E
	adds r0, r7, #1
	ldrb r1, [r4, #0xe]
	bl __modsi3
	strb r0, [r4, #1]
_080F4D6E:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080F4D84
	ldrb r0, [r4, #1]
	subs r0, #1
	ldrb r1, [r4, #0xe]
	adds r0, r0, r1
	bl __modsi3
	strb r0, [r4, #1]
_080F4D84:
	ldrb r4, [r4, #1]
	cmp r7, r4
	beq _080F4E16
	movs r0, #1
	bl playSound
	b _080F4E16
	.align 2, 0
_080F4D94: .4byte 0x00000DCC
_080F4D98:
	ldr r2, _080F4DE0 @ =0x00000E1D
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080F4DE4 @ =0x00000E1A
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080F4E16
	ldr r1, _080F4DE8 @ =0x00000E1B
	adds r0, r5, r1
	ldrb r0, [r0]
	mov r2, r8
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F4DD2
	subs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	bl useSubtank
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F4DEC
_080F4DD2:
	adds r0, r7, #0
	bl FUN_080f5a78
	movs r0, #2
	strb r0, [r6]
	b _080F4E16
	.align 2, 0
_080F4DE0: .4byte 0x00000E1D
_080F4DE4: .4byte 0x00000E1A
_080F4DE8: .4byte 0x00000E1B
_080F4DEC:
	movs r0, #3
	strb r0, [r4]
	b _080F4E16
_080F4DF2:
	ldr r0, _080F4E34 @ =0x00000E1D
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _080F4E38 @ =0x00000E1A
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080F4E16
	adds r0, r7, #0
	bl FUN_080f5a78
	movs r0, #0
	strb r0, [r5, #3]
_080F4E16:
	ldr r1, _080F4E3C @ =0x00000DCC
	adds r0, r5, r1
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _080F4E2A
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, #0x44
	adds r1, #0x74
	strh r0, [r1]
_080F4E2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4E34: .4byte 0x00000E1D
_080F4E38: .4byte 0x00000E1A
_080F4E3C: .4byte 0x00000DCC

	thumb_func_start equipHeadChip
equipHeadChip: @ 0x080F4E40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r1, _080F4E70 @ =0x000064AC
	adds r0, r7, r1
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080F4E74 @ =0x00000DCC
	adds r4, r7, r0
	ldr r1, [r4, #0x20]
	mov r8, r1
	adds r0, #0x4b
	adds r6, r7, r0
	ldrb r5, [r6]
	cmp r5, #1
	beq _080F4F14
	cmp r5, #1
	bgt _080F4E78
	cmp r5, #0
	beq _080F4E8C
	b _080F5016
	.align 2, 0
_080F4E70: .4byte 0x000064AC
_080F4E74: .4byte 0x00000DCC
_080F4E78:
	cmp r5, #2
	bne _080F4E7E
	b _080F5006
_080F4E7E:
	b _080F5016
_080F4E80:
	ldr r1, _080F4E88 @ =0x00000DCC
	adds r0, r7, r1
	strb r4, [r0, #1]
	b _080F4EE6
	.align 2, 0
_080F4E88: .4byte 0x00000DCC
_080F4E8C:
	ldr r1, _080F4F0C @ =0x00000E1D
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _080F4E9C
	b _080F5016
_080F4E9C:
	mov r1, r8
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bhi _080F4EA6
	b _080F5016
_080F4EA6:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4, #0x1c]
	strb r5, [r4, #1]
	movs r4, #0
	mov r0, r8
	adds r0, #0x79
	mov r8, r6
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r5, r0
	bhs _080F4EE6
_080F4EC4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_080f5820
	mov r1, sb
	adds r1, #0xb4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	beq _080F4E80
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r1, [r6]
	cmp r4, r1
	blo _080F4EC4
_080F4EE6:
	ldr r0, _080F4F10 @ =0x00000DCC
	adds r3, r7, r0
	ldr r2, [r3, #0x1c]
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	movs r1, #0x9c
	subs r1, r1, r0
	adds r2, #0x74
	strh r1, [r2]
	ldr r0, [r3, #0x1c]
	adds r0, #0x76
	movs r1, #0x38
	strh r1, [r0]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080F5016
	.align 2, 0
_080F4F0C: .4byte 0x00000E1D
_080F4F10: .4byte 0x00000DCC
_080F4F14:
	ldr r2, _080F4F40 @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F4F5A
	ldr r0, [r4, #0x1c]
	adds r0, #0x78
	strb r5, [r0]
	strb r5, [r4, #5]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F4F44
	movs r0, #3
	bl playSound
	b _080F5016
	.align 2, 0
_080F4F40: .4byte 0x02001EB0
_080F4F44:
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	bl FUN_080f5820
	mov r1, sb
	adds r1, #0xb4
	strb r0, [r1, #0xf]
	movs r0, #2
	bl playSound
	b _080F5016
_080F4F5A:
	ldrb r0, [r4, #1]
	mov sb, r0
	ldrh r5, [r2, #6]
	movs r0, #0x20
	ands r0, r5
	adds r6, r5, #0
	cmp r0, #0
	beq _080F4F7A
	mov r0, sb
	adds r0, #1
	mov r1, r8
	adds r1, #0x79
	ldrb r1, [r1]
	bl __modsi3
	strb r0, [r4, #1]
_080F4F7A:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080F4F94
	ldrb r0, [r4, #1]
	subs r0, #1
	mov r1, r8
	adds r1, #0x79
	ldrb r1, [r1]
	adds r0, r0, r1
	bl __modsi3
	strb r0, [r4, #1]
_080F4F94:
	movs r0, #0xc0
	ands r0, r5
	cmp r0, #0
	beq _080F4FC4
	mov r2, r8
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #4
	bls _080F4FC4
	ldrb r0, [r4, #1]
	cmp r0, #3
	bls _080F4FB2
	subs r0, #4
	strb r0, [r4, #1]
	b _080F4FC4
_080F4FB2:
	ldrb r0, [r4, #1]
	adds r1, r0, #4
	ldrb r0, [r2]
	cmp r1, r0
	blt _080F4FC2
	subs r0, #1
	strb r0, [r4, #1]
	b _080F4FC4
_080F4FC2:
	strb r1, [r4, #1]
_080F4FC4:
	ldr r1, _080F4FF8 @ =0x00000DCC
	adds r4, r7, r1
	ldrb r0, [r4, #1]
	cmp sb, r0
	beq _080F4FD4
	movs r0, #1
	bl playSound
_080F4FD4:
	ldr r2, [r4, #0x1c]
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x9c
	subs r0, r0, r1
	adds r2, #0x74
	strh r0, [r2]
	ldrb r0, [r4, #1]
	cmp r0, #3
	bls _080F4FFC
	ldr r0, [r4, #0x1c]
	adds r0, #0x76
	movs r1, #0x48
	strh r1, [r0]
	b _080F5016
	.align 2, 0
_080F4FF8: .4byte 0x00000DCC
_080F4FFC:
	ldr r0, [r4, #0x1c]
	adds r0, #0x76
	movs r1, #0x38
	strh r1, [r0]
	b _080F5016
_080F5006:
	ldr r0, _080F5024 @ =0x00000E1D
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080F5016
	strb r0, [r7, #3]
_080F5016:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F5024: .4byte 0x00000E1D

	thumb_func_start equipBodyChip
equipBodyChip: @ 0x080F5028
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r1, _080F5058 @ =0x000064AC
	adds r0, r7, r1
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080F505C @ =0x00000DCC
	adds r4, r7, r0
	ldr r1, [r4, #0x20]
	mov r8, r1
	adds r0, #0x4b
	adds r6, r7, r0
	ldrb r5, [r6]
	cmp r5, #1
	beq _080F5110
	cmp r5, #1
	bgt _080F5060
	cmp r5, #0
	beq _080F5074
	b _080F523A
	.align 2, 0
_080F5058: .4byte 0x000064AC
_080F505C: .4byte 0x00000DCC
_080F5060:
	cmp r5, #2
	bne _080F5066
	b _080F522A
_080F5066:
	b _080F523A
_080F5068:
	ldr r1, _080F5070 @ =0x00000DCC
	adds r0, r7, r1
	strb r4, [r0, #1]
	b _080F50CE
	.align 2, 0
_080F5070: .4byte 0x00000DCC
_080F5074:
	ldr r1, _080F5108 @ =0x00000E1D
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _080F5084
	b _080F523A
_080F5084:
	mov r1, r8
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bhi _080F508E
	b _080F523A
_080F508E:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4, #0x1c]
	strb r5, [r4, #1]
	movs r4, #0
	mov r0, r8
	adds r0, #0x79
	mov r8, r6
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r5, r0
	bhs _080F50CE
_080F50AC:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_080f58b4
	mov r1, sb
	adds r1, #0xb4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1, #0x10]
	cmp r0, r1
	beq _080F5068
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r1, [r6]
	cmp r4, r1
	blo _080F50AC
_080F50CE:
	ldr r0, _080F510C @ =0x00000DCC
	adds r5, r7, r0
	ldr r4, [r5, #0x1c]
	ldrb r0, [r5, #1]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	movs r1, #0x9c
	subs r1, r1, r0
	adds r4, #0x74
	strh r1, [r4]
	ldr r4, [r5, #0x1c]
	ldrb r0, [r5, #1]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	adds r0, #0x50
	adds r4, #0x76
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080F523A
	.align 2, 0
_080F5108: .4byte 0x00000E1D
_080F510C: .4byte 0x00000DCC
_080F5110:
	ldr r2, _080F5140 @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F517C
	ldr r0, [r4, #0x1c]
	adds r0, #0x78
	strb r5, [r0]
	strb r5, [r4, #5]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080F5144
	movs r0, #3
	bl playSound
	b _080F523A
	.align 2, 0
_080F5140: .4byte 0x02001EB0
_080F5144:
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	bl FUN_080f58b4
	mov r1, sb
	adds r1, #0xb4
	strb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080F515E
	strb r5, [r1, #0xe]
	b _080F5174
_080F515E:
	cmp r0, #4
	bne _080F5168
	movs r0, #2
	strb r0, [r1, #0xe]
	b _080F5174
_080F5168:
	cmp r0, #5
	bne _080F5172
	movs r0, #3
	strb r0, [r1, #0xe]
	b _080F5174
_080F5172:
	strb r6, [r1, #0xe]
_080F5174:
	movs r0, #2
	bl playSound
	b _080F523A
_080F517C:
	ldrb r0, [r4, #1]
	mov sb, r0
	ldrh r5, [r2, #6]
	movs r0, #0x20
	ands r0, r5
	adds r6, r5, #0
	cmp r0, #0
	beq _080F519C
	mov r0, sb
	adds r0, #1
	mov r1, r8
	adds r1, #0x79
	ldrb r1, [r1]
	bl __modsi3
	strb r0, [r4, #1]
_080F519C:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080F51B6
	ldrb r0, [r4, #1]
	subs r0, #1
	mov r1, r8
	adds r1, #0x79
	ldrb r1, [r1]
	adds r0, r0, r1
	bl __modsi3
	strb r0, [r4, #1]
_080F51B6:
	movs r0, #0xc0
	ands r0, r5
	cmp r0, #0
	beq _080F51E6
	mov r2, r8
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #3
	bls _080F51E6
	ldrb r0, [r4, #1]
	cmp r0, #2
	bls _080F51D4
	subs r0, #3
	strb r0, [r4, #1]
	b _080F51E6
_080F51D4:
	ldrb r0, [r4, #1]
	adds r1, r0, #3
	ldrb r0, [r2]
	cmp r1, r0
	blt _080F51E4
	subs r0, #1
	strb r0, [r4, #1]
	b _080F51E6
_080F51E4:
	strb r1, [r4, #1]
_080F51E6:
	ldr r1, _080F521C @ =0x00000DCC
	adds r5, r7, r1
	ldrb r0, [r5, #1]
	cmp sb, r0
	beq _080F51F6
	movs r0, #1
	bl playSound
_080F51F6:
	ldr r4, [r5, #0x1c]
	ldrb r0, [r5, #1]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	movs r1, #0x9c
	subs r1, r1, r0
	adds r4, #0x74
	strh r1, [r4]
	ldrb r0, [r5, #1]
	cmp r0, #2
	bls _080F5220
	ldr r0, [r5, #0x1c]
	adds r0, #0x76
	movs r1, #0x60
	strh r1, [r0]
	b _080F523A
	.align 2, 0
_080F521C: .4byte 0x00000DCC
_080F5220:
	ldr r0, [r5, #0x1c]
	adds r0, #0x76
	movs r1, #0x50
	strh r1, [r0]
	b _080F523A
_080F522A:
	ldr r0, _080F5248 @ =0x00000E1D
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080F523A
	strb r0, [r7, #3]
_080F523A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F5248: .4byte 0x00000E1D

	thumb_func_start equipFootChip
equipFootChip: @ 0x080F524C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r1, _080F527C @ =0x000064AC
	adds r0, r7, r1
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080F5280 @ =0x00000DCC
	adds r4, r7, r0
	ldr r1, [r4, #0x20]
	mov r8, r1
	adds r0, #0x4b
	adds r6, r7, r0
	ldrb r5, [r6]
	cmp r5, #1
	beq _080F5328
	cmp r5, #1
	bgt _080F5284
	cmp r5, #0
	beq _080F5298
	b _080F542A
	.align 2, 0
_080F527C: .4byte 0x000064AC
_080F5280: .4byte 0x00000DCC
_080F5284:
	cmp r5, #2
	bne _080F528A
	b _080F541A
_080F528A:
	b _080F542A
_080F528C:
	ldr r1, _080F5294 @ =0x00000DCC
	adds r0, r7, r1
	strb r4, [r0, #1]
	b _080F52F2
	.align 2, 0
_080F5294: .4byte 0x00000DCC
_080F5298:
	ldr r1, _080F5320 @ =0x00000E1D
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _080F52A8
	b _080F542A
_080F52A8:
	mov r1, r8
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bhi _080F52B2
	b _080F542A
_080F52B2:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4, #0x1c]
	strb r5, [r4, #1]
	movs r4, #0
	mov r0, r8
	adds r0, #0x79
	mov r8, r6
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r5, r0
	bhs _080F52F2
_080F52D0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_080f597c
	mov r1, sb
	adds r1, #0xb4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1, #0x11]
	cmp r0, r1
	beq _080F528C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r1, [r6]
	cmp r4, r1
	blo _080F52D0
_080F52F2:
	ldr r0, _080F5324 @ =0x00000DCC
	adds r3, r7, r0
	ldr r2, [r3, #0x1c]
	ldrb r1, [r3, #1]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x9c
	subs r0, r0, r1
	adds r2, #0x74
	strh r0, [r2]
	ldr r1, [r3, #0x1c]
	ldrb r0, [r3, #1]
	lsrs r0, r0, #2
	lsls r0, r0, #4
	adds r0, #0x68
	adds r1, #0x76
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080F542A
	.align 2, 0
_080F5320: .4byte 0x00000E1D
_080F5324: .4byte 0x00000DCC
_080F5328:
	ldr r2, _080F5354 @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F536E
	ldr r0, [r4, #0x1c]
	adds r0, #0x78
	strb r5, [r0]
	strb r5, [r4, #5]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F5358
	movs r0, #3
	bl playSound
	b _080F542A
	.align 2, 0
_080F5354: .4byte 0x02001EB0
_080F5358:
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	bl FUN_080f597c
	mov r1, sb
	adds r1, #0xb4
	strb r0, [r1, #0x11]
	movs r0, #2
	bl playSound
	b _080F542A
_080F536E:
	ldrb r0, [r4, #1]
	mov sb, r0
	ldrh r5, [r2, #6]
	movs r0, #0x20
	ands r0, r5
	adds r6, r5, #0
	cmp r0, #0
	beq _080F538E
	mov r0, sb
	adds r0, #1
	mov r1, r8
	adds r1, #0x79
	ldrb r1, [r1]
	bl __modsi3
	strb r0, [r4, #1]
_080F538E:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080F53A8
	ldrb r0, [r4, #1]
	subs r0, #1
	mov r1, r8
	adds r1, #0x79
	ldrb r1, [r1]
	adds r0, r0, r1
	bl __modsi3
	strb r0, [r4, #1]
_080F53A8:
	movs r0, #0xc0
	ands r0, r5
	cmp r0, #0
	beq _080F53D8
	mov r2, r8
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #4
	bls _080F53D8
	ldrb r0, [r4, #1]
	cmp r0, #3
	bls _080F53C6
	subs r0, #4
	strb r0, [r4, #1]
	b _080F53D8
_080F53C6:
	ldrb r0, [r4, #1]
	adds r1, r0, #4
	ldrb r0, [r2]
	cmp r1, r0
	blt _080F53D6
	subs r0, #1
	strb r0, [r4, #1]
	b _080F53D8
_080F53D6:
	strb r1, [r4, #1]
_080F53D8:
	ldr r1, _080F540C @ =0x00000DCC
	adds r4, r7, r1
	ldrb r0, [r4, #1]
	cmp sb, r0
	beq _080F53E8
	movs r0, #1
	bl playSound
_080F53E8:
	ldr r2, [r4, #0x1c]
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x9c
	subs r0, r0, r1
	adds r2, #0x74
	strh r0, [r2]
	ldrb r0, [r4, #1]
	cmp r0, #3
	bls _080F5410
	ldr r0, [r4, #0x1c]
	adds r0, #0x76
	movs r1, #0x78
	strh r1, [r0]
	b _080F542A
	.align 2, 0
_080F540C: .4byte 0x00000DCC
_080F5410:
	ldr r0, [r4, #0x1c]
	adds r0, #0x76
	movs r1, #0x68
	strh r1, [r0]
	b _080F542A
_080F541A:
	ldr r0, _080F5438 @ =0x00000E1D
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080F542A
	strb r0, [r7, #3]
_080F542A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F5438: .4byte 0x00000E1D

	thumb_func_start escapeFromStage
escapeFromStage: @ 0x080F543C
	push {lr}
	adds r3, r0, #0
	ldr r0, _080F5450 @ =0x00000E17
	adds r2, r3, r0
	ldrb r1, [r2]
	cmp r1, #0
	beq _080F5454
	cmp r1, #1
	beq _080F545A
	b _080F549C
	.align 2, 0
_080F5450: .4byte 0x00000E17
_080F5454:
	movs r0, #1
	strb r0, [r2]
	b _080F549C
_080F545A:
	ldr r0, _080F5480 @ =0x02001EB0
	ldrh r2, [r0, #4]
	ands r1, r2
	cmp r1, #0
	beq _080F548C
	ldr r2, _080F5484 @ =0x0202FE60
	ldrh r1, [r2, #8]
	ldr r0, _080F5488 @ =0x0000FFFE
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #8]
	movs r0, #3
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	movs r0, #2
	bl playSound
	b _080F549C
	.align 2, 0
_080F5480: .4byte 0x02001EB0
_080F5484: .4byte 0x0202FE60
_080F5488: .4byte 0x0000FFFE
_080F548C:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080F549C
	strb r1, [r3, #3]
	movs r0, #3
	bl playSound
_080F549C:
	pop {r0}
	bx r0

	thumb_func_start menu_080f54a0
menu_080f54a0: @ 0x080F54A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _080F54C8 @ =0x00000DCC
	adds r4, r6, r0
	ldrb r1, [r4, #2]
	lsrs r7, r1, #3
	ldrb r0, [r4]
	subs r2, r0, #3
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080F5520
	cmp r7, #0
	beq _080F54CC
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r4, #2]
	b _080F5546
	.align 2, 0
_080F54C8: .4byte 0x00000DCC
_080F54CC:
	ldrb r0, [r4, #3]
	cmp r0, #0xff
	bne _080F54DE
	strb r2, [r4, #3]
	ldrb r0, [r4, #3]
	movs r1, #0
	bl loadBeatPalette
	b _080F5510
_080F54DE:
	ldrb r1, [r4, #3]
	ldrb r0, [r4]
	subs r0, #3
	cmp r1, r0
	beq _080F5510
	adds r0, r1, #0
	bl clearValFrom0x02001fe0
	movs r0, #3
	movs r1, #0
	bl loadBeatPalette
	movs r0, #3
	bl FUN_08004068
	movs r0, #3
	bl clearValFrom0x02001fe0
	ldrb r0, [r4]
	subs r0, #3
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	movs r1, #0
	bl loadBeatPalette
_080F5510:
	ldr r1, _080F551C @ =0x00000DCC
	adds r0, r6, r1
	ldrb r0, [r0, #3]
	bl FUN_08004068
	b _080F5546
	.align 2, 0
_080F551C: .4byte 0x00000DCC
_080F5520:
	adds r0, r1, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #3]
	cmp r0, #0xff
	beq _080F5546
	bl clearValFrom0x02001fe0
	movs r0, #3
	movs r1, #0
	bl loadBeatPalette
	movs r0, #3
	bl FUN_08004068
	movs r0, #3
	bl clearValFrom0x02001fe0
	movs r0, #0xff
	strb r0, [r4, #3]
_080F5546:
	ldr r0, _080F55D8 @ =0x00000DCC
	adds r1, r6, r0
	movs r0, #2
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080F5556
	movs r0, #0
	strb r0, [r1, #2]
_080F5556:
	ldrb r0, [r1, #2]
	lsrs r5, r0, #3
	cmp r7, r5
	beq _080F55CE
	ldr r4, _080F55DC @ =0x08386378
	adds r4, r5, r4
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080F55E0 @ =0x08547280
	adds r0, r0, r1
	ldr r1, _080F55E4 @ =0x02002146
	mov r8, r1
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080F55E8 @ =0x0854728C
	adds r0, r0, r1
	movs r1, #0
	bl transferPalette
	ldr r0, _080F55EC @ =0x08386388
	adds r2, r5, r0
	adds r0, r7, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080F55CE
	ldr r0, _080F55F0 @ =0x00000ED8
	adds r4, r6, r0
	adds r0, r1, #0
	lsls r0, r0, #2
	ldr r1, _080F55F4 @ =0x085222A0
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xc
	movs r3, #7
	bl loadBgMap
	mov r1, r8
	ldrh r0, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r0
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r4, #0
	bl FUN_080039ac
_080F55CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F55D8: .4byte 0x00000DCC
_080F55DC: .4byte 0x08386378
_080F55E0: .4byte 0x08547280
_080F55E4: .4byte 0x02002146
_080F55E8: .4byte 0x0854728C
_080F55EC: .4byte 0x08386388
_080F55F0: .4byte 0x00000ED8
_080F55F4: .4byte 0x085222A0

	thumb_func_start printMainMenuString
printMainMenuString: @ 0x080F55F8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080F5614 @ =0x000064AC
	adds r0, r4, r1
	ldr r5, [r0]
	ldrb r0, [r4, #3]
	cmp r0, #7
	bls _080F560A
	b _080F5812
_080F560A:
	lsls r0, r0, #2
	ldr r1, _080F5618 @ =_080F561C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F5614: .4byte 0x000064AC
_080F5618: .4byte _080F561C
_080F561C: @ jump table
	.4byte _080F563C @ case 0
	.4byte _080F568C @ case 1
	.4byte _080F56B8 @ case 2
	.4byte _080F56E4 @ case 3
	.4byte _080F573A @ case 4
	.4byte _080F5768 @ case 5
	.4byte _080F5798 @ case 6
	.4byte _080F57C8 @ case 7
_080F563C:
	ldr r0, _080F565C @ =0x00000DCC
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #6
	bne _080F5678
	ldr r0, _080F5660 @ =0x0202FDC0
	ldrb r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F5668
	ldr r0, _080F5664 @ =0x08372210
	movs r1, #0x99
	lsls r1, r1, #2
	b _080F57D8
	.align 2, 0
_080F565C: .4byte 0x00000DCC
_080F5660: .4byte 0x0202FDC0
_080F5664: .4byte 0x08372210
_080F5668:
	ldr r0, _080F5674 @ =0x08372210
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r0, r0, r2
	b _080F57DA
	.align 2, 0
_080F5674: .4byte 0x08372210
_080F5678:
	ldr r1, _080F5688 @ =0x08372210
	ldrb r0, [r2]
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	b _080F57D8
	.align 2, 0
_080F5688: .4byte 0x08372210
_080F568C:
	ldr r0, _080F56A8 @ =0x00000DCC
	adds r2, r4, r0
	ldr r1, _080F56AC @ =0x00000E17
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080F569C
	b _080F5812
_080F569C:
	ldr r1, _080F56B0 @ =0x08372210
	ldrb r0, [r2, #1]
	ldr r2, _080F56B4 @ =0x00000135
	adds r0, r0, r2
	lsls r0, r0, #1
	b _080F57D8
	.align 2, 0
_080F56A8: .4byte 0x00000DCC
_080F56AC: .4byte 0x00000E17
_080F56B0: .4byte 0x08372210
_080F56B4: .4byte 0x00000135
_080F56B8:
	ldr r0, _080F56D4 @ =0x00000DCC
	adds r2, r4, r0
	ldr r1, _080F56D8 @ =0x00000E17
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080F56C8
	b _080F5812
_080F56C8:
	ldr r1, _080F56DC @ =0x08372210
	ldrb r0, [r2, #1]
	ldr r2, _080F56E0 @ =0x00000135
	adds r0, r0, r2
	lsls r0, r0, #1
	b _080F57D8
	.align 2, 0
_080F56D4: .4byte 0x00000DCC
_080F56D8: .4byte 0x00000E17
_080F56DC: .4byte 0x08372210
_080F56E0: .4byte 0x00000135
_080F56E4:
	ldr r1, _080F571C @ =0x00000E17
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080F56F0
	b _080F5812
_080F56F0:
	ldr r0, _080F5720 @ =0x08372210
	ldr r2, _080F5724 @ =0x00000272
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _080F5728 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #1
	movs r2, #0x12
	bl print
	ldr r0, _080F572C @ =0x00000E1B
	adds r1, r4, r0
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #9
	bhi _080F5730
	movs r1, #0xc
	b _080F5732
	.align 2, 0
_080F571C: .4byte 0x00000E17
_080F5720: .4byte 0x08372210
_080F5724: .4byte 0x00000272
_080F5728: .4byte 0x08372AA0
_080F572C: .4byte 0x00000E1B
_080F5730:
	movs r1, #0xd
_080F5732:
	movs r2, #0x12
	bl printNumber
	b _080F5812
_080F573A:
	ldr r2, _080F5760 @ =0x00000DCC
	adds r1, r4, r2
	adds r2, #0x4b
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F5812
	ldrb r1, [r1, #1]
	adds r0, r4, #0
	bl FUN_080f597c
	ldr r1, _080F5764 @ =0x08372210
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r0, r2
	b _080F57D8
	.align 2, 0
_080F5760: .4byte 0x00000DCC
_080F5764: .4byte 0x08372210
_080F5768:
	ldr r0, _080F578C @ =0x00000DCC
	adds r1, r4, r0
	ldr r2, _080F5790 @ =0x00000E17
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F5812
	ldrb r1, [r1, #1]
	adds r0, r4, #0
	bl FUN_080f597c
	ldr r1, _080F5794 @ =0x08372210
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r0, r2
	b _080F57D8
	.align 2, 0
_080F578C: .4byte 0x00000DCC
_080F5790: .4byte 0x00000E17
_080F5794: .4byte 0x08372210
_080F5798:
	ldr r0, _080F57BC @ =0x00000DCC
	adds r1, r4, r0
	ldr r2, _080F57C0 @ =0x00000E17
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F5812
	ldrb r1, [r1, #1]
	adds r0, r4, #0
	bl FUN_080f597c
	ldr r1, _080F57C4 @ =0x08372210
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r0, r2
	b _080F57D8
	.align 2, 0
_080F57BC: .4byte 0x00000DCC
_080F57C0: .4byte 0x00000E17
_080F57C4: .4byte 0x08372210
_080F57C8:
	ldr r0, _080F57EC @ =0x0202FDC0
	ldrb r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F57FC
	ldr r0, _080F57F0 @ =0x08372210
	ldr r1, _080F57F4 @ =0x00000266
_080F57D8:
	adds r0, r0, r1
_080F57DA:
	ldrh r0, [r0]
	ldr r1, _080F57F8 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #1
	movs r2, #0x12
	bl print
	b _080F5812
	.align 2, 0
_080F57EC: .4byte 0x0202FDC0
_080F57F0: .4byte 0x08372210
_080F57F4: .4byte 0x00000266
_080F57F8: .4byte 0x08372AA0
_080F57FC:
	ldr r0, _080F5818 @ =0x08372210
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _080F581C @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #1
	movs r2, #0x12
	bl print
_080F5812:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F5818: .4byte 0x08372210
_080F581C: .4byte 0x08372AA0

	thumb_func_start FUN_080f5820
FUN_080f5820: @ 0x080F5820
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080F5894 @ =0x000064AC
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r1, #0xff
	bne _080F589C
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0xb4
	ldrb r1, [r3, #0x17]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080F584C
	ldr r1, _080F5898 @ =0x00000DD2
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #1
_080F584C:
	ldrb r1, [r3, #0x17]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5866
	ldr r1, _080F5898 @ =0x00000DD2
	adds r0, r4, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F5866:
	ldrb r1, [r3, #0x17]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F587E
	ldr r1, _080F5898 @ =0x00000DD2
	adds r0, r4, r1
	adds r0, r0, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F587E:
	ldrb r1, [r3, #0x17]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F58AC
	ldr r1, _080F5898 @ =0x00000DD2
	adds r0, r4, r1
	adds r0, r0, r2
	movs r1, #3
	strb r1, [r0]
	b _080F58AC
	.align 2, 0
_080F5894: .4byte 0x000064AC
_080F5898: .4byte 0x00000DD2
_080F589C:
	ldr r2, _080F58A8 @ =0x00000DD2
	adds r0, r4, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080F58AE
	.align 2, 0
_080F58A8: .4byte 0x00000DD2
_080F58AC:
	movs r0, #0xff
_080F58AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_080f58b4
FUN_080f58b4: @ 0x080F58B4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080F595C @ =0x000064AC
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r1, #0xff
	bne _080F5964
	movs r2, #0
	adds r4, r0, #0
	adds r4, #0xb4
	ldrb r1, [r4, #0x18]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080F58E0
	ldr r1, _080F5960 @ =0x00000DD2
	adds r0, r3, r1
	strb r2, [r0]
	movs r2, #1
_080F58E0:
	ldrb r1, [r4, #0x18]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080F58FA
	ldr r1, _080F5960 @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F58FA:
	ldrb r1, [r4, #0x18]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5914
	ldr r1, _080F5960 @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F5914:
	ldrb r1, [r4, #0x18]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F592C
	ldr r1, _080F5960 @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F592C:
	ldrb r1, [r4, #0x18]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F5946
	ldr r1, _080F5960 @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #5
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F5946:
	ldrb r1, [r4, #0x18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F5974
	ldr r1, _080F5960 @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #3
	strb r1, [r0]
	b _080F5974
	.align 2, 0
_080F595C: .4byte 0x000064AC
_080F5960: .4byte 0x00000DD2
_080F5964:
	ldr r2, _080F5970 @ =0x00000DD2
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080F5976
	.align 2, 0
_080F5970: .4byte 0x00000DD2
_080F5974:
	movs r0, #0
_080F5976:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_080f597c
FUN_080f597c: @ 0x080F597C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080F5A58 @ =0x000064AC
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r1, #0xff
	bne _080F5A60
	movs r2, #0
	adds r4, r0, #0
	adds r4, #0xb4
	ldrb r1, [r4, #0x19]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080F59A8
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	strb r2, [r0]
	movs r2, #1
_080F59A8:
	ldrb r1, [r4, #0x19]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080F59C2
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F59C2:
	ldrb r1, [r4, #0x19]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080F59DC
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F59DC:
	ldrb r1, [r4, #0x19]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F59F6
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F59F6:
	ldrb r1, [r4, #0x19]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F5A0E
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F5A0E:
	ldrb r1, [r4, #0x19]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F5A28
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #5
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F5A28:
	ldrb r1, [r4, #0x19]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F5A42
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #6
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F5A42:
	ldrb r1, [r4, #0x19]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F5A70
	ldr r1, _080F5A5C @ =0x00000DD2
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #7
	strb r1, [r0]
	b _080F5A70
	.align 2, 0
_080F5A58: .4byte 0x000064AC
_080F5A5C: .4byte 0x00000DD2
_080F5A60:
	ldr r2, _080F5A6C @ =0x00000DD2
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080F5A72
	.align 2, 0
_080F5A6C: .4byte 0x00000DD2
_080F5A70:
	movs r0, #0
_080F5A72:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start FUN_080f5a78
FUN_080f5a78: @ 0x080F5A78
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r3, [r2, #8]
	cmp r3, #0xff
	beq _080F5A98
	ldrb r0, [r2, #9]
	adds r1, r0, #0
	cmp r1, #0xff
	beq _080F5A98
	cmp r3, r1
	bhs _080F5A98
	adds r1, r3, #0
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080F5A98:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r2, [r0, #0xa]
	cmp r2, #0xff
	beq _080F5AB4
	ldrb r3, [r0, #0xb]
	adds r1, r3, #0
	cmp r1, #0xff
	beq _080F5AB4
	cmp r2, r1
	bhs _080F5AB4
	adds r1, r2, #0
	strb r3, [r0, #0xa]
	strb r1, [r0, #0xb]
_080F5AB4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start keyConfigMenuScript
keyConfigMenuScript: @ 0x080F5ABC
	push {lr}
	ldr r2, _080F5AD0 @ =0x08386440
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080F5AD0: .4byte 0x08386440

	thumb_func_start initKcMenu
initKcMenu: @ 0x080F5AD4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	ldr r0, _080F5B6C @ =0x00000DF8
	adds r0, r0, r5
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldr r0, _080F5B70 @ =0x08547438
	ldr r6, _080F5B74 @ =0x02002146
	ldrh r2, [r6]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F5B78 @ =0x08547444
	movs r1, #0
	bl transferPalette
	ldr r0, _080F5B7C @ =0x085222F8
	ldr r0, [r0]
	ldr r1, _080F5B80 @ =0x08522300
	adds r0, r0, r1
	ldr r1, _080F5B84 @ =0x00000ED8
	adds r4, r5, r1
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuFastSet
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080f614c
	movs r0, #0x43
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x43
	bl FUN_08004068
	movs r0, #0x43
	bl clearValFrom0x02001fe0
	movs r0, #0x44
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x40
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x40
	mov r1, r8
	strb r0, [r1, #1]
	ldrh r0, [r6]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r0
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r4, #0
	bl FUN_080039ac
	movs r0, #2
	strb r0, [r5, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F5B6C: .4byte 0x00000DF8
_080F5B70: .4byte 0x08547438
_080F5B74: .4byte 0x02002146
_080F5B78: .4byte 0x08547444
_080F5B7C: .4byte 0x085222F8
_080F5B80: .4byte 0x08522300
_080F5B84: .4byte 0x00000ED8

	thumb_func_start kcMenuFrameScript
kcMenuFrameScript: @ 0x080F5B88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _080F5C0C @ =0x000064AC
	add r0, r8
	ldr r5, [r0]
	ldr r4, _080F5C10 @ =0x00000DF8
	add r4, r8
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080F5BB6
	mov r0, r8
	bl slideMenu
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F5BB6
	b _080F6024
_080F5BB6:
	ldrb r0, [r4]
	mov sb, r0
	movs r7, #0
	ldr r6, _080F5C14 @ =0x02001EB0
	ldrh r1, [r6, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F5BDA
	mov r0, sb
	adds r0, #5
	movs r1, #6
	bl __modsi3
	strb r0, [r4]
	movs r0, #1
	bl playSound
_080F5BDA:
	ldrh r1, [r6, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F5BF8
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	strb r0, [r4]
	movs r7, #5
	movs r0, #1
	bl playSound
_080F5BF8:
	ldrb r0, [r4]
	cmp r0, #5
	bls _080F5C00
	b _080F5F8A
_080F5C00:
	lsls r0, r0, #2
	ldr r1, _080F5C18 @ =_080F5C1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F5C0C: .4byte 0x000064AC
_080F5C10: .4byte 0x00000DF8
_080F5C14: .4byte 0x02001EB0
_080F5C18: .4byte _080F5C1C
_080F5C1C: @ jump table
	.4byte _080F5C34 @ case 0
	.4byte _080F5D04 @ case 1
	.4byte _080F5D74 @ case 2
	.4byte _080F5DF6 @ case 3
	.4byte _080F5E98 @ case 4
	.4byte _080F5F44 @ case 5
_080F5C34:
	ldr r0, _080F5C58 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F5C5C
	adds r4, r5, #0
	adds r4, #0xd8
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	movs r0, #1
	bl playSound
	b _080F5C7A
	.align 2, 0
_080F5C58: .4byte 0x02001EB0
_080F5C5C:
	movs r0, #0x20
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0xd8
	cmp r0, #0
	beq _080F5C7A
	ldrb r0, [r4]
	adds r0, #2
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	movs r0, #1
	bl playSound
_080F5C7A:
	adds r2, r5, #0
	adds r2, #0xb4
	ldrb r4, [r4]
	cmp r4, #0
	bne _080F5CB0
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #1
	strh r0, [r1]
	ldr r3, _080F5CAC @ =0x0000021E
	adds r1, r5, r3
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, #0x20
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	adds r2, #6
	adds r1, r5, r2
	adds r0, #0xfe
	strh r0, [r1]
	b _080F5F8A
	.align 2, 0
_080F5CAC: .4byte 0x0000021E
_080F5CB0:
	cmp r4, #1
	bne _080F5CE0
	movs r3, #0x87
	lsls r3, r3, #2
	adds r0, r5, r3
	strh r4, [r0]
	ldr r0, _080F5CDC @ =0x0000021E
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #2
	strh r0, [r1]
	adds r3, #6
	adds r1, r5, r3
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	b _080F5F8A
	.align 2, 0
_080F5CDC: .4byte 0x0000021E
_080F5CE0:
	ldrh r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #2
	adds r0, r5, r3
	strh r1, [r0]
	ldrh r1, [r2, #0x1e]
	adds r3, #2
	adds r0, r5, r3
	strh r1, [r0]
	ldrh r1, [r2, #0x20]
	adds r3, #2
	adds r0, r5, r3
	strh r1, [r0]
	ldrh r1, [r2, #0x22]
	ldr r2, _080F5D00 @ =0x00000222
	b _080F5F2E
	.align 2, 0
_080F5D00: .4byte 0x00000222
_080F5D04:
	adds r0, r5, #0
	adds r0, #0xd8
	ldrb r2, [r0]
	adds r4, r5, #0
	adds r4, #0xb4
	cmp r2, #2
	beq _080F5D14
	b _080F5F38
_080F5D14:
	ldrh r6, [r4, #0x20]
	ldr r0, _080F5D28 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5D2C
	strh r3, [r4, #0x20]
	b _080F5D42
	.align 2, 0
_080F5D28: .4byte 0x02001EB0
_080F5D2C:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080F5D40
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5D4A
_080F5D40:
	strh r2, [r4, #0x20]
_080F5D42:
	movs r0, #2
	bl playSound
	b _080F5D5E
_080F5D4A:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5D5E
	strh r2, [r4, #0x20]
	movs r0, #2
	bl playSound
_080F5D5E:
	ldrh r0, [r4, #0x1c]
	ldrh r3, [r4, #0x20]
	cmp r0, r3
	bne _080F5D68
	strh r6, [r4, #0x1c]
_080F5D68:
	ldrh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x20]
	cmp r0, r1
	bne _080F5E66
	strh r6, [r4, #0x1e]
	b _080F5E66
_080F5D74:
	adds r0, r5, #0
	adds r0, #0xd8
	ldrb r2, [r0]
	adds r4, r5, #0
	adds r4, #0xb4
	cmp r2, #2
	beq _080F5D84
	b _080F5F38
_080F5D84:
	ldrh r6, [r4, #0x1c]
	ldr r0, _080F5D98 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5D9C
	strh r3, [r4, #0x1c]
	b _080F5DB2
	.align 2, 0
_080F5D98: .4byte 0x02001EB0
_080F5D9C:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080F5DB0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5DBA
_080F5DB0:
	strh r2, [r4, #0x1c]
_080F5DB2:
	movs r0, #2
	bl playSound
	b _080F5DCE
_080F5DBA:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5DCE
	strh r2, [r4, #0x1c]
	movs r0, #2
	bl playSound
_080F5DCE:
	ldrh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	bne _080F5DD8
	strh r6, [r4, #0x1e]
_080F5DD8:
	ldrh r2, [r4, #0x1c]
	ldrh r0, [r4, #0x20]
	adds r1, r2, #0
	cmp r0, r1
	bne _080F5DE4
	strh r6, [r4, #0x20]
_080F5DE4:
	ldrh r0, [r4, #0x22]
	cmp r0, r1
	bne _080F5DEC
	strh r6, [r4, #0x22]
_080F5DEC:
	movs r3, #0x87
	lsls r3, r3, #2
	adds r0, r5, r3
	strh r2, [r0]
	b _080F5F1A
_080F5DF6:
	adds r0, r5, #0
	adds r0, #0xd8
	ldrb r2, [r0]
	adds r4, r5, #0
	adds r4, #0xb4
	cmp r2, #2
	beq _080F5E06
	b _080F5F38
_080F5E06:
	ldrh r6, [r4, #0x1e]
	ldr r0, _080F5E1C @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5E20
	strh r3, [r4, #0x1e]
	b _080F5E36
	.align 2, 0
_080F5E1C: .4byte 0x02001EB0
_080F5E20:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080F5E34
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5E3E
_080F5E34:
	strh r2, [r4, #0x1e]
_080F5E36:
	movs r0, #2
	bl playSound
	b _080F5E52
_080F5E3E:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5E52
	strh r2, [r4, #0x1e]
	movs r0, #2
	bl playSound
_080F5E52:
	ldrh r0, [r4, #0x1c]
	ldrh r3, [r4, #0x1e]
	cmp r0, r3
	bne _080F5E5C
	strh r6, [r4, #0x1c]
_080F5E5C:
	ldrh r0, [r4, #0x20]
	ldrh r1, [r4, #0x1e]
	cmp r0, r1
	bne _080F5E66
	strh r6, [r4, #0x20]
_080F5E66:
	ldrh r0, [r4, #0x22]
	cmp r0, r1
	bne _080F5E6E
	strh r6, [r4, #0x22]
_080F5E6E:
	ldrh r1, [r4, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r4, #0x1e]
	ldr r3, _080F5E94 @ =0x0000021E
	adds r0, r5, r3
	strh r1, [r0]
	ldrh r1, [r4, #0x20]
	adds r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r4, #0x22]
	adds r3, #4
	adds r0, r5, r3
	strh r1, [r0]
	b _080F5F8A
	.align 2, 0
_080F5E94: .4byte 0x0000021E
_080F5E98:
	adds r0, r5, #0
	adds r0, #0xd8
	ldrb r2, [r0]
	adds r4, r5, #0
	adds r4, #0xb4
	cmp r2, #2
	bne _080F5F38
	ldrh r6, [r4, #0x22]
	ldr r0, _080F5EBC @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5EC0
	strh r3, [r4, #0x22]
	b _080F5ED6
	.align 2, 0
_080F5EBC: .4byte 0x02001EB0
_080F5EC0:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080F5ED4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5EDE
_080F5ED4:
	strh r2, [r4, #0x22]
_080F5ED6:
	movs r0, #2
	bl playSound
	b _080F5EF2
_080F5EDE:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F5EF2
	strh r2, [r4, #0x22]
	movs r0, #2
	bl playSound
_080F5EF2:
	adds r1, r4, #0
	ldrh r0, [r1, #0x1c]
	ldrh r2, [r1, #0x22]
	cmp r0, r2
	bne _080F5EFE
	strh r6, [r1, #0x1c]
_080F5EFE:
	ldrh r0, [r1, #0x1e]
	ldrh r2, [r1, #0x22]
	cmp r0, r2
	bne _080F5F08
	strh r6, [r1, #0x1e]
_080F5F08:
	ldrh r0, [r1, #0x20]
	cmp r0, r2
	bne _080F5F10
	strh r6, [r1, #0x20]
_080F5F10:
	ldrh r1, [r4, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #2
	adds r0, r5, r3
	strh r1, [r0]
_080F5F1A:
	ldrh r1, [r4, #0x1e]
	ldr r2, _080F5F34 @ =0x0000021E
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r4, #0x20]
	adds r3, #4
	adds r0, r5, r3
	strh r1, [r0]
	ldrh r1, [r4, #0x22]
	adds r2, #4
_080F5F2E:
	adds r0, r5, r2
	strh r1, [r0]
	b _080F5F8A
	.align 2, 0
_080F5F34: .4byte 0x0000021E
_080F5F38:
	ldr r0, _080F5F40 @ =0x00000DF8
	add r0, r8
	strb r7, [r0]
	b _080F5F8A
	.align 2, 0
_080F5F40: .4byte 0x00000DF8
_080F5F44:
	ldr r0, _080F5F68 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F5F6C
	adds r4, r5, #0
	adds r4, #0xd9
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	movs r0, #1
	bl playSound
	b _080F5F8A
	.align 2, 0
_080F5F68: .4byte 0x02001EB0
_080F5F6C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F5F8A
	adds r4, r5, #0
	adds r4, #0xd9
	ldrb r0, [r4]
	adds r0, #2
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	movs r0, #1
	bl playSound
_080F5F8A:
	ldr r1, _080F5FC8 @ =0x00000ED8
	add r1, r8
	mov r0, r8
	bl FUN_080f614c
	ldr r4, _080F5FCC @ =0x00000DF8
	add r4, r8
	ldrb r0, [r4]
	cmp sb, r0
	beq _080F5FFC
	cmp r0, #5
	bne _080F5FD0
	ldrb r0, [r4, #1]
	bl clearValFrom0x02001fe0
	movs r0, #0x42
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x42
	bl FUN_08004068
	movs r0, #0x42
	bl clearValFrom0x02001fe0
	movs r0, #0x41
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x41
	b _080F5FFA
	.align 2, 0
_080F5FC8: .4byte 0x00000ED8
_080F5FCC: .4byte 0x00000DF8
_080F5FD0:
	mov r3, sb
	cmp r3, #5
	bne _080F5FFC
	ldrb r0, [r4, #1]
	bl clearValFrom0x02001fe0
	movs r0, #0x43
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x43
	bl FUN_08004068
	movs r0, #0x43
	bl clearValFrom0x02001fe0
	movs r0, #0x40
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x40
_080F5FFA:
	strb r0, [r4, #1]
_080F5FFC:
	movs r0, #0x44
	bl FUN_08004068
	ldr r0, _080F6030 @ =0x00000DF8
	add r0, r8
	ldrb r0, [r0, #1]
	bl FUN_08004068
	ldr r0, _080F6034 @ =0x00000ED8
	add r0, r8
	ldr r1, _080F6038 @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
_080F6024:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6030: .4byte 0x00000DF8
_080F6034: .4byte 0x00000ED8
_080F6038: .4byte 0x02002146

	thumb_func_start slideOutKcMenu
slideOutKcMenu: @ 0x080F603C
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F6054 @ =0x00000E19
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080F605C
	ldr r1, _080F6058 @ =0x02002150
	ldrh r0, [r1]
	adds r0, #0x10
	b _080F6062
	.align 2, 0
_080F6054: .4byte 0x00000E19
_080F6058: .4byte 0x02002150
_080F605C:
	ldr r1, _080F6090 @ =0x02002150
	ldrh r0, [r1]
	subs r0, #0x10
_080F6062:
	strh r0, [r1]
	adds r3, r1, #0
	ldrh r0, [r3]
	ldr r1, _080F6094 @ =0x000001FF
	ands r1, r0
	strh r1, [r3]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080F608C
	ldr r3, _080F6098 @ =0x00000E19
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #1
	strb r0, [r2, #2]
	adds r0, r2, #0
	bl exitKcMenu
_080F608C:
	pop {r0}
	bx r0
	.align 2, 0
_080F6090: .4byte 0x02002150
_080F6094: .4byte 0x000001FF
_080F6098: .4byte 0x00000E19

	thumb_func_start exitKcMenu
exitKcMenu: @ 0x080F609C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x44
	bl clearValFrom0x02001fe0
	ldr r0, _080F60B8 @ =0x00000DF8
	adds r4, r4, r0
	ldrb r0, [r4, #1]
	bl clearValFrom0x02001fe0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F60B8: .4byte 0x00000DF8

	thumb_func_start FUN_080f60bc
FUN_080f60bc: @ 0x080F60BC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	cmp r1, #2
	beq _080F60F8
	cmp r1, #2
	bgt _080F60DC
	cmp r1, #1
	beq _080F60EE
	b _080F6118
_080F60DC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r6, r0
	beq _080F610C
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r6, r0
	beq _080F6102
	b _080F6118
_080F60EE:
	lsls r0, r4, #1
	adds r0, r0, r7
	lsls r1, r5, #0xc
	movs r2, #0xa1
	b _080F6114
_080F60F8:
	lsls r0, r4, #1
	adds r0, r0, r7
	lsls r1, r5, #0xc
	movs r2, #0xa2
	b _080F6114
_080F6102:
	lsls r0, r4, #1
	adds r0, r0, r7
	lsls r1, r5, #0xc
	movs r2, #0xa4
	b _080F6114
_080F610C:
	lsls r0, r4, #1
	adds r0, r0, r7
	lsls r1, r5, #0xc
	movs r2, #0xa5
_080F6114:
	orrs r1, r2
	strh r1, [r0]
_080F6118:
	ldr r0, _080F6148 @ =0x0000013F
	cmp r4, r0
	bhi _080F6142
	lsls r3, r4, #1
	adds r3, r3, r7
	lsls r2, r5, #0xc
	movs r1, #0xcf
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #2]
	movs r1, #0xd0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #4]
	movs r1, #0xd1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
	movs r0, #0xd2
	orrs r2, r0
	strh r2, [r3, #8]
_080F6142:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6148: .4byte 0x0000013F

	thumb_func_start FUN_080f614c
FUN_080f614c: @ 0x080F614C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	adds r5, r1, #0
	ldr r1, _080F63C4 @ =0x000064AC
	adds r0, r0, r1
	ldr r6, [r0]
	movs r4, #0
	ldr r2, _080F63C8 @ =0x08386459
	mov sl, r2
	ldr r0, _080F63CC @ =0x00000FFF
	mov sb, r0
	ldr r1, _080F63D0 @ =0x08386450
	mov r8, r1
	movs r2, #0xd8
	adds r2, r2, r6
	mov ip, r2
	mov r7, ip
_080F6178:
	lsls r3, r4, #1
	adds r3, r3, r5
	adds r3, #0xcc
	ldrh r0, [r3]
	mov r2, sb
	ands r2, r0
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080F6178
	movs r4, #0
	movs r0, #0xd9
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x88
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0xc]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, _080F63D4 @ =0x0000021E
	adds r0, r6, r0
	str r0, [sp, #8]
	ldr r1, _080F63D8 @ =0x00000222
	adds r1, r6, r1
	str r1, [sp, #0x10]
	ldr r2, _080F63CC @ =0x00000FFF
	mov r8, r2
	ldr r7, _080F63DC @ =0x08386451
	mov r6, ip
_080F61CA:
	lsls r3, r4, #1
	adds r3, r3, r5
	adds r3, #0xda
	ldrh r0, [r3]
	mov r2, r8
	ands r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080F61CA
	movs r4, #0
	ldr r0, _080F63CC @ =0x00000FFF
	mov r8, r0
	ldr r7, _080F63E0 @ =0x08386452
	mov r6, ip
_080F61FA:
	lsls r3, r4, #1
	adds r3, r3, r5
	adds r3, #0xe8
	ldrh r0, [r3]
	mov r2, r8
	ands r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080F61FA
	movs r4, #0
	ldr r1, _080F63E4 @ =0x0000030A
	mov r8, r1
	ldr r2, _080F63CC @ =0x00000FFF
	mov ip, r2
	ldr r7, _080F63D0 @ =0x08386450
	mov r6, sb
_080F622E:
	lsls r3, r4, #1
	adds r3, r3, r5
	add r3, r8
	ldrh r0, [r3]
	mov r2, ip
	ands r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080F622E
	movs r4, #0
	movs r0, #0xc6
	lsls r0, r0, #2
	mov r8, r0
	ldr r1, _080F63CC @ =0x00000FFF
	mov ip, r1
	ldr r7, _080F63DC @ =0x08386451
	mov r6, sb
_080F6264:
	lsls r3, r4, #1
	adds r3, r3, r5
	add r3, r8
	ldrh r0, [r3]
	mov r2, ip
	ands r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080F6264
	movs r4, #0
	ldr r2, _080F63E8 @ =0x00000326
	mov r8, r2
	ldr r0, _080F63CC @ =0x00000FFF
	mov ip, r0
	ldr r7, _080F63E0 @ =0x08386452
	mov r6, sb
_080F6298:
	lsls r3, r4, #1
	adds r3, r3, r5
	add r3, r8
	ldrh r0, [r3]
	mov r2, ip
	ands r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080F6298
	ldr r7, [sp, #0xc]
	ldrh r1, [r7]
	ldr r2, [sp]
	ldr r0, _080F63EC @ =0x00000DF8
	adds r4, r2, r0
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, sl
	ldrb r3, [r0]
	adds r0, r5, #0
	movs r2, #0xb3
	bl FUN_080f60bc
	ldr r2, [sp, #4]
	ldrh r1, [r2]
	ldrb r0, [r4]
	lsls r0, r0, #2
	mov r2, sl
	adds r2, #1
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r0, r5, #0
	movs r2, #0xd3
	bl FUN_080f60bc
	ldr r0, [sp, #8]
	ldrh r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #2
	mov r2, sl
	adds r2, #2
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r0, r5, #0
	movs r2, #0xf3
	bl FUN_080f60bc
	ldr r6, [sp, #0x10]
	ldrh r1, [r6]
	ldr r2, _080F63F0 @ =0x00000113
	ldrb r0, [r4]
	lsls r0, r0, #2
	mov r3, sl
	adds r3, #3
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r5, #0
	bl FUN_080f60bc
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _080F6414
	ldrh r1, [r7]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	ldrh r1, [r6]
	movs r2, #0xf3
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	ldr r2, _080F63F4 @ =0x000003CE
	adds r1, r5, r2
	ldr r2, _080F63F8 @ =0x000050B9
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r1, [r7]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	ldr r0, _080F63FC @ =0x000003DE
	adds r1, r5, r0
	ldr r2, _080F6400 @ =0x000050C8
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xf8
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F6404 @ =0x000003E2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xf9
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F6408 @ =0x000003E6
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F640C @ =0x000003EA
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r2, #0x2e
	adds r1, r2, #0
	strh r1, [r0]
	ldr r2, _080F6410 @ =0x000003EE
	adds r0, r5, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	b _080F6564
	.align 2, 0
_080F63C4: .4byte 0x000064AC
_080F63C8: .4byte 0x08386459
_080F63CC: .4byte 0x00000FFF
_080F63D0: .4byte 0x08386450
_080F63D4: .4byte 0x0000021E
_080F63D8: .4byte 0x00000222
_080F63DC: .4byte 0x08386451
_080F63E0: .4byte 0x08386452
_080F63E4: .4byte 0x0000030A
_080F63E8: .4byte 0x00000326
_080F63EC: .4byte 0x00000DF8
_080F63F0: .4byte 0x00000113
_080F63F4: .4byte 0x000003CE
_080F63F8: .4byte 0x000050B9
_080F63FC: .4byte 0x000003DE
_080F6400: .4byte 0x000050C8
_080F6404: .4byte 0x000003E2
_080F6408: .4byte 0x000003E6
_080F640C: .4byte 0x000003EA
_080F6410: .4byte 0x000003EE
_080F6414:
	cmp r0, #1
	bne _080F64C4
	ldrh r1, [r7]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, _080F64A8 @ =0x000050A0
	adds r4, r2, #0
	strh r4, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	ldrh r1, [r6]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	ldr r2, _080F64AC @ =0x000003DE
	adds r1, r5, r2
	ldr r2, _080F64B0 @ =0x000050C8
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xf8
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F64B4 @ =0x000003E2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xf9
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F64B8 @ =0x000003E6
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F64BC @ =0x000003EA
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	ldr r2, _080F64C0 @ =0x000003EE
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	strh r4, [r0]
	b _080F6564
	.align 2, 0
_080F64A8: .4byte 0x000050A0
_080F64AC: .4byte 0x000003DE
_080F64B0: .4byte 0x000050C8
_080F64B4: .4byte 0x000003E2
_080F64B8: .4byte 0x000003E6
_080F64BC: .4byte 0x000003EA
_080F64C0: .4byte 0x000003EE
_080F64C4:
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, _080F6574 @ =0x000050A0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r2, _080F6578 @ =0x000003CE
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r3, #5
	bl FUN_080f60bc
	ldr r2, _080F657C @ =0x000003DE
	adds r1, r5, r2
	ldr r2, _080F6580 @ =0x000050C0
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xf8
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F6584 @ =0x000003E2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xf9
	lsls r0, r0, #2
	adds r1, r5, r0
	subs r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F6588 @ =0x000003E6
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F658C @ =0x000003EA
	adds r1, r5, r0
	subs r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080F6590 @ =0x000003EE
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xfc
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_080F6564:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6574: .4byte 0x000050A0
_080F6578: .4byte 0x000003CE
_080F657C: .4byte 0x000003DE
_080F6580: .4byte 0x000050C0
_080F6584: .4byte 0x000003E2
_080F6588: .4byte 0x000003E6
_080F658C: .4byte 0x000003EA
_080F6590: .4byte 0x000003EE

	thumb_func_start elfMenuScript
elfMenuScript: @ 0x080F6594
	push {lr}
	ldr r2, _080F65A8 @ =0x08386474
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080F65A8: .4byte 0x08386474

	thumb_func_start initElfMenu
initElfMenu: @ 0x080F65AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _080F6634 @ =0x000064AC
	adds r0, r7, r1
	ldr r5, [r0]
	ldr r0, _080F6638 @ =0x0854744C
	ldr r4, _080F663C @ =0x02002146
	ldrh r2, [r4]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F6640 @ =0x08547458
	movs r1, #0
	bl transferPalette
	ldr r0, _080F6644 @ =0x085222FC
	ldr r0, [r0]
	ldr r2, _080F6648 @ =0x08522304
	adds r0, r0, r2
	ldr r2, _080F664C @ =0x000016D8
	adds r1, r7, r2
	movs r2, #0xf0
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r1, _080F6650 @ =0x00000ED8
	adds r0, r7, r1
	ldrh r2, [r4]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
	movs r4, #0
	ldr r2, _080F6654 @ =0x00000DFC
	adds r1, r7, r2
	movs r2, #0
_080F660A:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080F660A
	ldr r0, _080F6654 @ =0x00000DFC
	adds r2, r7, r0
	movs r3, #0
	strb r3, [r2, #6]
	adds r0, r5, #0
	adds r0, #0xb4
	ldrb r1, [r0, #0x1a]
	str r0, [sp]
	cmp r1, #1
	bne _080F6658
	movs r0, #4
	strb r0, [r2, #7]
	b _080F665A
	.align 2, 0
_080F6634: .4byte 0x000064AC
_080F6638: .4byte 0x0854744C
_080F663C: .4byte 0x02002146
_080F6640: .4byte 0x08547458
_080F6644: .4byte 0x085222FC
_080F6648: .4byte 0x08522304
_080F664C: .4byte 0x000016D8
_080F6650: .4byte 0x00000ED8
_080F6654: .4byte 0x00000DFC
_080F6658:
	strb r3, [r2, #7]
_080F665A:
	ldr r2, _080F6730 @ =0x00000DFC
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1, #8]
	strb r2, [r1, #9]
	movs r0, #6
	strb r0, [r1, #0xa]
	movs r0, #0x10
	strb r0, [r1, #0xb]
	strb r2, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0xf]
	ldr r1, _080F6734 @ =0x02002180
	movs r0, #0x84
	lsls r0, r0, #2
	strh r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	ldr r5, _080F6738 @ =0x085D78F8
	adds r0, r4, r5
	ldr r1, _080F673C @ =0x0202F790
	mov r8, r1
	adds r1, #0xa4
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080F6740 @ =0x085D7904
	mov sl, r0
	add r4, sl
	ldr r6, _080F6744 @ =0x0202F590
	adds r0, r6, #0
	adds r0, #0xa4
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	mov sb, r2
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	ldr r4, _080F6748 @ =0x0000067C
	adds r5, r4, r5
	movs r0, #0xa6
	add r8, r0
	mov r2, r8
	ldrh r1, [r2]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	adds r0, r5, #0
	bl loadGraphics
	add r4, sl
	adds r6, #0xa6
	ldrh r1, [r6]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	mov r2, r8
	ldrh r1, [r2]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	adds r0, r5, #0
	bl loadGraphics
	ldrh r1, [r6]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	ldr r1, [sp]
	ldrb r0, [r1, #0x1a]
	cmp r0, #1
	bne _080F674C
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	bl FUN_080e726c
	b _080F6762
	.align 2, 0
_080F6730: .4byte 0x00000DFC
_080F6734: .4byte 0x02002180
_080F6738: .4byte 0x085D78F8
_080F673C: .4byte 0x0202F790
_080F6740: .4byte 0x085D7904
_080F6744: .4byte 0x0202F590
_080F6748: .4byte 0x0000067C
_080F674C:
	movs r4, #0
_080F674E:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_080e726c
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080F674E
_080F6762:
	adds r0, r7, #0
	bl elfMenu_080e7e5c
	movs r0, #0x51
	movs r1, #0
	bl loadBeatPalette
	movs r0, #2
	strb r0, [r7, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start elfMenuNeutralScript
elfMenuNeutralScript: @ 0x080F6784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r1, _080F685C @ =0x000064AC
	adds r0, r5, r1
	ldr r0, [r0]
	mov sl, r0
	ldr r0, _080F6860 @ =0x00000DFC
	adds r4, r5, r0
	ldrb r7, [r4, #8]
	mov sb, r7
	ldrb r6, [r5, #3]
	mov r8, r6
	cmp r6, #0
	bne _080F67B6
	adds r0, r5, #0
	bl slideMenu
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F67B6
	b _080F6918
_080F67B6:
	ldr r1, _080F6864 @ =0x08386484
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl bxR1
	movs r0, #0x51
	bl FUN_08004068
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080F67D6
	bl FUN_08004068
_080F67D6:
	ldr r3, _080F6868 @ =0x02002180
	ldrb r0, [r4, #0xb]
	movs r1, #0x1f
	ands r1, r0
	ldrb r2, [r4, #0xb]
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3, #2]
	ldrb r1, [r4, #8]
	cmp r7, r1
	beq _080F681C
	ldrb r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080F686C @ =0x085475A0
	adds r0, r0, r1
	ldr r1, _080F6870 @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldrb r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080F6874 @ =0x085475AC
	adds r0, r0, r1
	movs r1, #0
	bl transferPalette
_080F681C:
	ldrb r0, [r5, #3]
	cmp r0, #1
	bls _080F6880
	ldrb r0, [r4, #8]
	cmp sb, r0
	bne _080F682C
	cmp r6, #1
	bhi _080F68EE
_080F682C:
	ldrb r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080F6878 @ =0x08547514
	adds r0, r0, r1
	ldr r1, _080F6870 @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldrb r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080F687C @ =0x08547520
	adds r0, r0, r1
	movs r1, #0
	bl transferPalette
	b _080F68EE
	.align 2, 0
_080F685C: .4byte 0x000064AC
_080F6860: .4byte 0x00000DFC
_080F6864: .4byte 0x08386484
_080F6868: .4byte 0x02002180
_080F686C: .4byte 0x085475A0
_080F6870: .4byte 0x02002146
_080F6874: .4byte 0x085475AC
_080F6878: .4byte 0x08547514
_080F687C: .4byte 0x08547520
_080F6880:
	mov r0, r8
	cmp r0, #1
	bls _080F689E
	ldr r0, _080F6928 @ =0x0854758C
	ldr r1, _080F692C @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F6930 @ =0x08547598
	movs r1, #0
	bl transferPalette
_080F689E:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080F68C4
	mov r2, sl
	adds r2, #0xb4
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _080F68C4
	ldr r1, _080F6934 @ =0x08372210
	adds r0, #0x64
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F6938 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x15
	movs r2, #1
	bl print
_080F68C4:
	ldr r1, _080F693C @ =0x00000DFC
	adds r0, r5, r1
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _080F68EE
	mov r2, sl
	adds r2, #0xb4
	ldrb r0, [r2, #1]
	cmp r0, #0xff
	beq _080F68EE
	ldr r1, _080F6934 @ =0x08372210
	adds r0, #0x64
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F6938 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x15
	movs r2, #1
	bl print
_080F68EE:
	adds r0, r5, #0
	bl printElfNames
	adds r0, r5, #0
	bl printElfMenuDescription
	adds r0, r5, #0
	bl printElfMenuBottomString
	ldr r1, _080F6940 @ =0x00000ED8
	adds r0, r5, r1
	ldr r1, _080F692C @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
_080F6918:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6928: .4byte 0x0854758C
_080F692C: .4byte 0x02002146
_080F6930: .4byte 0x08547598
_080F6934: .4byte 0x08372210
_080F6938: .4byte 0x08372AA0
_080F693C: .4byte 0x00000DFC
_080F6940: .4byte 0x00000ED8

	thumb_func_start slideOutElfMenu
slideOutElfMenu: @ 0x080F6944
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F695C @ =0x00000E19
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080F6964
	ldr r1, _080F6960 @ =0x02002150
	ldrh r0, [r1]
	adds r0, #0x10
	b _080F696A
	.align 2, 0
_080F695C: .4byte 0x00000E19
_080F6960: .4byte 0x02002150
_080F6964:
	ldr r1, _080F6998 @ =0x02002150
	ldrh r0, [r1]
	subs r0, #0x10
_080F696A:
	strh r0, [r1]
	adds r3, r1, #0
	ldrh r0, [r3]
	ldr r1, _080F699C @ =0x000001FF
	ands r1, r0
	strh r1, [r3]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080F6994
	ldr r3, _080F69A0 @ =0x00000E19
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #1
	strb r0, [r2, #2]
	adds r0, r2, #0
	bl exitElfMenu
_080F6994:
	pop {r0}
	bx r0
	.align 2, 0
_080F6998: .4byte 0x02002150
_080F699C: .4byte 0x000001FF
_080F69A0: .4byte 0x00000E19

	thumb_func_start exitElfMenu
exitElfMenu: @ 0x080F69A4
	push {r4, lr}
	ldr r1, _080F69CC @ =0x00000DFC
	adds r4, r0, r1
	ldrb r1, [r4, #0xf]
	movs r0, #3
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0xf]
	movs r0, #0x51
	bl clearValFrom0x02001fe0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080F69C6
	bl clearValFrom0x02001fe0
_080F69C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F69CC: .4byte 0x00000DFC

	thumb_func_start noSelectElfMenuList
noSelectElfMenuList: @ 0x080F69D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _080F6A7C @ =0x000064AC
	adds r0, r5, r1
	ldr r3, [r0]
	ldr r2, _080F6A80 @ =0x02002190
	ldrh r1, [r2]
	ldr r0, _080F6A84 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080F6A88 @ =0x00000DFC
	adds r4, r5, r2
	ldrb r0, [r4, #0xb]
	cmp r0, #0xf
	bhi _080F69F2
	adds r0, #1
	strb r0, [r4, #0xb]
_080F69F2:
	ldrb r7, [r4, #7]
	adds r0, r3, #0
	adds r0, #0xb4
	ldrb r0, [r0, #0x1a]
	cmp r0, #1
	beq _080F6A2A
	ldr r6, _080F6A8C @ =0x02001EB0
	ldrh r1, [r6, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F6A14
	adds r0, r7, #4
	movs r1, #5
	bl __modsi3
	strb r0, [r4, #7]
_080F6A14:
	ldrh r1, [r6, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F6A2A
	ldrb r0, [r4, #7]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	strb r0, [r4, #7]
_080F6A2A:
	ldr r0, _080F6A88 @ =0x00000DFC
	adds r4, r5, r0
	ldrb r1, [r4, #7]
	cmp r7, r1
	beq _080F6A3A
	movs r0, #1
	bl playSound
_080F6A3A:
	ldr r0, _080F6A8C @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F6A76
	movs r1, #0
	strb r1, [r4, #6]
	strb r1, [r4, #9]
	movs r0, #1
	strb r0, [r5, #3]
	ldr r2, _080F6A90 @ =0x00000E17
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080F6A60
	bl clearValFrom0x02001fe0
_080F6A60:
	movs r0, #0x4d
	strb r0, [r4, #0xc]
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r4, #0xc]
	bl FUN_08004068
	movs r0, #2
	bl playSound
_080F6A76:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6A7C: .4byte 0x000064AC
_080F6A80: .4byte 0x02002190
_080F6A84: .4byte 0x0000DFFF
_080F6A88: .4byte 0x00000DFC
_080F6A8C: .4byte 0x02001EB0
_080F6A90: .4byte 0x00000E17

	thumb_func_start openElfTab
openElfTab: @ 0x080F6A94
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _080F6B20 @ =0x00000DFC
	adds r0, r5, r1
	ldrb r0, [r0, #0xc]
	bl FUN_08004068
	ldr r3, _080F6B24 @ =0x00000E17
	adds r6, r5, r3
	ldrb r0, [r6]
	cmp r0, #0
	bne _080F6AEC
	adds r0, r5, #0
	bl FUN_080f70d8
	movs r4, #0
_080F6AB4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_080e7564
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080F6AB4
	movs r4, #0
_080F6AC8:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl elf_080e7934
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl elf_080e7934
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080F6AC8
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080F6AEC:
	ldr r0, _080F6B28 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F6B2C
	movs r0, #0
	strb r0, [r5, #3]
	ldr r0, _080F6B20 @ =0x00000DFC
	adds r4, r5, r0
	ldrb r0, [r4, #0xc]
	bl clearValFrom0x02001fe0
	movs r0, #0x4e
	strb r0, [r4, #0xc]
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r4, #0xc]
	bl FUN_08004068
	movs r0, #3
	bl playSound
	b _080F6B7E
	.align 2, 0
_080F6B20: .4byte 0x00000DFC
_080F6B24: .4byte 0x00000E17
_080F6B28: .4byte 0x02001EB0
_080F6B2C:
	ldr r1, _080F6B40 @ =0x00000DFC
	adds r6, r5, r1
	ldrb r0, [r6, #0xb]
	adds r4, r0, #0
	cmp r4, #0
	beq _080F6B44
	subs r0, #1
	strb r0, [r6, #0xb]
	b _080F6B7E
	.align 2, 0
_080F6B40: .4byte 0x00000DFC
_080F6B44:
	strb r7, [r5, #3]
	ldr r3, _080F6B84 @ =0x00000E17
	adds r0, r5, r3
	strb r4, [r0]
	strb r4, [r6, #8]
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _080F6B5A
	bl clearValFrom0x02001fe0
	strb r4, [r6, #0xc]
_080F6B5A:
	ldr r2, _080F6B88 @ =0x02002190
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	strb r7, [r2, #0xc]
	ldrb r0, [r2, #0xe]
	movs r1, #0x11
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r0, _080F6B8C @ =0x00001078
	strh r0, [r2, #4]
	adds r0, #0x18
	strh r0, [r2, #8]
	movs r0, #0x10
	strb r0, [r6, #0xd]
_080F6B7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6B84: .4byte 0x00000E17
_080F6B88: .4byte 0x02002190
_080F6B8C: .4byte 0x00001078

	thumb_func_start selectElfTab
selectElfTab: @ 0x080F6B90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _080F6C00 @ =0x00000E17
	adds r6, r7, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080F6BB8
	movs r0, #0x4f
	movs r1, #0
	bl loadBeatPalette
	ldr r0, _080F6C04 @ =0x00000DFC
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080F6BB8:
	movs r0, #0x4f
	bl FUN_08004068
	ldr r0, _080F6C04 @ =0x00000DFC
	adds r4, r7, r0
	ldrb r3, [r4, #0xd]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x90
	bhi _080F6BDE
	lsrs r0, r1, #0x1c
	ldr r2, _080F6C08 @ =0x02002190
	lsls r0, r0, #0xc
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r3, #0
	adds r0, #8
	strb r0, [r4, #0xd]
_080F6BDE:
	ldr r2, _080F6C0C @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r5, #0x81
	ands r5, r1
	cmp r5, #0
	beq _080F6C10
	movs r1, #0
	movs r0, #3
	strb r0, [r7, #3]
	strb r1, [r6]
	movs r0, #0x4f
	bl clearValFrom0x02001fe0
	movs r0, #2
	bl playSound
	b _080F6CB6
	.align 2, 0
_080F6C00: .4byte 0x00000E17
_080F6C04: .4byte 0x00000DFC
_080F6C08: .4byte 0x02002190
_080F6C0C: .4byte 0x02001EB0
_080F6C10:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080F6C50
	strb r5, [r7, #3]
	movs r0, #0x4f
	bl clearValFrom0x02001fe0
	movs r0, #0x4e
	strb r0, [r4, #0xc]
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r4, #0xc]
	bl FUN_08004068
	strb r5, [r4, #8]
	ldr r2, _080F6C48 @ =0x02002190
	ldrh r1, [r2]
	ldr r0, _080F6C4C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #3
	bl playSound
	b _080F6CB6
	.align 2, 0
_080F6C48: .4byte 0x02002190
_080F6C4C: .4byte 0x0000DFFF
_080F6C50:
	ldrb r0, [r4, #8]
	mov r8, r0
	ldrh r5, [r2, #6]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080F6C6A
	mov r0, r8
	adds r0, #2
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #8]
_080F6C6A:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080F6C7E
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #8]
_080F6C7E:
	ldrb r0, [r4, #8]
	cmp r8, r0
	beq _080F6CB6
	movs r0, #0x4f
	bl clearValFrom0x02001fe0
	movs r0, #0x4f
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x4f
	bl FUN_08004068
	ldrb r0, [r4, #8]
	strb r0, [r4, #0xa]
	strb r6, [r4, #6]
	strb r6, [r4, #9]
	adds r0, r7, #0
	bl FUN_080f70d8
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldr r1, _080F6CC0 @ =0x02002190
	ldr r0, _080F6CC4 @ =0x00001090
	strh r0, [r1, #8]
	movs r0, #1
	bl playSound
_080F6CB6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6CC0: .4byte 0x02002190
_080F6CC4: .4byte 0x00001090

	thumb_func_start selectElf
selectElf: @ 0x080F6CC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, _080F6D38 @ =0x000064AC
	adds r0, r6, r1
	ldr r7, [r0]
	ldr r0, _080F6D3C @ =0x00000E17
	adds r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F6CFA
	movs r0, #0x4f
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x4f
	bl FUN_08004068
	movs r0, #0x4f
	bl clearValFrom0x02001fe0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080F6CFA:
	ldr r1, _080F6D40 @ =0x00000DFC
	adds r3, r6, r1
	ldrb r5, [r3, #0xd]
	lsls r1, r5, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x90
	bhi _080F6D1A
	lsrs r0, r1, #0x1c
	ldr r2, _080F6D44 @ =0x02002190
	lsls r0, r0, #0xc
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r5, #0
	adds r0, #8
	strb r0, [r3, #0xd]
_080F6D1A:
	ldrb r0, [r3, #6]
	mov r8, r0
	ldrb r0, [r4]
	cmp r0, #1
	bhi _080F6D26
	b _080F6E94
_080F6D26:
	adds r1, r0, #0
	cmp r1, #3
	beq _080F6DBA
	cmp r1, #3
	bgt _080F6D48
	cmp r1, #2
	beq _080F6D64
	b _080F6E94
	.align 2, 0
_080F6D38: .4byte 0x000064AC
_080F6D3C: .4byte 0x00000E17
_080F6D40: .4byte 0x00000DFC
_080F6D44: .4byte 0x02002190
_080F6D48:
	cmp r1, #5
	ble _080F6D4E
	b _080F6E94
_080F6D4E:
	ldr r0, _080F6D60 @ =0x02001EB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _080F6D58
	b _080F6E94
_080F6D58:
	movs r0, #1
	strb r0, [r4]
	b _080F6E94
	.align 2, 0
_080F6D60: .4byte 0x02001EB0
_080F6D64:
	ldr r0, _080F6D74 @ =0x02001EB0
	ldrh r2, [r0, #4]
	ands r1, r2
	cmp r1, #0
	beq _080F6D78
	movs r0, #1
	strb r0, [r4]
	b _080F702C
	.align 2, 0
_080F6D74: .4byte 0x02001EB0
_080F6D78:
	movs r5, #1
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _080F6D92
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	beq _080F6D8C
	strb r5, [r4]
	b _080F702C
_080F6D8C:
	movs r0, #3
	strb r0, [r4]
	b _080F70CA
_080F6D92:
	ldrb r4, [r3, #0xe]
	ldrh r2, [r0, #6]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080F6DA0
	strb r1, [r3, #0xe]
_080F6DA0:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080F6DAA
	strb r5, [r3, #0xe]
_080F6DAA:
	ldrb r3, [r3, #0xe]
	cmp r4, r3
	bne _080F6DB2
	b _080F70CA
_080F6DB2:
	movs r0, #1
	bl playSound
	b _080F70CA
_080F6DBA:
	ldrb r0, [r3, #9]
	adds r0, r3, r0
	ldrb r4, [r0]
	ldr r1, _080F6DF0 @ =0x08371B44
	lsls r0, r4, #2
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #0x1d
	ldr r0, _080F6DF4 @ =0x020302FC
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r1, r1, #0x1d
	lsrs r0, r2, #0x1e
	cmp r1, r0
	beq _080F6DFC
	ldr r3, _080F6DF8 @ =0x08371AFC
	adds r1, r0, #0
	adds r1, #1
	ldrb r2, [r5, #3]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	b _080F6E08
	.align 2, 0
_080F6DF0: .4byte 0x08371B44
_080F6DF4: .4byte 0x020302FC
_080F6DF8: .4byte 0x08371AFC
_080F6DFC:
	ldr r2, _080F6E4C @ =0x08371AFC
	ldrb r1, [r5, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
_080F6E08:
	ldrh r2, [r0]
	adds r1, r7, #0
	adds r1, #0xb4
	ldrh r0, [r1, #6]
	subs r0, r0, r2
	strh r0, [r1, #6]
	movs r0, #0x28
	bl playSound
	ldr r1, _080F6E50 @ =0x08371B44
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r1, r5, #0x1d
	ldr r0, _080F6E54 @ =0x020302FC
	ldr r0, [r0]
	adds r3, r0, r4
	ldr r0, [r3]
	lsls r2, r0, #0x1b
	lsrs r1, r1, #0x1d
	lsrs r0, r2, #0x1e
	cmp r1, r0
	beq _080F6E58
	adds r1, r0, #0
	adds r1, #1
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	b _080F6E7A
	.align 2, 0
_080F6E4C: .4byte 0x08371AFC
_080F6E50: .4byte 0x08371B44
_080F6E54: .4byte 0x020302FC
_080F6E58:
	lsls r0, r5, #0x1a
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080F6E76
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F6E72
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	b _080F6E7C
_080F6E72:
	movs r0, #4
	b _080F6E7A
_080F6E76:
	ldrb r0, [r3]
	movs r1, #4
_080F6E7A:
	orrs r0, r1
_080F6E7C:
	strb r0, [r3]
	adds r0, r6, #0
	bl FUN_080f70d8
	ldr r0, _080F6E90 @ =0x00000E17
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	b _080F70CA
	.align 2, 0
_080F6E90: .4byte 0x00000E17
_080F6E94:
	ldr r5, _080F6EC4 @ =0x02001EB0
	ldrh r1, [r5, #4]
	movs r4, #1
	adds r3, r4, #0
	ands r3, r1
	cmp r3, #0
	bne _080F6EA4
	b _080F6FFC
_080F6EA4:
	ldr r0, _080F6EC8 @ =0x00000DFC
	adds r1, r6, r0
	ldrb r0, [r1, #9]
	adds r0, r1, r0
	ldrb r4, [r0]
	cmp r4, #0xff
	bne _080F6EB4
	b _080F6FF4
_080F6EB4:
	ldrb r0, [r1, #7]
	cmp r0, #1
	beq _080F6EF0
	cmp r0, #1
	bgt _080F6ECC
	cmp r0, #0
	beq _080F6ED6
	b _080F6FD8
	.align 2, 0
_080F6EC4: .4byte 0x02001EB0
_080F6EC8: .4byte 0x00000DFC
_080F6ECC:
	cmp r0, #2
	beq _080F6F0C
	cmp r0, #3
	beq _080F6F30
	b _080F6FD8
_080F6ED6:
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r2, [r1]
	cmp r2, r4
	bne _080F6EE4
	movs r0, #0xff
	b _080F6FD6
_080F6EE4:
	ldrb r0, [r1, #1]
	cmp r0, r4
	bne _080F6EEC
	strb r2, [r1, #1]
_080F6EEC:
	strb r4, [r1]
	b _080F6FD8
_080F6EF0:
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r2, [r1, #1]
	cmp r2, r4
	bne _080F6F00
	movs r0, #0xff
	strb r0, [r1, #1]
	b _080F6FD8
_080F6F00:
	ldrb r0, [r1]
	cmp r0, r4
	bne _080F6F08
	strb r2, [r1]
_080F6F08:
	strb r4, [r1, #1]
	b _080F6FD8
_080F6F0C:
	movs r0, #0x23
	bl playSound
	ldr r1, _080F6F28 @ =0x00000121
	adds r0, r7, r1
	strb r4, [r0]
	ldr r1, _080F6F2C @ =0x00000E1C
	adds r0, r6, r1
	strb r4, [r0]
	movs r0, #3
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	b _080F70CA
	.align 2, 0
_080F6F28: .4byte 0x00000121
_080F6F2C: .4byte 0x00000E1C
_080F6F30:
	ldr r1, _080F6F60 @ =0x08371B44
	lsls r0, r4, #2
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #0x1d
	ldr r0, _080F6F64 @ =0x020302FC
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r1, r1, #0x1d
	lsrs r0, r2, #0x1e
	cmp r1, r0
	beq _080F6F6C
	ldr r3, _080F6F68 @ =0x08371AFC
	adds r1, r0, #0
	adds r1, #1
	ldrb r2, [r5, #3]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	b _080F6F78
	.align 2, 0
_080F6F60: .4byte 0x08371B44
_080F6F64: .4byte 0x020302FC
_080F6F68: .4byte 0x08371AFC
_080F6F6C:
	ldr r2, _080F6F9C @ =0x08371AFC
	ldrb r1, [r5, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
_080F6F78:
	ldrh r2, [r0]
	adds r1, r7, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	cmp r0, r4
	beq _080F6F8A
	ldrb r0, [r1, #1]
	cmp r0, r4
	bne _080F6FA4
_080F6F8A:
	movs r0, #4
	bl playSound
	ldr r0, _080F6FA0 @ =0x00000E17
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
	b _080F70CA
	.align 2, 0
_080F6F9C: .4byte 0x08371AFC
_080F6FA0: .4byte 0x00000E17
_080F6FA4:
	ldrh r0, [r1, #6]
	cmp r0, r2
	bhs _080F6FC0
	movs r0, #4
	bl playSound
	ldr r0, _080F6FBC @ =0x00000E17
	adds r1, r6, r0
	movs r0, #4
	strb r0, [r1]
	b _080F70CA
	.align 2, 0
_080F6FBC: .4byte 0x00000E17
_080F6FC0:
	adds r0, r6, #0
	movs r1, #5
	bl FUN_080e7564
	ldr r0, _080F6FEC @ =0x00000DFC
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1, #0xe]
	ldr r0, _080F6FF0 @ =0x00000E17
	adds r1, r6, r0
	movs r0, #2
_080F6FD6:
	strb r0, [r1]
_080F6FD8:
	ldr r1, _080F6FEC @ =0x00000DFC
	adds r0, r6, r1
	ldrb r0, [r0, #7]
	cmp r0, #3
	bhi _080F70CA
	movs r0, #2
	bl playSound
	b _080F70CA
	.align 2, 0
_080F6FEC: .4byte 0x00000DFC
_080F6FF0: .4byte 0x00000E17
_080F6FF4:
	movs r0, #4
	bl playSound
	b _080F70CA
_080F6FFC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F7022
	ldr r0, _080F7034 @ =0x00000DFC
	adds r2, r6, r0
	ldrb r1, [r2, #0xf]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080F703C
	ldrb r0, [r2, #9]
	cmp r0, #0
	bne _080F703C
	ldrh r1, [r5, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F706E
_080F7022:
	movs r0, #2
	strb r0, [r6, #3]
	ldr r1, _080F7038 @ =0x00000E17
	adds r0, r6, r1
	strb r3, [r0]
_080F702C:
	movs r0, #3
	bl playSound
	b _080F70CA
	.align 2, 0
_080F7034: .4byte 0x00000DFC
_080F7038: .4byte 0x00000E17
_080F703C:
	ldr r0, _080F7060 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F706E
	ldr r0, _080F7064 @ =0x00000DFC
	adds r1, r6, r0
	ldrb r0, [r1, #6]
	subs r0, #1
	strb r0, [r1, #6]
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _080F7068
	subs r0, #1
	strb r0, [r1, #9]
	b _080F706E
	.align 2, 0
_080F7060: .4byte 0x02001EB0
_080F7064: .4byte 0x00000DFC
_080F7068:
	adds r0, r6, #0
	bl FUN_080f70d8
_080F706E:
	ldr r0, _080F709C @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F70BA
	ldr r1, _080F70A0 @ =0x00000DFC
	adds r2, r6, r1
	ldrb r1, [r2, #9]
	cmp r1, #4
	bhi _080F70A4
	ldrb r0, [r2, #9]
	adds r0, #1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080F70BA
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	adds r0, r1, #1
	strb r0, [r2, #9]
	b _080F70BA
	.align 2, 0
_080F709C: .4byte 0x02001EB0
_080F70A0: .4byte 0x00000DFC
_080F70A4:
	ldrb r1, [r2, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F70BA
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	adds r0, r6, #0
	bl FUN_080f70d8
_080F70BA:
	ldr r1, _080F70D4 @ =0x00000DFC
	adds r0, r6, r1
	ldrb r0, [r0, #6]
	cmp r8, r0
	beq _080F70CA
	movs r0, #1
	bl playSound
_080F70CA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F70D4: .4byte 0x00000DFC

	thumb_func_start FUN_080f70d8
FUN_080f70d8: @ 0x080F70D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldr r2, _080F7140 @ =0x00000DFC
	add r2, sl
	ldrb r1, [r2, #0xf]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2, #0xf]
	movs r6, #0
	ldr r4, _080F7144 @ =0x08386494
	movs r3, #0xff
_080F7100:
	adds r0, r2, r6
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _080F7100
	ldr r2, _080F7140 @ =0x00000DFC
	add r2, sl
	ldrb r0, [r2, #6]
	ldrb r1, [r2, #9]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r2, #8]
	adds r0, r0, r4
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0
	mov ip, r0
	ldrb r0, [r2, #7]
	cmp r0, #4
	bls _080F7136
	b _080F7402
_080F7136:
	lsls r0, r0, #2
	ldr r1, _080F7148 @ =_080F714C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F7140: .4byte 0x00000DFC
_080F7144: .4byte 0x08386494
_080F7148: .4byte _080F714C
_080F714C: @ jump table
	.4byte _080F7160 @ case 0
	.4byte _080F7160 @ case 1
	.4byte _080F7214 @ case 2
	.4byte _080F72D0 @ case 3
	.4byte _080F738C @ case 4
_080F7160:
	movs r6, #0
	ldr r1, _080F71D8 @ =0x08386497
	ldr r2, _080F71DC @ =0x00000DFC
	add r2, sl
	ldrb r0, [r2, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F7174
	b _080F7402
_080F7174:
	ldr r0, _080F71E0 @ =0x020302FC
	ldr r0, [r0]
	str r0, [sp]
	adds r3, r2, #0
_080F717C:
	mov r1, sb
	adds r4, r6, r1
	ldr r2, [sp]
	adds r5, r2, r4
	ldrb r2, [r5]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080F71FA
	movs r7, #2
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080F71FA
	ldr r0, _080F71E4 @ =0x08371B44
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r0, r1, #0x19
	cmp r0, #0
	blt _080F71B6
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080F71FA
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080F71FA
_080F71B6:
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	ldr r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _080F71FA
	cmp r8, ip
	bhi _080F71E8
	mov r1, ip
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #5
	bgt _080F729C
	adds r0, r3, r0
	strb r4, [r0]
	b _080F71F0
	.align 2, 0
_080F71D8: .4byte 0x08386497
_080F71DC: .4byte 0x00000DFC
_080F71E0: .4byte 0x020302FC
_080F71E4: .4byte 0x08371B44
_080F71E8:
	ldrb r0, [r3, #0xf]
	movs r7, #1
	orrs r0, r7
	strb r0, [r3, #0xf]
_080F71F0:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_080F71FA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r3, #8]
	ldr r1, _080F7210 @ =0x08386497
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F717C
	b _080F7402
	.align 2, 0
_080F7210: .4byte 0x08386497
_080F7214:
	movs r6, #0
	ldr r1, _080F728C @ =0x08386497
	ldr r2, _080F7290 @ =0x00000DFC
	add r2, sl
	ldrb r0, [r2, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F7228
	b _080F7402
_080F7228:
	ldr r0, _080F7294 @ =0x020302FC
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r3, r2, #0
_080F7230:
	mov r2, sb
	adds r4, r6, r2
	ldr r7, [sp, #4]
	adds r5, r7, r4
	ldrb r2, [r5]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080F72B6
	movs r7, #2
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080F72B6
	ldr r0, _080F7298 @ =0x08371B44
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r0, r1, #0x19
	cmp r0, #0
	blt _080F72B6
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080F726A
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080F72B6
_080F726A:
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	ldr r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _080F72B6
	cmp r8, ip
	bhi _080F72A4
	mov r1, ip
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #5
	bgt _080F729C
	adds r0, r3, r0
	strb r4, [r0]
	b _080F72AC
	.align 2, 0
_080F728C: .4byte 0x08386497
_080F7290: .4byte 0x00000DFC
_080F7294: .4byte 0x020302FC
_080F7298: .4byte 0x08371B44
_080F729C:
	ldrb r0, [r3, #0xf]
	orrs r0, r7
	strb r0, [r3, #0xf]
	b _080F7402
_080F72A4:
	ldrb r0, [r3, #0xf]
	movs r7, #1
	orrs r0, r7
	strb r0, [r3, #0xf]
_080F72AC:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_080F72B6:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r3, #8]
	ldr r1, _080F72CC @ =0x08386497
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F7230
	b _080F7402
	.align 2, 0
_080F72CC: .4byte 0x08386497
_080F72D0:
	movs r6, #0
	ldr r1, _080F7348 @ =0x08386497
	ldr r2, _080F734C @ =0x00000DFC
	add r2, sl
	ldrb r0, [r2, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F72E4
	b _080F7402
_080F72E4:
	ldr r0, _080F7350 @ =0x020302FC
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r5, r2, #0
_080F72EC:
	mov r2, sb
	adds r1, r6, r2
	ldr r7, [sp, #8]
	adds r3, r7, r1
	ldrb r4, [r3]
	movs r0, #1
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _080F7374
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _080F7374
	ldr r1, _080F7354 @ =0x08371B44
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r1, r2, #0x1d
	ldr r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r1, r1, #0x1d
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _080F7332
	lsls r1, r2, #0x1a
	lsrs r0, r1, #0x1d
	cmp r0, #1
	beq _080F7332
	cmp r0, #2
	bne _080F7374
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	bne _080F7374
_080F7332:
	cmp r8, ip
	bhi _080F7362
	mov r1, ip
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #5
	bgt _080F7358
	adds r0, r5, r0
	strb r7, [r0]
	b _080F736A
	.align 2, 0
_080F7348: .4byte 0x08386497
_080F734C: .4byte 0x00000DFC
_080F7350: .4byte 0x020302FC
_080F7354: .4byte 0x08371B44
_080F7358:
	ldrb r1, [r5, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5, #0xf]
	b _080F7402
_080F7362:
	ldrb r1, [r5, #0xf]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5, #0xf]
_080F736A:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_080F7374:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r5, #8]
	ldr r7, _080F7388 @ =0x08386497
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F72EC
	b _080F7402
	.align 2, 0
_080F7388: .4byte 0x08386497
_080F738C:
	movs r6, #0
	ldr r1, _080F73C8 @ =0x08386497
	ldr r2, _080F73CC @ =0x00000DFC
	add r2, sl
	ldrb r0, [r2, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _080F7402
	ldr r0, _080F73D0 @ =0x020302FC
	ldr r5, [r0]
	adds r4, r2, #0
_080F73A4:
	mov r0, sb
	adds r3, r6, r0
	adds r0, r5, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F73F0
	cmp r8, ip
	bhi _080F73DE
	mov r1, ip
	mov r7, r8
	subs r0, r1, r7
	cmp r0, #5
	bgt _080F73D4
	adds r0, r2, r0
	strb r3, [r0]
	b _080F73E6
	.align 2, 0
_080F73C8: .4byte 0x08386497
_080F73CC: .4byte 0x00000DFC
_080F73D0: .4byte 0x020302FC
_080F73D4:
	ldrb r0, [r2, #0xf]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xf]
	b _080F7402
_080F73DE:
	ldrb r0, [r2, #0xf]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xf]
_080F73E6:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_080F73F0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r4, #8]
	ldr r7, _080F7454 @ =0x08386497
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r6, r0
	blo _080F73A4
_080F7402:
	mov r1, ip
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #5
	bgt _080F7426
	ldr r2, _080F7458 @ =0x00000DFC
	add r2, sl
	ldrb r1, [r2, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F7426
	ldrb r0, [r2, #6]
	subs r0, #1
	strb r0, [r2, #6]
	mov r0, sl
	bl FUN_080f70d8
_080F7426:
	ldr r2, _080F7458 @ =0x00000DFC
	add r2, sl
	ldrb r1, [r2, #9]
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080F7444
	cmp r1, #0
	beq _080F7444
	ldrb r0, [r2, #6]
	subs r0, #1
	strb r0, [r2, #6]
	ldrb r0, [r2, #9]
	subs r0, #1
	strb r0, [r2, #9]
_080F7444:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7454: .4byte 0x08386497
_080F7458: .4byte 0x00000DFC

	thumb_func_start printElfNames
printElfNames: @ 0x080F745C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #3]
	cmp r0, #1
	bls _080F74B6
	movs r4, #0
	ldr r6, _080F74BC @ =0x08372210
_080F746A:
	ldr r1, _080F74C0 @ =0x00000DFC
	adds r0, r5, r1
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080F748C
	adds r0, #0x64
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	ldr r1, _080F74C4 @ =0x08372AA0
	adds r0, r0, r1
	lsls r2, r4, #1
	adds r2, #2
	movs r1, #2
	bl print
_080F748C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #5
	bls _080F746A
	ldr r1, _080F74C0 @ =0x00000DFC
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080F74B6
	ldr r0, _080F74BC @ =0x08372210
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F74C4 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #2
	movs r2, #2
	bl print
_080F74B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F74BC: .4byte 0x08372210
_080F74C0: .4byte 0x00000DFC
_080F74C4: .4byte 0x08372AA0

	thumb_func_start printElfMenuDescription
printElfMenuDescription: @ 0x080F74C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r1, _080F74EC @ =0x000064AC
	adds r0, r7, r1
	ldr r0, [r0]
	mov sb, r0
	ldrb r0, [r7, #3]
	cmp r0, #2
	beq _080F75B8
	cmp r0, #2
	bgt _080F74F0
	cmp r0, #0
	beq _080F74F6
	b _080F7862
	.align 2, 0
_080F74EC: .4byte 0x000064AC
_080F74F0:
	cmp r0, #3
	beq _080F75D0
	b _080F7862
_080F74F6:
	ldr r0, _080F7514 @ =0x00000DFC
	adds r2, r7, r0
	ldrb r0, [r2, #7]
	cmp r0, #0
	bne _080F7554
	mov r6, sb
	adds r6, #0xb4
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _080F751C
	ldr r0, _080F7518 @ =0x08372210
	movs r1, #0xc3
	lsls r1, r1, #1
	b _080F762A
	.align 2, 0
_080F7514: .4byte 0x00000DFC
_080F7518: .4byte 0x08372210
_080F751C:
	ldr r5, _080F754C @ =0x08372210
	ldrb r0, [r2, #7]
	adds r0, #0xaf
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	ldr r4, _080F7550 @ =0x08372AA0
	adds r0, r0, r4
	movs r1, #0x11
	movs r2, #5
	bl print
	ldrb r1, [r6]
	adds r0, r7, #0
	bl FUN_080f7924
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #0x11
	b _080F7834
	.align 2, 0
_080F754C: .4byte 0x08372210
_080F7550: .4byte 0x08372AA0
_080F7554:
	cmp r0, #1
	bne _080F75A8
	mov r6, sb
	adds r6, #0xb4
	ldrb r0, [r6, #1]
	cmp r0, #0xff
	bne _080F7570
	ldr r0, _080F756C @ =0x08372210
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080F762C
	.align 2, 0
_080F756C: .4byte 0x08372210
_080F7570:
	ldr r5, _080F75A0 @ =0x08372210
	ldrb r0, [r2, #7]
	adds r0, #0xaf
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	ldr r4, _080F75A4 @ =0x08372AA0
	adds r0, r0, r4
	movs r1, #0x11
	movs r2, #5
	bl print
	ldrb r1, [r6, #1]
	adds r0, r7, #0
	bl FUN_080f7924
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #0x11
	b _080F7834
	.align 2, 0
_080F75A0: .4byte 0x08372210
_080F75A4: .4byte 0x08372AA0
_080F75A8:
	ldr r1, _080F75B4 @ =0x08372210
	ldrb r0, [r2, #7]
	adds r0, #0xaf
	lsls r0, r0, #1
	b _080F762A
	.align 2, 0
_080F75B4: .4byte 0x08372210
_080F75B8:
	ldr r1, _080F75C8 @ =0x08372210
	ldr r2, _080F75CC @ =0x00000DFC
	adds r0, r7, r2
	ldrb r0, [r0, #8]
	adds r0, #0xb5
	lsls r0, r0, #1
	b _080F762A
	.align 2, 0
_080F75C8: .4byte 0x08372210
_080F75CC: .4byte 0x00000DFC
_080F75D0:
	ldr r0, _080F75E0 @ =0x00000DFC
	adds r2, r7, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080F75EC
	ldr r0, _080F75E4 @ =0x08372210
	ldr r1, _080F75E8 @ =0x00000252
	b _080F762A
	.align 2, 0
_080F75E0: .4byte 0x00000DFC
_080F75E4: .4byte 0x08372210
_080F75E8: .4byte 0x00000252
_080F75EC:
	ldrb r0, [r2, #9]
	adds r0, r2, r0
	ldrb r6, [r0]
	ldrb r0, [r2, #7]
	cmp r0, #4
	bls _080F75FA
	b _080F7862
_080F75FA:
	lsls r0, r0, #2
	ldr r1, _080F7604 @ =_080F7608
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F7604: .4byte _080F7608
_080F7608: @ jump table
	.4byte _080F761C @ case 0
	.4byte _080F761C @ case 1
	.4byte _080F761C @ case 2
	.4byte _080F7644 @ case 3
	.4byte _080F7844 @ case 4
_080F761C:
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_080f7924
	ldr r1, _080F763C @ =0x08372210
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
_080F762A:
	adds r0, r0, r1
_080F762C:
	ldrh r0, [r0]
	ldr r1, _080F7640 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x11
	movs r2, #5
	bl print
	b _080F7862
	.align 2, 0
_080F763C: .4byte 0x08372210
_080F7640: .4byte 0x08372AA0
_080F7644:
	ldr r2, _080F765C @ =0x00000E17
	adds r0, r7, r2
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _080F7652
	b _080F7862
_080F7652:
	lsls r0, r0, #2
	ldr r1, _080F7660 @ =_080F7664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F765C: .4byte 0x00000E17
_080F7660: .4byte _080F7664
_080F7664: @ jump table
	.4byte _080F7678 @ case 0
	.4byte _080F7738 @ case 1
	.4byte _080F7862 @ case 2
	.4byte _080F7678 @ case 3
	.4byte _080F7678 @ case 4
_080F7678:
	ldr r1, _080F76A8 @ =0x08371B44
	lsls r0, r6, #2
	adds r4, r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #0x1d
	ldr r0, _080F76AC @ =0x020302FC
	ldr r0, [r0]
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r1, r1, #0x1d
	lsrs r0, r2, #0x1e
	cmp r1, r0
	beq _080F76B4
	ldr r3, _080F76B0 @ =0x08371AFC
	adds r1, r0, #0
	adds r1, #1
	ldrb r2, [r4, #3]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	b _080F76C0
	.align 2, 0
_080F76A8: .4byte 0x08371B44
_080F76AC: .4byte 0x020302FC
_080F76B0: .4byte 0x08371AFC
_080F76B4:
	ldr r2, _080F772C @ =0x08371AFC
	ldrb r1, [r4, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
_080F76C0:
	ldrh r0, [r0]
	mov r8, r0
	ldr r5, _080F7730 @ =0x08372210
	movs r1, #0xbb
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r4, _080F7734 @ =0x08372AA0
	adds r0, r0, r4
	movs r1, #0x11
	movs r2, #5
	bl print
	mov r0, r8
	movs r1, #0x14
	movs r2, #7
	bl printNumber
	ldrh r0, [r5, #0xc]
	adds r0, r0, r4
	movs r1, #0x15
	movs r2, #7
	bl print
	mov r0, sb
	adds r0, #0xb4
	ldrh r0, [r0, #6]
	movs r1, #0x1a
	movs r2, #7
	bl printNumber
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #0x1b
	movs r2, #7
	bl print
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_080f7924
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #0x11
	movs r2, #9
	bl print
	b _080F7862
	.align 2, 0
_080F772C: .4byte 0x08371AFC
_080F7730: .4byte 0x08372210
_080F7734: .4byte 0x08372AA0
_080F7738:
	ldr r1, _080F7774 @ =0x08371B44
	lsls r0, r6, #2
	adds r4, r0, r1
	ldrb r3, [r4]
	lsls r1, r3, #0x1d
	ldr r0, _080F7778 @ =0x020302FC
	ldr r0, [r0]
	adds r5, r0, r6
	ldr r0, [r5]
	lsls r2, r0, #0x1b
	lsrs r1, r1, #0x1d
	lsrs r0, r2, #0x1e
	cmp r1, r0
	beq _080F7784
	ldr r3, _080F777C @ =0x08371AFC
	adds r1, r0, #0
	adds r1, #1
	ldrb r2, [r4, #3]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _080F7780 @ =0x08372210
	movs r1, #0xbc
	lsls r1, r1, #1
	b _080F77BE
	.align 2, 0
_080F7774: .4byte 0x08371B44
_080F7778: .4byte 0x020302FC
_080F777C: .4byte 0x08371AFC
_080F7780: .4byte 0x08372210
_080F7784:
	ldr r2, _080F77B0 @ =0x08371AFC
	ldrb r1, [r4, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r8, r0
	lsls r0, r3, #0x1a
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080F77D8
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F77B8
	ldr r0, _080F77B4 @ =0x08372210
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080F77C0
	.align 2, 0
_080F77B0: .4byte 0x08371AFC
_080F77B4: .4byte 0x08372210
_080F77B8:
	ldr r0, _080F77D0 @ =0x08372210
	movs r1, #0xbd
	lsls r1, r1, #1
_080F77BE:
	adds r0, r0, r1
_080F77C0:
	ldrh r0, [r0]
	ldr r1, _080F77D4 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x11
	movs r2, #9
	bl print
	b _080F77EE
	.align 2, 0
_080F77D0: .4byte 0x08372210
_080F77D4: .4byte 0x08372AA0
_080F77D8:
	ldr r0, _080F783C @ =0x08372210
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _080F7840 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x11
	movs r2, #9
	bl print
_080F77EE:
	ldr r5, _080F783C @ =0x08372210
	movs r1, #0xbb
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r4, _080F7840 @ =0x08372AA0
	adds r0, r0, r4
	movs r1, #0x11
	movs r2, #5
	bl print
	mov r0, r8
	movs r1, #0x14
	movs r2, #7
	bl printNumber
	ldrh r0, [r5, #0xc]
	adds r0, r0, r4
	movs r1, #0x15
	movs r2, #7
	bl print
	mov r0, sb
	adds r0, #0xb4
	ldrh r0, [r0, #6]
	movs r1, #0x1a
	movs r2, #7
	bl printNumber
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #0x1b
_080F7834:
	movs r2, #7
	bl print
	b _080F7862
	.align 2, 0
_080F783C: .4byte 0x08372210
_080F7840: .4byte 0x08372AA0
_080F7844:
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_080f7924
	ldr r1, _080F7870 @ =0x08372210
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F7874 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x11
	movs r2, #5
	bl print
_080F7862:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7870: .4byte 0x08372210
_080F7874: .4byte 0x08372AA0

	thumb_func_start printElfMenuBottomString
printElfMenuBottomString: @ 0x080F7878
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F7894 @ =0x000064AC
	adds r0, r2, r1
	ldr r0, [r0]
	movs r3, #0
	ldrb r1, [r2, #3]
	cmp r1, #2
	beq _080F78AA
	cmp r1, #2
	bgt _080F7898
	cmp r1, #0
	beq _080F789E
	b _080F78FC
	.align 2, 0
_080F7894: .4byte 0x000064AC
_080F7898:
	cmp r1, #3
	beq _080F78AE
	b _080F78FC
_080F789E:
	adds r0, #0xb4
	ldrb r0, [r0, #0x1a]
	cmp r0, #1
	beq _080F78FC
	movs r3, #0xb4
	b _080F7900
_080F78AA:
	movs r3, #0xb8
	b _080F7900
_080F78AE:
	ldr r1, _080F78C4 @ =0x00000DFC
	adds r0, r2, r1
	ldrb r0, [r0, #7]
	cmp r0, #4
	bhi _080F78FC
	lsls r0, r0, #2
	ldr r1, _080F78C8 @ =_080F78CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F78C4: .4byte 0x00000DFC
_080F78C8: .4byte _080F78CC
_080F78CC: @ jump table
	.4byte _080F78E0 @ case 0
	.4byte _080F78E0 @ case 1
	.4byte _080F78E4 @ case 2
	.4byte _080F78E8 @ case 3
	.4byte _080F78FC @ case 4
_080F78E0:
	movs r3, #0xb9
	b _080F7900
_080F78E4:
	movs r3, #0xba
	b _080F7900
_080F78E8:
	ldr r1, _080F7918 @ =0x00000E17
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r3, #0xc5
	cmp r0, #4
	beq _080F7900
	movs r3, #0xc0
	cmp r0, #5
	bne _080F78FC
	movs r3, #0xc6
_080F78FC:
	cmp r3, #0
	beq _080F7914
_080F7900:
	ldr r1, _080F791C @ =0x08372210
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F7920 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #1
	movs r2, #0x12
	bl print
_080F7914:
	pop {r0}
	bx r0
	.align 2, 0
_080F7918: .4byte 0x00000E17
_080F791C: .4byte 0x08372210
_080F7920: .4byte 0x08372AA0

	thumb_func_start FUN_080f7924
FUN_080f7924: @ 0x080F7924
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _080F7970 @ =0x000064AC
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, _080F7974 @ =0x020302FC
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F7996
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	bne _080F7980
	adds r0, r4, #0
	bl FUN_080e1cac
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F7996
	ldr r0, _080F7978 @ =0x08372210
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F797C @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x11
	movs r2, #0xd
	bl print
	b _080F7996
	.align 2, 0
_080F7970: .4byte 0x000064AC
_080F7974: .4byte 0x020302FC
_080F7978: .4byte 0x08372210
_080F797C: .4byte 0x08372AA0
_080F7980:
	ldr r0, _080F79C0 @ =0x08372210
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F79C4 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #0x11
	movs r2, #0xd
	bl print
_080F7996:
	ldr r0, _080F79C8 @ =0x08371B44
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _080F79E0
	ldr r0, _080F79CC @ =0x020302FC
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F79E0
	cmp r4, #0x1a
	bhi _080F79D4
	ldr r1, _080F79D0 @ =0x0000010B
	adds r0, r4, r1
	b _080F79E4
	.align 2, 0
_080F79C0: .4byte 0x08372210
_080F79C4: .4byte 0x08372AA0
_080F79C8: .4byte 0x08371B44
_080F79CC: .4byte 0x020302FC
_080F79D0: .4byte 0x0000010B
_080F79D4:
	cmp r4, #0x27
	bhi _080F79E0
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r4, r1
	b _080F79E4
_080F79E0:
	adds r0, r4, #0
	adds r0, #0xc8
_080F79E4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start exSkillMenuScript
exSkillMenuScript: @ 0x080F79EC
	push {lr}
	ldr r2, _080F7A00 @ =0x0838649C
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080F7A00: .4byte 0x0838649C

	thumb_func_start FUN_080f7a04
FUN_080f7a04: @ 0x080F7A04
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _080F7AF4 @ =0x000064AC
	adds r0, r6, r1
	ldr r7, [r0]
	movs r2, #0xdf
	lsls r2, r2, #4
	adds r4, r6, r2
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	ldr r0, _080F7AF8 @ =0x08547424
	ldr r5, _080F7AFC @ =0x02002146
	ldrh r2, [r5]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F7B00 @ =0x08547430
	movs r1, #0
	bl transferPalette
	ldr r0, _080F7B04 @ =0x085222F4
	ldr r0, [r0]
	ldr r1, _080F7B08 @ =0x085222FC
	adds r0, r0, r1
	ldr r2, _080F7B0C @ =0x000016D8
	adds r1, r6, r2
	movs r2, #0xf0
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r1, _080F7B10 @ =0x00000ED8
	adds r0, r6, r1
	ldrh r2, [r5]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
	movs r0, #0x3e
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x3f
	movs r1, #0
	bl loadBeatPalette
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl FUN_080e6420
	str r0, [r4]
	adds r0, #0x74
	movs r1, #0x8e
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r0, [r4]
	adds r0, #0x76
	movs r1, #0x28
	strh r1, [r0]
	ldr r4, _080F7B14 @ =0x00000564
	ldr r2, _080F7B18 @ =0x085D78F8
	adds r0, r4, r2
	ldr r1, _080F7B1C @ =0x0202F790
	adds r1, #0x8a
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080F7B20 @ =0x085D7904
	adds r4, r4, r0
	ldr r0, _080F7B24 @ =0x0202F590
	adds r0, #0x8a
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0
_080F7AC4:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r1, [r0, #0x14]
	movs r0, #1
	lsls r0, r4
	ands r1, r0
	asrs r1, r4
	cmp r1, #0
	beq _080F7ADE
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_080e70ec
_080F7ADE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _080F7AC4
	movs r0, #2
	strb r0, [r6, #2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7AF4: .4byte 0x000064AC
_080F7AF8: .4byte 0x08547424
_080F7AFC: .4byte 0x02002146
_080F7B00: .4byte 0x08547430
_080F7B04: .4byte 0x085222F4
_080F7B08: .4byte 0x085222FC
_080F7B0C: .4byte 0x000016D8
_080F7B10: .4byte 0x00000ED8
_080F7B14: .4byte 0x00000564
_080F7B18: .4byte 0x085D78F8
_080F7B1C: .4byte 0x0202F790
_080F7B20: .4byte 0x085D7904
_080F7B24: .4byte 0x0202F590

	thumb_func_start menu_080f7b28
menu_080f7b28: @ 0x080F7B28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, _080F7C14 @ =0x000064AC
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	adds r0, r6, #0
	bl slideMenu
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F7B46
	b _080F7CD2
_080F7B46:
	movs r0, #0x3e
	bl FUN_08004068
	movs r0, #0x3f
	bl FUN_08004068
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r4, r6, r0
	ldrb r7, [r4, #4]
	ldr r5, _080F7C18 @ =0x02001EB0
	ldrh r1, [r5, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F7B72
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0xc
	bl __modsi3
	strb r0, [r4, #4]
_080F7B72:
	ldrh r5, [r5, #6]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _080F7B88
	ldrb r0, [r4, #4]
	adds r0, #4
	movs r1, #0xc
	bl __modsi3
	strb r0, [r4, #4]
_080F7B88:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080F7BA4
	ldrb r1, [r4, #4]
	lsrs r0, r1, #2
	lsls r3, r0, #2
	adds r2, r1, #3
	adds r0, r2, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	adds r0, r3, r0
	strb r0, [r4, #4]
_080F7BA4:
	ldr r0, _080F7C18 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F7BCA
	movs r1, #0xdf
	lsls r1, r1, #4
	adds r4, r6, r1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #2
	lsls r3, r0, #2
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	adds r0, r3, r0
	strb r0, [r4, #4]
_080F7BCA:
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r5, r6, r0
	ldrb r1, [r5, #4]
	cmp r7, r1
	beq _080F7BDC
	movs r0, #1
	bl playSound
_080F7BDC:
	ldr r0, _080F7C18 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	mov r4, r8
	adds r4, #0xb4
	cmp r0, #0
	beq _080F7C2E
	ldrh r0, [r4, #0x14]
	ldrb r3, [r5, #4]
	lsls r2, r3
	ands r0, r2
	asrs r0, r3
	cmp r0, #0
	beq _080F7C28
	ldrh r1, [r4, #0x12]
	adds r0, r1, #0
	ands r0, r2
	asrs r0, r3
	cmp r0, #0
	beq _080F7C1C
	eors r1, r2
	strh r1, [r4, #0x12]
	movs r0, #3
	bl playSound
	b _080F7C2E
	.align 2, 0
_080F7C14: .4byte 0x000064AC
_080F7C18: .4byte 0x02001EB0
_080F7C1C:
	orrs r1, r2
	strh r1, [r4, #0x12]
	movs r0, #2
	bl playSound
	b _080F7C2E
_080F7C28:
	movs r0, #4
	bl playSound
_080F7C2E:
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r6, r6, r0
	ldr r2, [r6]
	ldrb r1, [r6, #4]
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, #0x74
	strh r0, [r2]
	ldr r2, [r6]
	ldrb r1, [r6, #4]
	lsrs r1, r1, #2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x28
	adds r2, #0x76
	strh r0, [r2]
	ldrh r1, [r4, #0x14]
	ldrb r2, [r6, #4]
	movs r0, #1
	lsls r0, r2
	ands r1, r0
	asrs r1, r2
	cmp r1, #0
	beq _080F7CAC
	ldr r5, _080F7CA0 @ =0x08372210
	movs r1, #0xe1
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	ldr r4, _080F7CA4 @ =0x08372AA0
	adds r0, r0, r4
	movs r1, #2
	movs r2, #0xe
	bl print
	ldrb r0, [r6, #4]
	ldr r1, _080F7CA8 @ =0x000001CF
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #0x11
	movs r2, #1
	bl print
	b _080F7CD2
	.align 2, 0
_080F7CA0: .4byte 0x08372210
_080F7CA4: .4byte 0x08372AA0
_080F7CA8: .4byte 0x000001CF
_080F7CAC:
	ldr r4, _080F7CDC @ =0x08372210
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r5, _080F7CE0 @ =0x08372AA0
	adds r0, r0, r5
	movs r1, #2
	movs r2, #0xe
	bl print
	ldr r0, _080F7CE4 @ =0x000003B6
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, r0, r5
	movs r1, #0x11
	movs r2, #1
	bl print
_080F7CD2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7CDC: .4byte 0x08372210
_080F7CE0: .4byte 0x08372AA0
_080F7CE4: .4byte 0x000003B6

	thumb_func_start FUN_080f7ce8
FUN_080f7ce8: @ 0x080F7CE8
	push {lr}
	adds r2, r0, #0
	ldr r1, _080F7D00 @ =0x00000E19
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080F7D08
	ldr r1, _080F7D04 @ =0x02002150
	ldrh r0, [r1]
	adds r0, #0x10
	b _080F7D0E
	.align 2, 0
_080F7D00: .4byte 0x00000E19
_080F7D04: .4byte 0x02002150
_080F7D08:
	ldr r1, _080F7D3C @ =0x02002150
	ldrh r0, [r1]
	subs r0, #0x10
_080F7D0E:
	strh r0, [r1]
	adds r3, r1, #0
	ldrh r0, [r3]
	ldr r1, _080F7D40 @ =0x000001FF
	ands r1, r0
	strh r1, [r3]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080F7D38
	ldr r3, _080F7D44 @ =0x00000E19
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #1
	strb r0, [r2, #2]
	adds r0, r2, #0
	bl FUN_080f7d48
_080F7D38:
	pop {r0}
	bx r0
	.align 2, 0
_080F7D3C: .4byte 0x02002150
_080F7D40: .4byte 0x000001FF
_080F7D44: .4byte 0x00000E19

	thumb_func_start FUN_080f7d48
FUN_080f7d48: @ 0x080F7D48
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #1
	strb r5, [r4, #5]
	movs r0, #0x3e
	bl clearValFrom0x02001fe0
	movs r0, #0x3f
	bl clearValFrom0x02001fe0
	ldr r0, [r4]
	adds r0, #0x78
	strb r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start secretDiskAnalysisScript
secretDiskAnalysisScript: @ 0x080F7D70
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080F7D90 @ =0x08386A78
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl bxR1
	adds r0, r4, #0
	bl FUN_080f8408
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F7D90: .4byte 0x08386A78

	thumb_func_start initAnalysisScreen
initAnalysisScreen: @ 0x080F7D94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r4, #0
	movs r5, #0
	strh r5, [r7, #4]
	ldr r1, _080F7E2C @ =0x00000DCC
	adds r0, r7, r1
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	strb r4, [r0, #0xd]
	strb r4, [r0, #0xe]
	strb r4, [r0, #0xf]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	strb r4, [r0, #0x12]
	adds r0, r7, #0
	bl FUN_080f83ac
	ldr r4, _080F7E30 @ =0x02002140
	ldrh r1, [r4]
	ldr r0, _080F7E34 @ =0x0000FFF8
	ands r0, r1
	ldr r1, _080F7E38 @ =0x0000F0FF
	ands r0, r1
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _080F7E3C @ =0x00004206
	adds r0, r1, #0
	strh r0, [r4, #6]
	str r5, [r4, #0x10]
	ldr r1, _080F7E40 @ =0x02002180
	ldr r0, _080F7E44 @ =0x00002010
	strh r0, [r1]
	ldr r0, _080F7E48 @ =0x08547438
	movs r5, #0xc
	movs r1, #0x80
	lsls r1, r1, #7
	bl loadGraphics
	ldr r0, _080F7E4C @ =0x08547444
	movs r1, #0
	bl transferPalette
	ldr r2, _080F7E50 @ =0x00000ED8
	adds r0, r7, r2
	ldr r2, _080F7E54 @ =0x08522434
	ldr r1, [r2]
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0
	bl loadBgMap
	ldr r0, _080F7E58 @ =0x020021B0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080F7E64
	ldr r0, _080F7E5C @ =0x08547550
	ldrh r2, [r4, #6]
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F7E60 @ =0x0854755C
	movs r1, #0
	bl transferPalette
	b _080F7E7E
	.align 2, 0
_080F7E2C: .4byte 0x00000DCC
_080F7E30: .4byte 0x02002140
_080F7E34: .4byte 0x0000FFF8
_080F7E38: .4byte 0x0000F0FF
_080F7E3C: .4byte 0x00004206
_080F7E40: .4byte 0x02002180
_080F7E44: .4byte 0x00002010
_080F7E48: .4byte 0x08547438
_080F7E4C: .4byte 0x08547444
_080F7E50: .4byte 0x00000ED8
_080F7E54: .4byte 0x08522434
_080F7E58: .4byte 0x020021B0
_080F7E5C: .4byte 0x08547550
_080F7E60: .4byte 0x0854755C
_080F7E64:
	cmp r0, #2
	bne _080F7E7E
	ldr r0, _080F7F78 @ =0x08547564
	ldrh r2, [r4, #6]
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #0xc
	bl loadGraphics
	ldr r0, _080F7F7C @ =0x08547570
	movs r1, #0
	bl transferPalette
_080F7E7E:
	adds r0, r7, #0
	bl setSecretDiskPalette
	movs r4, #0x8c
	lsls r4, r4, #1
	ldr r0, _080F7F80 @ =0x085D78F8
	mov r8, r0
	adds r0, r4, r0
	ldr r6, _080F7F84 @ =0x0202F790
	ldrh r1, [r6, #0x1c]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080F7F88 @ =0x085D7904
	mov sl, r0
	add r4, sl
	ldr r5, _080F7F8C @ =0x0202F590
	ldrh r1, [r5, #0x1c]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	mov sb, r2
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	ldr r4, _080F7F90 @ =0x0000067C
	add r8, r4
	adds r6, #0xa6
	ldrh r1, [r6]
	mov r2, r8
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r0, r8
	bl loadGraphics
	add r4, sl
	adds r5, #0xa6
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	adds r0, r7, #0
	movs r1, #3
	bl FUN_080e7564
	adds r0, r7, #0
	movs r1, #4
	bl FUN_080e7564
	adds r0, r7, #0
	movs r1, #0
	bl FUN_080e8204
	adds r0, r7, #0
	movs r1, #1
	bl FUN_080e8204
	adds r0, r7, #0
	movs r1, #2
	bl FUN_080e8204
	adds r0, r7, #0
	movs r1, #3
	bl FUN_080e8204
	movs r0, #0x40
	movs r1, #0
	bl loadBeatPalette
	movs r2, #0
	ldr r3, _080F7F94 @ =0x03002BE0
	adds r4, r3, #0
	subs r4, #0x20
_080F7F34:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _080F7F34
	ldr r1, _080F7F98 @ =0x00000ED8
	adds r0, r7, r1
	ldr r1, _080F7F9C @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
	movs r0, #1
	strb r0, [r7, #1]
	adds r0, r7, #0
	bl openAnalysisScreen
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7F78: .4byte 0x08547564
_080F7F7C: .4byte 0x08547570
_080F7F80: .4byte 0x085D78F8
_080F7F84: .4byte 0x0202F790
_080F7F88: .4byte 0x085D7904
_080F7F8C: .4byte 0x0202F590
_080F7F90: .4byte 0x0000067C
_080F7F94: .4byte 0x03002BE0
_080F7F98: .4byte 0x00000ED8
_080F7F9C: .4byte 0x02002146

	thumb_func_start openAnalysisScreen
openAnalysisScreen: @ 0x080F7FA0
	push {r4, lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	adds r0, #1
	adds r1, r0, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080F7FE4
	ldr r1, _080F7FD8 @ =0x03002AC0
	ldr r2, _080F7FDC @ =0x00000402
	adds r0, r1, r2
	movs r2, #0x20
	strb r2, [r0]
	ldr r4, _080F7FE0 @ =0x00000401
	adds r0, r1, r4
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	strb r2, [r1]
	movs r0, #2
	strb r0, [r3, #1]
	adds r0, r3, #0
	bl sdAnalysisFrameScript
	b _080F7FFE
	.align 2, 0
_080F7FD8: .4byte 0x03002AC0
_080F7FDC: .4byte 0x00000402
_080F7FE0: .4byte 0x00000401
_080F7FE4:
	ldr r2, _080F8004 @ =0x03002AC0
	ldr r3, _080F8008 @ =0x00000402
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0xff
	ands r0, r1
	ldr r4, _080F800C @ =0x00000401
	adds r1, r2, r4
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	strb r0, [r2]
_080F7FFE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F8004: .4byte 0x03002AC0
_080F8008: .4byte 0x00000402
_080F800C: .4byte 0x00000401

	thumb_func_start sdAnalysisFrameScript
sdAnalysisFrameScript: @ 0x080F8010
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r4, _080F80A8 @ =0x00000DCC
	add r4, sb
	movs r0, #0
	strb r0, [r4, #0xc]
	ldr r1, _080F80AC @ =0x083864AC
	mov r2, sb
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, sb
	bl bxR1
	ldr r0, _080F80B0 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F8046
	movs r0, #3
	mov r3, sb
	strb r0, [r3, #1]
_080F8046:
	ldr r7, _080F80B4 @ =0x08372210
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	ldr r2, _080F80B8 @ =0x08372AA0
	mov r8, r2
	add r0, r8
	movs r1, #0x11
	movs r2, #1
	bl print
	ldrb r0, [r4, #0xa]
	adds r0, #1
	movs r1, #0x16
	movs r2, #1
	bl printThreeDigitNumber
	ldr r0, _080F80BC @ =0x0203DC50
	ldr r1, [r0]
	ldrb r2, [r4, #0xa]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	lsrs r0, r0, #0x1a
	adds r5, r1, r0
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #3
	ands r1, r2
	asrs r0, r1
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _080F808E
	b _080F823C
_080F808E:
	ldrb r0, [r5]
	adds r1, #4
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	bne _080F809C
	b _080F8214
_080F809C:
	cmp r3, #5
	bhi _080F80C0
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r0, r3, #0
	b _080F80CA
	.align 2, 0
_080F80A8: .4byte 0x00000DCC
_080F80AC: .4byte 0x083864AC
_080F80B0: .4byte 0x02001EB0
_080F80B4: .4byte 0x08372210
_080F80B8: .4byte 0x08372AA0
_080F80BC: .4byte 0x0203DC50
_080F80C0:
	cmp r3, #0x13
	bhi _080F80E0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r1, #0
_080F80CA:
	ldrb r4, [r4, #0xa]
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	add r0, r8
	movs r1, #0x11
	movs r2, #4
	bl print
	b _080F81F8
_080F80E0:
	cmp r3, #0x5d
	bhi _080F8140
	ldrb r0, [r4, #0xa]
	adds r6, r0, #0
	adds r6, #0x50
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r0, r7, r2
	ldrh r0, [r0]
	add r0, r8
	movs r1, #0x11
	movs r2, #4
	bl print
	lsls r4, r6, #1
	adds r4, r4, r7
	ldrh r0, [r4]
	add r0, r8
	movs r1, #0x11
	movs r2, #6
	bl print
	ldr r3, _080F8138 @ =0x000005A2
	adds r0, r7, r3
	ldrh r5, [r0]
	add r5, r8
	ldrh r0, [r4]
	add r0, r8
	bl getStringLength
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x11
	adds r0, r5, #0
	movs r2, #6
	bl print
	ldr r1, _080F813C @ =0x000005A4
	adds r0, r7, r1
	ldrh r0, [r0]
	add r0, r8
	b _080F81BC
	.align 2, 0
_080F8138: .4byte 0x000005A2
_080F813C: .4byte 0x000005A4
_080F8140:
	cmp r3, #0x6d
	bhi _080F81E0
	ldr r2, _080F81C8 @ =0x000005A6
	adds r0, r7, r2
	ldrh r0, [r0]
	add r0, r8
	movs r1, #0x11
	movs r2, #4
	bl print
	movs r6, #0
	ldr r1, _080F81CC @ =0x083864B8
	ldrb r0, [r4, #0xa]
	subs r0, #0x5e
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r2, #0
	beq _080F817C
_080F8166:
	adds r0, r2, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r2, #0
	bne _080F8166
_080F817C:
	ldr r1, _080F81CC @ =0x083864B8
	ldr r0, _080F81D0 @ =0x00000DCC
	add r0, sb
	ldrb r0, [r0, #0xa]
	subs r0, #0x5e
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r1, r6, #0
	adds r1, #0x11
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r2, #0
	movs r2, #6
	bl printNumber
	ldr r4, _080F81D4 @ =0x08372210
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r5, _080F81D8 @ =0x08372AA0
	adds r0, r0, r5
	adds r1, r6, #0
	adds r1, #0x12
	movs r2, #6
	bl print
	ldr r0, _080F81DC @ =0x000005AA
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, r0, r5
_080F81BC:
	movs r1, #0x11
	movs r2, #8
	bl print
	b _080F81F8
	.align 2, 0
_080F81C8: .4byte 0x000005A6
_080F81CC: .4byte 0x083864B8
_080F81D0: .4byte 0x00000DCC
_080F81D4: .4byte 0x08372210
_080F81D8: .4byte 0x08372AA0
_080F81DC: .4byte 0x000005AA
_080F81E0:
	ldrb r0, [r4, #0xa]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	add r0, r8
	movs r1, #0x11
	movs r2, #4
	bl print
_080F81F8:
	ldr r0, _080F8208 @ =0x08372210
	ldr r2, _080F820C @ =0x000003BA
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _080F8210 @ =0x08372AA0
	adds r0, r0, r1
	b _080F822E
	.align 2, 0
_080F8208: .4byte 0x08372210
_080F820C: .4byte 0x000003BA
_080F8210: .4byte 0x08372AA0
_080F8214:
	ldr r3, _080F8238 @ =0x000003BE
	adds r0, r7, r3
	ldrh r0, [r0]
	add r0, r8
	movs r1, #0x11
	movs r2, #4
	bl print
	movs r1, #0xee
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	add r0, r8
_080F822E:
	movs r1, #1
	movs r2, #0x12
	bl print
	b _080F824C
	.align 2, 0
_080F8238: .4byte 0x000003BE
_080F823C:
	ldr r2, _080F82AC @ =0x000003BA
	adds r0, r7, r2
	ldrh r0, [r0]
	add r0, r8
	movs r1, #1
	movs r2, #0x12
	bl print
_080F824C:
	ldr r5, _080F82B0 @ =0x00000DCC
	add r5, sb
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _080F82BC
	ldr r2, _080F82B4 @ =0x03002AC0
	ldrb r1, [r5, #0x12]
	lsls r1, r1, #0xa
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r5, #0x10]
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080F82B8 @ =0x02002190
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x10
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xe]
	movs r0, #3
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldrb r3, [r5, #0xe]
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0xff
	ands r1, r4
	movs r0, #0x40
	subs r0, r0, r3
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #4]
	ldrb r3, [r5, #0xf]
	adds r1, r3, #0
	adds r1, #0x50
	ands r1, r4
	movs r0, #0x50
	subs r0, r0, r3
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #8]
	b _080F82CE
	.align 2, 0
_080F82AC: .4byte 0x000003BA
_080F82B0: .4byte 0x00000DCC
_080F82B4: .4byte 0x03002AC0
_080F82B8: .4byte 0x02002190
_080F82BC:
	ldr r2, _080F82F0 @ =0x02002190
	ldrh r1, [r2]
	ldr r0, _080F82F4 @ =0x0000DFFF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	strb r1, [r5, #0x10]
	strb r1, [r5, #0x11]
	strb r1, [r5, #0x12]
_080F82CE:
	movs r0, #0x40
	bl FUN_08004068
	ldr r0, _080F82F8 @ =0x00000DCC
	add r0, sb
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _080F82E4
	mov r0, sb
	bl setSecretDiskPalette
_080F82E4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F82F0: .4byte 0x02002190
_080F82F4: .4byte 0x0000DFFF
_080F82F8: .4byte 0x00000DCC

	thumb_func_start blackoutAnalysis
blackoutAnalysis: @ 0x080F82FC
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	subs r0, #1
	movs r3, #0
	adds r1, r0, #0
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F833C
	ldr r0, _080F8334 @ =0x03002AC0
	ldr r4, _080F8338 @ =0x00000402
	adds r1, r0, r4
	strb r3, [r1]
	subs r4, #1
	adds r1, r0, r4
	strb r3, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	strb r3, [r0]
	movs r0, #4
	strb r0, [r2, #1]
	adds r0, r2, #0
	bl closeAnalysis
	b _080F8356
	.align 2, 0
_080F8334: .4byte 0x03002AC0
_080F8338: .4byte 0x00000402
_080F833C:
	ldr r2, _080F835C @ =0x03002AC0
	ldr r3, _080F8360 @ =0x00000402
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0xff
	ands r0, r1
	ldr r4, _080F8364 @ =0x00000401
	adds r1, r2, r4
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	strb r0, [r2]
_080F8356:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F835C: .4byte 0x03002AC0
_080F8360: .4byte 0x00000402
_080F8364: .4byte 0x00000401

	thumb_func_start closeAnalysis
closeAnalysis: @ 0x080F8368
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x40
	bl clearValFrom0x02001fe0
	ldr r2, _080F8398 @ =0x02002190
	ldrh r1, [r2]
	ldr r0, _080F839C @ =0x0000DFFF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	ldr r0, _080F83A0 @ =0x03002AC0
	strh r1, [r0]
	ldr r0, _080F83A4 @ =0x00000DCC
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r1, _080F83A8 @ =0x05030400
	adds r0, r4, #0
	bl FUN_080ee000
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F8398: .4byte 0x02002190
_080F839C: .4byte 0x0000DFFF
_080F83A0: .4byte 0x03002AC0
_080F83A4: .4byte 0x00000DCC
_080F83A8: .4byte 0x05030400

	thumb_func_start FUN_080f83ac
FUN_080f83ac: @ 0x080F83AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080F83F4 @ =0x00000DC4
	adds r1, r5, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #4]
	ldr r0, _080F83F8 @ =0x00000DB8
	adds r6, r5, r0
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0800469c
	ldr r0, _080F83FC @ =0x00000BAC
	adds r4, r5, r0
	adds r0, r4, #0
	bl FUN_08004e14
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_08004e4c
	ldr r0, _080F8400 @ =0x00000978
	adds r5, r5, r0
	ldr r1, _080F8404 @ =0x0203BB50
	adds r0, r5, #0
	movs r2, #0x40
	bl FUN_080e5e44
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F83F4: .4byte 0x00000DC4
_080F83F8: .4byte 0x00000DB8
_080F83FC: .4byte 0x00000BAC
_080F8400: .4byte 0x00000978
_080F8404: .4byte 0x0203BB50

	thumb_func_start FUN_080f8408
FUN_080f8408: @ 0x080F8408
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080F8448 @ =0x00000DC4
	adds r2, r5, r0
	ldr r0, _080F844C @ =0x02002150
	ldrh r1, [r0]
	ldr r0, _080F8450 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _080F8454 @ =0x00000BAC
	adds r5, r5, r0
	adds r0, r5, #0
	bl FUN_08004f00
	ldr r4, _080F8458 @ =0x02030300
	ldr r0, [r4]
	bl runStateFn
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_08016fa4
	adds r0, r5, #0
	bl FUN_08004eb0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F8448: .4byte 0x00000DC4
_080F844C: .4byte 0x02002150
_080F8450: .4byte 0x000001FF
_080F8454: .4byte 0x00000BAC
_080F8458: .4byte 0x02030300

	thumb_func_start setSecretDiskPalette
setSecretDiskPalette: @ 0x080F845C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r6, _080F84F8 @ =0x00000ED8
	add r6, r8
	movs r5, #0
	ldr r0, _080F84FC @ =0x0203DC50
	mov sb, r0
	ldr r1, _080F8500 @ =0x02002146
	mov sl, r1
	ldr r2, _080F8504 @ =0x000031A2
	adds r7, r2, #0
_080F847A:
	mov r3, sb
	ldr r2, [r3]
	ldr r0, _080F8508 @ =0x00000DCC
	add r0, r8
	ldrb r0, [r0, #0xb]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, r1, r5
	asrs r0, r1, #2
	adds r3, r2, r0
	ldrb r2, [r3]
	movs r0, #0xf
	ands r0, r2
	movs r2, #3
	ands r2, r1
	asrs r0, r2
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080F856C
	ldrb r0, [r3]
	adds r1, r2, #4
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080F8514
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsls r4, r4, #6
	lsrs r0, r0, #0x17
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r2, r4, r6
	adds r1, r2, #0
	adds r1, #0xc6
	ldr r3, _080F850C @ =0x000080ED
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0x83
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r3, #0x1f
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r2, _080F8510 @ =0x0000810E
	b _080F855C
	.align 2, 0
_080F84F8: .4byte 0x00000ED8
_080F84FC: .4byte 0x0203DC50
_080F8500: .4byte 0x02002146
_080F8504: .4byte 0x000031A2
_080F8508: .4byte 0x00000DCC
_080F850C: .4byte 0x000080ED
_080F8510: .4byte 0x0000810E
_080F8514:
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsls r4, r4, #6
	lsrs r0, r0, #0x17
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r2, r4, r6
	adds r1, r2, #0
	adds r1, #0xc6
	ldr r3, _080F8564 @ =0x000080EB
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0x83
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r3, #0x1f
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r2, _080F8568 @ =0x0000810C
_080F855C:
	adds r0, r2, #0
	strh r0, [r1]
	b _080F85A8
	.align 2, 0
_080F8564: .4byte 0x000080EB
_080F8568: .4byte 0x0000810C
_080F856C:
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsls r4, r4, #6
	lsrs r0, r0, #0x17
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r1, r4, r6
	adds r0, r1, #0
	adds r0, #0xc6
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	movs r3, #0x83
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r7, [r0]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r1, r2
	strh r7, [r0]
_080F85A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1d
	bhi _080F85B4
	b _080F847A
_080F85B4:
	ldr r0, _080F85DC @ =0x00000ED8
	add r0, r8
	mov r3, sl
	ldrh r2, [r3]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F85DC: .4byte 0x00000ED8

	thumb_func_start FUN_080f85e0
FUN_080f85e0: @ 0x080F85E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _080F8638
	ldr r0, _080F8634 @ =0x00000DCC
	adds r5, r6, r0
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl FUN_080e6420
	adds r4, r0, #0
	str r4, [r5, #4]
	ldrb r0, [r5, #0xa]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	adds r0, #0x18
	adds r4, #0x74
	strh r0, [r4]
	ldr r4, [r5, #4]
	ldrb r0, [r5, #0xa]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0xb]
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x18
	adds r4, #0x76
	strh r0, [r4]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
	b _080F8754
	.align 2, 0
_080F8634: .4byte 0x00000DCC
_080F8638:
	ldr r0, _080F8654 @ =0x00000DCC
	adds r3, r6, r0
	ldrb r1, [r3, #0xa]
	ldr r0, _080F8658 @ =0x02001EB0
	ldrh r2, [r0, #6]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080F865C
	cmp r1, #0
	beq _080F868C
	subs r0, r1, #1
	b _080F868A
	.align 2, 0
_080F8654: .4byte 0x00000DCC
_080F8658: .4byte 0x02001EB0
_080F865C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080F866C
	cmp r1, #0xb2
	bhi _080F868C
	adds r0, r1, #1
	b _080F868A
_080F866C:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080F867C
	cmp r1, #4
	bls _080F868C
	subs r0, r1, #5
	b _080F868A
_080F867C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080F868C
	cmp r1, #0xae
	bhi _080F868C
	adds r0, r1, #5
_080F868A:
	strb r0, [r3, #0xa]
_080F868C:
	ldr r0, _080F86B4 @ =0x00000DCC
	adds r4, r6, r0
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	beq _080F869C
	movs r0, #1
	bl playSound
_080F869C:
	ldrb r0, [r4, #0xa]
	movs r1, #5
	bl __udivsi3
	adds r2, r0, #0
	ldrb r1, [r4, #0xb]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bls _080F86B8
	strb r2, [r4, #0xb]
	b _080F86C4
	.align 2, 0
_080F86B4: .4byte 0x00000DCC
_080F86B8:
	ldrb r1, [r4, #0xb]
	subs r0, #5
	cmp r1, r0
	bge _080F86C8
	subs r0, r2, #5
	strb r0, [r4, #0xb]
_080F86C4:
	movs r0, #1
	strb r0, [r4, #0xc]
_080F86C8:
	ldr r0, _080F8734 @ =0x00000DCC
	adds r5, r6, r0
	ldr r4, [r5, #4]
	ldrb r0, [r5, #0xa]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	adds r0, #0x18
	adds r4, #0x74
	strh r0, [r4]
	ldr r4, [r5, #4]
	ldrb r0, [r5, #0xa]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0xb]
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x18
	adds r4, #0x76
	strh r0, [r4]
	ldr r0, _080F8738 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r4, #1
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F8748
	ldr r0, _080F873C @ =0x0203DC50
	ldr r0, [r0]
	ldrb r2, [r5, #0xa]
	lsrs r1, r2, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r1, #3
	ands r1, r2
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080F8740
	ldr r0, [r5, #4]
	adds r0, #0x78
	strb r4, [r0]
	strb r4, [r6, #2]
	movs r0, #0
	strb r0, [r6, #3]
	b _080F8754
	.align 2, 0
_080F8734: .4byte 0x00000DCC
_080F8738: .4byte 0x02001EB0
_080F873C: .4byte 0x0203DC50
_080F8740:
	movs r0, #4
	bl playSound
	b _080F8754
_080F8748:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F8754
	movs r0, #3
	strb r0, [r6, #1]
_080F8754:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start FUN_080f875c
FUN_080f875c: @ 0x080F875C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _080F880C
	ldr r0, _080F8798 @ =0x0203DC50
	ldr r1, [r0]
	ldr r0, _080F879C @ =0x00000DCC
	add r0, r8
	ldrb r2, [r0, #0xa]
	lsrs r0, r2, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #3
	ands r0, r2
	adds r0, #4
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080F87A0
	movs r0, #2
	bl playSound
	b _080F87A6
	.align 2, 0
_080F8798: .4byte 0x0203DC50
_080F879C: .4byte 0x00000DCC
_080F87A0:
	movs r0, #0xe
	bl playSound
_080F87A6:
	ldr r4, _080F87CC @ =0x00000DCC
	add r4, r8
	ldrb r1, [r4, #0xa]
	mov r0, r8
	movs r2, #0
	bl FUN_080f8a84
	ldrb r0, [r4, #0xa]
	cmp r0, #0x13
	bls _080F87F4
	cmp r0, #0x2e
	bhi _080F87D0
	movs r0, #0x13
	strb r0, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0x11]
	movs r0, #9
	strb r0, [r4, #0x12]
	b _080F87FC
	.align 2, 0
_080F87CC: .4byte 0x00000DCC
_080F87D0:
	cmp r0, #0x3b
	bhi _080F87E2
	movs r0, #2
	strb r0, [r4, #0x10]
	movs r0, #0x11
	strb r0, [r4, #0x11]
	movs r0, #7
	strb r0, [r4, #0x12]
	b _080F87FC
_080F87E2:
	cmp r0, #0x5d
	bhi _080F87F4
	movs r0, #8
	strb r0, [r4, #0x10]
	movs r0, #0xb
	strb r0, [r4, #0x11]
	movs r0, #0x16
	strb r0, [r4, #0x12]
	b _080F87FC
_080F87F4:
	movs r0, #0
	strb r0, [r4, #0x12]
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x10]
_080F87FC:
	ldr r1, _080F88E0 @ =0x00000DCC
	add r1, r8
	movs r0, #1
	strb r0, [r1, #0xc]
	mov r1, r8
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080F880C:
	movs r7, #2
	ldr r2, _080F88E4 @ =0x03002BC0
	mov sl, r2
	movs r4, #0x1f
	mov sb, r4
	movs r5, #0x1f
	mov ip, r5
_080F881A:
	lsls r0, r7, #1
	mov r1, sl
	adds r6, r0, r1
	ldrh r1, [r6]
	adds r4, r1, #0
	ldr r2, _080F88E8 @ =0x03002BE0
	adds r0, r0, r2
	ldrh r2, [r0]
	str r2, [sp, #0xc]
	movs r0, #0x1f
	adds r3, r1, #0
	ands r3, r0
	adds r0, r2, #0
	mov r5, ip
	ands r0, r5
	lsrs r0, r0, #1
	cmp r3, r0
	bls _080F8844
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080F8844:
	lsrs r1, r1, #5
	mov r0, ip
	ands r1, r0
	lsrs r0, r2, #5
	mov r2, sb
	ands r0, r2
	lsrs r0, r0, #1
	cmp r1, r0
	bls _080F885C
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080F885C:
	lsrs r2, r4, #0xa
	mov r4, ip
	ands r2, r4
	ldr r5, [sp, #0xc]
	lsrs r0, r5, #0xa
	mov r4, sb
	ands r0, r4
	lsrs r0, r0, #1
	cmp r2, r0
	bls _080F8876
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080F8876:
	lsls r0, r2, #0xa
	lsls r1, r1, #5
	orrs r0, r1
	orrs r0, r3
	strh r0, [r6]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xf
	bls _080F881A
	ldr r5, _080F88EC @ =0x083864D8
	ldr r4, _080F88E0 @ =0x00000DCC
	add r4, r8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0
	beq _080F8950
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x19
	ldrb r3, [r4, #0xe]
	cmp r3, r2
	bhs _080F88F0
	lsrs r1, r0, #0x1c
	adds r1, r3, r1
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #6]
	lsrs r0, r0, #4
	ldrb r2, [r4, #0xf]
	adds r0, r0, r2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r2, r0, r5
	ldrb r0, [r2, #5]
	lsrs r0, r0, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bls _080F88D2
	strb r0, [r4, #0xe]
_080F88D2:
	ldrb r0, [r2, #6]
	lsrs r1, r0, #1
	ldrb r0, [r4, #0xf]
	cmp r0, r1
	bls _080F8950
	strb r1, [r4, #0xf]
	b _080F8950
	.align 2, 0
_080F88E0: .4byte 0x00000DCC
_080F88E4: .4byte 0x03002BC0
_080F88E8: .4byte 0x03002BE0
_080F88EC: .4byte 0x083864D8
_080F88F0:
	strb r2, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldr r5, _080F897C @ =0x083864D8
	adds r0, r0, r5
	ldrb r0, [r0, #6]
	lsrs r0, r0, #1
	strb r0, [r4, #0xf]
	mov r1, r8
	ldrb r0, [r1, #3]
	ldrb r5, [r4, #0xa]
	cmp r0, #1
	bne _080F8950
	lsls r0, r5, #3
	ldr r2, _080F897C @ =0x083864D8
	adds r0, r0, r2
	ldrb r2, [r0, #4]
	ldrh r3, [r0]
	movs r1, #2
	ldrsb r1, [r0, r1]
	movs r0, #0x40
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldr r1, _080F897C @ =0x083864D8
	adds r0, r0, r1
	movs r1, #3
	ldrsb r1, [r0, r1]
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #4]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldr r4, _080F897C @ =0x083864D8
	adds r0, r0, r4
	ldrb r0, [r0, #7]
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r5, #0
	bl FUN_080e83d0
	mov r5, r8
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F8950:
	ldr r0, _080F8980 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F896A
	movs r0, #3
	bl playSound
	mov r1, r8
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_080F896A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F897C: .4byte 0x083864D8
_080F8980: .4byte 0x02001EB0

	thumb_func_start FUN_080f8984
FUN_080f8984: @ 0x080F8984
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080F89B8 @ =0x00000DCC
	adds r2, r3, r0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _080F89F4
	adds r4, r0, #0
	ldr r1, _080F89BC @ =0x083864D8
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrb r0, [r5, #5]
	lsrs r1, r0, #4
	subs r0, r4, r1
	cmp r0, #0
	ble _080F89C6
	strb r0, [r2, #0xe]
	ldrb r3, [r2, #0xf]
	ldrb r0, [r5, #6]
	lsrs r1, r0, #4
	subs r0, r3, r1
	cmp r0, #0
	ble _080F89C0
	strb r0, [r2, #0xf]
	b _080F8A18
	.align 2, 0
_080F89B8: .4byte 0x00000DCC
_080F89BC: .4byte 0x083864D8
_080F89C0:
	movs r0, #0
	strb r0, [r2, #0xf]
	b _080F8A18
_080F89C6:
	movs r0, #0
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xf]
	strb r0, [r3, #2]
	strb r0, [r3, #3]
	movs r2, #2
	ldr r3, _080F89F0 @ =0x03002BC0
	adds r4, r3, #0
	adds r4, #0x20
_080F89D8:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _080F89D8
	b _080F8A18
	.align 2, 0
_080F89F0: .4byte 0x03002BC0
_080F89F4:
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xf]
	strb r0, [r3, #2]
	strb r0, [r3, #3]
	movs r2, #2
	ldr r3, _080F8A20 @ =0x03002BC0
	adds r4, r3, #0
	adds r4, #0x20
_080F8A04:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _080F8A04
_080F8A18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F8A20: .4byte 0x03002BC0

	thumb_func_start printThreeDigitNumber
printThreeDigitNumber: @ 0x080F8A24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r5, #0
	ldr r0, _080F8A7C @ =0x08372210
	mov r8, r0
_080F8A3C:
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #0x3c
	add r0, r8
	ldrh r0, [r0]
	ldr r1, _080F8A80 @ =0x08372AA0
	adds r0, r0, r1
	subs r1, r7, r5
	adds r2, r6, #0
	bl print
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080F8A3C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F8A7C: .4byte 0x08372210
_080F8A80: .4byte 0x08372AA0

	thumb_func_start FUN_080f8a84
FUN_080f8a84: @ 0x080F8A84
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	ldr r1, _080F8AD8 @ =0x000064AC
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r2, #0
	beq _080F8AA4
	subs r0, r5, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	bls _080F8B6C
	cmp r5, #0x6d
	bhi _080F8B6C
_080F8AA4:
	ldr r0, _080F8ADC @ =0x0203DC50
	ldr r1, [r0]
	lsrs r0, r5, #2
	adds r6, r1, r0
	ldrb r2, [r6]
	movs r3, #3
	ands r3, r5
	adds r1, r3, #4
	adds r0, r2, #0
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F8B6C
	movs r0, #0x10
	lsls r0, r3
	orrs r2, r0
	strb r2, [r6]
	cmp r5, #5
	bhi _080F8B48
	lsls r0, r5, #2
	ldr r1, _080F8AE0 @ =_080F8AE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F8AD8: .4byte 0x000064AC
_080F8ADC: .4byte 0x0203DC50
_080F8AE0: .4byte _080F8AE4
_080F8AE4: @ jump table
	.4byte _080F8AFC @ case 0
	.4byte _080F8B06 @ case 1
	.4byte _080F8B10 @ case 2
	.4byte _080F8B1E @ case 3
	.4byte _080F8B28 @ case 4
	.4byte _080F8B32 @ case 5
_080F8AFC:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0x17]
	movs r0, #4
	b _080F8B18
_080F8B06:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0x17]
	movs r0, #2
	b _080F8B18
_080F8B10:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0x17]
	movs r0, #8
_080F8B18:
	orrs r0, r1
	strb r0, [r2, #0x17]
	b _080F8B3E
_080F8B1E:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0x19]
	movs r0, #0x40
	b _080F8B3A
_080F8B28:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0x19]
	movs r0, #2
	b _080F8B3A
_080F8B32:
	adds r2, r4, #0
	adds r2, #0xb4
	ldrb r1, [r2, #0x19]
	movs r0, #0x80
_080F8B3A:
	orrs r0, r1
	strb r0, [r2, #0x19]
_080F8B3E:
	ldr r1, _080F8B44 @ =0x0000017B
	b _080F8B84
	.align 2, 0
_080F8B44: .4byte 0x0000017B
_080F8B48:
	cmp r5, #0x13
	bls _080F8B6C
	cmp r5, #0x5d
	bhi _080F8B68
	ldr r0, _080F8B64 @ =0x020302FC
	ldr r1, [r0]
	adds r1, r5, r1
	subs r1, #0x14
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	b _080F8B82
	.align 2, 0
_080F8B64: .4byte 0x020302FC
_080F8B68:
	cmp r5, #0x6d
	bls _080F8B70
_080F8B6C:
	movs r0, #0
	b _080F8B86
_080F8B70:
	ldr r1, _080F8B8C @ =0x083864B8
	adds r0, r5, #0
	subs r0, #0x5e
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl addECrystal
_080F8B82:
	ldr r1, _080F8B90 @ =0x0000010D
_080F8B84:
	adds r0, r5, r1
_080F8B86:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F8B8C: .4byte 0x083864B8
_080F8B90: .4byte 0x0000010D

	thumb_func_start clearSecretDiskData
clearSecretDiskData: @ 0x080F8B94
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080F8BC8 @ =0x0203DC50
	str r4, [r0]
	movs r5, #0
	str r5, [sp]
	ldr r2, _080F8BCC @ =0x01000008
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	adds r4, #0x20
	ldr r2, _080F8BD0 @ =0x05000004
	adds r1, r4, #0
	bl CpuSet
	bl clearStageSD
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F8BC8: .4byte 0x0203DC50
_080F8BCC: .4byte 0x01000008
_080F8BD0: .4byte 0x05000004

	thumb_func_start clearSecretDiskDataHard
clearSecretDiskDataHard: @ 0x080F8BD4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080F8C08 @ =0x0203DC50
	str r4, [r0]
	movs r5, #0
	str r5, [sp]
	ldr r2, _080F8C0C @ =0x01000008
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	adds r4, #0x20
	ldr r2, _080F8C10 @ =0x05000004
	adds r1, r4, #0
	bl CpuSet
	bl clearStageSD
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F8C08: .4byte 0x0203DC50
_080F8C0C: .4byte 0x01000008
_080F8C10: .4byte 0x05000004

	thumb_func_start unlockAllSecretDisk
unlockAllSecretDisk: @ 0x080F8C14
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r6, _080F8C74 @ =0x0203DC50
	str r4, [r6]
	movs r5, #0
	str r5, [sp]
	ldr r2, _080F8C78 @ =0x01000008
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	adds r4, #0x20
	ldr r2, _080F8C7C @ =0x05000004
	adds r1, r4, #0
	bl CpuSet
	movs r7, #3
_080F8C3C:
	ldr r2, [r6]
	lsrs r4, r5, #2
	adds r2, r2, r4
	adds r3, r5, #0
	ands r3, r7
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r6]
	adds r2, r2, r4
	movs r0, #0x10
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb3
	bls _080F8C3C
	bl clearStageSD
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F8C74: .4byte 0x0203DC50
_080F8C78: .4byte 0x01000008
_080F8C7C: .4byte 0x05000004

	thumb_func_start clearStageSD
clearStageSD: @ 0x080F8C80
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _080F8CA8 @ =0x0203DC50
	adds r4, r5, #4
	movs r3, #0xff
_080F8C8A:
	adds r0, r2, r4
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _080F8C8A
	movs r0, #0
	strb r0, [r5, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F8CA8: .4byte 0x0203DC50

	thumb_func_start getDiskInStageRun
getDiskInStageRun: @ 0x080F8CAC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _080F8CDC @ =0x0203DC50
	ldr r2, [r3]
	lsrs r0, r0, #0x1a
	adds r2, r2, r0
	movs r1, #3
	ands r1, r4
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #4
	ldrb r1, [r3, #0xe]
	adds r0, r0, r1
	strb r4, [r0]
	ldrb r0, [r3, #0xe]
	adds r0, #1
	strb r0, [r3, #0xe]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F8CDC: .4byte 0x0203DC50

	thumb_func_start allSecretDiskFound
allSecretDiskFound: @ 0x080F8CE0
	push {r4, lr}
	movs r2, #0
	ldr r0, _080F8D08 @ =0x0203DC50
	ldr r3, [r0]
	movs r4, #0xf
_080F8CEA:
	lsrs r0, r2, #2
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	ands r1, r0
	movs r0, #3
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080F8D0C
	movs r0, #0
	b _080F8D18
	.align 2, 0
_080F8D08: .4byte 0x0203DC50
_080F8D0C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb3
	bls _080F8CEA
	movs r0, #1
_080F8D18:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start minigameScript
minigameScript: @ 0x080F8D20
	push {lr}
	ldr r2, _080F8D34 @ =0x08386A8C
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080F8D34: .4byte 0x08386A8C

	thumb_func_start initMinigame
initMinigame: @ 0x080F8D38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _080F8ED8 @ =0x00000DB8
	adds r0, r0, r5
	mov sl, r0
	ldr r7, _080F8EDC @ =0x03002AC0
	ldr r1, _080F8EE0 @ =0x00000402
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0
	mov r8, r2
	movs r0, #0x20
	strb r0, [r1]
	ldr r3, _080F8EE4 @ =0x00000401
	adds r6, r7, r3
	strb r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r7, r1
	strb r0, [r4]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r0, r7, r2
	mov r3, r8
	str r3, [r0]
	bl clear0x2001fe0
	ldr r0, _080F8EE8 @ =0x02002180
	movs r2, #0
	mov r1, r8
	strh r1, [r0]
	ldr r1, _080F8EEC @ =0x02002190
	mov r3, r8
	strh r3, [r1]
	movs r0, #0xff
	strb r0, [r1, #0xe]
	ldr r0, _080F8EF0 @ =0x020021A0
	strh r3, [r0]
	strh r3, [r7]
	mov r0, sb
	strb r2, [r0]
	strb r2, [r6]
	strb r2, [r4]
	ldr r2, _080F8EF4 @ =0x02002140
	ldrh r1, [r2]
	ldr r0, _080F8EF8 @ =0x0000FFF8
	ands r0, r1
	ldr r1, _080F8EFC @ =0x0000F0FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _080F8F00 @ =0x00001ED8
	adds r4, r4, r5
	mov sb, r4
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r4]
	ldr r1, _080F8F04 @ =0x00001EDC
	adds r0, r5, r1
	mov r2, r8
	strh r2, [r0]
	ldr r3, _080F8F08 @ =0x00000DC4
	adds r1, r5, r3
	mov r0, sl
	movs r2, #0
	movs r3, #0
	bl FUN_0800469c
	movs r0, #0x9a
	lsls r0, r0, #4
	adds r4, r5, r0
	adds r0, r4, #0
	bl FUN_08004e14
	adds r0, r4, #0
	mov r1, sl
	bl FUN_08004e4c
	bl FUN_08007084
	bl FUN_08016db4
	ldr r1, _080F8F0C @ =0x0202F388
	ldr r2, _080F8F10 @ =0x00006260
	adds r0, r5, r2
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _080F8F14 @ =0x0202F334
	str r6, [r0]
	ldr r0, _080F8F18 @ =0x0202F384
	mov r3, sb
	str r3, [r0]
	ldr r1, _080F8F1C @ =0x0202F340
	ldr r4, _080F8F20 @ =0x000064AC
	adds r0, r5, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, _080F8F24 @ =0x02037C60
	movs r2, #1
	bl initZeroStateHeader
	ldr r2, _080F8F28 @ =0x00000838
	adds r0, r5, r2
	ldr r1, _080F8F2C @ =0x02038FD0
	movs r2, #0x18
	bl initWeaponHeader
	ldr r3, _080F8F30 @ =0x00000888
	adds r0, r5, r3
	ldr r1, _080F8F34 @ =0x03004B80
	movs r2, #0x12
	bl initZakoHeader
	movs r4, #0x8b
	lsls r4, r4, #4
	adds r0, r5, r4
	ldr r1, _080F8F38 @ =0x03003920
	movs r2, #0x18
	bl initAtkStateHeader
	ldr r1, _080F8F3C @ =0x000008D8
	adds r0, r5, r1
	ldr r1, _080F8F40 @ =0x03005950
	movs r2, #0x40
	bl initGhostHeader
	movs r2, #0x90
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, _080F8F44 @ =0x0203A5F0
	movs r2, #0x16
	bl initStaticHeader
	ldr r3, _080F8F48 @ =0x00000928
	adds r0, r5, r3
	ldr r1, _080F8F4C @ =0x02037EF0
	movs r2, #0xa
	bl FUN_080e092c
	ldr r0, _080F8F50 @ =0x02030B70
	bl setBG0MaskPointer
	movs r4, #0xe8
	lsls r4, r4, #2
	adds r4, r4, r7
	mov ip, r4
	movs r0, #0xe9
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0xea
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0xec
	lsls r2, r2, #2
	adds r3, r7, r2
	movs r4, #0xed
	lsls r4, r4, #2
	adds r2, r7, r4
	movs r0, #0xee
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r4, #8
	adds r0, r7, r4
	str r6, [r0]
	str r6, [r1]
	str r6, [r2]
	str r6, [r3]
	ldr r0, _080F8F54 @ =0x03002E6C
	str r6, [r0]
	mov r1, sb
	str r6, [r1]
	mov r2, sl
	str r6, [r2]
	mov r3, ip
	str r6, [r3]
	ldr r1, _080F8F58 @ =0x08386A98
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl bxR1
	mov r4, r8
	strh r4, [r5, #4]
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F8ED8: .4byte 0x00000DB8
_080F8EDC: .4byte 0x03002AC0
_080F8EE0: .4byte 0x00000402
_080F8EE4: .4byte 0x00000401
_080F8EE8: .4byte 0x02002180
_080F8EEC: .4byte 0x02002190
_080F8EF0: .4byte 0x020021A0
_080F8EF4: .4byte 0x02002140
_080F8EF8: .4byte 0x0000FFF8
_080F8EFC: .4byte 0x0000F0FF
_080F8F00: .4byte 0x00001ED8
_080F8F04: .4byte 0x00001EDC
_080F8F08: .4byte 0x00000DC4
_080F8F0C: .4byte 0x0202F388
_080F8F10: .4byte 0x00006260
_080F8F14: .4byte 0x0202F334
_080F8F18: .4byte 0x0202F384
_080F8F1C: .4byte 0x0202F340
_080F8F20: .4byte 0x000064AC
_080F8F24: .4byte 0x02037C60
_080F8F28: .4byte 0x00000838
_080F8F2C: .4byte 0x02038FD0
_080F8F30: .4byte 0x00000888
_080F8F34: .4byte 0x03004B80
_080F8F38: .4byte 0x03003920
_080F8F3C: .4byte 0x000008D8
_080F8F40: .4byte 0x03005950
_080F8F44: .4byte 0x0203A5F0
_080F8F48: .4byte 0x00000928
_080F8F4C: .4byte 0x02037EF0
_080F8F50: .4byte 0x02030B70
_080F8F54: .4byte 0x03002E6C
_080F8F58: .4byte 0x08386A98

	thumb_func_start mgScript1
mgScript1: @ 0x080F8F5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	movs r2, #4
	ldrsh r1, [r6, r2]
	cmp r1, #0x1f
	bgt _080F8F90
	adds r0, #1
	adds r1, r0, #0
	strh r0, [r6, #4]
	ldr r2, _080F8F88 @ =0x03002AC0
	ldr r3, _080F8F8C @ =0x00000402
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0xff
	b _080F8FA4
	.align 2, 0
_080F8F88: .4byte 0x03002AC0
_080F8F8C: .4byte 0x00000402
_080F8F90:
	cmp r1, #0x20
	ble _080F8FB4
	subs r0, #1
	strh r0, [r6, #4]
	ldr r2, _080F9170 @ =0x03002AC0
	subs r0, #0x20
	ldr r3, _080F9174 @ =0x00000402
	adds r1, r2, r3
	strb r0, [r1]
	movs r1, #0xff
_080F8FA4:
	ands r0, r1
	subs r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	strb r0, [r2]
_080F8FB4:
	ldr r2, _080F9178 @ =0x00001ED8
	adds r1, r6, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #0x9a
	lsls r3, r3, #4
	adds r0, r6, r3
	bl FUN_08004f00
	ldr r1, _080F917C @ =0x0202F354
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080F9180 @ =0x0202F360
	movs r0, #0
	str r0, [sp]
	ldr r2, _080F9184 @ =0x001FFFFF
	mov sl, r2
	ldr r2, _080F9188 @ =0x01000008
	mov r0, sp
	bl CpuFastSet
	ldr r1, _080F918C @ =0x08386AB4
	ldrb r0, [r6, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl bxR1
	cmp r0, #0
	bne _080F8FFA
	ldrb r0, [r6, #2]
	adds r0, #1
	strb r0, [r6, #2]
_080F8FFA:
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _080F9058
	ldr r7, _080F9190 @ =0x020023D4
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r3, r3, r7
	mov sb, r3
	subs r0, r7, #2
	mov r8, r0
	ldrb r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r5, r4, #0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r5, r0
	lsrs r2, r5, #2
	mov r1, sl
	ands r2, r1
	adds r0, r7, #0
	mov r1, sb
	bl CpuFastSet
	movs r0, #0x1f
	ands r4, r0
	cmp r4, #0
	beq _080F904A
	adds r0, r5, r7
	mov r2, sb
	adds r1, r5, r2
	lsrs r2, r4, #2
	mov r3, sl
	ands r2, r3
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
_080F904A:
	mov r0, r8
	ldrb r1, [r0]
	subs r0, r7, #1
	strb r1, [r0]
	movs r2, #0
	mov r1, r8
	strb r2, [r1]
_080F9058:
	ldr r5, _080F9194 @ =0x020302F0
	ldr r0, [r5]
	bl FUN_08016e4c
	ldr r7, _080F9198 @ =0x020302A8
	ldr r0, [r7]
	bl FUN_08016e4c
	ldr r3, _080F919C @ =0x0203029C
	mov r8, r3
	ldr r0, [r3]
	bl runStateFn
	bl runGameStateFn
	ldr r4, _080F91A0 @ =0x020302A0
	ldr r0, [r4]
	bl runStateFn
	ldr r0, _080F91A4 @ =0x020302F4
	mov sb, r0
	ldr r0, [r0]
	bl runStateFn
	bl runGhostObjFns
	bl FUN_0800709c
	ldr r0, [r5]
	bl FUN_08016e8c
	ldr r0, [r7]
	bl FUN_08016e8c
	mov r1, r8
	ldr r0, [r1]
	bl FUN_08016e8c
	ldr r2, _080F91A8 @ =0x020302B8
	mov sl, r2
	ldr r0, [r2]
	bl FUN_08016e8c
	ldr r0, [r4]
	bl FUN_08016e8c
	mov r3, sb
	ldr r0, [r3]
	bl FUN_08016e8c
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _080F90CA
	ldr r1, _080F91AC @ =0x00000DC4
	adds r0, r6, r1
	bl stage_08008bb8
_080F90CA:
	bl decrementPauseFrame
	ldr r0, [r5]
	bl runDamageEffect
	ldr r0, [r7]
	bl runDamageEffect
	mov r2, r8
	ldr r0, [r2]
	bl runDamageEffect
	mov r3, sb
	ldr r0, [r3]
	bl runDamageEffect
	ldr r0, [r5]
	movs r1, #0x9a
	lsls r1, r1, #4
	adds r4, r6, r1
	adds r1, r4, #0
	bl FUN_0801708c
	ldr r0, [r7]
	adds r1, r4, #0
	bl FUN_0801708c
	mov r2, r8
	ldr r0, [r2]
	adds r1, r4, #0
	bl FUN_0801708c
	adds r0, r4, #0
	bl FUN_08036c94
	mov r3, sl
	ldr r0, [r3]
	adds r1, r4, #0
	bl FUN_08016fa4
	ldr r0, _080F91B0 @ =0x020302EC
	ldr r0, [r0]
	adds r1, r4, #0
	bl FUN_08016fa4
	mov r1, sb
	ldr r0, [r1]
	adds r1, r4, #0
	bl FUN_0801708c
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _080F913A
	adds r0, r4, #0
	bl FUN_08008c34
_080F913A:
	adds r0, r4, #0
	bl FUN_08004eb0
	ldr r0, _080F91B4 @ =0x0202F330
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F915A
	ldr r0, _080F91B8 @ =0x030032E0
	ldrb r1, [r0, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F915A
	movs r0, #0x29
	bl playSound
_080F915A:
	ldr r1, _080F91B4 @ =0x0202F330
	movs r0, #0
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F9170: .4byte 0x03002AC0
_080F9174: .4byte 0x00000402
_080F9178: .4byte 0x00001ED8
_080F917C: .4byte 0x0202F354
_080F9180: .4byte 0x0202F360
_080F9184: .4byte 0x001FFFFF
_080F9188: .4byte 0x01000008
_080F918C: .4byte 0x08386AB4
_080F9190: .4byte 0x020023D4
_080F9194: .4byte 0x020302F0
_080F9198: .4byte 0x020302A8
_080F919C: .4byte 0x0203029C
_080F91A0: .4byte 0x020302A0
_080F91A4: .4byte 0x020302F4
_080F91A8: .4byte 0x020302B8
_080F91AC: .4byte 0x00000DC4
_080F91B0: .4byte 0x020302EC
_080F91B4: .4byte 0x0202F330
_080F91B8: .4byte 0x030032E0

	thumb_func_start exitMinigame
exitMinigame: @ 0x080F91BC
	push {lr}
	ldr r2, _080F91E0 @ =0x08386AD0
	ldrb r1, [r0, #1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	cmp r0, #0
	bne _080F91DC
	bl FUN_08008d9c
	bl clear0x2001fe0
	bl FUN_0800234c
_080F91DC:
	pop {r0}
	bx r0
	.align 2, 0
_080F91E0: .4byte 0x08386AD0

	thumb_func_start initZeroMg
initZeroMg: @ 0x080F91E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldr r7, _080F9384 @ =0x00000DCC
	add r7, sl
	ldr r1, _080F9388 @ =0x00000DC4
	add r1, sl
	ldr r0, _080F938C @ =0x002E6800
	str r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r1, #4]
	movs r0, #3
	bl stage_08008a54
	ldr r4, _080F9390 @ =0x0000058C
	ldr r1, _080F9394 @ =0x085D78F8
	adds r0, r4, r1
	ldr r1, _080F9398 @ =0x0202F790
	adds r1, #0x8e
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080F939C @ =0x085D7904
	mov r8, r0
	add r4, r8
	ldr r6, _080F93A0 @ =0x0202F590
	adds r0, r6, #0
	adds r0, #0x8e
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	mov sb, r2
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0x9e
	lsls r5, r4, #1
	ldr r1, _080F9398 @ =0x0202F790
	adds r0, r1, r5
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0]
	adds r5, r6, r5
	movs r0, #8
	strh r0, [r5]
	lsls r4, r4, #4
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r4, r4, r2
	ldr r2, _080F9394 @ =0x085D78F8
	adds r0, r4, r2
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	add r4, r8
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	movs r1, #0xf0
	ldr r0, _080F9398 @ =0x0202F790
	strh r1, [r0]
	movs r0, #0xe
	strh r0, [r6]
	ldr r2, _080F9394 @ =0x085D78F8
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	adds r0, r2, #0
	bl loadGraphics
	ldrh r1, [r6]
	mov r2, r8
	ldrb r0, [r2, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	mov r0, r8
	bl transferPalette
	ldr r0, _080F938C @ =0x002E6800
	str r0, [sp, #4]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [sp, #8]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #0
	bl FUN_08036358
	str r0, [r7, #0x14]
	ldr r1, _080F93A4 @ =0x0202F340
	str r0, [r1]
	movs r1, #0
	add r6, sp, #4
	movs r5, #0x80
	lsls r5, r5, #5
_080F92E2:
	adds r4, r1, #1
	ldr r0, _080F93A8 @ =0x002ED800
	subs r0, r0, r5
	str r0, [sp, #4]
	movs r0, #0x94
	lsls r0, r0, #9
	str r0, [r6, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0xc
	bl FUN_080c82b8
	movs r1, #0x80
	lsls r1, r1, #5
	adds r5, r5, r1
	adds r1, r4, #0
	cmp r1, #2
	ble _080F92E2
	movs r4, #0
	movs r0, #3
	strb r0, [r7, #0xc]
	movs r5, #0
	strh r4, [r7]
	movs r0, #0x60
	mov r2, sl
	strh r0, [r2, #6]
	ldr r1, _080F93AC @ =0x02030B60
	ldr r0, _080F93B0 @ =0x0000626C
	adds r1, r1, r0
	ldr r2, [r1]
	ldr r0, _080F93B4 @ =0x41C64E6D
	muls r0, r2, r0
	ldr r2, _080F93B8 @ =0x00003039
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	movs r1, #6
	bl __umodsi3
	mov r1, sl
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	strh r4, [r7, #4]
	strh r4, [r7, #6]
	strh r4, [r7, #8]
	strh r4, [r7, #0xa]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x2c]
	strh r4, [r7, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #1
	str r0, [r7, #0x34]
	strb r5, [r7, #0xd]
	strh r4, [r7, #0xe]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	strh r4, [r7, #0x28]
	strh r4, [r7, #0x2a]
	strh r4, [r1, #4]
	ldr r0, _080F93BC @ =0x020021B0
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x3c]
	strh r4, [r7, #0x3a]
	movs r0, #0xad
	bl playBGM
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F9384: .4byte 0x00000DCC
_080F9388: .4byte 0x00000DC4
_080F938C: .4byte 0x002E6800
_080F9390: .4byte 0x0000058C
_080F9394: .4byte 0x085D78F8
_080F9398: .4byte 0x0202F790
_080F939C: .4byte 0x085D7904
_080F93A0: .4byte 0x0202F590
_080F93A4: .4byte 0x0202F340
_080F93A8: .4byte 0x002ED800
_080F93AC: .4byte 0x02030B60
_080F93B0: .4byte 0x0000626C
_080F93B4: .4byte 0x41C64E6D
_080F93B8: .4byte 0x00003039
_080F93BC: .4byte 0x020021B0

	thumb_func_start zeroMinigame
zeroMinigame: @ 0x080F93C0
	push {lr}
	ldr r2, _080F93DC @ =0x00000DCC
	adds r1, r0, r2
	ldr r2, _080F93E0 @ =0x08386AEC
	movs r3, #4
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r1}
	bx r1
	.align 2, 0
_080F93DC: .4byte 0x00000DCC
_080F93E0: .4byte 0x08386AEC

	thumb_func_start zeroMinigamePhase0
zeroMinigamePhase0: @ 0x080F93E4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r1, _080F9400 @ =0x00000DCC
	adds r5, r0, r1
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _080F9418
	cmp r0, #1
	bgt _080F9404
	cmp r0, #0
	beq _080F940E
	b _080F9452
	.align 2, 0
_080F9400: .4byte 0x00000DCC
_080F9404:
	cmp r0, #2
	beq _080F942C
	cmp r0, #3
	beq _080F9440
	b _080F9452
_080F940E:
	movs r0, #0x3c
	strh r0, [r5]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080F9418:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F9452
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	b _080F9452
_080F942C:
	movs r0, #0
	bl FUN_080b56b4
	str r0, [r5, #0x10]
	movs r0, #0x1d
	bl playSound
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080F9440:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080F9452
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #4]
	strh r1, [r5, #6]
_080F9452:
	ldr r1, _080F94A8 @ =0x0810E248
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldrh r4, [r5, #0x38]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x3c]
	cmp r4, r0
	bls _080F947A
	str r4, [r5, #0x3c]
_080F947A:
	add r4, sp, #8
	ldr r1, _080F94AC @ =0x0810E250
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x3c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	movs r0, #1
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080F94A8: .4byte 0x0810E248
_080F94AC: .4byte 0x0810E250

	thumb_func_start zeroMinigamePhase1
zeroMinigamePhase1: @ 0x080F94B0
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _080F94E8 @ =0x00000DCC
	adds r5, r4, r0
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x30]
	ldr r0, _080F94EC @ =0x0003BFFF
	cmp r1, r0
	ble _080F94F8
	ldr r1, _080F94F0 @ =0x00000DC4
	adds r2, r4, r1
	ldr r0, [r2]
	ldr r1, _080F94F4 @ =0xFFFC4000
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #0x54]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r0, #1
	b _080F94FA
	.align 2, 0
_080F94E8: .4byte 0x00000DCC
_080F94EC: .4byte 0x0003BFFF
_080F94F0: .4byte 0x00000DC4
_080F94F4: .4byte 0xFFFC4000
_080F94F8:
	movs r0, #0
_080F94FA:
	strb r0, [r5, #0xd]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldr r0, [r5, #0x14]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080F950C
	b _080F96D4
_080F950C:
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #6
	ldrsh r1, [r4, r3]
	bl __modsi3
	cmp r0, #0
	beq _080F951E
	b _080F96D4
_080F951E:
	ldrh r6, [r5, #0xe]
	adds r0, r6, #1
	movs r1, #0xa
	bl __modsi3
	cmp r0, #0
	bne _080F95C4
	ldr r1, _080F9574 @ =0x02030B60
	ldr r0, _080F9578 @ =0x0000626C
	adds r1, r1, r0
	ldr r2, [r1]
	ldr r0, _080F957C @ =0x41C64E6D
	muls r0, r2, r0
	ldr r2, _080F9580 @ =0x00003039
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	strh r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F958C
	ldr r1, _080F9584 @ =0x08386AF8
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080F9588 @ =0x002EE000
	adds r0, r0, r2
	str r0, [sp, #0x14]
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r0, r1
	b _080F95B0
	.align 2, 0
_080F9574: .4byte 0x02030B60
_080F9578: .4byte 0x0000626C
_080F957C: .4byte 0x41C64E6D
_080F9580: .4byte 0x00003039
_080F9584: .4byte 0x08386AF8
_080F9588: .4byte 0x002EE000
_080F958C:
	ldr r1, _080F95BC @ =0x08386AF8
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080F95C0 @ =0x002DF000
	adds r0, r0, r3
	str r0, [sp, #0x14]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0xa0
	lsls r3, r3, #8
	adds r0, r0, r3
_080F95B0:
	add r1, sp, #0x14
	str r0, [r1, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	b _080F9654
	.align 2, 0
_080F95BC: .4byte 0x08386AF8
_080F95C0: .4byte 0x002DF000
_080F95C4:
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080F95EE
	ldr r1, _080F960C @ =0x02030B60
	ldr r0, _080F9610 @ =0x0000626C
	adds r1, r1, r0
	ldr r2, [r1]
	ldr r0, _080F9614 @ =0x41C64E6D
	muls r0, r2, r0
	ldr r2, _080F9618 @ =0x00003039
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	movs r1, #6
	bl __umodsi3
	strh r0, [r4, #8]
_080F95EE:
	ldrh r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9624
	ldr r1, _080F961C @ =0x08386AF8
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080F9620 @ =0x002EE000
	adds r0, r0, r2
	b _080F9634
	.align 2, 0
_080F960C: .4byte 0x02030B60
_080F9610: .4byte 0x0000626C
_080F9614: .4byte 0x41C64E6D
_080F9618: .4byte 0x00003039
_080F961C: .4byte 0x08386AF8
_080F9620: .4byte 0x002EE000
_080F9624:
	ldr r1, _080F9678 @ =0x08386AF8
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080F967C @ =0x002DF000
	adds r0, r0, r3
_080F9634:
	str r0, [sp, #0x14]
	add r2, sp, #0x14
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r2, #4]
	adds r1, r2, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
_080F9654:
	bl FUN_0809aff0
	adds r2, r0, #0
	cmp r2, #0
	beq _080F96D4
	ldrh r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9688
	ldr r1, _080F9680 @ =0x08386B28
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080F9684 @ =0x002EE000
	b _080F9696
	.align 2, 0
_080F9678: .4byte 0x08386AF8
_080F967C: .4byte 0x002DF000
_080F9680: .4byte 0x08386B28
_080F9684: .4byte 0x002EE000
_080F9688:
	ldr r1, _080F96C0 @ =0x08386B28
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080F96C4 @ =0x002DF000
_080F9696:
	adds r0, r0, r3
	str r0, [r2, #0x64]
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r2, #0x68]
	ldrh r0, [r5, #0xe]
	adds r0, #1
	strh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _080F96C8
	movs r0, #0x58
	b _080F96D2
	.align 2, 0
_080F96C0: .4byte 0x08386B28
_080F96C4: .4byte 0x002DF000
_080F96C8:
	cmp r0, #0x27
	bhi _080F96D0
	movs r0, #0x4c
	b _080F96D2
_080F96D0:
	movs r0, #0x40
_080F96D2:
	strh r0, [r4, #6]
_080F96D4:
	ldr r1, _080F9748 @ =0x0810E248
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldrh r4, [r5, #0x38]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x3c]
	cmp r4, r0
	bls _080F970E
	str r4, [r5, #0x3c]
	ldrh r0, [r5, #0x3a]
	cmp r0, #0
	bne _080F970E
	movs r0, #1
	strh r0, [r5, #0x3a]
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
_080F970E:
	add r4, sp, #8
	ldr r1, _080F974C @ =0x0810E250
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x3c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _080F973E
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	strh r1, [r5, #6]
_080F973E:
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F9748: .4byte 0x0810E248
_080F974C: .4byte 0x0810E250

	thumb_func_start zeroMinigamePhase2
zeroMinigamePhase2: @ 0x080F9750
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r1, _080F976C @ =0x00000DCC
	adds r5, r0, r1
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #5
	bhi _080F97EC
	lsls r0, r0, #2
	ldr r1, _080F9770 @ =_080F9774
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F976C: .4byte 0x00000DCC
_080F9770: .4byte _080F9774
_080F9774: @ jump table
	.4byte _080F978C @ case 0
	.4byte _080F9796 @ case 1
	.4byte _080F97A4 @ case 2
	.4byte _080F97B8 @ case 3
	.4byte _080F97C8 @ case 4
	.4byte _080F97D4 @ case 5
_080F978C:
	movs r0, #0x3c
	strh r0, [r5]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080F9796:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F97EC
	b _080F97C0
_080F97A4:
	movs r0, #4
	bl FUN_080b56b4
	str r0, [r5, #0x10]
	movs r0, #0xad
	bl fadeoutBGM
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080F97B8:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080F97EC
_080F97C0:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	b _080F97EC
_080F97C8:
	ldr r1, _080F97E8 @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080F97D4:
	ldr r0, _080F97E8 @ =0x02030B60
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	bne _080F97EC
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #6]
	b _080F9838
	.align 2, 0
_080F97E8: .4byte 0x02030B60
_080F97EC:
	ldr r1, _080F9840 @ =0x0810E248
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldrh r4, [r5, #0x38]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x3c]
	cmp r4, r0
	bls _080F9814
	str r4, [r5, #0x3c]
_080F9814:
	add r4, sp, #8
	ldr r1, _080F9844 @ =0x0810E250
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x3c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	movs r0, #1
_080F9838:
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080F9840: .4byte 0x0810E248
_080F9844: .4byte 0x0810E250

	thumb_func_start exitZeroMinigame
exitZeroMinigame: @ 0x080F9848
	push {lr}
	ldr r2, _080F9864 @ =0x00000DCC
	adds r1, r0, r2
	ldrh r2, [r1, #6]
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _080F9868
	movs r0, #2
	strh r0, [r1]
	adds r0, r2, #1
	strh r0, [r1, #6]
	b _080F9898
	.align 2, 0
_080F9864: .4byte 0x00000DCC
_080F9868:
	cmp r0, #1
	bne _080F9898
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080F9880
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F9898
_080F9880:
	ldr r2, _080F9894 @ =0x020021B0
	ldr r1, [r1, #0x3c]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	bls _080F9890
	str r1, [r2, #0x24]
	bl sram_08008368
_080F9890:
	movs r0, #0
	b _080F989A
	.align 2, 0
_080F9894: .4byte 0x020021B0
_080F9898:
	movs r0, #1
_080F989A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start initCielMinigame
initCielMinigame: @ 0x080F98A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r7, r0, #0
	ldr r0, _080F9BE0 @ =0x00000DC4
	adds r1, r7, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #4]
	ldr r2, _080F9BE4 @ =0x02002140
	ldrh r1, [r2]
	ldr r0, _080F9BE8 @ =0x0000FFF8
	ands r0, r1
	ldr r1, _080F9BEC @ =0x0000F0FF
	ands r0, r1
	movs r3, #0xdc
	lsls r3, r3, #6
	adds r1, r3, #0
	movs r3, #0
	mov r4, sp
	strh r3, [r4, #0xc]
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _080F9BF0 @ =0x00000206
	adds r0, r4, #0
	strh r0, [r2, #6]
	ldr r1, _080F9BF4 @ =0x00000407
	adds r0, r1, #0
	strh r0, [r2, #8]
	movs r3, #0
	str r3, [r2, #0x10]
	str r3, [r2, #0x14]
	ldr r0, _080F9BF8 @ =0x08547C80
	movs r1, #0x80
	lsls r1, r1, #7
	bl loadGraphics
	ldr r0, _080F9BFC @ =0x08547C8C
	movs r1, #0
	bl transferPalette
	ldr r4, _080F9C00 @ =0x00000ED8
	adds r0, r7, r4
	ldr r4, _080F9C04 @ =0x085222A0
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0x80
	movs r3, #0
	bl transfer_08004248
	movs r2, #0
	str r2, [sp]
	movs r0, #0x24
	adds r1, r4, #0
	movs r2, #0x81
	movs r3, #0
	bl loadBGMapIntoVram
	ldr r5, _080F9C08 @ =0x00001234
	ldr r3, _080F9C0C @ =0x085D78F8
	mov sl, r3
	adds r0, r5, r3
	movs r4, #0xe9
	lsls r4, r4, #1
	ldr r2, _080F9C10 @ =0x0202F790
	adds r1, r2, r4
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	bl loadGraphics
	ldr r6, _080F9C14 @ =0x085D7904
	adds r5, r5, r6
	ldr r0, _080F9C18 @ =0x0202F590
	mov sb, r0
	add r4, sb
	ldrh r1, [r4]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	mov r8, r2
	add r1, r8
	adds r0, r5, #0
	bl transferPalette
	ldr r5, _080F9C1C @ =0x00001248
	mov r3, sl
	adds r0, r5, r3
	movs r4, #0xea
	lsls r4, r4, #1
	ldr r2, _080F9C10 @ =0x0202F790
	adds r1, r2, r4
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	bl loadGraphics
	adds r5, r5, r6
	add r4, sb
	ldrh r1, [r4]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, r8
	adds r0, r5, #0
	bl transferPalette
	ldr r4, _080F9C10 @ =0x0202F790
	ldrh r1, [r4]
	mov r2, sl
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	mov r0, sl
	bl loadGraphics
	mov r4, sb
	ldrh r1, [r4]
	ldrb r0, [r6, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, r8
	adds r0, r6, #0
	bl transferPalette
	ldr r0, _080F9C20 @ =0x00000DCC
	adds r1, r7, r0
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r1, #4]
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r1, #5]
	movs r4, #0
	str r4, [r1, #8]
	ldr r0, _080F9C24 @ =0x020021B0
	ldr r0, [r0, #0x28]
	str r0, [r1, #0xc]
	strh r4, [r1, #6]
	movs r5, #0
	ldr r0, _080F9C28 @ =0x00000DE4
	adds r2, r7, r0
	movs r3, #0xff
_080F99EC:
	adds r0, r2, r5
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080F99EC
	ldr r1, _080F9C20 @ =0x00000DCC
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0, #0x10]
	movs r1, #0x78
	strh r1, [r0, #0x12]
	movs r5, #0
	movs r2, #0xde
	lsls r2, r2, #4
	adds r2, r2, r7
	mov r8, r2
	ldr r3, _080F9C2C @ =0x00000DE9
	adds r3, r3, r7
	mov sb, r3
	movs r4, #0xdf
	lsls r4, r4, #4
	adds r4, r4, r7
	mov sl, r4
	ldr r0, _080F9C30 @ =0x00000E04
	adds r0, r7, r0
	str r0, [sp, #0x18]
	ldr r1, _080F9C34 @ =0x00000DEE
	adds r1, r7, r1
	str r1, [sp, #0x10]
	ldr r2, _080F9C38 @ =0x00000DEF
	adds r2, r7, r2
	str r2, [sp, #0x14]
	ldr r3, _080F9C3C @ =0x00000E0F
	adds r3, r7, r3
	str r3, [sp, #0x20]
	ldr r4, _080F9C40 @ =0x00000E0E
	adds r4, r7, r4
	str r4, [sp, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #4
	adds r0, r7, r0
	str r0, [sp, #0x24]
	ldr r1, _080F9C44 @ =0x00000E12
	adds r1, r7, r1
	str r1, [sp, #0x28]
	ldr r2, _080F9C48 @ =0x00000E13
	adds r2, r7, r2
	str r2, [sp, #0x2c]
	ldr r3, _080F9C4C @ =0x00000E14
	adds r3, r7, r3
	str r3, [sp, #0x30]
	ldr r4, _080F9C50 @ =0x00000E15
	adds r4, r7, r4
	str r4, [sp, #0x34]
	ldr r0, _080F9C54 @ =0x00000E16
	adds r0, r7, r0
	str r0, [sp, #0x38]
	ldr r1, _080F9C58 @ =0x00000E17
	adds r1, r7, r1
	str r1, [sp, #0x3c]
	ldr r6, _080F9C5C @ =0x02036DCC
_080F9A6E:
	mov r2, r8
	adds r4, r2, r5
	ldr r1, [r6]
	ldr r0, _080F9C60 @ =0x41C64E6D
	muls r0, r1, r0
	ldr r3, _080F9C64 @ =0x00003039
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080F9A6E
	movs r5, #0
	mov r1, sb
	movs r2, #0
_080F9A98:
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080F9A98
	movs r5, #0
	mov r2, sl
	movs r4, #0
	movs r3, #0xff
	ldr r1, [sp, #0x18]
_080F9AB0:
	lsls r0, r5, #1
	adds r0, r2, r0
	strh r3, [r0]
	adds r0, r1, r5
	strb r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _080F9AB0
	ldr r4, _080F9C20 @ =0x00000DCC
	adds r1, r7, r4
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0x24]
	movs r0, #1
	strh r0, [r1, #0x28]
	movs r0, #2
	strh r0, [r1, #0x2e]
	movs r0, #3
	strh r0, [r1, #0x32]
	movs r0, #4
	strh r0, [r1, #0x34]
	ldr r0, [sp, #0x10]
	strb r2, [r0]
	ldr r1, [sp, #0x14]
	strb r2, [r1]
	movs r5, #0
_080F9AE8:
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	bl FUN_080b221c
	adds r0, r7, #0
	movs r1, #1
	adds r2, r5, #0
	bl FUN_080b221c
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080F9AE8
	movs r5, #0
_080F9B08:
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	bl FUN_0809c1cc
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080F9B08
	movs r5, #0
_080F9B1E:
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	bl FUN_080ddd04
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _080F9B1E
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl FUN_080ddd04
	movs r0, #0xd8
	lsls r0, r0, #8
	movs r1, #0xb0
	lsls r1, r1, #7
	ldr r3, _080F9C68 @ =0x00000DD8
	adds r2, r7, r3
	movs r3, #0
	str r3, [sp]
	movs r3, #5
	str r3, [sp, #4]
	movs r5, #1
	str r5, [sp, #8]
	movs r3, #0
	bl FUN_080c8de8
	ldr r4, _080F9C20 @ =0x00000DCC
	adds r1, r7, r4
	str r0, [r1]
	ldr r0, _080F9C6C @ =0x020302A8
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	ldr r2, [sp, #0x1c]
	strb r0, [r2]
	movs r4, #0
	movs r0, #0x40
	ldr r3, [sp, #0x24]
	strh r0, [r3]
	ldr r0, [sp, #0x28]
	strb r5, [r0]
	ldr r1, [sp, #0x2c]
	strb r4, [r1]
	ldr r2, [sp, #0x30]
	strb r4, [r2]
	ldr r3, [sp, #0x34]
	strb r4, [r3]
	ldr r0, [sp, #0x38]
	strb r4, [r0]
	ldr r1, [sp, #0x3c]
	strb r4, [r1]
	movs r0, #0xd6
	movs r1, #0
	bl loadBeatPalette
	ldr r2, _080F9C70 @ =0x02002190
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x12
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xe]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r0, _080F9C74 @ =0x0000D0E0
	strh r0, [r2, #4]
	ldr r0, _080F9C78 @ =0x00000838
	strh r0, [r2, #8]
	ldr r4, _080F9C00 @ =0x00000ED8
	adds r0, r7, r4
	ldr r1, _080F9C7C @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F9BE0: .4byte 0x00000DC4
_080F9BE4: .4byte 0x02002140
_080F9BE8: .4byte 0x0000FFF8
_080F9BEC: .4byte 0x0000F0FF
_080F9BF0: .4byte 0x00000206
_080F9BF4: .4byte 0x00000407
_080F9BF8: .4byte 0x08547C80
_080F9BFC: .4byte 0x08547C8C
_080F9C00: .4byte 0x00000ED8
_080F9C04: .4byte 0x085222A0
_080F9C08: .4byte 0x00001234
_080F9C0C: .4byte 0x085D78F8
_080F9C10: .4byte 0x0202F790
_080F9C14: .4byte 0x085D7904
_080F9C18: .4byte 0x0202F590
_080F9C1C: .4byte 0x00001248
_080F9C20: .4byte 0x00000DCC
_080F9C24: .4byte 0x020021B0
_080F9C28: .4byte 0x00000DE4
_080F9C2C: .4byte 0x00000DE9
_080F9C30: .4byte 0x00000E04
_080F9C34: .4byte 0x00000DEE
_080F9C38: .4byte 0x00000DEF
_080F9C3C: .4byte 0x00000E0F
_080F9C40: .4byte 0x00000E0E
_080F9C44: .4byte 0x00000E12
_080F9C48: .4byte 0x00000E13
_080F9C4C: .4byte 0x00000E14
_080F9C50: .4byte 0x00000E15
_080F9C54: .4byte 0x00000E16
_080F9C58: .4byte 0x00000E17
_080F9C5C: .4byte 0x02036DCC
_080F9C60: .4byte 0x41C64E6D
_080F9C64: .4byte 0x00003039
_080F9C68: .4byte 0x00000DD8
_080F9C6C: .4byte 0x020302A8
_080F9C70: .4byte 0x02002190
_080F9C74: .4byte 0x0000D0E0
_080F9C78: .4byte 0x00000838
_080F9C7C: .4byte 0x02002146

	thumb_func_start cielMinigame
cielMinigame: @ 0x080F9C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _080F9CCC @ =0x00000DCC
	adds r4, r6, r0
	ldrh r0, [r4, #6]
	adds r0, #0x80
	strh r0, [r4, #6]
	ldr r1, _080F9CD0 @ =0x02002154
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	movs r0, #0xd6
	bl FUN_08004068
	ldrb r0, [r4, #4]
	cmp r0, #2
	bhi _080F9CE0
	ldr r1, _080F9CD4 @ =0x00000E17
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xf
	bhi _080F9CD8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x13]
	b _080F9D32
	.align 2, 0
_080F9CCC: .4byte 0x00000DCC
_080F9CD0: .4byte 0x02002154
_080F9CD4: .4byte 0x00000E17
_080F9CD8:
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #0x13]
	b _080F9D32
_080F9CE0:
	ldr r0, [r4]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	cmp r0, r1
	bls _080F9D32
	adds r1, #1
	str r1, [r4, #0xc]
	ldr r2, _080F9D48 @ =0x00000E16
	adds r4, r6, r2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F9D12
	ldr r0, _080F9D4C @ =0x020021B0
	ldr r0, [r0, #0x28]
	cmp r0, r1
	bhs _080F9D12
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080F9D12:
	ldr r3, _080F9D50 @ =0x00000DCC
	adds r0, r6, r3
	ldr r0, [r0, #0xc]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080F9D32
	movs r0, #0x9c
	lsls r0, r0, #1
	bl isSoundPlaying
	cmp r0, #0
	bne _080F9D32
	ldr r0, _080F9D54 @ =0x00000137
	bl playSound
_080F9D32:
	ldr r4, _080F9D50 @ =0x00000DCC
	adds r0, r6, r4
	ldrb r0, [r0, #4]
	cmp r0, #5
	bls _080F9D3E
	b _080F9E74
_080F9D3E:
	lsls r0, r0, #2
	ldr r1, _080F9D58 @ =_080F9D5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F9D48: .4byte 0x00000E16
_080F9D4C: .4byte 0x020021B0
_080F9D50: .4byte 0x00000DCC
_080F9D54: .4byte 0x00000137
_080F9D58: .4byte _080F9D5C
_080F9D5C: @ jump table
	.4byte _080F9D74 @ case 0
	.4byte _080F9D98 @ case 1
	.4byte _080F9DCC @ case 2
	.4byte _080F9DF8 @ case 3
	.4byte _080F9E30 @ case 4
	.4byte _080F9E60 @ case 5
_080F9D74:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl playBGM
	ldr r0, _080F9D90 @ =0x00000DCC
	adds r2, r6, r0
	ldr r3, _080F9D94 @ =0x00000E15
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	b _080FA1FC
	.align 2, 0
_080F9D90: .4byte 0x00000DCC
_080F9D94: .4byte 0x00000E15
_080F9D98:
	ldr r4, _080F9DC4 @ =0x00000DCC
	adds r5, r6, r4
	ldr r0, _080F9DC8 @ =0x00000E15
	adds r4, r6, r0
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080F9DB0
	b _080FA1FC
_080F9DB0:
	movs r0, #0
	bl FUN_080b56b4
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #4]
	b _080FA1FC
	.align 2, 0
_080F9DC4: .4byte 0x00000DCC
_080F9DC8: .4byte 0x00000E15
_080F9DCC:
	ldr r1, _080F9DF0 @ =0x00000DCC
	adds r3, r6, r1
	ldr r2, _080F9DF4 @ =0x00000E15
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x78
	bhi _080F9DE4
	b _080FA1FC
_080F9DE4:
	movs r0, #0
	str r0, [r3, #0xc]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	b _080FA1FC
	.align 2, 0
_080F9DF0: .4byte 0x00000DCC
_080F9DF4: .4byte 0x00000E15
_080F9DF8:
	ldr r3, _080F9E24 @ =0x00000DCC
	adds r4, r6, r3
	ldr r1, _080F9E28 @ =0x00000E13
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _080F9E74
	movs r0, #4
	bl FUN_080b56b4
	movs r0, #0x9b
	lsls r0, r0, #1
	bl fadeoutBGM
	ldr r2, _080F9E2C @ =0x00000E15
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _080F9E74
	.align 2, 0
_080F9E24: .4byte 0x00000DCC
_080F9E28: .4byte 0x00000E13
_080F9E2C: .4byte 0x00000E15
_080F9E30:
	ldr r4, _080F9E54 @ =0x00000DCC
	adds r3, r6, r4
	ldr r1, _080F9E58 @ =0x00000E15
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xa0
	bls _080F9E74
	ldr r1, _080F9E5C @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	b _080F9E74
	.align 2, 0
_080F9E54: .4byte 0x00000DCC
_080F9E58: .4byte 0x00000E15
_080F9E5C: .4byte 0x02030B60
_080F9E60:
	ldr r0, _080F9E70 @ =0x02030B60
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0x20
	bne _080F9E74
	movs r0, #0
	b _080FA1FE
	.align 2, 0
_080F9E70: .4byte 0x02030B60
_080F9E74:
	ldr r4, _080F9F54 @ =0x00000DCC
	adds r3, r6, r4
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	ldrh r1, [r3, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080F9E8A
	strh r1, [r3, #0x10]
_080F9E8A:
	ldr r0, _080F9F58 @ =0x020302A8
	ldr r1, [r0]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r4, _080F9F5C @ =0x00000E13
	adds r4, r6, r4
	str r4, [sp, #4]
	ldr r2, _080F9F60 @ =0x00000E14
	adds r2, r6, r2
	str r2, [sp, #8]
	cmp r0, #0
	bne _080F9EA4
	b _080F9FE2
_080F9EA4:
	ldr r4, _080F9F64 @ =0x00000E0F
	adds r0, r6, r4
	ldrb r2, [r0]
	movs r4, #0xa
	ldrsh r1, [r1, r4]
	mov r8, r0
	cmp r2, r1
	ble _080F9EB6
	b _080F9FE2
_080F9EB6:
	ldr r1, _080F9F68 @ =0x00000E12
	adds r0, r6, r1
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _080F9EC4
	b _080F9FE2
_080F9EC4:
	ldrh r0, [r3, #0x10]
	ldrh r3, [r3, #0x12]
	cmp r0, r3
	beq _080F9ECE
	b _080F9FE2
_080F9ECE:
	ldr r4, _080F9F6C @ =0x02030B60
	ldr r3, _080F9F70 @ =0x0000626C
	adds r2, r4, r3
	ldr r1, [r2]
	ldr r0, _080F9F74 @ =0x41C64E6D
	muls r0, r1, r0
	ldr r1, _080F9F78 @ =0x00003039
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r5, #0
	ldr r2, _080F9F7C @ =0x00000DE4
	adds r7, r6, r2
	ldr r3, _080F9F54 @ =0x00000DCC
	adds r4, r6, r3
	mov sl, r5
_080F9EFA:
	mov r1, sb
	adds r0, r5, r1
	movs r1, #5
	bl __modsi3
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080F9FD8
	ldrb r0, [r4, #0x14]
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x16]
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x17]
	strb r0, [r4, #0x16]
	ldr r3, _080F9F6C @ =0x02030B60
	ldr r0, _080F9F70 @ =0x0000626C
	adds r2, r3, r0
	ldr r1, [r2]
	ldr r0, _080F9F74 @ =0x41C64E6D
	muls r0, r1, r0
	ldr r1, _080F9F78 @ =0x00003039
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __umodsi3
	strb r0, [r4, #0x17]
	mov r2, sl
	strh r2, [r4, #0x10]
	ldr r3, _080F9F80 @ =0x00000E0E
	adds r0, r6, r3
	ldrb r1, [r0]
	mov r2, r8
	ldrb r0, [r2]
	subs r1, r1, r0
	cmp r1, #0
	beq _080F9F84
	cmp r1, #1
	beq _080F9FB6
	b _080F9FCA
	.align 2, 0
_080F9F54: .4byte 0x00000DCC
_080F9F58: .4byte 0x020302A8
_080F9F5C: .4byte 0x00000E13
_080F9F60: .4byte 0x00000E14
_080F9F64: .4byte 0x00000E0F
_080F9F68: .4byte 0x00000E12
_080F9F6C: .4byte 0x02030B60
_080F9F70: .4byte 0x0000626C
_080F9F74: .4byte 0x41C64E6D
_080F9F78: .4byte 0x00003039
_080F9F7C: .4byte 0x00000DE4
_080F9F80: .4byte 0x00000E0E
_080F9F84:
	movs r3, #0xe1
	lsls r3, r3, #4
	adds r5, r6, r3
	ldrh r0, [r5]
	ldr r1, _080F9F98 @ =0x0000017F
	cmp r0, r1
	bhi _080F9F9C
	adds r0, #0x14
	strh r0, [r5]
	b _080F9FCA
	.align 2, 0
_080F9F98: .4byte 0x0000017F
_080F9F9C:
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi _080F9FCA
	movs r0, #6
	bl playSound
	movs r0, #0x40
	strh r0, [r5]
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	b _080F9FCA
_080F9FB6:
	movs r3, #0xe1
	lsls r3, r3, #4
	adds r2, r6, r3
	ldrh r1, [r2]
	ldr r0, _080F9FD4 @ =0x000003FF
	cmp r1, r0
	bhi _080F9FCA
	adds r0, r1, #0
	adds r0, #0x14
	strh r0, [r2]
_080F9FCA:
	mov r0, sl
	ldr r4, [sp]
	strb r0, [r4]
	b _080F9FE2
	.align 2, 0
_080F9FD4: .4byte 0x000003FF
_080F9FD8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080F9EFA
_080F9FE2:
	ldr r1, _080FA020 @ =0x00000DCC
	adds r0, r6, r1
	ldrb r0, [r0, #4]
	cmp r0, #3
	bhi _080FA092
	ldr r2, _080FA024 @ =0x02001EB0
	ldrh r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080FA03C
	ldr r2, _080FA028 @ =0x00000DEE
	adds r0, r6, r2
	ldrb r1, [r0]
	ldr r3, _080FA02C @ =0x00000E04
	adds r0, r6, r3
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080FA092
	lsls r0, r1, #1
	movs r4, #0xdf
	lsls r4, r4, #4
	adds r1, r6, r4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0xff
	bne _080FA030
	strh r2, [r1]
	b _080FA034
	.align 2, 0
_080FA020: .4byte 0x00000DCC
_080FA024: .4byte 0x02001EB0
_080FA028: .4byte 0x00000DEE
_080FA02C: .4byte 0x00000E04
_080FA030:
	movs r0, #0xff
	strh r0, [r1]
_080FA034:
	movs r0, #5
	bl playSound
	b _080FA092
_080FA03C:
	movs r4, #0xff
	ldrh r1, [r2, #6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080FA04C
	movs r4, #0
	b _080FA06E
_080FA04C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FA058
	movs r4, #1
	b _080FA06E
_080FA058:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080FA064
	movs r4, #2
	b _080FA06E
_080FA064:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080FA06E
	movs r4, #3
_080FA06E:
	cmp r4, #0xff
	beq _080FA092
	ldr r0, _080FA0BC @ =0x00000DEE
	adds r2, r6, r0
	ldrb r3, [r2]
	ldr r1, _080FA0C0 @ =0x08386B58
	lsls r0, r3, #2
	adds r0, r4, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r3, r0
	beq _080FA092
	movs r0, #1
	bl playSound
_080FA092:
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	ldr r2, [sp, #8]
	ldrb r2, [r2]
	cmp r0, r2
	bne _080FA0A0
	b _080FA1FC
_080FA0A0:
	ldr r3, [sp, #8]
	strb r0, [r3]
	movs r0, #4
	bl playSound
	ldr r4, [sp, #4]
	ldrb r0, [r4]
	cmp r0, #2
	beq _080FA108
	cmp r0, #2
	bgt _080FA0C4
	cmp r0, #1
	beq _080FA0CA
	b _080FA1E4
	.align 2, 0
_080FA0BC: .4byte 0x00000DEE
_080FA0C0: .4byte 0x08386B58
_080FA0C4:
	cmp r0, #3
	beq _080FA17C
	b _080FA1E4
_080FA0CA:
	ldr r0, _080FA0F4 @ =0x00001106
	adds r1, r6, r0
	ldr r2, _080FA0F8 @ =0x00003092
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _080FA0FC @ =0x00001108
	adds r1, r6, r3
	ldr r4, _080FA100 @ =0x00003093
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _080FA104 @ =0x00001146
	adds r1, r6, r0
	adds r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r3, #0x40
	adds r1, r6, r3
	adds r4, #6
	adds r0, r4, #0
	strh r0, [r1]
	b _080FA1E4
	.align 2, 0
_080FA0F4: .4byte 0x00001106
_080FA0F8: .4byte 0x00003092
_080FA0FC: .4byte 0x00001108
_080FA100: .4byte 0x00003093
_080FA104: .4byte 0x00001146
_080FA108:
	ldr r0, _080FA150 @ =0x00001106
	adds r1, r6, r0
	ldr r2, _080FA154 @ =0x00003092
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _080FA158 @ =0x00001108
	adds r1, r6, r3
	ldr r4, _080FA15C @ =0x00003093
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _080FA160 @ =0x00001146
	adds r0, r6, r1
	adds r2, #6
	adds r3, r2, #0
	strh r3, [r0]
	ldr r4, _080FA164 @ =0x00001148
	adds r0, r6, r4
	ldr r1, _080FA168 @ =0x00003099
	adds r2, r1, #0
	strh r2, [r0]
	subs r4, #0x3e
	adds r1, r6, r4
	ldr r4, _080FA16C @ =0x00003094
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _080FA170 @ =0x0000110C
	adds r1, r6, r0
	adds r4, #1
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _080FA174 @ =0x0000114A
	adds r0, r6, r1
	strh r3, [r0]
	ldr r3, _080FA178 @ =0x0000114C
	b _080FA1E0
	.align 2, 0
_080FA150: .4byte 0x00001106
_080FA154: .4byte 0x00003092
_080FA158: .4byte 0x00001108
_080FA15C: .4byte 0x00003093
_080FA160: .4byte 0x00001146
_080FA164: .4byte 0x00001148
_080FA168: .4byte 0x00003099
_080FA16C: .4byte 0x00003094
_080FA170: .4byte 0x0000110C
_080FA174: .4byte 0x0000114A
_080FA178: .4byte 0x0000114C
_080FA17C:
	ldr r4, _080FA210 @ =0x00001106
	adds r1, r6, r4
	ldr r2, _080FA214 @ =0x00003092
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _080FA218 @ =0x00001108
	adds r1, r6, r3
	ldr r4, _080FA21C @ =0x00003093
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _080FA220 @ =0x00001146
	adds r0, r6, r1
	adds r2, #6
	adds r3, r2, #0
	strh r3, [r0]
	ldr r4, _080FA224 @ =0x00001148
	adds r0, r6, r4
	ldr r1, _080FA228 @ =0x00003099
	adds r2, r1, #0
	strh r2, [r0]
	subs r4, #0x3e
	adds r1, r6, r4
	ldr r4, _080FA22C @ =0x00003094
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _080FA230 @ =0x0000110C
	adds r1, r6, r0
	adds r4, #1
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _080FA234 @ =0x0000114A
	adds r0, r6, r1
	strh r3, [r0]
	ldr r4, _080FA238 @ =0x0000114C
	adds r0, r6, r4
	strh r2, [r0]
	ldr r0, _080FA23C @ =0x0000110E
	adds r1, r6, r0
	ldr r4, _080FA240 @ =0x00003096
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _080FA244 @ =0x00001110
	adds r1, r6, r0
	adds r4, #1
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _080FA248 @ =0x0000114E
	adds r0, r6, r1
	strh r3, [r0]
	ldr r3, _080FA24C @ =0x00001150
_080FA1E0:
	adds r0, r6, r3
	strh r2, [r0]
_080FA1E4:
	ldr r4, _080FA250 @ =0x00000ED8
	adds r0, r6, r4
	ldr r1, _080FA254 @ =0x02002146
	ldrh r2, [r1]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #5
	bl FUN_080039ac
_080FA1FC:
	movs r0, #1
_080FA1FE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080FA210: .4byte 0x00001106
_080FA214: .4byte 0x00003092
_080FA218: .4byte 0x00001108
_080FA21C: .4byte 0x00003093
_080FA220: .4byte 0x00001146
_080FA224: .4byte 0x00001148
_080FA228: .4byte 0x00003099
_080FA22C: .4byte 0x00003094
_080FA230: .4byte 0x0000110C
_080FA234: .4byte 0x0000114A
_080FA238: .4byte 0x0000114C
_080FA23C: .4byte 0x0000110E
_080FA240: .4byte 0x00003096
_080FA244: .4byte 0x00001110
_080FA248: .4byte 0x0000114E
_080FA24C: .4byte 0x00001150
_080FA250: .4byte 0x00000ED8
_080FA254: .4byte 0x02002146

	thumb_func_start exitCielMinigame
exitCielMinigame: @ 0x080FA258
	push {lr}
	ldr r2, _080FA284 @ =0x020021B0
	ldr r1, _080FA288 @ =0x00000DCC
	adds r0, r0, r1
	ldr r1, [r2, #0x28]
	ldr r0, [r0, #8]
	cmp r1, r0
	bhs _080FA26E
	str r0, [r2, #0x28]
	bl sram_08008368
_080FA26E:
	ldr r2, _080FA28C @ =0x02002190
	ldrh r1, [r2]
	ldr r0, _080FA290 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xd6
	bl clearValFrom0x02001fe0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080FA284: .4byte 0x020021B0
_080FA288: .4byte 0x00000DCC
_080FA28C: .4byte 0x02002190
_080FA290: .4byte 0x0000DFFF

	thumb_func_start initCopyXMg
initCopyXMg: @ 0x080FA294
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r1, _080FA510 @ =0x00000DCC
	adds r7, r0, r1
	ldr r2, _080FA514 @ =0x00000DC4
	adds r1, r0, r2
	movs r0, #0xb4
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r1, #4]
	movs r0, #4
	bl stage_08008a54
	movs r5, #0x8c
	lsls r5, r5, #1
	ldr r0, _080FA518 @ =0x085D78F8
	mov r8, r0
	ldr r1, _080FA51C @ =0x0202F790
	mov sb, r1
	ldrh r1, [r1, #0x1c]
	ldr r2, _080FA520 @ =0x085D7A10
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	adds r0, r2, #0
	bl loadGraphics
	ldr r1, _080FA524 @ =0x085D7904
	adds r5, r5, r1
	ldr r6, _080FA528 @ =0x0202F590
	ldrh r1, [r6, #0x1c]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	mov sl, r2
	add r1, sl
	adds r0, r5, #0
	bl transferPalette
	ldr r4, _080FA52C @ =0x0000071C
	mov r1, r8
	adds r0, r4, r1
	mov r1, sb
	adds r1, #0xb6
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FA524 @ =0x085D7904
	adds r4, r4, r0
	adds r0, r6, #0
	adds r0, #0xb6
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xe6
	lsls r4, r4, #3
	mov r1, r8
	adds r0, r4, r1
	mov r1, sb
	adds r1, #0xb8
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FA524 @ =0x085D7904
	adds r4, r4, r0
	adds r0, r6, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	ldr r4, _080FA530 @ =0x0000076C
	mov r1, r8
	adds r0, r4, r1
	mov r1, sb
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FA524 @ =0x085D7904
	adds r4, r4, r0
	adds r0, r6, #0
	adds r0, #0xbe
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	movs r0, #0
	mov r1, sb
	strh r0, [r1, #0x1c]
	movs r0, #7
	strh r0, [r6, #0x1c]
	ldr r2, _080FA520 @ =0x085D7A10
	ldrh r1, [r2, #6]
	lsrs r1, r1, #6
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	subs r1, r0, r1
	adds r0, r2, #0
	bl loadGraphics
	ldrh r1, [r6, #0x1c]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r5, #0
	bl transferPalette
	ldr r5, _080FA534 @ =0x00001310
	mov r1, r8
	adds r0, r5, r1
	movs r4, #0xf4
	lsls r4, r4, #1
	mov r2, sb
	adds r1, r2, r4
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FA524 @ =0x085D7904
	adds r5, r5, r0
	adds r4, r6, r4
	ldrh r1, [r4]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r5, #0
	bl transferPalette
	add r0, sp, #4
	movs r1, #0
	bl FUN_080c8154
	movs r1, #0xb9
	lsls r1, r1, #1
	mov r2, sb
	strh r1, [r2]
	movs r0, #0xe
	strh r0, [r6]
	mov r2, r8
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r0, r8
	bl loadGraphics
	ldrh r1, [r6]
	ldr r2, _080FA524 @ =0x085D7904
	ldrb r0, [r2, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r2, #0
	bl transferPalette
	movs r4, #0x9f
	lsls r0, r4, #1
	add sb, r0
	movs r1, #0xf0
	lsls r1, r1, #1
	mov r2, sb
	strh r1, [r2]
	adds r6, r6, r0
	movs r0, #9
	strh r0, [r6]
	lsls r4, r4, #4
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r4, r4, r0
	add r8, r4
	mov r2, r8
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r0, r8
	bl loadGraphics
	ldr r1, _080FA524 @ =0x085D7904
	adds r4, r4, r1
	ldrh r1, [r6]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sl
	adds r0, r4, #0
	bl transferPalette
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [sp, #4]
	movs r0, #0xf6
	lsls r0, r0, #8
	str r0, [sp, #8]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #0
	bl FUN_08035888
	movs r1, #0
	add r6, sp, #4
	movs r5, #0x80
	lsls r5, r5, #5
_080FA4A8:
	adds r4, r1, #1
	movs r0, #0xec
	lsls r0, r0, #9
	subs r0, r0, r5
	str r0, [sp, #4]
	movs r0, #0x94
	lsls r0, r0, #9
	str r0, [r6, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #2
	adds r3, r7, #0
	adds r3, #0xc
	bl FUN_080c82b8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r5, r5, r2
	adds r1, r4, #0
	cmp r1, #2
	ble _080FA4A8
	movs r4, #0
	movs r0, #3
	strb r0, [r7, #0xc]
	strh r4, [r7]
	movs r0, #0x78
	strh r0, [r7, #2]
	str r4, [r7, #0x20]
	strh r4, [r7, #4]
	strh r4, [r7, #6]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	ldr r0, _080FA538 @ =0x020021B0
	ldr r0, [r0, #0x2c]
	str r0, [r7, #0x24]
	strh r4, [r7, #0xe]
	movs r0, #0xb3
	bl playBGM
	ldr r0, [sp, #0xc]
	strh r4, [r0, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FA510: .4byte 0x00000DCC
_080FA514: .4byte 0x00000DC4
_080FA518: .4byte 0x085D78F8
_080FA51C: .4byte 0x0202F790
_080FA520: .4byte 0x085D7A10
_080FA524: .4byte 0x085D7904
_080FA528: .4byte 0x0202F590
_080FA52C: .4byte 0x0000071C
_080FA530: .4byte 0x0000076C
_080FA534: .4byte 0x00001310
_080FA538: .4byte 0x020021B0

	thumb_func_start copyXMinigame
copyXMinigame: @ 0x080FA53C
	push {lr}
	ldr r2, _080FA558 @ =0x00000DCC
	adds r1, r0, r2
	ldr r2, _080FA55C @ =0x08386B80
	movs r3, #4
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r1}
	bx r1
	.align 2, 0
_080FA558: .4byte 0x00000DCC
_080FA55C: .4byte 0x08386B80

	thumb_func_start minigame_080fa560
minigame_080fa560: @ 0x080FA560
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r1, _080FA57C @ =0x00000DCC
	adds r5, r0, r1
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _080FA594
	cmp r0, #1
	bgt _080FA580
	cmp r0, #0
	beq _080FA58A
	b _080FA5CE
	.align 2, 0
_080FA57C: .4byte 0x00000DCC
_080FA580:
	cmp r0, #2
	beq _080FA5A8
	cmp r0, #3
	beq _080FA5BC
	b _080FA5CE
_080FA58A:
	movs r0, #0x3c
	strh r0, [r5]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FA594:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FA5CE
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	b _080FA5CE
_080FA5A8:
	movs r0, #0
	bl FUN_080b56b4
	str r0, [r5, #0x10]
	movs r0, #0x1d
	bl playSound
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FA5BC:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FA5CE
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #4]
	strh r1, [r5, #6]
_080FA5CE:
	ldr r1, _080FA624 @ =0x0810E25C
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #0x12
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x1c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x24]
	cmp r4, r0
	bls _080FA5F6
	str r4, [r5, #0x24]
_080FA5F6:
	add r4, sp, #8
	ldr r1, _080FA628 @ =0x0810E264
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	bl printUnicodeString
	ldr r4, [r5, #0x24]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #1
	bl FUN_080e9d04
	movs r0, #1
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080FA624: .4byte 0x0810E25C
_080FA628: .4byte 0x0810E264

	thumb_func_start minigame_080fa62c
minigame_080fa62c: @ 0x080FA62C
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _080FA6AC @ =0x00000DCC
	adds r5, r0, r1
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #2
	ldrsh r1, [r5, r3]
	bl __modsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _080FA6E8
	ldr r1, _080FA6B0 @ =0x02030B60
	ldr r0, _080FA6B4 @ =0x0000626C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r3, _080FA6B8 @ =0x41C64E6D
	muls r0, r3, r0
	ldr r2, _080FA6BC @ =0x00003039
	adds r0, r0, r2
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xb4
	lsls r0, r0, #9
	str r0, [sp, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #8
	add r1, sp, #0x14
	str r0, [r1, #4]
	ldr r0, [sp, #0x14]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [sp, #0x14]
	ldr r0, [r1, #4]
	ldr r3, _080FA6C0 @ =0xFFFFD000
	adds r0, r0, r3
	str r0, [r1, #4]
	adds r0, r5, #0
	bl FUN_080b1934
	ldr r0, [r5, #0x20]
	adds r0, #1
	str r0, [r5, #0x20]
	strh r4, [r5]
	cmp r0, #3
	bhi _080FA6C4
	movs r0, #0x78
	b _080FA6E6
	.align 2, 0
_080FA6AC: .4byte 0x00000DCC
_080FA6B0: .4byte 0x02030B60
_080FA6B4: .4byte 0x0000626C
_080FA6B8: .4byte 0x41C64E6D
_080FA6BC: .4byte 0x00003039
_080FA6C0: .4byte 0xFFFFD000
_080FA6C4:
	cmp r0, #0xb
	bhi _080FA6CC
	movs r0, #0x70
	b _080FA6E6
_080FA6CC:
	cmp r0, #0x17
	bhi _080FA6D4
	movs r0, #0x68
	b _080FA6E6
_080FA6D4:
	cmp r0, #0x1f
	bhi _080FA6DC
	movs r0, #0x60
	b _080FA6E6
_080FA6DC:
	cmp r0, #0x2f
	bhi _080FA6E4
	movs r0, #0x58
	b _080FA6E6
_080FA6E4:
	movs r0, #0x46
_080FA6E6:
	strh r0, [r5, #2]
_080FA6E8:
	ldr r1, _080FA75C @ =0x0810E25C
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #0x12
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x1c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x24]
	cmp r4, r0
	bls _080FA722
	str r4, [r5, #0x24]
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _080FA722
	movs r0, #1
	strh r0, [r5, #0xe]
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
_080FA722:
	add r4, sp, #8
	ldr r1, _080FA760 @ =0x0810E264
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	bl printUnicodeString
	ldr r4, [r5, #0x24]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #1
	bl FUN_080e9d04
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _080FA752
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	strh r1, [r5, #6]
_080FA752:
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080FA75C: .4byte 0x0810E25C
_080FA760: .4byte 0x0810E264

	thumb_func_start FUN_080fa764
FUN_080fa764: @ 0x080FA764
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r1, _080FA780 @ =0x00000DCC
	adds r5, r0, r1
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #5
	bhi _080FA800
	lsls r0, r0, #2
	ldr r1, _080FA784 @ =_080FA788
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FA780: .4byte 0x00000DCC
_080FA784: .4byte _080FA788
_080FA788: @ jump table
	.4byte _080FA7A0 @ case 0
	.4byte _080FA7AA @ case 1
	.4byte _080FA7B8 @ case 2
	.4byte _080FA7CC @ case 3
	.4byte _080FA7DC @ case 4
	.4byte _080FA7E8 @ case 5
_080FA7A0:
	movs r0, #0x3c
	strh r0, [r5]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FA7AA:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FA800
	b _080FA7D4
_080FA7B8:
	movs r0, #4
	bl FUN_080b56b4
	str r0, [r5, #0x10]
	movs r0, #0xb3
	bl fadeoutBGM
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FA7CC:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FA800
_080FA7D4:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	b _080FA800
_080FA7DC:
	ldr r1, _080FA7FC @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FA7E8:
	ldr r0, _080FA7FC @ =0x02030B60
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	bne _080FA800
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #6]
	b _080FA84C
	.align 2, 0
_080FA7FC: .4byte 0x02030B60
_080FA800:
	ldr r1, _080FA854 @ =0x0810E25C
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #0x12
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x1c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x24]
	cmp r4, r0
	bls _080FA828
	str r4, [r5, #0x24]
_080FA828:
	add r4, sp, #8
	ldr r1, _080FA858 @ =0x0810E264
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	bl printUnicodeString
	ldr r4, [r5, #0x24]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #1
	bl FUN_080e9d04
	movs r0, #1
_080FA84C:
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080FA854: .4byte 0x0810E25C
_080FA858: .4byte 0x0810E264

	thumb_func_start exitCopyXMinigame
exitCopyXMinigame: @ 0x080FA85C
	push {lr}
	ldr r2, _080FA878 @ =0x00000DCC
	adds r1, r0, r2
	ldrh r2, [r1, #6]
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _080FA87C
	movs r0, #2
	strh r0, [r1]
	adds r0, r2, #1
	strh r0, [r1, #6]
	b _080FA8AC
	.align 2, 0
_080FA878: .4byte 0x00000DCC
_080FA87C:
	cmp r0, #1
	bne _080FA8AC
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080FA894
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080FA8AC
_080FA894:
	ldr r2, _080FA8A8 @ =0x020021B0
	ldr r1, [r1, #0x24]
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	bls _080FA8A4
	str r1, [r2, #0x2c]
	bl sram_08008368
_080FA8A4:
	movs r0, #0
	b _080FA8AE
	.align 2, 0
_080FA8A8: .4byte 0x020021B0
_080FA8AC:
	movs r0, #1
_080FA8AE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start initHarpuiaMg
initHarpuiaMg: @ 0x080FA8B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldr r7, _080FAAC4 @ =0x00000DCC
	add r7, sl
	ldr r1, _080FAAC8 @ =0x00000DC4
	add r1, sl
	movs r0, #0xb4
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r1, #4]
	movs r0, #0xa
	bl stage_08008a54
	ldr r1, _080FAACC @ =0x0202F790
	adds r1, #0x8e
	movs r0, #0
	strh r0, [r1]
	ldr r5, _080FAAD0 @ =0x0202F590
	adds r5, #0x8e
	movs r0, #7
	strh r0, [r5]
	ldr r4, _080FAAD4 @ =0x0000058C
	ldr r1, _080FAAD8 @ =0x085D78F8
	mov r8, r1
	adds r0, r4, r1
	ldrh r1, [r0, #6]
	lsrs r1, r1, #6
	rsbs r1, r1, #0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r6, _080FAADC @ =0x085D7904
	adds r4, r4, r6
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xf3
	lsls r5, r4, #1
	ldr r1, _080FAACC @ =0x0202F790
	adds r0, r1, r5
	movs r1, #0xc8
	strh r1, [r0]
	ldr r2, _080FAAD0 @ =0x0202F590
	adds r5, r2, r5
	movs r0, #8
	strh r0, [r5]
	lsls r4, r4, #4
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r4, r4, r0
	mov r2, r8
	adds r0, r4, r2
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	adds r4, r4, r6
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xa1
	lsls r5, r4, #1
	ldr r1, _080FAACC @ =0x0202F790
	adds r0, r1, r5
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r2, _080FAAD0 @ =0x0202F590
	adds r5, r2, r5
	movs r0, #9
	strh r0, [r5]
	lsls r4, r4, #4
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r4, r4, r0
	mov r2, r8
	adds r0, r4, r2
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	adds r4, r4, r6
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r4, #0
	bl transferPalette
	ldr r5, _080FAAE0 @ =0x00000D48
	mov r1, r8
	adds r0, r5, r1
	movs r4, #0xaa
	lsls r4, r4, #1
	ldr r2, _080FAACC @ =0x0202F790
	adds r1, r2, r4
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	adds r5, r5, r6
	ldr r0, _080FAAD0 @ =0x0202F590
	adds r4, r0, r4
	ldrh r1, [r4]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r5, #0
	bl transferPalette
	movs r1, #0xf0
	ldr r2, _080FAACC @ =0x0202F790
	strh r1, [r2]
	movs r0, #0xe
	ldr r2, _080FAAD0 @ =0x0202F590
	strh r0, [r2]
	mov r2, r8
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r0, r8
	bl loadGraphics
	ldr r2, _080FAAD0 @ =0x0202F590
	ldrh r1, [r2]
	ldrb r0, [r6, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	add r1, sb
	adds r0, r6, #0
	bl transferPalette
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [sp, #8]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #0
	bl FUN_08034ff8
	str r0, [r7, #0x14]
	ldr r1, _080FAAE4 @ =0x0202F340
	str r0, [r1]
	movs r1, #0
	add r6, sp, #4
	movs r5, #0x80
	lsls r5, r5, #5
_080FAA3A:
	adds r4, r1, #1
	movs r0, #0xec
	lsls r0, r0, #9
	subs r0, r0, r5
	str r0, [sp, #4]
	movs r0, #0x94
	lsls r0, r0, #9
	str r0, [r6, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	movs r2, #3
	adds r3, r7, #0
	adds r3, #0xc
	bl FUN_080c82b8
	mov r1, sl
	str r1, [r0, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r5, r5, r2
	adds r1, r4, #0
	cmp r1, #2
	ble _080FAA3A
	movs r4, #0
	movs r0, #3
	strb r0, [r7, #0xc]
	movs r1, #0
	strh r4, [r7]
	movs r0, #0x78
	mov r2, sl
	strh r0, [r2, #6]
	strh r4, [r2, #8]
	strh r4, [r2, #0xa]
	strh r4, [r7, #4]
	strh r4, [r7, #6]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x2c]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r7, #0x34]
	strb r1, [r7, #0xd]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	strh r4, [r7, #0x28]
	strh r4, [r7, #0x2a]
	ldr r0, _080FAAE8 @ =0x020021B0
	ldr r0, [r0, #0x30]
	str r0, [r7, #0x3c]
	strh r4, [r7, #0x3a]
	movs r0, #0xb7
	bl playBGM
	mov r0, sl
	strh r4, [r0, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FAAC4: .4byte 0x00000DCC
_080FAAC8: .4byte 0x00000DC4
_080FAACC: .4byte 0x0202F790
_080FAAD0: .4byte 0x0202F590
_080FAAD4: .4byte 0x0000058C
_080FAAD8: .4byte 0x085D78F8
_080FAADC: .4byte 0x085D7904
_080FAAE0: .4byte 0x00000D48
_080FAAE4: .4byte 0x0202F340
_080FAAE8: .4byte 0x020021B0

	thumb_func_start harpuiaMinigame
harpuiaMinigame: @ 0x080FAAEC
	push {lr}
	ldr r2, _080FAB08 @ =0x00000DCC
	adds r1, r0, r2
	ldr r2, _080FAB0C @ =0x08386B8C
	movs r3, #4
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl bxR1
	pop {r1}
	bx r1
	.align 2, 0
_080FAB08: .4byte 0x00000DCC
_080FAB0C: .4byte 0x08386B8C

	thumb_func_start minigame_080fab10
minigame_080fab10: @ 0x080FAB10
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r1, _080FAB2C @ =0x00000DCC
	adds r5, r0, r1
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _080FAB44
	cmp r0, #1
	bgt _080FAB30
	cmp r0, #0
	beq _080FAB3A
	b _080FAB7E
	.align 2, 0
_080FAB2C: .4byte 0x00000DCC
_080FAB30:
	cmp r0, #2
	beq _080FAB58
	cmp r0, #3
	beq _080FAB6C
	b _080FAB7E
_080FAB3A:
	movs r0, #0x3c
	strh r0, [r5]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FAB44:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FAB7E
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	b _080FAB7E
_080FAB58:
	movs r0, #0
	bl FUN_080b56b4
	str r0, [r5, #0x10]
	movs r0, #0x1d
	bl playSound
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FAB6C:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FAB7E
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #4]
	strh r1, [r5, #6]
_080FAB7E:
	ldr r1, _080FABE0 @ =0x0810E270
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldrh r0, [r5, #0xe]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrh r2, [r5, #0x38]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r4, r1, r0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x3c]
	cmp r4, r0
	bls _080FABB2
	str r4, [r5, #0x3c]
_080FABB2:
	add r4, sp, #8
	ldr r1, _080FABE4 @ =0x0810E278
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x3c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	movs r0, #1
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080FABE0: .4byte 0x0810E270
_080FABE4: .4byte 0x0810E278

	thumb_func_start minigame_080fabe8
minigame_080fabe8: @ 0x080FABE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sb, r0
	ldr r7, _080FAC34 @ =0x00000DCC
	add r7, sb
	ldr r0, [r7, #0x18]
	adds r0, #1
	str r0, [r7, #0x18]
	ldr r2, _080FAC38 @ =0x00000DC4
	add r2, sb
	ldr r0, [r2]
	ldr r1, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x30]
	ldr r1, _080FAC3C @ =0x0003BFFF
	cmp r0, r1
	ble _080FAC44
	ldr r0, [r2]
	ldr r1, _080FAC40 @ =0xFFFC4000
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r7, #0x30]
	adds r0, r0, r1
	str r0, [r7, #0x30]
	ldr r2, [r7, #0x14]
	ldr r0, [r2, #0x54]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r0, #1
	b _080FAC46
	.align 2, 0
_080FAC34: .4byte 0x00000DCC
_080FAC38: .4byte 0x00000DC4
_080FAC3C: .4byte 0x0003BFFF
_080FAC40: .4byte 0xFFFC4000
_080FAC44:
	movs r0, #0
_080FAC46:
	strb r0, [r7, #0xd]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	ldr r0, [r7, #0x14]
	ldrb r0, [r0, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	str r1, [sp, #0x2c]
	add r2, sp, #8
	mov sl, r2
	cmp r0, #1
	bhi _080FAD1C
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, sb
	movs r3, #6
	ldrsh r1, [r2, r3]
	bl __modsi3
	cmp r0, #0
	bne _080FAD1C
	ldr r1, [r7, #0x30]
	ldr r0, _080FACFC @ =0x000365FF
	cmp r1, r0
	bgt _080FAD1C
	ldr r5, _080FAD00 @ =0x02030B60
	ldr r0, _080FAD04 @ =0x0000626C
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r1, _080FAD08 @ =0x41C64E6D
	mov r8, r1
	mov r4, r8
	muls r4, r0, r4
	ldr r6, _080FAD0C @ =0x00003039
	adds r4, r4, r6
	str r4, [r5]
	lsrs r0, r4, #0x10
	movs r1, #0x28
	bl __umodsi3
	adds r0, #0x64
	mov r2, sb
	strh r0, [r2, #6]
	ldr r0, _080FAD10 @ =0x0202F340
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	movs r3, #0xfa
	lsls r3, r3, #8
	adds r0, r0, r3
	str r0, [sp, #0x14]
	mov r0, r8
	muls r0, r4, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r0, #0x10
	lsls r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #8
	adds r0, r0, r1
	add r1, sp, #0x14
	str r0, [r1, #4]
	movs r5, #0
	ldr r4, [sp, #0x2c]
_080FACCC:
	ldr r0, [r4]
	cmp r0, #0
	bne _080FAD14
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl FUN_0809b064
	adds r1, r0, #0
	cmp r1, #0
	beq _080FAD1C
	adds r2, r1, #0
	adds r2, #0x25
	movs r0, #0x17
	strb r0, [r2]
	str r1, [r4]
	lsls r1, r5, #1
	adds r0, r7, #0
	adds r0, #0x28
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r0]
	b _080FAD1C
	.align 2, 0
_080FACFC: .4byte 0x000365FF
_080FAD00: .4byte 0x02030B60
_080FAD04: .4byte 0x0000626C
_080FAD08: .4byte 0x41C64E6D
_080FAD0C: .4byte 0x00003039
_080FAD10: .4byte 0x0202F340
_080FAD14:
	adds r4, #4
	adds r5, #1
	cmp r5, #1
	ble _080FACCC
_080FAD1C:
	ldr r6, [sp, #0x2c]
	movs r5, #0
	adds r3, r6, #0
	adds r4, r7, #0
	adds r4, #0x28
	ldr r2, _080FAD3C @ =0x08365948
	mov r8, r2
_080FAD2A:
	ldr r0, [r3]
	cmp r0, #0
	beq _080FAD84
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FAD40
	str r5, [r3]
	strh r5, [r4]
	b _080FAD84
	.align 2, 0
_080FAD3C: .4byte 0x08365948
_080FAD40:
	ldrh r0, [r4]
	cmp r0, #0
	beq _080FAD50
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FAD84
_080FAD50:
	ldr r2, [r3]
	ldrb r1, [r2, #0xa]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2, #0xa]
	adds r0, r2, #0
	adds r0, #0x8c
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	adds r0, #4
	strb r5, [r0]
	ldrb r1, [r2, #0xa]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2, #0xa]
	ldrb r1, [r2, #9]
	lsls r1, r1, #2
	add r1, r8
	movs r0, #3
	str r0, [r2, #0xc]
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	str r0, [r2, #0x14]
_080FAD84:
	adds r3, #4
	adds r4, #2
	adds r0, r6, #4
	cmp r3, r0
	ble _080FAD2A
	ldr r0, [r7, #0x14]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bhi _080FAE18
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r1, #0xdc
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FADC4
	ldr r0, _080FAEA0 @ =0x0202F340
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	movs r1, #0x8c
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #8
	add r1, sp, #0x1c
	str r0, [r1, #4]
	adds r0, r7, #0
	movs r2, #0
	bl FUN_080b1990
_080FADC4:
	ldr r0, [r7, #0x14]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bhi _080FAE18
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r1, #0xa0
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FAE18
	ldr r0, _080FAEA0 @ =0x0202F340
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	movs r3, #0x8c
	lsls r3, r3, #9
	adds r0, r0, r3
	str r0, [sp, #0x24]
	ldr r1, _080FAEA4 @ =0x02030B60
	ldr r0, _080FAEA8 @ =0x0000626C
	adds r1, r1, r0
	ldr r2, [r1]
	ldr r0, _080FAEAC @ =0x41C64E6D
	muls r0, r2, r0
	ldr r2, _080FAEB0 @ =0x00003039
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r0, #0x10
	lsls r0, r0, #8
	movs r3, #0xd0
	lsls r3, r3, #8
	adds r0, r0, r3
	add r1, sp, #0x24
	str r0, [r1, #4]
	adds r0, r7, #0
	movs r2, #0
	bl FUN_080b19ec
_080FAE18:
	ldr r1, _080FAEB4 @ =0x0810E270
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldrh r0, [r7, #0xe]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrh r2, [r7, #0x38]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r4, r1, r0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r7, #0x3c]
	cmp r4, r0
	bls _080FAE5E
	str r4, [r7, #0x3c]
	ldrh r0, [r7, #0x3a]
	cmp r0, #0
	bne _080FAE5E
	movs r0, #1
	strh r0, [r7, #0x3a]
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
_080FAE5E:
	ldr r1, _080FAEB8 @ =0x0810E278
	mov r0, sl
	movs r2, #9
	bl memcpy
	mov r0, sl
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r7, #0x3c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	ldrb r1, [r7, #0xc]
	cmp r1, #0
	bne _080FAE8C
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	strh r1, [r7, #6]
_080FAE8C:
	movs r0, #1
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080FAEA0: .4byte 0x0202F340
_080FAEA4: .4byte 0x02030B60
_080FAEA8: .4byte 0x0000626C
_080FAEAC: .4byte 0x41C64E6D
_080FAEB0: .4byte 0x00003039
_080FAEB4: .4byte 0x0810E270
_080FAEB8: .4byte 0x0810E278

	thumb_func_start FUN_080faebc
FUN_080faebc: @ 0x080FAEBC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r1, _080FAED8 @ =0x00000DCC
	adds r5, r0, r1
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #5
	bhi _080FAF58
	lsls r0, r0, #2
	ldr r1, _080FAEDC @ =_080FAEE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FAED8: .4byte 0x00000DCC
_080FAEDC: .4byte _080FAEE0
_080FAEE0: @ jump table
	.4byte _080FAEF8 @ case 0
	.4byte _080FAF02 @ case 1
	.4byte _080FAF10 @ case 2
	.4byte _080FAF24 @ case 3
	.4byte _080FAF34 @ case 4
	.4byte _080FAF40 @ case 5
_080FAEF8:
	movs r0, #0x3c
	strh r0, [r5]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FAF02:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FAF58
	b _080FAF2C
_080FAF10:
	movs r0, #4
	bl FUN_080b56b4
	str r0, [r5, #0x10]
	movs r0, #0xb7
	bl fadeoutBGM
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FAF24:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FAF58
_080FAF2C:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	b _080FAF58
_080FAF34:
	ldr r1, _080FAF54 @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_080FAF40:
	ldr r0, _080FAF54 @ =0x02030B60
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	bne _080FAF58
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #6]
	b _080FAFB0
	.align 2, 0
_080FAF54: .4byte 0x02030B60
_080FAF58:
	ldr r1, _080FAFB8 @ =0x0810E270
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r0, sp
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldrh r0, [r5, #0xe]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrh r2, [r5, #0x38]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r4, r1, r0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, [r5, #0x3c]
	cmp r4, r0
	bls _080FAF8C
	str r4, [r5, #0x3c]
_080FAF8C:
	add r4, sp, #8
	ldr r1, _080FAFBC @ =0x0810E278
	adds r0, r4, #0
	movs r2, #9
	bl memcpy
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r4, [r5, #0x3c]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0
	bl FUN_080e9d04
	movs r0, #1
_080FAFB0:
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080FAFB8: .4byte 0x0810E270
_080FAFBC: .4byte 0x0810E278

	thumb_func_start exitHarpuiaMinigame
exitHarpuiaMinigame: @ 0x080FAFC0
	push {lr}
	ldr r2, _080FAFDC @ =0x00000DCC
	adds r1, r0, r2
	ldrh r2, [r1, #6]
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _080FAFE0
	movs r0, #2
	strh r0, [r1]
	adds r0, r2, #1
	strh r0, [r1, #6]
	b _080FB010
	.align 2, 0
_080FAFDC: .4byte 0x00000DCC
_080FAFE0:
	cmp r0, #1
	bne _080FB010
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080FAFF8
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080FB010
_080FAFF8:
	ldr r2, _080FB00C @ =0x020021B0
	ldr r1, [r1, #0x3c]
	ldr r0, [r2, #0x30]
	cmp r1, r0
	bls _080FB008
	str r1, [r2, #0x30]
	bl sram_08008368
_080FB008:
	movs r0, #0
	b _080FB012
	.align 2, 0
_080FB00C: .4byte 0x020021B0
_080FB010:
	movs r0, #1
_080FB012:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start fefnir_080fb018
fefnir_080fb018: @ 0x080FB018
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080FB050 @ =0x00000DCC
	adds r4, r4, r0
	ldr r0, _080FB054 @ =0x0810E284
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldr r0, [r4, #0x20]
	movs r1, #0xc
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, _080FB058 @ =0x0810E28C
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r0, [r4, #0x28]
	movs r1, #0x1c
	movs r2, #0
	bl FUN_080e9d04
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FB050: .4byte 0x00000DCC
_080FB054: .4byte 0x0810E284
_080FB058: .4byte 0x0810E28C

	thumb_func_start initFafnirMg
initFafnirMg: @ 0x080FB05C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r5, _080FB204 @ =0x00000DCC
	add r5, sb
	ldr r1, _080FB208 @ =0x00000DC4
	add r1, sb
	ldr r0, _080FB20C @ =0x0026E800
	str r0, [r1]
	movs r2, #0x88
	lsls r2, r2, #0xa
	str r2, [r1, #4]
	movs r0, #7
	bl stage_08008a54
	ldr r6, _080FB210 @ =0x085D78F8
	ldr r0, _080FB214 @ =0x0202F790
	mov sl, r0
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	adds r0, r6, #0
	bl loadGraphics
	ldr r0, _080FB218 @ =0x085D7904
	mov r8, r0
	ldr r7, _080FB21C @ =0x0202F590
	ldrh r1, [r7]
	ldrb r0, [r0, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	mov r0, r8
	bl transferPalette
	movs r4, #0xa5
	lsls r4, r4, #2
	adds r0, r4, r6
	mov r1, sl
	adds r1, #0x42
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	add r4, r8
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r4, r6
	mov r1, sl
	adds r1, #0x44
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	add r4, r8
	adds r0, r7, #0
	adds r0, #0x44
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xaf
	lsls r4, r4, #2
	adds r6, r4, r6
	mov r0, sl
	adds r0, #0x46
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	adds r0, r6, #0
	bl loadGraphics
	add r4, r8
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl transferPalette
	adds r0, r5, #0
	ldr r1, _080FB20C @ =0x0026E800
	movs r2, #0x88
	lsls r2, r2, #0xa
	bl FUN_080345f4
	ldr r1, _080FB220 @ =0x00269700
	adds r0, r5, #0
	movs r2, #0x88
	lsls r2, r2, #0xa
	bl FUN_08071508
	str r0, [r5, #4]
	ldr r1, _080FB224 @ =0x0026CD00
	adds r0, r5, #0
	movs r2, #0x88
	lsls r2, r2, #0xa
	bl FUN_08071508
	str r0, [r5, #8]
	ldr r1, _080FB228 @ =0x00270300
	adds r0, r5, #0
	movs r2, #0x88
	lsls r2, r2, #0xa
	bl FUN_08071508
	str r0, [r5, #0xc]
	ldr r1, _080FB22C @ =0x00273900
	adds r0, r5, #0
	movs r2, #0x88
	lsls r2, r2, #0xa
	bl FUN_08071508
	str r0, [r5, #0x10]
	ldr r2, _080FB230 @ =0x0202F388
	ldr r1, [r2]
	ldr r0, _080FB234 @ =0x000343FD
	muls r0, r1, r0
	ldr r1, _080FB238 @ =0x00269EC3
	adds r0, r0, r1
	lsls r0, r0, #1
	lsrs r1, r0, #1
	str r1, [r2]
	lsrs r0, r0, #0x11
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x30
	ldr r1, _080FB23C @ =0x00000DF9
	add r1, sb
	strb r0, [r1]
	ldr r0, _080FB240 @ =0x00000DFA
	add r0, sb
	movs r2, #0
	strb r2, [r0]
	strb r2, [r5]
	strb r2, [r5, #1]
	strb r2, [r5, #2]
	strb r2, [r5, #3]
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	ldr r0, _080FB244 @ =0x020021B0
	ldr r0, [r0, #0x34]
	str r0, [r5, #0x28]
	ldr r0, _080FB248 @ =0x00000DF8
	add r0, sb
	movs r1, #0
	strb r1, [r0]
	ldr r2, _080FB24C @ =0x00000DFB
	add sb, r2
	mov r0, sb
	strb r1, [r0]
	movs r0, #0xbd
	bl playBGM
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FB204: .4byte 0x00000DCC
_080FB208: .4byte 0x00000DC4
_080FB20C: .4byte 0x0026E800
_080FB210: .4byte 0x085D78F8
_080FB214: .4byte 0x0202F790
_080FB218: .4byte 0x085D7904
_080FB21C: .4byte 0x0202F590
_080FB220: .4byte 0x00269700
_080FB224: .4byte 0x0026CD00
_080FB228: .4byte 0x00270300
_080FB22C: .4byte 0x00273900
_080FB230: .4byte 0x0202F388
_080FB234: .4byte 0x000343FD
_080FB238: .4byte 0x00269EC3
_080FB23C: .4byte 0x00000DF9
_080FB240: .4byte 0x00000DFA
_080FB244: .4byte 0x020021B0
_080FB248: .4byte 0x00000DF8
_080FB24C: .4byte 0x00000DFB

	thumb_func_start fafnirMinigame
fafnirMinigame: @ 0x080FB250
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080FB294 @ =0x00000DCC
	adds r4, r5, r0
	ldr r1, _080FB298 @ =0x08386B98
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl bxR1
	adds r6, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, _080FB29C @ =0x0001869F
	cmp r0, r1
	ble _080FB274
	str r1, [r4, #0x20]
_080FB274:
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble _080FB2B4
	ldr r0, _080FB2A0 @ =0x00000DF8
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080FB2A4
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
	b _080FB2AA
	.align 2, 0
_080FB294: .4byte 0x00000DCC
_080FB298: .4byte 0x08386B98
_080FB29C: .4byte 0x0001869F
_080FB2A0: .4byte 0x00000DF8
_080FB2A4:
	ldr r0, _080FB2B0 @ =0x00000137
	bl playSound
_080FB2AA:
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x28]
	b _080FB2C0
	.align 2, 0
_080FB2B0: .4byte 0x00000137
_080FB2B4:
	ldr r0, [r4, #0x24]
	cmp r0, r1
	beq _080FB2C0
	ldr r0, _080FB2D4 @ =0x00000137
	bl playSound
_080FB2C0:
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x24]
	adds r0, r5, #0
	bl fefnir_080fb018
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080FB2D4: .4byte 0x00000137

	thumb_func_start FUN_080fb2d8
FUN_080fb2d8: @ 0x080FB2D8
	push {r4, lr}
	ldr r1, _080FB2F0 @ =0x00000DCC
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080FB308
	cmp r0, #1
	bgt _080FB2F4
	cmp r0, #0
	beq _080FB2FE
	b _080FB344
	.align 2, 0
_080FB2F0: .4byte 0x00000DCC
_080FB2F4:
	cmp r0, #2
	beq _080FB31A
	cmp r0, #3
	beq _080FB32E
	b _080FB344
_080FB2FE:
	movs r0, #0x3c
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FB308:
	ldr r0, [r4, #0x1c]
	subs r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _080FB344
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _080FB344
_080FB31A:
	movs r0, #0x1d
	bl playSound
	movs r0, #0
	bl FUN_080b56b4
	str r0, [r4, #0x14]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FB32E:
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FB344
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
_080FB344:
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080fb354
FUN_080fb354: @ 0x080FB354
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r1, _080FB448 @ =0x00000DCC
	adds r6, r0, r1
	ldr r2, _080FB44C @ =0x02001EB0
	ldrh r1, [r2]
	strh r1, [r6, #0x18]
	ldrh r1, [r2, #4]
	strh r1, [r6, #0x1a]
	movs r7, #0
	movs r2, #0xdd
	lsls r2, r2, #4
	adds r2, r2, r0
	mov sb, r2
	movs r3, #0
	movs r2, #0xdd
	lsls r2, r2, #4
	adds r1, r0, r2
	movs r2, #3
_080FB380:
	ldr r0, [r1]
	cmp r0, #0
	beq _080FB390
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FB390
	str r3, [r1]
	movs r7, #1
_080FB390:
	adds r1, #4
	subs r2, #1
	cmp r2, #0
	bge _080FB380
	cmp r7, #0
	beq _080FB3B2
	adds r2, r6, #0
	adds r2, #0x2f
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	strb r1, [r6, #1]
	strb r1, [r6, #2]
	strb r1, [r6, #3]
_080FB3B2:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _080FB472
	ldr r0, _080FB450 @ =0x0202F388
	mov ip, r0
	ldr r0, [r0]
	ldr r3, _080FB454 @ =0x000343FD
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _080FB458 @ =0x00269EC3
	adds r1, r1, r2
	lsls r1, r1, #1
	lsrs r4, r1, #1
	lsrs r1, r1, #0x11
	movs r0, #0x1f
	ands r1, r0
	adds r5, r6, #0
	adds r5, #0x2e
	ldrb r0, [r5]
	lsrs r0, r0, #3
	subs r0, #0x30
	subs r1, r1, r0
	mov r0, r8
	strb r1, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r0, r2
	lsls r0, r0, #1
	lsrs r1, r0, #1
	mov r2, ip
	str r1, [r2]
	lsrs r2, r0, #0x11
	movs r0, #3
	ands r2, r0
	adds r7, r2, #0
	adds r0, r2, #4
	cmp r2, r0
	bge _080FB468
	mov r4, ip
_080FB406:
	adds r0, r2, #0
	cmp r2, #0
	bge _080FB40E
	adds r0, r2, #3
_080FB40E:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	lsls r0, r0, #2
	add r0, sb
	ldr r3, [r0]
	cmp r3, #0
	beq _080FB460
	ldr r1, [r4]
	ldr r0, _080FB454 @ =0x000343FD
	muls r0, r1, r0
	ldr r1, _080FB458 @ =0x00269EC3
	adds r0, r0, r1
	lsls r0, r0, #1
	lsrs r1, r0, #1
	str r1, [r4]
	lsrs r0, r0, #0x11
	movs r1, #1
	ands r0, r1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	ldr r2, _080FB45C @ =0x0026E800
	movs r3, #0xe0
	lsls r3, r3, #9
	bl FUN_08071470
	b _080FB468
	.align 2, 0
_080FB448: .4byte 0x00000DCC
_080FB44C: .4byte 0x02001EB0
_080FB450: .4byte 0x0202F388
_080FB454: .4byte 0x000343FD
_080FB458: .4byte 0x00269EC3
_080FB45C: .4byte 0x0026E800
_080FB460:
	adds r2, #1
	adds r0, r7, #4
	cmp r2, r0
	blt _080FB406
_080FB468:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bhi _080FB472
	adds r0, #1
	strb r0, [r5]
_080FB472:
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	movs r0, #1
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080fb48c
FUN_080fb48c: @ 0x080FB48C
	push {r4, lr}
	ldr r1, _080FB4A8 @ =0x00000DCC
	adds r4, r0, r1
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	ldrb r0, [r4, #1]
	cmp r0, #5
	bhi _080FB528
	lsls r0, r0, #2
	ldr r1, _080FB4AC @ =_080FB4B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FB4A8: .4byte 0x00000DCC
_080FB4AC: .4byte _080FB4B0
_080FB4B0: @ jump table
	.4byte _080FB4C8 @ case 0
	.4byte _080FB4D8 @ case 1
	.4byte _080FB4E4 @ case 2
	.4byte _080FB4F2 @ case 3
	.4byte _080FB502 @ case 4
	.4byte _080FB50E @ case 5
_080FB4C8:
	movs r0, #0xbd
	bl fadeoutBGM
	movs r0, #0x3c
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FB4D8:
	ldr r0, [r4, #0x1c]
	subs r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _080FB528
	b _080FB4FA
_080FB4E4:
	movs r0, #4
	bl FUN_080b56b4
	str r0, [r4, #0x14]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FB4F2:
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FB528
_080FB4FA:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _080FB528
_080FB502:
	ldr r1, _080FB524 @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FB50E:
	ldr r0, [r4, #0x1c]
	subs r0, #1
	str r0, [r4, #0x1c]
	ldr r0, _080FB524 @ =0x02030B60
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	bne _080FB528
	movs r0, #0
	b _080FB52A
	.align 2, 0
_080FB524: .4byte 0x02030B60
_080FB528:
	movs r0, #1
_080FB52A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start exitFafnirMinigame
exitFafnirMinigame: @ 0x080FB530
	push {lr}
	ldr r1, _080FB548 @ =0x00000DCC
	adds r0, r0, r1
	ldr r1, _080FB54C @ =0x020021B0
	ldr r0, [r0, #0x28]
	str r0, [r1, #0x34]
	bl sram_08008368
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080FB548: .4byte 0x00000DCC
_080FB54C: .4byte 0x020021B0

	thumb_func_start FUN_080fb550
FUN_080fb550: @ 0x080FB550
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080FB588 @ =0x00000DCC
	adds r4, r4, r0
	ldr r0, _080FB58C @ =0x0810E298
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldr r0, [r4, #0x24]
	movs r1, #0xc
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, _080FB590 @ =0x0810E2A0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r0, [r4, #0x2c]
	movs r1, #0x1c
	movs r2, #0
	bl FUN_080e9d04
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FB588: .4byte 0x00000DCC
_080FB58C: .4byte 0x0810E298
_080FB590: .4byte 0x0810E2A0

	thumb_func_start FUN_080fb594
FUN_080fb594: @ 0x080FB594
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080FB5D4 @ =0x00000DCC
	adds r4, r4, r0
	ldr r0, _080FB5D8 @ =0x0810E2AC
	movs r1, #0xa
	movs r2, #0x13
	bl printUnicodeString
	ldr r0, [r4, #0x20]
	movs r1, #0x3c
	bl __divsi3
	movs r1, #0x3c
	bl __modsi3
	movs r1, #0x12
	movs r2, #0x13
	bl FUN_080e9d04
	ldr r0, [r4, #0x20]
	movs r1, #0xe1
	lsls r1, r1, #4
	bl __divsi3
	movs r1, #0xf
	movs r2, #0x13
	bl FUN_080e9d04
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FB5D4: .4byte 0x00000DCC
_080FB5D8: .4byte 0x0810E2AC

	thumb_func_start FUN_080fb5dc
FUN_080fb5dc: @ 0x080FB5DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080FB658 @ =0x00000DCC
	adds r7, r0, r1
	ldrh r0, [r7, #0x16]
	subs r0, #1
	strh r0, [r7, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FB64E
	ldrh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	ldr r4, _080FB65C @ =0x0202F388
	mov r8, r4
	ldr r0, [r4]
	ldr r5, _080FB660 @ =0x000343FD
	muls r0, r5, r0
	ldr r4, _080FB664 @ =0x00269EC3
	adds r0, r0, r4
	lsls r0, r0, #1
	lsrs r6, r0, #1
	mov r1, r8
	str r6, [r1]
	lsrs r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #7
	bl __umodsi3
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #0xa
	adds r1, r1, r0
	adds r2, r6, #0
	muls r2, r5, r2
	adds r2, r2, r4
	lsls r2, r2, #1
	lsrs r3, r2, #1
	lsrs r2, r2, #0x11
	movs r0, #1
	ands r2, r0
	ldr r6, _080FB668 @ =0x08386BB0
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	lsls r0, r0, #1
	lsrs r3, r0, #1
	mov r4, r8
	str r3, [r4]
	lsrs r0, r0, #0x11
	movs r3, #0xf
	ands r0, r3
	adds r0, r0, r6
	ldrb r3, [r0]
	adds r0, r7, #0
	bl FUN_08099fb8
_080FB64E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FB658: .4byte 0x00000DCC
_080FB65C: .4byte 0x0202F388
_080FB660: .4byte 0x000343FD
_080FB664: .4byte 0x00269EC3
_080FB668: .4byte 0x08386BB0

	thumb_func_start FUN_080fb66c
FUN_080fb66c: @ 0x080FB66C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r1, r0, #0
	ldr r0, _080FB6DC @ =0x00000DCC
	adds r7, r1, r0
	ldrh r0, [r7, #0x16]
	subs r0, #1
	strh r0, [r7, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FB74A
	ldrh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	ldr r4, _080FB6E0 @ =0x00000DFE
	adds r1, r1, r4
	ldrb r0, [r1]
	cmp r0, #8
	bls _080FB6F4
	movs r0, #0
	strb r0, [r1]
	ldr r4, _080FB6E4 @ =0x0202F388
	ldr r0, [r4]
	ldr r1, _080FB6E8 @ =0x000343FD
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, _080FB6EC @ =0x00269EC3
	adds r0, r0, r6
	lsls r0, r0, #1
	lsrs r5, r0, #1
	str r5, [r4]
	lsrs r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #6
	bl __umodsi3
	adds r1, r0, #0
	ldr r0, _080FB6F0 @ =0x00042400
	adds r1, r1, r0
	mov r2, r8
	muls r2, r5, r2
	adds r2, r2, r6
	lsls r2, r2, #1
	lsrs r0, r2, #1
	str r0, [r4]
	lsrs r2, r2, #0x11
	movs r0, #1
	ands r2, r0
	adds r0, r7, #0
	movs r3, #1
	bl FUN_08099fb8
	b _080FB74A
	.align 2, 0
_080FB6DC: .4byte 0x00000DCC
_080FB6E0: .4byte 0x00000DFE
_080FB6E4: .4byte 0x0202F388
_080FB6E8: .4byte 0x000343FD
_080FB6EC: .4byte 0x00269EC3
_080FB6F0: .4byte 0x00042400
_080FB6F4:
	ldr r1, _080FB7AC @ =0x0202F388
	mov r8, r1
	ldr r0, [r1]
	ldr r5, _080FB7B0 @ =0x000343FD
	muls r0, r5, r0
	ldr r4, _080FB7B4 @ =0x00269EC3
	adds r0, r0, r4
	lsls r0, r0, #1
	lsrs r6, r0, #1
	str r6, [r1]
	lsrs r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #7
	bl __umodsi3
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #0xa
	adds r1, r1, r0
	adds r2, r6, #0
	muls r2, r5, r2
	adds r2, r2, r4
	lsls r2, r2, #1
	lsrs r3, r2, #1
	lsrs r2, r2, #0x11
	movs r0, #1
	ands r2, r0
	ldr r6, _080FB7B8 @ =0x08386BC0
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	lsls r0, r0, #1
	lsrs r3, r0, #1
	mov r4, r8
	str r3, [r4]
	lsrs r0, r0, #0x11
	movs r3, #0xf
	ands r0, r3
	adds r0, r0, r6
	ldrb r3, [r0]
	adds r0, r7, #0
	bl FUN_08099fb8
_080FB74A:
	ldrh r0, [r7, #0x1a]
	subs r0, #1
	strh r0, [r7, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FB804
	ldrh r0, [r7, #0x18]
	strh r0, [r7, #0x1a]
	adds r1, r7, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #8
	bls _080FB7C0
	movs r0, #0
	strb r0, [r1]
	ldr r4, _080FB7AC @ =0x0202F388
	ldr r0, [r4]
	ldr r1, _080FB7B0 @ =0x000343FD
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, _080FB7B4 @ =0x00269EC3
	adds r0, r0, r6
	lsls r0, r0, #1
	lsrs r5, r0, #1
	str r5, [r4]
	lsrs r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #6
	bl __umodsi3
	adds r1, r0, #0
	ldr r0, _080FB7BC @ =0x00042400
	adds r1, r1, r0
	mov r2, r8
	muls r2, r5, r2
	adds r2, r2, r6
	lsls r2, r2, #1
	lsrs r0, r2, #1
	str r0, [r4]
	lsrs r2, r2, #0x11
	movs r0, #1
	ands r2, r0
	adds r0, r7, #0
	movs r3, #1
	bl FUN_08099fb8
	b _080FB804
	.align 2, 0
_080FB7AC: .4byte 0x0202F388
_080FB7B0: .4byte 0x000343FD
_080FB7B4: .4byte 0x00269EC3
_080FB7B8: .4byte 0x08386BC0
_080FB7BC: .4byte 0x00042400
_080FB7C0:
	ldr r4, _080FB810 @ =0x0202F388
	ldr r0, [r4]
	ldr r1, _080FB814 @ =0x000343FD
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, _080FB818 @ =0x00269EC3
	adds r0, r0, r6
	lsls r0, r0, #1
	lsrs r5, r0, #1
	str r5, [r4]
	lsrs r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #7
	bl __umodsi3
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #0xa
	adds r1, r1, r0
	mov r2, r8
	muls r2, r5, r2
	adds r2, r2, r6
	lsls r2, r2, #1
	lsrs r0, r2, #1
	str r0, [r4]
	lsrs r2, r2, #0x11
	movs r0, #1
	ands r2, r0
	adds r0, r7, #0
	movs r3, #0
	bl FUN_08099fb8
_080FB804:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FB810: .4byte 0x0202F388
_080FB814: .4byte 0x000343FD
_080FB818: .4byte 0x00269EC3

	thumb_func_start initLeviathanMg
initLeviathanMg: @ 0x080FB81C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _080FBAC8 @ =0x00000DCC
	adds r0, r0, r7
	mov r8, r0
	ldr r2, _080FBACC @ =0x00000DC4
	adds r1, r7, r2
	movs r0, #0xb4
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r1, #4]
	movs r0, #9
	bl stage_08008a54
	ldr r1, _080FBAD0 @ =0x085D78F8
	mov sl, r1
	ldr r2, _080FBAD4 @ =0x0202F790
	ldrh r1, [r2]
	mov r2, sl
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r0, sl
	bl loadGraphics
	ldr r1, _080FBAD8 @ =0x0202F590
	mov sb, r1
	ldrh r1, [r1]
	ldr r2, _080FBADC @ =0x085D7904
	ldrb r0, [r2, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r2, #0
	bl transferPalette
	ldr r1, _080FBAD4 @ =0x0202F790
	adds r1, #0x6a
	ldr r0, _080FBAE0 @ =0x00000167
	strh r0, [r1]
	mov r5, sb
	adds r5, #0x6a
	movs r2, #0
	strh r2, [r5]
	ldr r4, _080FBAE4 @ =0x00000424
	mov r2, sl
	adds r0, r4, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FBADC @ =0x085D7904
	adds r4, r4, r0
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r4, #0
	bl transferPalette
	ldr r0, _080FBAE8 @ =0x00000195
	ldr r1, _080FBAD4 @ =0x0202F790
	strh r0, [r1, #0x30]
	movs r0, #2
	mov r2, sb
	strh r0, [r2, #0x30]
	movs r6, #0xf0
	lsls r6, r6, #1
	mov r1, sl
	adds r0, r6, r1
	ldr r2, _080FBAD4 @ =0x0202F790
	ldrh r1, [r2, #0x30]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r1, _080FBADC @ =0x085D7904
	adds r0, r6, r1
	mov r2, sb
	ldrh r1, [r2, #0x30]
	ldrb r2, [r0, #7]
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	bl transferPalette
	movs r4, #0xef
	lsls r5, r4, #1
	ldr r1, _080FBAD4 @ =0x0202F790
	adds r0, r1, r5
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	add r5, sb
	movs r2, #0
	strh r2, [r5]
	lsls r4, r4, #4
	movs r0, #0xef
	lsls r0, r0, #2
	adds r4, r4, r0
	mov r2, sl
	adds r0, r4, r2
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FBADC @ =0x085D7904
	adds r4, r4, r0
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r4, #0
	bl transferPalette
	ldr r0, _080FBAD4 @ =0x0202F790
	adds r1, r0, r6
	ldr r0, _080FBAEC @ =0x000002A7
	strh r0, [r1]
	add r6, sb
	movs r2, #2
	strh r2, [r6]
	movs r4, #0x96
	lsls r4, r4, #5
	mov r2, sl
	adds r0, r4, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FBADC @ =0x085D7904
	adds r4, r4, r0
	ldrh r1, [r6]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xf1
	lsls r5, r4, #1
	ldr r1, _080FBAD4 @ =0x0202F790
	adds r0, r1, r5
	movs r1, #0xb6
	lsls r1, r1, #2
	strh r1, [r0]
	add r5, sb
	movs r2, #2
	strh r2, [r5]
	lsls r4, r4, #4
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r4, r4, r0
	mov r2, sl
	adds r0, r4, r2
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	ldr r0, _080FBADC @ =0x085D7904
	adds r4, r4, r0
	ldrh r1, [r5]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xf2
	lsls r0, r4, #1
	ldr r1, _080FBAD4 @ =0x0202F790
	adds r2, r1, r0
	movs r1, #0xbb
	lsls r1, r1, #2
	strh r1, [r2]
	add sb, r0
	movs r0, #5
	mov r2, sb
	strh r0, [r2]
	lsls r4, r4, #4
	movs r0, #0xf2
	lsls r0, r0, #2
	adds r4, r4, r0
	add sl, r4
	mov r2, sl
	ldrh r0, [r2, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r0, sl
	bl loadGraphics
	ldr r1, _080FBADC @ =0x085D7904
	adds r4, r4, r1
	mov r2, sb
	ldrh r1, [r2]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl transferPalette
	movs r2, #0xf7
	lsls r2, r2, #0xa
	mov r0, r8
	movs r1, #0xb4
	lsls r1, r1, #9
	bl FUN_08035e98
	mov r1, r8
	str r0, [r1, #4]
	ldr r2, _080FBAF0 @ =0x0202F388
	ldr r1, [r2]
	ldr r0, _080FBAF4 @ =0x000343FD
	muls r1, r0, r1
	ldr r0, _080FBAF8 @ =0x00269EC3
	adds r1, r1, r0
	lsls r1, r1, #1
	lsrs r0, r1, #1
	str r0, [r2]
	lsrs r1, r1, #0x11
	movs r0, #1
	ands r1, r0
	mov r0, r8
	bl FUN_0809a02c
	mov r1, r8
	str r0, [r1, #0xc]
	movs r0, #0x3c
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	movs r0, #0xb4
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	movs r0, #0xe1
	lsls r0, r0, #3
	str r0, [r1, #0x20]
	ldr r2, _080FBAFC @ =0x00000DFD
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	mov r0, r8
	str r2, [r0, #0x1c]
	ldr r1, _080FBB00 @ =0x00000E01
	adds r0, r7, r1
	strb r2, [r0]
	subs r1, #3
	adds r0, r7, r1
	strb r2, [r0]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	mov r0, r8
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	ldr r0, _080FBB04 @ =0x020021B0
	ldr r0, [r0, #0x38]
	mov r1, r8
	str r0, [r1, #0x2c]
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	ldr r1, _080FBB08 @ =0x00000DFC
	adds r0, r7, r1
	strb r2, [r0]
	movs r0, #0xb6
	bl playBGM
	movs r0, #0x32
	bl playSound
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FBAC8: .4byte 0x00000DCC
_080FBACC: .4byte 0x00000DC4
_080FBAD0: .4byte 0x085D78F8
_080FBAD4: .4byte 0x0202F790
_080FBAD8: .4byte 0x0202F590
_080FBADC: .4byte 0x085D7904
_080FBAE0: .4byte 0x00000167
_080FBAE4: .4byte 0x00000424
_080FBAE8: .4byte 0x00000195
_080FBAEC: .4byte 0x000002A7
_080FBAF0: .4byte 0x0202F388
_080FBAF4: .4byte 0x000343FD
_080FBAF8: .4byte 0x00269EC3
_080FBAFC: .4byte 0x00000DFD
_080FBB00: .4byte 0x00000E01
_080FBB04: .4byte 0x020021B0
_080FBB08: .4byte 0x00000DFC

	thumb_func_start leviathanMinigame
leviathanMinigame: @ 0x080FBB0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080FBB38 @ =0x00000DCC
	adds r4, r5, r0
	ldr r0, _080FBB3C @ =0x08386BA4
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl bxR1
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_080fb594
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bge _080FBB40
	movs r0, #0
	str r0, [r4, #0x24]
	b _080FBB48
	.align 2, 0
_080FBB38: .4byte 0x00000DCC
_080FBB3C: .4byte 0x08386BA4
_080FBB40:
	ldr r1, _080FBB68 @ =0x0001869F
	cmp r0, r1
	ble _080FBB48
	str r1, [r4, #0x24]
_080FBB48:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _080FBB7C
	adds r1, r4, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #0
	bne _080FBB6C
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
	b _080FBB72
	.align 2, 0
_080FBB68: .4byte 0x0001869F
_080FBB6C:
	ldr r0, _080FBB78 @ =0x00000137
	bl playSound
_080FBB72:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x2c]
	b _080FBB88
	.align 2, 0
_080FBB78: .4byte 0x00000137
_080FBB7C:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _080FBB88
	ldr r0, _080FBB9C @ =0x00000137
	bl playSound
_080FBB88:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r5, #0
	bl FUN_080fb550
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080FBB9C: .4byte 0x00000137

	thumb_func_start FUN_080fbba0
FUN_080fbba0: @ 0x080FBBA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080FBBB8 @ =0x00000DCC
	adds r4, r5, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080FBBD4
	cmp r0, #1
	bgt _080FBBBC
	cmp r0, #0
	beq _080FBBC6
	b _080FBC1A
	.align 2, 0
_080FBBB8: .4byte 0x00000DCC
_080FBBBC:
	cmp r0, #2
	beq _080FBBF0
	cmp r0, #3
	beq _080FBC04
	b _080FBC1A
_080FBBC6:
	ldr r0, _080FBBEC @ =0x00000DFF
	adds r1, r5, r0
	movs r0, #0x3c
	strb r0, [r1]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FBBD4:
	adds r1, r4, #0
	adds r1, #0x33
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080FBC1A
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _080FBC1A
	.align 2, 0
_080FBBEC: .4byte 0x00000DFF
_080FBBF0:
	movs r0, #0x1d
	bl playSound
	movs r0, #0
	bl FUN_080b56b4
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FBC04:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FBC1A
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
_080FBC1A:
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	bl FUN_080fb5dc
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080fbc30
FUN_080fbc30: @ 0x080FBC30
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080FBC54 @ =0x00000DCC
	adds r4, r5, r0
	ldr r0, _080FBC58 @ =0x02001EB0
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x12]
	ldr r0, _080FBC5C @ =0x00000DFD
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080FBC60
	subs r0, #1
	strb r0, [r1]
	b _080FBC92
	.align 2, 0
_080FBC54: .4byte 0x00000DCC
_080FBC58: .4byte 0x02001EB0
_080FBC5C: .4byte 0x00000DFD
_080FBC60:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080FBC6C
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FBC8C
_080FBC6C:
	ldr r2, _080FBCCC @ =0x0202F388
	ldr r1, [r2]
	ldr r0, _080FBCD0 @ =0x000343FD
	muls r1, r0, r1
	ldr r0, _080FBCD4 @ =0x00269EC3
	adds r1, r1, r0
	lsls r1, r1, #1
	lsrs r0, r1, #1
	str r0, [r2]
	lsrs r1, r1, #0x11
	movs r0, #1
	ands r1, r0
	adds r0, r4, #0
	bl FUN_0809a02c
	str r0, [r4, #0xc]
_080FBC8C:
	adds r0, r5, #0
	bl FUN_080fb66c
_080FBC92:
	ldr r0, [r4, #0x20]
	ldr r1, _080FBCD8 @ =0x00002A30
	cmp r0, r1
	ble _080FBC9C
	str r1, [r4, #0x20]
_080FBC9C:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _080FBCAA
	subs r0, #1
	str r0, [r4, #0x20]
	cmp r0, #0
	bgt _080FBCC2
_080FBCAA:
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	adds r2, r4, #0
	adds r2, #0x34
	movs r0, #1
	strb r0, [r2]
	str r1, [r4, #0x20]
_080FBCC2:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080FBCCC: .4byte 0x0202F388
_080FBCD0: .4byte 0x000343FD
_080FBCD4: .4byte 0x00269EC3
_080FBCD8: .4byte 0x00002A30

	thumb_func_start leviathan_minigame_080fbcdc
leviathan_minigame_080fbcdc: @ 0x080FBCDC
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r0, _080FBD20 @ =0x00000DCC
	adds r4, r1, r0
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, #0x31
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080FBCF8
	subs r0, #1
	strb r0, [r2]
_080FBCF8:
	adds r0, r1, #0
	bl FUN_080fb5dc
	ldr r0, [r4, #0x20]
	ldr r1, _080FBD24 @ =0x00002A30
	cmp r0, r1
	ble _080FBD08
	str r1, [r4, #0x20]
_080FBD08:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _080FBD10
	str r5, [r4, #0x20]
_080FBD10:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bhi _080FBDB4
	lsls r0, r0, #2
	ldr r1, _080FBD28 @ =_080FBD2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FBD20: .4byte 0x00000DCC
_080FBD24: .4byte 0x00002A30
_080FBD28: .4byte _080FBD2C
_080FBD2C: @ jump table
	.4byte _080FBD44 @ case 0
	.4byte _080FBD5E @ case 1
	.4byte _080FBD70 @ case 2
	.4byte _080FBD7E @ case 3
	.4byte _080FBD8E @ case 4
	.4byte _080FBD9A @ case 5
_080FBD44:
	movs r0, #0xb6
	bl fadeoutBGM
	movs r0, #0xf6
	bl playSound
	adds r1, r4, #0
	adds r1, #0x33
	movs r0, #0x3c
	strb r0, [r1]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FBD5E:
	adds r1, r4, #0
	adds r1, #0x33
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080FBDB4
	b _080FBD86
_080FBD70:
	movs r0, #4
	bl FUN_080b56b4
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FBD7E:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FBDB4
_080FBD86:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _080FBDB4
_080FBD8E:
	ldr r1, _080FBDB0 @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FBD9A:
	ldr r0, _080FBDB0 @ =0x02030B60
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	bne _080FBDB4
	movs r0, #0x32
	bl stopSound
	movs r0, #0
	b _080FBDB6
	.align 2, 0
_080FBDB0: .4byte 0x02030B60
_080FBDB4:
	movs r0, #1
_080FBDB6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start exitLeviathanMinigame
exitLeviathanMinigame: @ 0x080FBDBC
	push {lr}
	ldr r1, _080FBDD4 @ =0x00000DCC
	adds r0, r0, r1
	ldr r1, _080FBDD8 @ =0x020021B0
	ldr r0, [r0, #0x2c]
	str r0, [r1, #0x38]
	bl sram_08008368
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080FBDD4: .4byte 0x00000DCC
_080FBDD8: .4byte 0x020021B0

	thumb_func_start FUN_080fbddc
FUN_080fbddc: @ 0x080FBDDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080FBE14 @ =0x00000DCC
	adds r4, r4, r0
	ldr r0, _080FBE18 @ =0x0810E2B8
	movs r1, #1
	movs r2, #0
	bl printUnicodeString
	ldr r0, [r4, #0x34]
	movs r1, #0xc
	movs r2, #0
	bl FUN_080e9d04
	ldr r0, _080FBE1C @ =0x0810E2C0
	movs r1, #0xf
	movs r2, #0
	bl printUnicodeString
	ldr r0, [r4, #0x3c]
	movs r1, #0x1c
	movs r2, #0
	bl FUN_080e9d04
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FBE14: .4byte 0x00000DCC
_080FBE18: .4byte 0x0810E2B8
_080FBE1C: .4byte 0x0810E2C0

	thumb_func_start initPhantomMg
initPhantomMg: @ 0x080FBE20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, _080FC058 @ =0x00000DCC
	adds r7, r4, r0
	ldr r2, _080FC05C @ =0x00000DC4
	adds r1, r4, r2
	ldr r0, _080FC060 @ =0x0009D800
	str r0, [r1]
	movs r0, #0xbe
	lsls r0, r0, #0xb
	str r0, [r1, #4]
	movs r0, #6
	bl stage_08008a54
	movs r2, #0
	str r2, [r7, #0x14]
	str r2, [r7, #4]
	movs r5, #0xa0
	lsls r5, r5, #7
	str r5, [r7, #0x1c]
	movs r3, #0xa0
	lsls r3, r3, #8
	str r3, [r7, #0x20]
	movs r0, #0xea
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	str r5, [r7, #0x24]
	str r3, [r7, #0x28]
	ldr r0, [r7, #8]
	ldr r0, [r0, #0x58]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r7, #0x18]
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x2c]
	str r2, [r7, #0x34]
	str r2, [r7, #0x38]
	ldr r0, _080FC064 @ =0x020021B0
	ldr r0, [r0, #0x3c]
	str r0, [r7, #0x3c]
	str r2, [r7, #0x30]
	ldr r0, _080FC068 @ =0x00000EA1
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	strb r3, [r7]
	strb r3, [r7, #1]
	strb r3, [r7, #2]
	strb r3, [r7, #3]
	ldr r1, _080FC06C @ =0x00000EA2
	adds r0, r4, r1
	strb r3, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r3, [r0]
	subs r1, #0x1b
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	mov r8, r2
	mov sb, r2
	movs r0, #0xe7
	lsls r0, r0, #4
	adds r6, r4, r0
	subs r1, #0x8c
	adds r5, r4, r1
_080FBED2:
	mov r2, r8
	lsls r4, r2, #3
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0xa0
	lsls r3, r3, #2
	bl FUN_08004cd0
	adds r1, r7, #0
	adds r1, #0xa4
	adds r1, r1, r4
	movs r0, #0xdc
	lsls r0, r0, #8
	mov r2, sb
	subs r0, r0, r2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa8
	adds r0, r0, r4
	movs r1, #0x8e
	lsls r1, r1, #8
	str r1, [r0]
	ldrb r1, [r5, #0x11]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #0x11]
	movs r0, #0x90
	lsls r0, r0, #5
	add sb, r0
	adds r6, #8
	adds r5, #0x20
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #2
	ble _080FBED2
	ldr r6, _080FC070 @ =0x085D78F8
	ldr r0, _080FC074 @ =0x0202F790
	mov sb, r0
	ldrh r1, [r0]
	ldrh r0, [r6, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	adds r0, r6, #0
	bl loadGraphics
	ldr r0, _080FC078 @ =0x085D7904
	mov sl, r0
	ldr r1, _080FC07C @ =0x0202F590
	mov r8, r1
	ldrh r1, [r1]
	ldrb r0, [r0, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	mov r0, sl
	bl transferPalette
	ldr r5, _080FC080 @ =0x00000A78
	adds r0, r5, r6
	movs r4, #0x86
	lsls r4, r4, #1
	mov r2, sb
	adds r1, r2, r4
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	add r5, sl
	add r4, r8
	ldrh r1, [r4]
	ldrb r0, [r5, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl transferPalette
	movs r4, #0xe1
	lsls r4, r4, #2
	adds r0, r4, r6
	mov r1, sb
	adds r1, #0x5a
	ldrh r1, [r1]
	ldrh r2, [r0, #6]
	lsrs r2, r2, #6
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	bl loadGraphics
	add r4, sl
	mov r0, r8
	adds r0, #0x5a
	ldrh r1, [r0]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl transferPalette
	movs r4, #0xc8
	lsls r4, r4, #4
	adds r6, r4, r6
	movs r5, #0xa0
	lsls r5, r5, #1
	add sb, r5
	mov r2, sb
	ldrh r1, [r2]
	ldrh r0, [r6, #6]
	lsrs r0, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	adds r0, r6, #0
	bl loadGraphics
	add r4, sl
	add r8, r5
	mov r2, r8
	ldrh r1, [r2]
	ldrb r0, [r4, #7]
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl transferPalette
	ldr r4, _080FC060 @ =0x0009D800
	movs r2, #0xbe
	lsls r2, r2, #0xb
	adds r0, r7, #0
	adds r1, r4, #0
	bl phantom_080349d0
	str r0, [r7, #8]
	movs r2, #0xbf
	lsls r2, r2, #0xb
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_080d915c
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x54]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r2, [r0, #0x58]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r0, r7, #0
	movs r3, #0
	bl FUN_080d91b4
	movs r0, #0xa8
	bl playBGM
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FC058: .4byte 0x00000DCC
_080FC05C: .4byte 0x00000DC4
_080FC060: .4byte 0x0009D800
_080FC064: .4byte 0x020021B0
_080FC068: .4byte 0x00000EA1
_080FC06C: .4byte 0x00000EA2
_080FC070: .4byte 0x085D78F8
_080FC074: .4byte 0x0202F790
_080FC078: .4byte 0x085D7904
_080FC07C: .4byte 0x0202F590
_080FC080: .4byte 0x00000A78

	thumb_func_start phantomMinigame
phantomMinigame: @ 0x080FC084
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _080FC0CC @ =0x00000DCC
	adds r6, r4, r0
	ldr r1, _080FC0D0 @ =0x08386BD0
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl bxR1
	mov r8, r0
	ldr r0, [r6, #0x34]
	ldr r1, _080FC0D4 @ =0x0001869F
	cmp r0, r1
	ble _080FC0AC
	str r1, [r6, #0x34]
_080FC0AC:
	ldr r1, [r6, #0x34]
	ldr r0, [r6, #0x3c]
	cmp r1, r0
	ble _080FC0EC
	ldr r0, _080FC0D8 @ =0x00000EA3
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080FC0DC
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #1
	bl playSound
	b _080FC0E2
	.align 2, 0
_080FC0CC: .4byte 0x00000DCC
_080FC0D0: .4byte 0x08386BD0
_080FC0D4: .4byte 0x0001869F
_080FC0D8: .4byte 0x00000EA3
_080FC0DC:
	ldr r0, _080FC0E8 @ =0x00000137
	bl playSound
_080FC0E2:
	ldr r0, [r6, #0x34]
	str r0, [r6, #0x3c]
	b _080FC0F8
	.align 2, 0
_080FC0E8: .4byte 0x00000137
_080FC0EC:
	ldr r0, [r6, #0x38]
	cmp r0, r1
	beq _080FC0F8
	ldr r0, _080FC138 @ =0x00000137
	bl playSound
_080FC0F8:
	ldr r0, [r6, #0x34]
	str r0, [r6, #0x38]
	adds r0, r4, #0
	bl FUN_080fbddc
	movs r5, #0
	adds r0, r6, #0
	adds r0, #0xd5
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r5, r0
	bge _080FC12A
	adds r4, r6, #0
	adds r4, #0x44
_080FC114:
	ldr r2, [r4, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r1, #0xbc
	bl bxR2
	adds r4, #0x20
	adds r5, #1
	ldrb r0, [r7]
	cmp r5, r0
	blt _080FC114
_080FC12A:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080FC138: .4byte 0x00000137

	thumb_func_start FUN_080fc13c
FUN_080fc13c: @ 0x080FC13C
	push {r4, lr}
	ldr r1, _080FC154 @ =0x00000DCC
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080FC16C
	cmp r0, #1
	bgt _080FC158
	cmp r0, #0
	beq _080FC162
	b _080FC1A8
	.align 2, 0
_080FC154: .4byte 0x00000DCC
_080FC158:
	cmp r0, #2
	beq _080FC17E
	cmp r0, #3
	beq _080FC192
	b _080FC1A8
_080FC162:
	movs r0, #0x3c
	str r0, [r4, #0x40]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FC16C:
	ldr r0, [r4, #0x40]
	subs r0, #1
	str r0, [r4, #0x40]
	cmp r0, #0
	bne _080FC1A8
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _080FC1A8
_080FC17E:
	movs r0, #0x1d
	bl playSound
	movs r0, #0
	bl FUN_080b56b4
	str r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FC192:
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FC1A8
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
_080FC1A8:
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080fc1b8
FUN_080fc1b8: @ 0x080FC1B8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080FC2E4 @ =0x00000DCC
	adds r5, r6, r0
	ldr r1, _080FC2E8 @ =0x02001EB0
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #4]
	strh r0, [r5, #0x12]
	ldr r3, [r5, #8]
	ldr r1, _080FC2EC @ =0x00000DC4
	adds r2, r6, r1
	ldr r0, [r3, #0x54]
	ldr r1, [r2]
	cmp r0, r1
	bgt _080FC1DC
	b _080FC358
_080FC1DC:
	subs r1, r0, r1
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	ldr r1, [r3, #0x54]
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r3, #0x54]
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r1, [r3, #0x54]
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	cmp r0, r1
	blt _080FC24A
	ldr r2, _080FC2F0 @ =0xFFFFFF00
	adds r1, r1, r2
	str r1, [r5, #0x28]
	ldr r0, _080FC2F4 @ =0x00003BFF
	cmp r1, r0
	bgt _080FC21E
	adds r0, #1
	str r0, [r5, #0x28]
_080FC21E:
	ldr r1, [r5, #4]
	movs r0, #0xa7
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldr r3, _080FC2F8 @ =0x0202F388
	ldr r2, [r3]
	ldr r0, _080FC2FC @ =0x000343FD
	muls r2, r0, r2
	ldr r0, _080FC300 @ =0x00269EC3
	adds r2, r2, r0
	lsls r2, r2, #1
	lsrs r0, r2, #1
	str r0, [r3]
	lsls r2, r2, #1
	lsrs r2, r2, #0x12
	movs r0, #0xba
	lsls r0, r0, #0xb
	adds r2, r2, r0
	adds r0, r5, #0
	bl FUN_080cbac8
	str r4, [r5, #0x24]
_080FC24A:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	adds r2, r0, #0
	cmp r1, r2
	blt _080FC2CE
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080FC268
	strh r1, [r5, #0x2c]
_080FC268:
	ldr r0, _080FC2F0 @ =0xFFFFFF00
	adds r1, r2, r0
	str r1, [r5, #0x20]
	ldr r0, _080FC304 @ =0x00004FFF
	cmp r1, r0
	bgt _080FC278
	adds r0, #1
	str r0, [r5, #0x20]
_080FC278:
	ldr r2, [r5, #0x18]
	ldr r1, _080FC308 @ =0xFFFFE000
	adds r2, r2, r1
	ldr r3, _080FC2F8 @ =0x0202F388
	ldr r1, [r3]
	ldr r0, _080FC2FC @ =0x000343FD
	muls r0, r1, r0
	ldr r1, _080FC300 @ =0x00269EC3
	adds r0, r0, r1
	lsls r0, r0, #1
	lsrs r1, r0, #1
	str r1, [r3]
	lsls r0, r0, #1
	lsrs r0, r0, #0x12
	adds r2, r2, r0
	str r2, [r5, #0x18]
	ldr r0, _080FC30C @ =0x0005DFFF
	cmp r2, r0
	bgt _080FC2A2
	adds r0, #1
	str r0, [r5, #0x18]
_080FC2A2:
	ldr r0, [r5, #0x18]
	movs r1, #0xc6
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _080FC2AE
	str r1, [r5, #0x18]
_080FC2AE:
	ldr r1, [r5, #4]
	movs r2, #0xa7
	lsls r2, r2, #0xc
	adds r1, r1, r2
	ldr r2, [r5, #0x18]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_080d91b4
	adds r1, r5, #0
	adds r1, #0xd4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	str r0, [r5, #0x1c]
_080FC2CE:
	ldr r4, [r5, #4]
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl __modsi3
	cmp r0, r4
	bge _080FC314
	ldr r0, _080FC310 @ =0xFFFF1000
	b _080FC316
	.align 2, 0
_080FC2E4: .4byte 0x00000DCC
_080FC2E8: .4byte 0x02001EB0
_080FC2EC: .4byte 0x00000DC4
_080FC2F0: .4byte 0xFFFFFF00
_080FC2F4: .4byte 0x00003BFF
_080FC2F8: .4byte 0x0202F388
_080FC2FC: .4byte 0x000343FD
_080FC300: .4byte 0x00269EC3
_080FC304: .4byte 0x00004FFF
_080FC308: .4byte 0xFFFFE000
_080FC30C: .4byte 0x0005DFFF
_080FC310: .4byte 0xFFFF1000
_080FC314:
	movs r0, #0
_080FC316:
	str r0, [r5, #0x14]
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl __modsi3
	str r0, [r5, #4]
	ldr r0, _080FC34C @ =0x00000DC4
	adds r2, r6, r0
	ldr r1, _080FC350 @ =0x0009D800
	str r1, [r2]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _080FC35A
	ldr r2, _080FC354 @ =0xFFFFF000
	adds r0, r1, r2
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	b _080FC35A
	.align 2, 0
_080FC34C: .4byte 0x00000DC4
_080FC350: .4byte 0x0009D800
_080FC354: .4byte 0xFFFFF000
_080FC358:
	str r4, [r5, #0x14]
_080FC35A:
	ldr r0, [r5, #8]
	ldr r1, [r0, #0x58]
	movs r0, #0xd2
	lsls r0, r0, #0xb
	cmp r1, r0
	bgt _080FC370
	adds r0, r5, #0
	adds r0, #0xd5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080FC386
_080FC370:
	adds r2, r5, #0
	adds r2, #0xd6
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	strb r1, [r5, #3]
_080FC386:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FUN_080fc390
FUN_080fc390: @ 0x080FC390
	push {r4, lr}
	ldr r1, _080FC3AC @ =0x00000DCC
	adds r4, r0, r1
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #1]
	cmp r0, #5
	bhi _080FC424
	lsls r0, r0, #2
	ldr r1, _080FC3B0 @ =_080FC3B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FC3AC: .4byte 0x00000DCC
_080FC3B0: .4byte _080FC3B4
_080FC3B4: @ jump table
	.4byte _080FC3CC @ case 0
	.4byte _080FC3DC @ case 1
	.4byte _080FC3E8 @ case 2
	.4byte _080FC3F6 @ case 3
	.4byte _080FC406 @ case 4
	.4byte _080FC412 @ case 5
_080FC3CC:
	movs r0, #0xa8
	bl fadeoutBGM
	movs r0, #0x3c
	str r0, [r4, #0x40]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FC3DC:
	ldr r0, [r4, #0x40]
	subs r0, #1
	str r0, [r4, #0x40]
	cmp r0, #0
	bne _080FC424
	b _080FC3FE
_080FC3E8:
	movs r0, #4
	bl FUN_080b56b4
	str r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FC3F6:
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _080FC424
_080FC3FE:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _080FC424
_080FC406:
	ldr r1, _080FC420 @ =0x02030B60
	movs r0, #0x40
	strh r0, [r1, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_080FC412:
	ldr r0, _080FC420 @ =0x02030B60
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	bne _080FC424
	movs r0, #0
	b _080FC426
	.align 2, 0
_080FC420: .4byte 0x02030B60
_080FC424:
	movs r0, #1
_080FC426:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start exitPhantomMinigame
exitPhantomMinigame: @ 0x080FC42C
	push {lr}
	ldr r1, _080FC444 @ =0x00000DCC
	adds r0, r0, r1
	ldr r1, _080FC448 @ =0x020021B0
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x3c]
	bl sram_08008368
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080FC444: .4byte 0x00000DCC
_080FC448: .4byte 0x020021B0
