	.include "asm/macros.inc"

	.syntax unified
	
	.text
	
	thumb_func_start nop_080f0654
nop_080f0654: @ 0x080F0654
	bx lr
	.align 2, 0

	thumb_func_start manageSaveData
manageSaveData: @ 0x080F0658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r0, [r6, #3]
	subs r0, #0x3f
	cmp r0, #0x37
	bls _080F0672
	bl _080F10A0
_080F0672:
	lsls r0, r0, #2
	ldr r1, _080F067C @ =_080F0680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F067C: .4byte _080F0680
_080F0680: @ jump table
	.4byte _080F0760 @ case 0
	.4byte _080F0780 @ case 1
	.4byte _080F07A0 @ case 2
	.4byte _080F07F4 @ case 3
	.4byte _080F080C @ case 4
	.4byte _080F08B0 @ case 5
	.4byte _080F08C2 @ case 6
	.4byte _080F0C74 @ case 7
	.4byte _080F0C84 @ case 8
	.4byte _080F0D20 @ case 9
	.4byte _080F07FC @ case 10
	.4byte _080F080C @ case 11
	.4byte _080F08B0 @ case 12
	.4byte _080F08C2 @ case 13
	.4byte _080F0D4C @ case 14
	.4byte _080F0D5C @ case 15
	.4byte _080F0DE0 @ case 16
	.4byte _080F0E36 @ case 17
	.4byte _080F0E7C @ case 18
	.4byte _080F0804 @ case 19
	.4byte _080F080C @ case 20
	.4byte _080F08B0 @ case 21
	.4byte _080F08C2 @ case 22
	.4byte _080F0FE0 @ case 23
	.4byte _080F0FF0 @ case 24
	.4byte _080F10A0 @ case 25
	.4byte _080F10A0 @ case 26
	.4byte _080F10A0 @ case 27
	.4byte _080F10A0 @ case 28
	.4byte _080F10A0 @ case 29
	.4byte _080F10A0 @ case 30
	.4byte _080F10A0 @ case 31
	.4byte _080F10A0 @ case 32
	.4byte _080F07FC @ case 33
	.4byte _080F080C @ case 34
	.4byte _080F08B0 @ case 35
	.4byte _080F08C2 @ case 36
	.4byte _080F0D4C @ case 37
	.4byte _080F0D5C @ case 38
	.4byte _080F0DE0 @ case 39
	.4byte _080F0E36 @ case 40
	.4byte _080F0E7C @ case 41
	.4byte _080F106A @ case 42
	.4byte _080F10A0 @ case 43
	.4byte _080F10A0 @ case 44
	.4byte _080F10A0 @ case 45
	.4byte _080F10A0 @ case 46
	.4byte _080F10A0 @ case 47
	.4byte _080F10A0 @ case 48
	.4byte _080F07F4 @ case 49
	.4byte _080F080C @ case 50
	.4byte _080F08B0 @ case 51
	.4byte _080F08C2 @ case 52
	.4byte _080F0C74 @ case 53
	.4byte _080F0C84 @ case 54
	.4byte _080F0D20 @ case 55
_080F0760:
	ldr r2, _080F0774 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F0778
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	bl _080F10A0
	.align 2, 0
_080F0774: .4byte 0x020308D8
_080F0778:
	movs r1, #0x80
	lsls r1, r1, #3
	bl FUN_080f0fd4
_080F0780:
	ldr r0, _080F07D4 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F0790
	cmp r0, #4
	beq _080F0790
	bl _080F10A0
_080F0790:
	movs r0, #2
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F07A0:
	ldr r0, _080F07D4 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F07B0
	cmp r0, #4
	beq _080F07B0
	bl _080F10A0
_080F07B0:
	adds r0, r6, #0
	bl FUN_080f32f8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080F07C2
	bl _080F10A0
_080F07C2:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080F07D8
	movs r0, #0x42
	strb r0, [r6, #3]
	bl _080F10A0
	.align 2, 0
_080F07D4: .4byte 0x020308D8
_080F07D8:
	cmp r0, #2
	bne _080F07E4
	movs r0, #0x49
	strb r0, [r6, #3]
	bl _080F10A0
_080F07E4:
	cmp r0, #3
	bne _080F07EC
	bl _080F1064
_080F07EC:
	movs r0, #0x3f
	strb r0, [r6, #3]
	bl _080F10A0
_080F07F4:
	movs r0, #3
	bl _printOptionMessage
	b _080F0DC0
_080F07FC:
	movs r0, #5
	bl _printOptionMessage
	b _080F0DC0
_080F0804:
	movs r0, #7
	bl _printOptionMessage
	b _080F0DC0
_080F080C:
	movs r4, #0
	ldr r0, _080F083C @ =0x020005F8
	mov sl, r0
	ldr r7, _080F0840 @ =0x0200055C
	ldr r1, _080F0844 @ =0xFFFFFE4C
	adds r1, r1, r7
	mov sb, r1
_080F081A:
	lsls r0, r4, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	movs r1, #0x94
	lsls r1, r1, #2
	bl checkSavedataCorrect
	adds r2, r0, #0
	cmp r2, #0
	bne _080F0848
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	add r0, sl
	strb r2, [r0]
	mov r8, r1
	b _080F089C
	.align 2, 0
_080F083C: .4byte 0x020005F8
_080F0840: .4byte 0x0200055C
_080F0844: .4byte 0xFFFFFE4C
_080F0848:
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _080F09CC @ =0x020003A8
	movs r2, #0x94
	lsls r2, r2, #2
	bl sram_08003378
	mov r8, r4
	ldr r4, _080F09D0 @ =0x02001EE0
_080F0862:
	bl sramScript
	ldrb r0, [r4]
	cmp r0, #1
	beq _080F0862
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080F0862
	ldr r1, _080F09D4 @ =0x02000600
	mov r5, r8
	asrs r3, r5, #0x10
	lsls r2, r3, #2
	adds r1, r2, r1
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, _080F09D8 @ =0x02000618
	adds r2, r2, r0
	ldrb r0, [r7, #1]
	str r0, [r2]
	ldr r0, _080F09DC @ =0x0200062C
	adds r0, r3, r0
	mov r2, sb
	ldrh r1, [r2]
	strb r1, [r0]
	ldr r0, _080F09E0 @ =0x02000634
	adds r3, r3, r0
	ldrh r0, [r2, #2]
	strb r0, [r3]
_080F089C:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080F081A
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F08B0:
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	strh r0, [r6, #8]
	movs r0, #0xf
	strh r0, [r6, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F08C2:
	ldr r0, _080F09E4 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F08D2
	cmp r0, #4
	beq _080F08D2
	bl _080F10A0
_080F08D2:
	movs r5, #4
	ldrsh r0, [r6, r5]
	cmp r0, #3
	bgt _080F08F2
	ldr r0, _080F09E8 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F08F2
	movs r0, #1
	bl playSound
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_080F08F2:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	ble _080F0912
	ldr r0, _080F09E8 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F0912
	movs r0, #1
	bl playSound
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
_080F0912:
	ldrh r3, [r6, #4]
	movs r2, #4
	ldrsh r1, [r6, r2]
	movs r5, #6
	ldrsh r0, [r6, r5]
	adds r2, r3, #0
	cmp r1, r0
	bge _080F0924
	strh r2, [r6, #6]
_080F0924:
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r2, #6
	ldrsh r0, [r6, r2]
	adds r0, #1
	cmp r1, r0
	ble _080F0936
	subs r0, r3, #1
	strh r0, [r6, #6]
_080F0936:
	movs r4, #0
_080F0938:
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	subs r1, r5, r1
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r7, r1, #0x18
	lsrs r1, r7, #0x18
	mov r8, r0
	cmp r1, #2
	bhi _080F0A26
	ldr r0, _080F09EC @ =0x020005F8
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080F09F8
	ldr r1, _080F09F0 @ =0x08372210
	adds r0, r5, #0
	adds r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080F09F4 @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r1, _080F09E4 @ =0x020308D8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _080F097C
	ldrb r0, [r1, #4]
	cmp r0, #1
	bne _080F097E
_080F097C:
	movs r2, #1
_080F097E:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #9
	subs r1, r1, r0
	ldr r5, _080F09E4 @ =0x020308D8
	mov r0, ip
	lsls r4, r0, #0x18
	asrs r2, r4, #0x18
	adds r2, #2
	ldrb r0, [r5, #5]
	adds r2, r2, r0
	adds r0, r3, #0
	bl print
	ldr r0, _080F09F0 @ =0x08372210
	ldrh r1, [r0, #2]
	ldr r0, _080F09F4 @ =0x08372AA0
	adds r3, r1, r0
	movs r1, #0
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _080F09B0
	ldrb r0, [r5, #4]
	cmp r0, #1
	bne _080F09B2
_080F09B0:
	movs r1, #1
_080F09B2:
	lsls r0, r1, #3
	subs r0, r0, r1
	movs r1, #0xb
	subs r1, r1, r0
	ldr r0, _080F09E4 @ =0x020308D8
	asrs r2, r4, #0x18
	adds r2, #2
	ldrb r0, [r0, #5]
	adds r2, r2, r0
	adds r0, r3, #0
	bl print
	b _080F0A26
	.align 2, 0
_080F09CC: .4byte 0x020003A8
_080F09D0: .4byte 0x02001EE0
_080F09D4: .4byte 0x02000600
_080F09D8: .4byte 0x02000618
_080F09DC: .4byte 0x0200062C
_080F09E0: .4byte 0x02000634
_080F09E4: .4byte 0x020308D8
_080F09E8: .4byte 0x02001EB0
_080F09EC: .4byte 0x020005F8
_080F09F0: .4byte 0x08372210
_080F09F4: .4byte 0x08372AA0
_080F09F8:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080F0B00 @ =0x02000618
	lsls r3, r5, #2
	adds r1, r3, r1
	ldrb r1, [r1]
	ldr r2, _080F0B04 @ =0x02000600
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r3, _080F0B08 @ =0x0200062C
	adds r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080F0B0C @ =0x02000634
	adds r4, r5, r4
	ldrb r4, [r4]
	str r4, [sp]
	movs r5, #0x80
	lsls r5, r5, #0x12
	adds r4, r7, r5
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	bl printSaveDataRow
_080F0A26:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _080F0A36
	b _080F0938
_080F0A36:
	ldr r0, _080F0B10 @ =0x08372210
	ldrh r1, [r0]
	ldr r0, _080F0B14 @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F0B18 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0A50
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0A52
_080F0A50:
	movs r2, #1
_080F0A52:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	movs r0, #4
	ldrsh r2, [r6, r0]
	movs r5, #6
	ldrsh r0, [r6, r5]
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r2, #2
	ldrb r0, [r4, #5]
	adds r2, r2, r0
	adds r0, r3, #0
	bl print
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F0A82
	b _080F0B84
_080F0A82:
	movs r2, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080F0A90
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0A92
_080F0A90:
	movs r2, #1
_080F0A92:
	lsls r1, r2, #3
	subs r1, r1, r2
	movs r0, #8
	subs r0, r0, r1
	cmp r0, #3
	ble _080F0B24
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080F0ACE
	ldr r3, _080F0B1C @ =0x0810E240
	movs r2, #0
	ldr r0, _080F0B18 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0ABA
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0ABC
_080F0ABA:
	movs r2, #1
_080F0ABC:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #0x1c
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r2, #2
	adds r0, r3, #0
	bl printUnicodeString
_080F0ACE:
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r0, #3
	beq _080F0B84
	ldr r3, _080F0B20 @ =0x0810E244
	movs r2, #0
	ldr r0, _080F0B18 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0AEA
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0AEC
_080F0AEA:
	movs r2, #1
_080F0AEC:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #0x1c
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r2, #5
	adds r0, r3, #0
	bl printUnicodeString
	b _080F0B84
	.align 2, 0
_080F0B00: .4byte 0x02000618
_080F0B04: .4byte 0x02000600
_080F0B08: .4byte 0x0200062C
_080F0B0C: .4byte 0x02000634
_080F0B10: .4byte 0x08372210
_080F0B14: .4byte 0x08372AA0
_080F0B18: .4byte 0x020308D8
_080F0B1C: .4byte 0x0810E240
_080F0B20: .4byte 0x0810E244
_080F0B24:
	movs r5, #6
	ldrsh r0, [r6, r5]
	cmp r0, #0
	beq _080F0B54
	ldr r3, _080F0B94 @ =0x0810E240
	movs r2, #0
	ldr r0, _080F0B98 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0B40
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0B42
_080F0B40:
	movs r2, #1
_080F0B42:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #7
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r2, #2
	adds r0, r3, #0
	bl printUnicodeString
_080F0B54:
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #3
	beq _080F0B84
	ldr r3, _080F0B9C @ =0x0810E244
	movs r2, #0
	ldr r0, _080F0B98 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0B70
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0B72
_080F0B70:
	movs r2, #1
_080F0B72:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #7
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r2, #5
	adds r0, r3, #0
	bl printUnicodeString
_080F0B84:
	ldrh r1, [r6, #0xa]
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080F0BA0
	subs r0, r1, #1
	strh r0, [r6, #0xa]
	b _080F10A0
	.align 2, 0
_080F0B94: .4byte 0x0810E240
_080F0B98: .4byte 0x020308D8
_080F0B9C: .4byte 0x0810E244
_080F0BA0:
	ldr r0, _080F0BCC @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080F0BE0
	movs r0, #3
	bl playSound
	ldrb r0, [r6, #3]
	cmp r0, #0x63
	bne _080F0BD4
	ldr r0, _080F0BD0 @ =0x0202FE60
	movs r5, #0xaa
	lsls r5, r5, #1
	adds r0, r0, r5
	str r4, [r0]
	movs r0, #0x69
	strb r0, [r6, #3]
	b _080F10A0
	.align 2, 0
_080F0BCC: .4byte 0x02001EB0
_080F0BD0: .4byte 0x0202FE60
_080F0BD4:
	cmp r0, #0x73
	beq _080F0BDA
	b _080F1050
_080F0BDA:
	movs r0, #0x7c
	strb r0, [r6, #3]
	b _080F10A0
_080F0BE0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F0BEA
	b _080F10A0
_080F0BEA:
	ldrb r0, [r6, #3]
	cmp r0, #0x45
	beq _080F0BF4
	cmp r0, #0x73
	bne _080F0C52
_080F0BF4:
	movs r0, #2
	bl playSound
	ldr r0, _080F0C38 @ =0x020005F8
	movs r2, #4
	ldrsh r1, [r6, r2]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F0C0A
	b _080F0DC0
_080F0C0A:
	ldr r5, _080F0C3C @ =0x00006270
	adds r0, r6, r5
	bl copyStageState
	ldr r1, _080F0C40 @ =0x000064AC
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _080F0C44 @ =0x00006460
	adds r1, r6, r2
	bl copyZeroDetail
	ldrb r0, [r6, #4]
	ldr r1, _080F0C48 @ =0x02036DBC
	movs r2, #0x94
	lsls r2, r2, #2
	bl sram_08003330
	ldrb r0, [r6, #3]
	cmp r0, #0x45
	bne _080F0C4C
	movs r0, #0x48
	strb r0, [r6, #3]
	b _080F10A0
	.align 2, 0
_080F0C38: .4byte 0x020005F8
_080F0C3C: .4byte 0x00006270
_080F0C40: .4byte 0x000064AC
_080F0C44: .4byte 0x00006460
_080F0C48: .4byte 0x02036DBC
_080F0C4C:
	movs r0, #0x76
	strb r0, [r6, #3]
	b _080F10A0
_080F0C52:
	ldr r0, _080F0C68 @ =0x020005F8
	movs r5, #4
	ldrsh r1, [r6, r5]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080F0C6C
	movs r0, #4
	bl playSound
	b _080F10A0
	.align 2, 0
_080F0C68: .4byte 0x020005F8
_080F0C6C:
	movs r0, #2
	bl playSound
	b _080F0DC0
_080F0C74:
	movs r0, #4
	bl _printOptionMessage
	movs r0, #1
	strh r0, [r6, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F0C84:
	ldr r1, _080F0D04 @ =0x08372210
	movs r2, #4
	ldrsh r0, [r6, r2]
	adds r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080F0D08 @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F0D0C @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0CA8
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0CAA
_080F0CA8:
	movs r2, #1
_080F0CAA:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r0, r3, #0
	bl print
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080F0CC6
	cmp r0, #4
	beq _080F0CC6
	b _080F10A0
_080F0CC6:
	adds r0, r6, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080F0CD6
	b _080F10A0
_080F0CD6:
	lsls r0, r4, #0x10
	cmp r0, #0
	bgt _080F0CDE
	b _080F0DD8
_080F0CDE:
	ldr r5, _080F0D10 @ =0x00006270
	adds r0, r6, r5
	bl copyStageState
	ldr r1, _080F0D14 @ =0x000064AC
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _080F0D18 @ =0x00006460
	adds r1, r6, r2
	bl copyZeroDetail
	ldrb r0, [r6, #4]
	ldr r1, _080F0D1C @ =0x02036DBC
	movs r2, #0x94
	lsls r2, r2, #2
	bl sram_08003330
	b _080F0DC0
	.align 2, 0
_080F0D04: .4byte 0x08372210
_080F0D08: .4byte 0x08372AA0
_080F0D0C: .4byte 0x020308D8
_080F0D10: .4byte 0x00006270
_080F0D14: .4byte 0x000064AC
_080F0D18: .4byte 0x00006460
_080F0D1C: .4byte 0x02036DBC
_080F0D20:
	ldr r1, _080F0D48 @ =0x02001EE0
	ldrb r0, [r1]
	cmp r0, #2
	bne _080F0D2A
	b _080F10A0
_080F0D2A:
	movs r5, #0x1c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bne _080F0D34
	b _080F10A0
_080F0D34:
	movs r0, #9
	bl printOptionMessage
	ldrb r0, [r6, #3]
	cmp r0, #0x48
	bne _080F0D42
	b _080F1050
_080F0D42:
	movs r0, #0x77
	strb r0, [r6, #3]
	b _080F10A0
	.align 2, 0
_080F0D48: .4byte 0x02001EE0
_080F0D4C:
	movs r0, #6
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F0D5C:
	ldr r1, _080F0DC8 @ =0x08372210
	movs r2, #4
	ldrsh r0, [r6, r2]
	adds r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080F0DCC @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F0DD0 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0D80
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0D82
_080F0D80:
	movs r2, #1
_080F0D82:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r0, r3, #0
	bl print
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080F0D9E
	cmp r0, #4
	beq _080F0D9E
	b _080F10A0
_080F0D9E:
	adds r0, r6, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080F0DAE
	b _080F10A0
_080F0DAE:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _080F0DD8
	ldrb r0, [r6, #4]
	ldr r1, _080F0DD4 @ =0x02036DBC
	movs r2, #0x94
	lsls r2, r2, #2
	bl sram_08003378
_080F0DC0:
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
	b _080F10A0
	.align 2, 0
_080F0DC8: .4byte 0x08372210
_080F0DCC: .4byte 0x08372AA0
_080F0DD0: .4byte 0x020308D8
_080F0DD4: .4byte 0x02036DBC
_080F0DD8:
	ldrb r0, [r6, #3]
	subs r0, #5
	strb r0, [r6, #3]
	b _080F10A0
_080F0DE0:
	ldr r1, _080F0F00 @ =0x08372210
	movs r5, #4
	ldrsh r0, [r6, r5]
	adds r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080F0F04 @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F0F08 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F0E04
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F0E06
_080F0E04:
	movs r2, #1
_080F0E06:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r0, r3, #0
	bl print
	ldr r1, _080F0F0C @ =0x02001EE0
	ldrb r0, [r1]
	cmp r0, #1
	bne _080F0E20
	b _080F10A0
_080F0E20:
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080F0E2A
	b _080F10A0
_080F0E2A:
	movs r0, #0xa
	bl printOptionMessage
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F0E36:
	ldr r0, _080F0F08 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F0E44
	cmp r0, #4
	beq _080F0E44
	b _080F10A0
_080F0E44:
	ldr r5, _080F0F10 @ =0x00006260
	adds r4, r6, r5
	ldrb r0, [r4]
	ldr r2, _080F0F14 @ =0x00006410
	adds r1, r6, r2
	bl initMapProps
	ldr r5, _080F0F18 @ =0x000064AC
	adds r0, r6, r5
	ldr r0, [r0]
	ldr r2, _080F0F1C @ =0x00006460
	adds r1, r6, r2
	bl copyZeroDetail_08032240
	ldrb r0, [r4]
	ldr r5, _080F0F20 @ =0x00006270
	adds r1, r6, r5
	bl stage_080195f4
	ldr r0, _080F0F24 @ =0x0202FE60
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F0E7C:
	ldr r7, _080F0F24 @ =0x0202FE60
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080F0E98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl fadeoutBGM
	str r4, [r5]
_080F0E98:
	ldr r2, _080F0F08 @ =0x020308D8
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	movs r5, #0xaa
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _080F0EB0
	b _080F10A0
_080F0EB0:
	ldr r0, _080F0F28 @ =0x0202FE20
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _080F0F34
	ldr r4, _080F0F2C @ =0x0202FDC0
	ldrb r2, [r4, #4]
	movs r1, #0xf7
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #4]
	ldr r2, _080F0F20 @ =0x00006270
	adds r3, r6, r2
	ldrb r2, [r3]
	ands r1, r2
	strb r1, [r3]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080F0EDE
	ldr r5, _080F0F30 @ =0x0000625C
	adds r0, r6, r5
	strh r2, [r0, #2]
_080F0EDE:
	ldrb r1, [r4, #4]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F0EF0
	ldr r1, _080F0F30 @ =0x0000625C
	adds r0, r6, r1
	strh r3, [r0, #2]
_080F0EF0:
	ldr r5, _080F0F10 @ =0x00006260
	adds r0, r6, r5
	strh r2, [r0]
	movs r0, #1
	bl loadNewMap
	b _080F0FD0
	.align 2, 0
_080F0F00: .4byte 0x08372210
_080F0F04: .4byte 0x08372AA0
_080F0F08: .4byte 0x020308D8
_080F0F0C: .4byte 0x02001EE0
_080F0F10: .4byte 0x00006260
_080F0F14: .4byte 0x00006410
_080F0F18: .4byte 0x000064AC
_080F0F1C: .4byte 0x00006460
_080F0F20: .4byte 0x00006270
_080F0F24: .4byte 0x0202FE60
_080F0F28: .4byte 0x0202FE20
_080F0F2C: .4byte 0x0202FDC0
_080F0F30: .4byte 0x0000625C
_080F0F34:
	ldr r3, _080F0F60 @ =0x0202FDC0
	ldrb r2, [r3, #4]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080F0F6C
	movs r1, #0xf7
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #4]
	ldr r0, _080F0F64 @ =0x00006270
	adds r2, r6, r0
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldr r1, _080F0F68 @ =0x00006260
	adds r0, r6, r1
	ldrb r0, [r0]
	bl loadNewMap
	b _080F0FD0
	.align 2, 0
_080F0F60: .4byte 0x0202FDC0
_080F0F64: .4byte 0x00006270
_080F0F68: .4byte 0x00006260
_080F0F6C:
	ldrb r1, [r3, #5]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #8
	bne _080F0F88
	ldr r2, _080F0F84 @ =0x00006260
	adds r0, r6, r2
	movs r1, #0x11
	strh r1, [r0]
	movs r0, #0x11
	movs r1, #0xa
	b _080F0FCC
	.align 2, 0
_080F0F84: .4byte 0x00006260
_080F0F88:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	bne _080F0FA4
	ldr r5, _080F0FA0 @ =0x00006260
	adds r0, r6, r5
	movs r1, #0x11
	strh r1, [r0]
	movs r0, #0x11
	movs r1, #0xe
	b _080F0FCC
	.align 2, 0
_080F0FA0: .4byte 0x00006260
_080F0FA4:
	ldrb r1, [r3, #6]
	movs r0, #0x14
	ands r0, r1
	cmp r0, #4
	bne _080F0FC0
	ldr r1, _080F0FBC @ =0x00006260
	adds r0, r6, r1
	movs r1, #0x11
	strh r1, [r0]
	movs r0, #0x11
	b _080F0FCC
	.align 2, 0
_080F0FBC: .4byte 0x00006260
_080F0FC0:
	ldr r2, _080F0FDC @ =0x00006260
	adds r0, r6, r2
	movs r1, #0x11
	strh r1, [r0]
	movs r0, #0x11
	movs r1, #2
_080F0FCC:
	bl loadMap
_080F0FD0:
	movs r1, #0xc0
	lsls r1, r1, #2

	thumb_func_start FUN_080f0fd4
FUN_080f0fd4: @ 0x080F0FD4
	adds r0, r6, #0
	bl FUN_080ee000
	b _080F10A0
	.align 2, 0
_080F0FDC: .4byte 0x00006260
_080F0FE0:
	movs r0, #8
	bl _printOptionMessage
	movs r0, #1
	strh r0, [r6, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F0FF0:
	ldr r1, _080F1058 @ =0x08372210
	movs r5, #4
	ldrsh r0, [r6, r5]
	adds r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080F105C @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F1060 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F1014
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F1016
_080F1014:
	movs r2, #1
_080F1016:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r0, r3, #0
	bl print
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080F1030
	cmp r0, #4
	bne _080F10A0
_080F1030:
	adds r0, r6, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _080F10A0
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _080F1064
	ldrb r0, [r6, #4]
	bl writeSramINTI
	movs r0, #0xb
	bl printOptionMessage
_080F1050:
	movs r0, #0x40
	strb r0, [r6, #3]
	b _080F10A0
	.align 2, 0
_080F1058: .4byte 0x08372210
_080F105C: .4byte 0x08372AA0
_080F1060: .4byte 0x020308D8
_080F1064:
	movs r0, #0x52
	strb r0, [r6, #3]
	b _080F10A0
_080F106A:
	ldr r6, _080F10B0 @ =0x0202FE60
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r5, r6, r0
	ldr r0, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080F1086
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl fadeoutBGM
	str r4, [r5]
_080F1086:
	ldr r2, _080F10B4 @ =0x020308D8
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080F10A0
	bl FUN_0800234c
_080F10A0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F10B0: .4byte 0x0202FE60
_080F10B4: .4byte 0x020308D8

	thumb_func_start transportalChatScript
transportalChatScript: @ 0x080F10B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldrb r0, [r5, #3]
	cmp r0, #0x3f
	bls _080F10CC
	b _080F11DC
_080F10CC:
	lsls r0, r0, #2
	ldr r1, _080F10D8 @ =_080F10DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F10D8: .4byte _080F10DC
_080F10DC: @ jump table
	.4byte _080F11E6 @ case 0
	.4byte _080F1204 @ case 1
	.4byte _080F1252 @ case 2
	.4byte _080F1268 @ case 3
	.4byte _080F1286 @ case 4
	.4byte _080F13A4 @ case 5
	.4byte _080F149A @ case 6
	.4byte _080F14CC @ case 7
	.4byte _080F1644 @ case 8
	.4byte _080F166C @ case 9
	.4byte _080F179E @ case 10
	.4byte _080F17BC @ case 11
	.4byte _080F17E2 @ case 12
	.4byte _080F183C @ case 13
	.4byte _080F1854 @ case 14
	.4byte _080F1A9E @ case 15
	.4byte _080F1AB4 @ case 16
	.4byte _080F1B06 @ case 17
	.4byte _080F1B60 @ case 18
	.4byte _080F1BE0 @ case 19
	.4byte _080F1C18 @ case 20
	.4byte _080F1C54 @ case 21
	.4byte _080F1C78 @ case 22
	.4byte _080F1CC0 @ case 23
	.4byte _080F1D20 @ case 24
	.4byte _080F1D40 @ case 25
	.4byte _080F11DC @ case 26
	.4byte _080F11DC @ case 27
	.4byte _080F11DC @ case 28
	.4byte _080F11DC @ case 29
	.4byte _080F11DC @ case 30
	.4byte _080F11DC @ case 31
	.4byte _080F11DC @ case 32
	.4byte _080F11DC @ case 33
	.4byte _080F11DC @ case 34
	.4byte _080F11DC @ case 35
	.4byte _080F11DC @ case 36
	.4byte _080F11DC @ case 37
	.4byte _080F11DC @ case 38
	.4byte _080F11DC @ case 39
	.4byte _080F11DC @ case 40
	.4byte _080F11DC @ case 41
	.4byte _080F11DC @ case 42
	.4byte _080F11DC @ case 43
	.4byte _080F11DC @ case 44
	.4byte _080F11DC @ case 45
	.4byte _080F11DC @ case 46
	.4byte _080F11DC @ case 47
	.4byte _080F11DC @ case 48
	.4byte _080F11DC @ case 49
	.4byte _080F11DC @ case 50
	.4byte _080F11DC @ case 51
	.4byte _080F11DC @ case 52
	.4byte _080F11DC @ case 53
	.4byte _080F11DC @ case 54
	.4byte _080F11DC @ case 55
	.4byte _080F11DC @ case 56
	.4byte _080F11DC @ case 57
	.4byte _080F11DC @ case 58
	.4byte _080F11DC @ case 59
	.4byte _080F11DC @ case 60
	.4byte _080F11DC @ case 61
	.4byte _080F11DC @ case 62
	.4byte _080F1268 @ case 63
_080F11DC:
	adds r0, r5, #0
	bl manageSaveData
	bl _080F1D84
_080F11E6:
	ldr r0, _080F1238 @ =0x0202FDC0
	ldrb r1, [r0, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F11F4
	b _080F1396
_080F11F4:
	movs r0, #0
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F1204:
	ldr r0, _080F123C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1214
	cmp r0, #4
	beq _080F1214
	bl _080F1D84
_080F1214:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080F1226
	bl _080F1D84
_080F1226:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F1240
	movs r0, #0xf
	bl _printOptionMessage
	bl _080F1D36
	.align 2, 0
_080F1238: .4byte 0x0202FDC0
_080F123C: .4byte 0x020308D8
_080F1240:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F124A
	b _080F1396
_080F124A:
	movs r0, #3
	bl playSound
	b _080F1492
_080F1252:
	ldr r2, _080F1264 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F125C
	b _080F17C4
_080F125C:
	movs r1, #0x80
	lsls r1, r1, #3
	bl FUN_080f1cfe
	.align 2, 0
_080F1264: .4byte 0x020308D8
_080F1268:
	ldr r0, _080F12B8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1278
	cmp r0, #4
	beq _080F1278
	bl _080F1D84
_080F1278:
	movs r0, #1
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #0xa]
	movs r0, #4
	strb r0, [r5, #3]
_080F1286:
	ldr r6, _080F12B8 @ =0x020308D8
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _080F1296
	cmp r0, #4
	beq _080F1296
	bl _080F1D84
_080F1296:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080F12A8
	bl _080F1D84
_080F12A8:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F12BC
	movs r0, #0x40
	strb r0, [r5, #3]
	bl _080F1D84
	.align 2, 0
_080F12B8: .4byte 0x020308D8
_080F12BC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080F12C6
	b _080F1492
_080F12C6:
	ldr r4, _080F12F4 @ =0x0202FDC0
	ldrb r2, [r4, #6]
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0x10
	bne _080F1300
	ldr r0, _080F12F8 @ =0x0202FE70
	ldr r1, _080F12FC @ =0x0834D06C
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #0x4c]
	bl stage_08021bf4
	movs r0, #0x13
	bl setStageCheckpoint
	ldrh r1, [r6]
	movs r0, #2
	orrs r0, r1
	strh r0, [r6]
	movs r0, #0x19
	strb r0, [r5, #3]
	bl _080F1D84
	.align 2, 0
_080F12F4: .4byte 0x0202FDC0
_080F12F8: .4byte 0x0202FE70
_080F12FC: .4byte 0x0834D06C
_080F1300:
	ldrb r1, [r4, #5]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080F1318
	ldr r0, _080F1314 @ =0x00001305
	bl printOptionMessage
	b _080F1396
	.align 2, 0
_080F1314: .4byte 0x00001305
_080F1318:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F1340
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080F1334
	movs r0, #0x80
	lsls r0, r0, #2
	bl printOptionMessage
	movs r0, #1
	strb r0, [r4, #0xc]
	b _080F1396
_080F1334:
	ldr r0, _080F133C @ =0x00000201
	bl printOptionMessage
	b _080F1396
	.align 2, 0
_080F133C: .4byte 0x00000201
_080F1340:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080F1368
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bhi _080F135C
	ldr r0, _080F1358 @ =0x00000202
	bl printOptionMessage
	strb r6, [r4, #0xc]
	b _080F1396
	.align 2, 0
_080F1358: .4byte 0x00000202
_080F135C:
	ldr r0, _080F1364 @ =0x00000203
	bl printOptionMessage
	b _080F1396
	.align 2, 0
_080F1364: .4byte 0x00000203
_080F1368:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bhi _080F137C
	movs r0, #0x81
	lsls r0, r0, #2
	bl printOptionMessage
	movs r0, #3
	strb r0, [r4, #0xc]
	b _080F1396
_080F137C:
	cmp r0, #3
	bhi _080F1390
	ldr r0, _080F138C @ =0x00000205
	bl printOptionMessage
	movs r0, #4
	strb r0, [r4, #0xc]
	b _080F1396
	.align 2, 0
_080F138C: .4byte 0x00000205
_080F1390:
	ldr r0, _080F13A0 @ =0x00000206
	bl printOptionMessage
_080F1396:
	movs r0, #3
	strb r0, [r5, #3]
	bl _080F1D84
	.align 2, 0
_080F13A0: .4byte 0x00000206
_080F13A4:
	ldr r0, _080F13E4 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F13B4
	cmp r0, #4
	beq _080F13B4
	bl _080F1D84
_080F13B4:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080F13C6
	bl _080F1D84
_080F13C6:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F1488
	ldr r4, _080F13E8 @ =0x0202FDC0
	ldrb r1, [r4, #6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F13EC
	movs r0, #0x13
	strb r0, [r5, #3]
	bl _080F1D84
	.align 2, 0
_080F13E4: .4byte 0x020308D8
_080F13E8: .4byte 0x0202FDC0
_080F13EC:
	movs r0, #0x14
	ands r0, r1
	cmp r0, #4
	bne _080F13FC
	ldr r0, _080F13F8 @ =0x00001344
	b _080F1402
	.align 2, 0
_080F13F8: .4byte 0x00001344
_080F13FC:
	cmp r0, #0x14
	bne _080F1414
	ldr r0, _080F1410 @ =0x00001345
_080F1402:
	bl printOptionMessage
	movs r0, #0x18
	strb r0, [r5, #3]
	bl _080F1D84
	.align 2, 0
_080F1410: .4byte 0x00001345
_080F1414:
	movs r0, #0x10
	bl printOptionMessage
	ldrb r1, [r4, #5]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	asrs r2, r0, #0x1f
	movs r0, #4
	ands r2, r0
	ldrb r0, [r4, #6]
	movs r3, #1
	ands r3, r0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F1440
	adds r0, r3, #3
	adds r0, r2, r0
	b _080F1444
_080F1440:
	adds r0, r2, #0
	orrs r0, r3
_080F1444:
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	ldr r1, _080F1470 @ =0x0202FDC0
	ldrb r3, [r1, #5]
	movs r0, #8
	ands r0, r3
	movs r2, #3
	cmp r0, #0
	beq _080F1458
	movs r2, #6
_080F1458:
	ldrb r0, [r1, #6]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080F1474
	adds r0, r1, #1
	adds r0, r2, r0
	b _080F1476
	.align 2, 0
_080F1470: .4byte 0x0202FDC0
_080F1474:
	adds r0, r2, r1
_080F1476:
	movs r1, #0
	strh r0, [r5, #8]
	ldr r2, _080F1484 @ =0x00000DCC
	adds r0, r5, r2
	str r1, [r0]
	bl _080F1C6C
	.align 2, 0
_080F1484: .4byte 0x00000DCC
_080F1488:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F1492
	b _080F1B00
_080F1492:
	movs r0, #2
	strb r0, [r5, #3]
	bl _080F1D84
_080F149A:
	ldr r0, _080F1528 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F14AA
	cmp r0, #4
	beq _080F14AA
	bl _080F1D84
_080F14AA:
	ldr r3, _080F152C @ =0x00000DCC
	adds r4, r5, r3
	ldr r0, [r4]
	cmp r0, #0
	bne _080F14BC
	adds r0, r5, #4
	bl FUN_080c5d6c
	str r0, [r4]
_080F14BC:
	movs r0, #0x13
	bl _printOptionMessage
	movs r0, #0x3c
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F14CC:
	ldrh r1, [r5, #0xa]
	movs r4, #0xa
	ldrsh r0, [r5, r4]
	cmp r0, #0
	beq _080F14DA
	subs r0, r1, #1
	strh r0, [r5, #0xa]
_080F14DA:
	ldrh r3, [r5, #6]
	movs r6, #6
	ldrsh r0, [r5, r6]
	movs r1, #8
	ldrsh r2, [r5, r1]
	cmp r0, r2
	beq _080F153E
	ldr r0, _080F1530 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F150A
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble _080F1504
	strh r3, [r5, #4]
_080F1504:
	movs r0, #1
	bl playSound
_080F150A:
	ldr r0, _080F1530 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F153E
	ldrh r2, [r5, #4]
	movs r3, #4
	ldrsh r1, [r5, r3]
	movs r4, #6
	ldrsh r0, [r5, r4]
	cmp r1, r0
	bne _080F1534
	ldrh r0, [r5, #8]
	b _080F1536
	.align 2, 0
_080F1528: .4byte 0x020308D8
_080F152C: .4byte 0x00000DCC
_080F1530: .4byte 0x02001EB0
_080F1534:
	subs r0, r2, #1
_080F1536:
	strh r0, [r5, #4]
	movs r0, #1
	bl playSound
_080F153E:
	ldr r0, _080F1588 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F154E
	cmp r0, #4
	beq _080F154E
	bl _080F1D84
_080F154E:
	ldr r0, _080F158C @ =0x0202FE20
	ldr r2, [r0]
	ldr r0, _080F1590 @ =0x083861E8
	movs r6, #4
	ldrsh r3, [r5, r6]
	adds r0, r3, r0
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _080F15A0
	ldr r2, _080F1594 @ =0x08372210
	ldr r1, _080F1598 @ =0x083861F4
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _080F159C @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #2
	movs r2, #0xd
	bl print
	b _080F15B2
	.align 2, 0
_080F1588: .4byte 0x020308D8
_080F158C: .4byte 0x0202FE20
_080F1590: .4byte 0x083861E8
_080F1594: .4byte 0x08372210
_080F1598: .4byte 0x083861F4
_080F159C: .4byte 0x08372AA0
_080F15A0:
	ldr r0, _080F15F0 @ =0x08372210
	adds r0, #0x96
	ldrh r0, [r0]
	ldr r1, _080F15F4 @ =0x08372AA0
	adds r0, r0, r1
	movs r1, #2
	movs r2, #0xd
	bl print
_080F15B2:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080F15BE
	bl _080F1D84
_080F15BE:
	ldr r0, _080F15F8 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F1620
	ldr r0, _080F15FC @ =0x0202FE20
	ldr r2, [r0]
	ldr r1, _080F1600 @ =0x083861E8
	movs r4, #4
	ldrsh r0, [r5, r4]
	adds r0, r0, r1
	adds r1, r3, #0
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _080F1604
	movs r0, #4
	bl playSound
	b _080F1D84
	.align 2, 0
_080F15F0: .4byte 0x08372210
_080F15F4: .4byte 0x08372AA0
_080F15F8: .4byte 0x02001EB0
_080F15FC: .4byte 0x0202FE20
_080F1600: .4byte 0x083861E8
_080F1604:
	movs r0, #2
	bl playSound
	ldr r1, _080F161C @ =0x0838620C
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl printOptionMessage
	b _080F1C6C
	.align 2, 0
_080F161C: .4byte 0x0838620C
_080F1620:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F162A
	b _080F1D84
_080F162A:
	movs r0, #3
	bl playSound
	ldr r1, _080F1640 @ =0x00000DCC
	adds r0, r5, r1
	ldr r0, [r0]
	bl FUN_080c5f98
	movs r0, #0xb
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1640: .4byte 0x00000DCC
_080F1644:
	ldr r0, _080F16B4 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1652
	cmp r0, #4
	beq _080F1652
	b _080F1D84
_080F1652:
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _080F16B8 @ =0x08386224
	movs r2, #4
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl _printOptionMessage
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F166C:
	ldr r4, _080F16B4 @ =0x020308D8
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080F167A
	cmp r0, #4
	beq _080F167A
	b _080F1D84
_080F167A:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080F168A
	b _080F1D84
_080F168A:
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _080F16C8
	ldr r3, _080F16BC @ =0x00000DCC
	adds r0, r5, r3
	ldr r0, [r0]
	bl FUN_080c5f98
	ldr r0, _080F16C0 @ =0x0202FE70
	ldr r1, _080F16C4 @ =0x0834D06C
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #0x18]
	bl stage_08021bf4
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	movs r0, #0xc
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F16B4: .4byte 0x020308D8
_080F16B8: .4byte 0x08386224
_080F16BC: .4byte 0x00000DCC
_080F16C0: .4byte 0x0202FE70
_080F16C4: .4byte 0x0834D06C
_080F16C8:
	movs r3, #1
	ldr r2, _080F1704 @ =0x0202FDC0
	ldrb r1, [r2, #5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F170C
	ldr r0, _080F1708 @ =0x0202FE20
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsrs r1, r2, #2
	adds r4, r3, #0
	bics r4, r1
	adds r1, r4, #0
	lsrs r0, r2, #3
	adds r6, r3, #0
	bics r6, r0
	adds r0, r6, #0
	adds r0, r0, r1
	lsrs r1, r2, #4
	bics r3, r1
	adds r1, r3, #0
	adds r1, r1, r0
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _080F1780
	adds r0, r1, #1
	b _080F1784
	.align 2, 0
_080F1704: .4byte 0x0202FDC0
_080F1708: .4byte 0x0202FE20
_080F170C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080F1740
	ldr r0, _080F1738 @ =0x0202FE20
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	lsrs r0, r1, #7
	lsrs r2, r1, #8
	adds r4, r3, #0
	bics r4, r2
	adds r2, r4, #0
	bics r3, r0
	adds r2, r2, r3
	movs r0, #0x80
	lsls r0, r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080F173C
	adds r0, r2, #1
	lsls r0, r0, #0x10
	b _080F1782
	.align 2, 0
_080F1738: .4byte 0x0202FE20
_080F173C:
	lsls r0, r2, #0x10
	b _080F1782
_080F1740:
	ldrb r1, [r2, #6]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F1786
	ldr r0, _080F177C @ =0x0202FE20
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsrs r1, r2, #0xb
	adds r6, r3, #0
	bics r6, r1
	adds r1, r6, #0
	lsrs r0, r2, #0xc
	adds r4, r3, #0
	bics r4, r0
	adds r0, r4, #0
	adds r0, r0, r1
	lsrs r1, r2, #0xd
	bics r3, r1
	adds r1, r3, #0
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r2, r0
	cmp r2, #0
	bne _080F1780
	adds r0, r1, #1
	lsls r0, r0, #0x10
	b _080F1782
	.align 2, 0
_080F177C: .4byte 0x0202FE20
_080F1780:
	lsls r0, r1, #0x10
_080F1782:
	lsrs r0, r0, #0x10
_080F1784:
	adds r3, r0, #0
_080F1786:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080F1796
	movs r0, #0x12
	bl printOptionMessage
	b _080F1C6C
_080F1796:
	movs r0, #0x11
	bl printOptionMessage
	b _080F1BD4
_080F179E:
	ldr r0, _080F17D0 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F17AC
	cmp r0, #4
	beq _080F17AC
	b _080F1D84
_080F17AC:
	ldr r6, _080F17D4 @ =0x00000DCC
	adds r0, r5, r6
	ldr r0, [r0]
	bl FUN_080c5f98
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F17BC:
	ldr r2, _080F17D0 @ =0x020308D8
	ldrh r4, [r2, #2]
	cmp r4, #0
	beq _080F17D8
_080F17C4:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F1D84
	.align 2, 0
_080F17D0: .4byte 0x020308D8
_080F17D4: .4byte 0x00000DCC
_080F17D8:
	movs r0, #0xf
	bl _printOptionMessage
	strh r4, [r5, #0xa]
	b _080F1D36
_080F17E2:
	ldr r0, _080F1820 @ =0x0202FE60
	ldrb r1, [r0, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F17F0
	b _080F1D84
_080F17F0:
	ldr r1, _080F1824 @ =0x083861E8
	movs r2, #4
	ldrsh r0, [r5, r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r3, _080F1828 @ =0x00006260
	adds r4, r5, r3
	strh r0, [r4]
	ldr r6, _080F182C @ =0x00006270
	adds r0, r5, r6
	bl copyStageState
	ldr r1, _080F1830 @ =0x000064AC
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, _080F1834 @ =0x00006460
	adds r1, r5, r2
	bl copyZeroDetail
	ldrb r0, [r4]
	ldr r3, _080F1838 @ =0x00006410
	adds r1, r5, r3
	b _080F1CF0
	.align 2, 0
_080F1820: .4byte 0x0202FE60
_080F1824: .4byte 0x083861E8
_080F1828: .4byte 0x00006260
_080F182C: .4byte 0x00006270
_080F1830: .4byte 0x000064AC
_080F1834: .4byte 0x00006460
_080F1838: .4byte 0x00006410
_080F183C:
	movs r0, #0x32
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	movs r0, #0xf
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F1854:
	ldr r0, _080F1A3C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1862
	cmp r0, #4
	beq _080F1862
	b _080F1D84
_080F1862:
	movs r4, #0
	movs r2, #0
	ldr r0, _080F1A40 @ =0x0202FE20
	ldr r6, [r0]
	ldr r7, _080F1A44 @ =0x0838623C
	movs r0, #1
	mov ip, r0
_080F1870:
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, r7
	mov r1, ip
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r6, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _080F1894
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	add r1, sp
	strh r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080F1894:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _080F1870
	movs r1, #4
	ldrsh r2, [r5, r1]
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	subs r0, #1
	adds r7, r1, #0
	cmp r2, r0
	bge _080F18C8
	ldr r0, _080F1A48 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F18C8
	movs r0, #1
	bl playSound
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080F18C8:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080F18E8
	ldr r0, _080F1A48 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F18E8
	movs r0, #1
	bl playSound
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
_080F18E8:
	ldrh r3, [r5, #4]
	movs r4, #4
	ldrsh r1, [r5, r4]
	movs r6, #6
	ldrsh r0, [r5, r6]
	adds r2, r3, #0
	cmp r1, r0
	bge _080F18FA
	strh r2, [r5, #6]
_080F18FA:
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r2, #6
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	ble _080F190C
	subs r0, r3, #1
	strh r0, [r5, #6]
_080F190C:
	movs r2, #0
	cmp r7, #0
	ble _080F197E
	ldr r3, _080F1A4C @ =0x08372210
	mov sb, r3
	ldr r4, _080F1A50 @ =0x0838624C
	mov r8, r4
_080F191A:
	lsls r1, r2, #0x10
	asrs r3, r1, #0x10
	movs r6, #6
	ldrsh r0, [r5, r6]
	subs r0, r3, r0
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #2
	bhi _080F1972
	lsls r0, r3, #1
	add r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	ldr r0, _080F1A54 @ =0x08372AA0
	adds r4, r1, r0
	movs r3, #0
	ldr r1, _080F1A3C @ =0x020308D8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _080F1956
	ldrb r0, [r1, #4]
	cmp r0, #1
	bne _080F1958
_080F1956:
	movs r3, #1
_080F1958:
	lsls r0, r3, #3
	subs r0, r0, r3
	movs r1, #0xa
	subs r1, r1, r0
	ldr r0, _080F1A3C @ =0x020308D8
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r2, #2
	ldrb r0, [r0, #5]
	adds r2, r2, r0
	adds r0, r4, #0
	bl print
_080F1972:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r2, r0, #0x10
	cmp r0, r7
	blt _080F191A
_080F197E:
	ldr r0, _080F1A4C @ =0x08372210
	ldrh r1, [r0]
	ldr r0, _080F1A54 @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F1A3C @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F1998
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F199A
_080F1998:
	movs r2, #1
_080F199A:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	movs r6, #4
	ldrsh r2, [r5, r6]
	movs r6, #6
	ldrsh r0, [r5, r6]
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r2, #2
	ldrb r0, [r4, #5]
	adds r2, r2, r0
	adds r0, r3, #0
	bl print
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080F1A2A
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080F19F6
	ldr r3, _080F1A58 @ =0x0810E240
	movs r1, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080F19E0
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F19E2
_080F19E0:
	movs r1, #1
_080F19E2:
	lsls r0, r1, #3
	subs r0, r0, r1
	movs r1, #0x1c
	subs r1, r1, r0
	ldr r0, _080F1A3C @ =0x020308D8
	ldrb r2, [r0, #5]
	adds r2, #2
	adds r0, r3, #0
	bl printUnicodeString
_080F19F6:
	movs r2, #6
	ldrsh r1, [r5, r2]
	asrs r0, r7, #0x10
	subs r0, #2
	cmp r1, r0
	bge _080F1A2A
	ldr r3, _080F1A5C @ =0x0810E244
	movs r2, #0
	ldr r0, _080F1A3C @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F1A16
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F1A18
_080F1A16:
	movs r2, #1
_080F1A18:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #0x1c
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r2, #5
	adds r0, r3, #0
	bl printUnicodeString
_080F1A2A:
	ldrh r0, [r5, #0xa]
	movs r3, #0xa
	ldrsh r4, [r5, r3]
	cmp r4, #0
	beq _080F1A60
	subs r0, #1
	strh r0, [r5, #0xa]
	b _080F1D84
	.align 2, 0
_080F1A3C: .4byte 0x020308D8
_080F1A40: .4byte 0x0202FE20
_080F1A44: .4byte 0x0838623C
_080F1A48: .4byte 0x02001EB0
_080F1A4C: .4byte 0x08372210
_080F1A50: .4byte 0x0838624C
_080F1A54: .4byte 0x08372AA0
_080F1A58: .4byte 0x0810E240
_080F1A5C: .4byte 0x0810E244
_080F1A60:
	ldr r0, _080F1A7C @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F1A80
	movs r0, #3
	bl playSound
	movs r0, #0xf
	bl _printOptionMessage
	strh r4, [r5, #0xa]
	b _080F1D36
	.align 2, 0
_080F1A7C: .4byte 0x02001EB0
_080F1A80:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1A8A
	b _080F1D84
_080F1A8A:
	movs r0, #2
	bl playSound
	movs r4, #4
	ldrsh r0, [r5, r4]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #4]
	b _080F1C6C
_080F1A9E:
	ldr r1, _080F1AF0 @ =0x0838626A
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl _printOptionMessage
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F1AB4:
	ldr r4, _080F1AF4 @ =0x020308D8
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080F1AC2
	cmp r0, #4
	beq _080F1AC2
	b _080F1D84
_080F1AC2:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080F1AD2
	b _080F1D84
_080F1AD2:
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _080F1B00
	ldr r0, _080F1AF8 @ =0x0202FE70
	ldr r1, _080F1AFC @ =0x0834D06C
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #0x20]
	bl stage_08021bf4
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	b _080F1C6C
	.align 2, 0
_080F1AF0: .4byte 0x0838626A
_080F1AF4: .4byte 0x020308D8
_080F1AF8: .4byte 0x0202FE70
_080F1AFC: .4byte 0x0834D06C
_080F1B00:
	movs r0, #0xd
	strb r0, [r5, #3]
	b _080F1D84
_080F1B06:
	ldr r0, _080F1B44 @ =0x0202FE60
	ldrb r1, [r0, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F1B14
	b _080F1D84
_080F1B14:
	ldr r1, _080F1B48 @ =0x0838623C
	movs r2, #4
	ldrsh r0, [r5, r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r3, _080F1B4C @ =0x00006260
	adds r4, r5, r3
	strh r0, [r4]
	ldr r6, _080F1B50 @ =0x00006270
	adds r0, r5, r6
	bl copyStageState
	ldr r1, _080F1B54 @ =0x000064AC
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, _080F1B58 @ =0x00006460
	adds r1, r5, r2
	bl copyZeroDetail
	ldrb r0, [r4]
	ldr r3, _080F1B5C @ =0x00006410
	adds r1, r5, r3
	b _080F1CF0
	.align 2, 0
_080F1B44: .4byte 0x0202FE60
_080F1B48: .4byte 0x0838623C
_080F1B4C: .4byte 0x00006260
_080F1B50: .4byte 0x00006270
_080F1B54: .4byte 0x000064AC
_080F1B58: .4byte 0x00006460
_080F1B5C: .4byte 0x00006410
_080F1B60:
	movs r0, #0x10
	bl printOptionMessage
	ldr r1, _080F1B90 @ =0x0202FDC0
	ldrb r2, [r1, #5]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	asrs r3, r0, #0x1f
	movs r0, #4
	ands r3, r0
	ldrb r0, [r1, #6]
	movs r1, #1
	ands r1, r0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080F1B94
	adds r0, r1, #3
	adds r0, r3, r0
	b _080F1B98
	.align 2, 0
_080F1B90: .4byte 0x0202FDC0
_080F1B94:
	adds r0, r3, #0
	orrs r0, r1
_080F1B98:
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	ldr r1, _080F1BC4 @ =0x0202FDC0
	ldrb r3, [r1, #5]
	movs r0, #8
	ands r0, r3
	movs r2, #3
	cmp r0, #0
	beq _080F1BAC
	movs r2, #6
_080F1BAC:
	ldrb r0, [r1, #6]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080F1BC8
	adds r0, r1, #1
	adds r1, r2, r0
	b _080F1BCA
	.align 2, 0
_080F1BC4: .4byte 0x0202FDC0
_080F1BC8:
	adds r1, r2, r1
_080F1BCA:
	movs r0, #0
	strh r1, [r5, #8]
	ldr r4, _080F1BDC @ =0x00000DCC
	adds r1, r5, r4
	str r0, [r1]
_080F1BD4:
	movs r0, #6
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1BDC: .4byte 0x00000DCC
_080F1BE0:
	ldr r0, _080F1BF8 @ =0x0202FDC0
	ldrb r1, [r0, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F1BFC
	movs r0, #0x2c
	bl printOptionMessage
	movs r0, #0x15
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1BF8: .4byte 0x0202FDC0
_080F1BFC:
	ldr r0, _080F1C40 @ =0x0202FE70
	ldr r1, _080F1C44 @ =0x0834D06C
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #0x50]
	bl stage_08021bf4
	ldr r2, _080F1C48 @ =0x020308D8
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F1C18:
	ldr r0, _080F1C4C @ =0x0202FE60
	ldrb r0, [r0, #0x12]
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	beq _080F1C26
	b _080F1D84
_080F1C26:
	ldr r2, _080F1C50 @ =0x0202FDC0
	ldrb r1, [r2, #6]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x2d
	bl _printOptionMessage
	strh r4, [r5, #0xa]
	movs r0, #0x16
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1C40: .4byte 0x0202FE70
_080F1C44: .4byte 0x0834D06C
_080F1C48: .4byte 0x020308D8
_080F1C4C: .4byte 0x0202FE60
_080F1C50: .4byte 0x0202FDC0
_080F1C54:
	ldr r0, _080F1C74 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1C62
	cmp r0, #4
	beq _080F1C62
	b _080F1D84
_080F1C62:
	movs r0, #0x2d
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #0xa]
_080F1C6C:
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1C74: .4byte 0x020308D8
_080F1C78:
	ldr r4, _080F1CB4 @ =0x020308D8
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080F1C86
	cmp r0, #4
	beq _080F1C86
	b _080F1D84
_080F1C86:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	beq _080F1D84
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _080F1D2C
	ldr r0, _080F1CB8 @ =0x0202FE70
	ldr r1, _080F1CBC @ =0x0834D06C
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #0x18]
	bl stage_08021bf4
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	movs r0, #0x17
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1CB4: .4byte 0x020308D8
_080F1CB8: .4byte 0x0202FE70
_080F1CBC: .4byte 0x0834D06C
_080F1CC0:
	ldr r0, _080F1D08 @ =0x0202FE60
	ldrb r1, [r0, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1D84
	ldr r6, _080F1D0C @ =0x00006260
	adds r4, r5, r6
	movs r0, #0x10
	strh r0, [r4]
	ldr r1, _080F1D10 @ =0x00006270
	adds r0, r5, r1
	bl copyStageState
	ldr r2, _080F1D14 @ =0x000064AC
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, _080F1D18 @ =0x00006460
	adds r1, r5, r3
	bl copyZeroDetail
	ldrb r0, [r4]
	ldr r6, _080F1D1C @ =0x00006410
	adds r1, r5, r6
_080F1CF0:
	bl initMapProps
	ldrb r0, [r4]
	bl loadNewMap
	movs r1, #0xc0
	lsls r1, r1, #2
FUN_080f1cfe:
	adds r0, r5, #0
	bl FUN_080ee000
	b _080F1D84
	.align 2, 0
_080F1D08: .4byte 0x0202FE60
_080F1D0C: .4byte 0x00006260
_080F1D10: .4byte 0x00006270
_080F1D14: .4byte 0x000064AC
_080F1D18: .4byte 0x00006460
_080F1D1C: .4byte 0x00006410
_080F1D20:
	ldr r0, _080F1D3C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1D2C
	cmp r0, #4
	bne _080F1D84
_080F1D2C:
	movs r0, #0xf
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #0xa]
_080F1D36:
	movs r0, #5
	strb r0, [r5, #3]
	b _080F1D84
	.align 2, 0
_080F1D3C: .4byte 0x020308D8
_080F1D40:
	ldr r0, _080F1D94 @ =0x0202FE60
	ldrb r1, [r0, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1D84
	ldr r0, _080F1D98 @ =0x00006260
	adds r4, r5, r0
	movs r0, #0xf
	strh r0, [r4]
	ldr r1, _080F1D9C @ =0x00006270
	adds r0, r5, r1
	bl copyStageState
	ldr r2, _080F1DA0 @ =0x000064AC
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, _080F1DA4 @ =0x00006460
	adds r1, r5, r3
	bl copyZeroDetail
	ldrb r0, [r4]
	ldr r6, _080F1DA8 @ =0x00006410
	adds r1, r5, r6
	bl initMapProps
	ldrb r0, [r4]
	bl loadNewMap
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r5, #0
	bl FUN_080ee000
_080F1D84:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F1D94: .4byte 0x0202FE60
_080F1D98: .4byte 0x00006260
_080F1D9C: .4byte 0x00006270
_080F1DA0: .4byte 0x000064AC
_080F1DA4: .4byte 0x00006460
_080F1DA8: .4byte 0x00006410

	thumb_func_start chatWithCerveau
chatWithCerveau: @ 0x080F1DAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #6
	bhi _080F1DE0
	lsls r0, r0, #2
	ldr r1, _080F1DC0 @ =_080F1DC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F1DC0: .4byte _080F1DC4
_080F1DC4: @ jump table
	.4byte _080F1E3C @ case 0
	.4byte _080F1E4C @ case 1
	.4byte _080F1F4A @ case 2
	.4byte _080F1F64 @ case 3
	.4byte _080F1F8E @ case 4
	.4byte _080F1FB0 @ case 5
	.4byte _080F1FC8 @ case 6
_080F1DE0:
	ldr r2, _080F1E24 @ =0x020308D8
	ldrh r1, [r2, #2]
	cmp r1, #0
	beq _080F1DEE
	cmp r1, #4
	beq _080F1DEE
	b _080F1FDA
_080F1DEE:
	movs r3, #0x16
	ldrsh r0, [r2, r3]
	cmp r0, #9
	bne _080F1E38
	cmp r1, #0
	beq _080F1DFC
	b _080F1F6C
_080F1DFC:
	ldr r2, _080F1E28 @ =0x02030310
	ldr r0, _080F1E2C @ =0x00000594
	adds r2, r2, r0
	ldr r0, _080F1E30 @ =0x08372210
	movs r1, #0xdf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080F1E34 @ =0x08372AA0
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x5a
	bl printMessage
	movs r0, #0x5b
	bl getDiskInStageRun
	b _080F1FDA
	.align 2, 0
_080F1E24: .4byte 0x020308D8
_080F1E28: .4byte 0x02030310
_080F1E2C: .4byte 0x00000594
_080F1E30: .4byte 0x08372210
_080F1E34: .4byte 0x08372AA0
_080F1E38:
	movs r0, #0
	strb r0, [r4, #3]
_080F1E3C:
	movs r0, #0x66
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F1E4C:
	ldr r0, _080F1E78 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F1E5A
	cmp r0, #4
	beq _080F1E5A
	b _080F1FDA
_080F1E5A:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080F1E6A
	b _080F1FDA
_080F1E6A:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F1E7C
	movs r0, #3
	b _080F1FD8
	.align 2, 0
_080F1E78: .4byte 0x020308D8
_080F1E7C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F1F40
	ldr r5, _080F1E9C @ =0x0202FDC0
	ldrb r1, [r5, #5]
	movs r6, #4
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080F1EA4
	ldr r0, _080F1EA0 @ =0x00000207
	bl printOptionMessage
	b _080F1FD6
	.align 2, 0
_080F1E9C: .4byte 0x0202FDC0
_080F1EA0: .4byte 0x00000207
_080F1EA4:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F1EF4
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080F1ED4
	movs r0, #0x82
	lsls r0, r0, #2
	bl printOptionMessage
	ldr r0, _080F1ED0 @ =0x0203DC50
	ldr r0, [r0]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf
	ands r0, r1
	lsrs r0, r0, #3
	cmp r0, #0
	bne _080F1EDE
	movs r0, #1
	strb r0, [r5, #0xd]
	b _080F1FD6
	.align 2, 0
_080F1ED0: .4byte 0x0203DC50
_080F1ED4:
	cmp r0, #1
	bne _080F1EE8
	ldr r0, _080F1EE4 @ =0x00000209
	bl printOptionMessage
_080F1EDE:
	movs r0, #2
	strb r0, [r5, #0xd]
	b _080F1FD6
	.align 2, 0
_080F1EE4: .4byte 0x00000209
_080F1EE8:
	ldr r0, _080F1EF0 @ =0x0000020E
	bl printOptionMessage
	b _080F1FD6
	.align 2, 0
_080F1EF0: .4byte 0x0000020E
_080F1EF4:
	ldrb r1, [r5, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1F20
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	bhi _080F1F14
	ldr r0, _080F1F10 @ =0x0000020A
	bl printOptionMessage
	movs r0, #3
	strb r0, [r5, #0xd]
	b _080F1FD6
	.align 2, 0
_080F1F10: .4byte 0x0000020A
_080F1F14:
	ldr r0, _080F1F1C @ =0x0000020B
	bl printOptionMessage
	b _080F1FD6
	.align 2, 0
_080F1F1C: .4byte 0x0000020B
_080F1F20:
	ldrb r0, [r5, #0xd]
	cmp r0, #3
	bhi _080F1F32
	movs r0, #0x83
	lsls r0, r0, #2
	bl printOptionMessage
	strb r6, [r5, #0xd]
	b _080F1FD6
_080F1F32:
	ldr r0, _080F1F3C @ =0x0000020D
	bl printOptionMessage
	b _080F1FD6
	.align 2, 0
_080F1F3C: .4byte 0x0000020D
_080F1F40:
	movs r0, #3
	bl playSound
	movs r0, #2
	b _080F1FD8
_080F1F4A:
	ldr r2, _080F1F60 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _080F1F6C
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F1FDA
	.align 2, 0
_080F1F60: .4byte 0x020308D8
_080F1F64:
	ldr r2, _080F1F78 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F1F7C
_080F1F6C:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F1FDA
	.align 2, 0
_080F1F78: .4byte 0x020308D8
_080F1F7C:
	ldr r0, _080F1FAC @ =0x0202FE60
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #2
	str r1, [r0]
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F1F8E:
	ldr r0, _080F1FAC @ =0x0202FE60
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080F1FDA
	adds r0, r4, #0
	bl FUN_080ee378
	adds r0, r4, #0
	movs r1, #2
	bl FUN_080ee000
	b _080F1FDA
	.align 2, 0
_080F1FAC: .4byte 0x0202FE60
_080F1FB0:
	adds r0, r4, #0
	bl FUN_080ee42c
	ldr r0, _080F1FE0 @ =0x0202FE60
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #1
	str r1, [r0]
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F1FC8:
	ldr r0, _080F1FE0 @ =0x0202FE60
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080F1FDA
_080F1FD6:
	movs r0, #0xff
_080F1FD8:
	strb r0, [r4, #3]
_080F1FDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F1FE0: .4byte 0x0202FE60

	thumb_func_start FUN_080f1fe4
FUN_080f1fe4: @ 0x080F1FE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #3
	beq _080F2084
	cmp r0, #3
	bgt _080F2000
	cmp r0, #1
	beq _080F2026
	cmp r0, #1
	bgt _080F203E
	cmp r0, #0
	beq _080F201A
	b _080F2012
_080F2000:
	cmp r0, #0x77
	beq _080F20B8
	cmp r0, #0x77
	bgt _080F200E
	cmp r0, #4
	beq _080F2094
	b _080F2012
_080F200E:
	cmp r0, #0x7c
	beq _080F20D0
_080F2012:
	adds r0, r4, #0
	bl manageSaveData
	b _080F20E6
_080F201A:
	ldr r0, _080F2064 @ =0x00001301
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2026:
	ldr r0, _080F2068 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2032
	cmp r0, #4
	bne _080F20E6
_080F2032:
	ldr r0, _080F206C @ =0x00001302
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F203E:
	ldr r0, _080F2068 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F204A
	cmp r0, #4
	bne _080F20E6
_080F204A:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F20E6
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F2070
	movs r0, #0x70
	b _080F20E4
	.align 2, 0
_080F2064: .4byte 0x00001301
_080F2068: .4byte 0x020308D8
_080F206C: .4byte 0x00001302
_080F2070:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F207C
	movs r0, #0x7c
	b _080F20E4
_080F207C:
	movs r0, #4
	bl playSound
	b _080F20E6
_080F2084:
	ldr r0, _080F20A8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2090
	cmp r0, #4
	bne _080F20E6
_080F2090:
	movs r0, #4
	strb r0, [r4, #3]
_080F2094:
	ldr r2, _080F20A8 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F20AC
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F20E6
	.align 2, 0
_080F20A8: .4byte 0x020308D8
_080F20AC:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F20E6
_080F20B8:
	ldr r0, _080F20C8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F20C4
	cmp r0, #4
	bne _080F20E6
_080F20C4:
	ldr r0, _080F20CC @ =0x00001303
	b _080F20DE
	.align 2, 0
_080F20C8: .4byte 0x020308D8
_080F20CC: .4byte 0x00001303
_080F20D0:
	ldr r0, _080F20EC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F20DC
	cmp r0, #4
	bne _080F20E6
_080F20DC:
	ldr r0, _080F20F0 @ =0x00001304
_080F20DE:
	bl printOptionMessage
	movs r0, #3
_080F20E4:
	strb r0, [r4, #3]
_080F20E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F20EC: .4byte 0x020308D8
_080F20F0: .4byte 0x00001304

	thumb_func_start selectMission
selectMission: @ 0x080F20F4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0xb
	bhi _080F213C
	lsls r0, r0, #2
	ldr r1, _080F2108 @ =_080F210C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F2108: .4byte _080F210C
_080F210C: @ jump table
	.4byte _080F2144 @ case 0
	.4byte _080F2150 @ case 1
	.4byte _080F2168 @ case 2
	.4byte _080F219C @ case 3
	.4byte _080F21AE @ case 4
	.4byte _080F213C @ case 5
	.4byte _080F213C @ case 6
	.4byte _080F213C @ case 7
	.4byte _080F213C @ case 8
	.4byte _080F213C @ case 9
	.4byte _080F213C @ case 10
	.4byte _080F21D0 @ case 11
_080F213C:
	adds r0, r4, #0
	bl transportalChatScript
	b _080F21E6
_080F2144:
	ldr r0, _080F218C @ =0x0000130D
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2150:
	ldr r0, _080F2190 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F215C
	cmp r0, #4
	bne _080F21E6
_080F215C:
	ldr r0, _080F2194 @ =0x0000130E
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2168:
	ldr r0, _080F2190 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2174
	cmp r0, #4
	bne _080F21E6
_080F2174:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F21E6
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _080F2198
	movs r0, #0x12
	b _080F21E4
	.align 2, 0
_080F218C: .4byte 0x0000130D
_080F2190: .4byte 0x020308D8
_080F2194: .4byte 0x0000130E
_080F2198:
	movs r0, #0xb
	b _080F21E4
_080F219C:
	ldr r0, _080F21C0 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F21A8
	cmp r0, #4
	bne _080F21E6
_080F21A8:
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F21AE:
	ldr r2, _080F21C0 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F21C4
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F21E6
	.align 2, 0
_080F21C0: .4byte 0x020308D8
_080F21C4:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F21E6
_080F21D0:
	ldr r0, _080F21EC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F21DC
	cmp r0, #4
	bne _080F21E6
_080F21DC:
	ldr r0, _080F21F0 @ =0x0000130F
	bl printOptionMessage
	movs r0, #3
_080F21E4:
	strb r0, [r4, #3]
_080F21E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F21EC: .4byte 0x020308D8
_080F21F0: .4byte 0x0000130F

	thumb_func_start linkMMBN4
linkMMBN4: @ 0x080F21F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #3]
	cmp r0, #0x15
	bls _080F2200
	b _080F2616
_080F2200:
	lsls r0, r0, #2
	ldr r1, _080F220C @ =_080F2210
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F220C: .4byte _080F2210
_080F2210: @ jump table
	.4byte _080F2268 @ case 0
	.4byte _080F2274 @ case 1
	.4byte _080F22AE @ case 2
	.4byte _080F2332 @ case 3
	.4byte _080F2346 @ case 4
	.4byte _080F2374 @ case 5
	.4byte _080F238E @ case 6
	.4byte _080F23AC @ case 7
	.4byte _080F23F8 @ case 8
	.4byte _080F2424 @ case 9
	.4byte _080F2474 @ case 10
	.4byte _080F248A @ case 11
	.4byte _080F24A0 @ case 12
	.4byte _080F24AC @ case 13
	.4byte _080F24D8 @ case 14
	.4byte _080F24F0 @ case 15
	.4byte _080F252C @ case 16
	.4byte _080F254C @ case 17
	.4byte _080F2564 @ case 18
	.4byte _080F25AC @ case 19
	.4byte _080F25C4 @ case 20
	.4byte _080F2602 @ case 21
_080F2268:
	movs r0, #0x67
	bl printOptionMessage
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F2274:
	ldr r0, _080F22EC @ =0x020308D8
	ldrh r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #3
	bne _080F2292
	ldr r0, _080F22F0 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F2292
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
_080F2292:
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F229E
	cmp r0, #4
	beq _080F229E
	b _080F2616
_080F229E:
	movs r0, #0x68
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F22AE:
	ldr r0, _080F22EC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F22BC
	cmp r0, #4
	beq _080F22BC
	b _080F2616
_080F22BC:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080F22CC
	b _080F2616
_080F22CC:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F231C
	ldr r2, _080F22F4 @ =0x0202FDC0
	ldrb r1, [r2, #5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F22F8
	movs r0, #0xa3
	lsls r0, r0, #2
	bl printOptionMessage
	b _080F2612
	.align 2, 0
_080F22EC: .4byte 0x020308D8
_080F22F0: .4byte 0x02001EB0
_080F22F4: .4byte 0x0202FDC0
_080F22F8:
	ldrb r1, [r2, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F2310
	ldr r0, _080F230C @ =0x0000028D
	bl printOptionMessage
	b _080F2612
	.align 2, 0
_080F230C: .4byte 0x0000028D
_080F2310:
	ldr r0, _080F2318 @ =0x0000028E
	bl printOptionMessage
	b _080F2612
	.align 2, 0
_080F2318: .4byte 0x0000028E
_080F231C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F2328
	movs r0, #5
	b _080F2614
_080F2328:
	movs r0, #3
	bl playSound
	movs r0, #3
	b _080F2614
_080F2332:
	ldr r0, _080F2358 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2340
	cmp r0, #4
	beq _080F2340
	b _080F2616
_080F2340:
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F2346:
	ldr r2, _080F2358 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F235C
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F2616
	.align 2, 0
_080F2358: .4byte 0x020308D8
_080F235C:
	ldr r0, _080F2370 @ =0x02030B60
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, #0
	bl FUN_080ee000
	b _080F2616
	.align 2, 0
_080F2370: .4byte 0x02030B60
_080F2374:
	ldr r0, _080F23D8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2382
	cmp r0, #4
	beq _080F2382
	b _080F2616
_080F2382:
	movs r0, #0x69
	bl printOptionMessage
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F238E:
	ldr r0, _080F23D8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F239C
	cmp r0, #4
	beq _080F239C
	b _080F2616
_080F239C:
	movs r0, #0x6a
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F23AC:
	ldr r0, _080F23D8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F23BA
	cmp r0, #4
	beq _080F23BA
	b _080F2616
_080F23BA:
	adds r0, r5, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080F23CA
	b _080F2616
_080F23CA:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F23DC
	ldrb r0, [r5, #3]
	adds r0, #1
	b _080F2614
	.align 2, 0
_080F23D8: .4byte 0x020308D8
_080F23DC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F23E6
	b _080F2612
_080F23E6:
	movs r0, #3
	bl playSound
	ldr r1, _080F23F4 @ =0x02030B60
	movs r0, #1
	str r0, [r1, #0xc]
	b _080F2614
	.align 2, 0
_080F23F4: .4byte 0x02030B60
_080F23F8:
	ldr r0, _080F241C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2406
	cmp r0, #4
	beq _080F2406
	b _080F2616
_080F2406:
	movs r0, #0x6b
	bl _printOptionMessage
	ldr r1, _080F2420 @ =0x02030B60
	movs r0, #0
	str r0, [r1, #0xc]
	bl sub_0800104C
	ldrb r0, [r5, #3]
	adds r0, #1
	b _080F2614
	.align 2, 0
_080F241C: .4byte 0x020308D8
_080F2420: .4byte 0x02030B60
_080F2424:
	ldr r0, _080F2444 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F244C
	movs r0, #3
	bl playSound
	bl SIO_FUN_0800244c
	ldr r1, _080F2448 @ =0x02030B60
	movs r0, #1
	str r0, [r1, #0xc]
	b _080F2614
	.align 2, 0
_080F2444: .4byte 0x02001EB0
_080F2448: .4byte 0x02030B60
_080F244C:
	bl FUN_08001134
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080F245A
	b _080F2616
_080F245A:
	cmp r4, #2
	bne _080F2462
	movs r0, #0xc
	b _080F2614
_080F2462:
	cmp r4, #4
	bne _080F246A
	movs r0, #0xa
	b _080F2614
_080F246A:
	cmp r4, #0x10
	beq _080F2470
	b _080F2616
_080F2470:
	movs r0, #0xa
	b _080F2614
_080F2474:
	movs r0, #4
	bl playSound
	movs r0, #0x6d
	bl printOptionMessage
	bl SIO_FUN_0800244c
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F248A:
	ldr r0, _080F249C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _080F2494
	b _080F2612
_080F2494:
	cmp r0, #4
	beq _080F249A
	b _080F2616
_080F249A:
	b _080F2612
	.align 2, 0
_080F249C: .4byte 0x020308D8
_080F24A0:
	movs r0, #0x6c
	bl _printOptionMessage
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F24AC:
	bl FUN_08001134
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl FUN_08000fb8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F24C6
	bl SIO_FUN_0800244c
	movs r0, #0xe
	b _080F2614
_080F24C6:
	cmp r4, #4
	bne _080F24CE
	movs r0, #0xa
	b _080F2614
_080F24CE:
	cmp r4, #0x10
	beq _080F24D4
	b _080F2616
_080F24D4:
	movs r0, #0xa
	b _080F2614
_080F24D8:
	bl FUN_08001098
	ldr r1, _080F24E8 @ =0x02030B54
	ldr r0, _080F24EC @ =0x020021B0
	ldr r0, [r0, #0x40]
	str r0, [r1]
	movs r0, #0xf
	b _080F2614
	.align 2, 0
_080F24E8: .4byte 0x02030B54
_080F24EC: .4byte 0x020021B0
_080F24F0:
	bl FUN_08001154
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080F24FE
	b _080F2616
_080F24FE:
	cmp r4, #1
	bne _080F2520
	ldr r0, _080F2518 @ =0x020021B0
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _080F2514
	ldr r0, _080F251C @ =0x020014C0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _080F2514
	b _080F2616
_080F2514:
	movs r0, #0x10
	b _080F2614
	.align 2, 0
_080F2518: .4byte 0x020021B0
_080F251C: .4byte 0x020014C0
_080F2520:
	cmp r4, #2
	bne _080F2528
	movs r0, #0xa
	b _080F2614
_080F2528:
	movs r0, #0xa
	b _080F2614
_080F252C:
	bl FUN_080011bc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080F2616
	cmp r4, #1
	bne _080F2540
	movs r0, #0x11
	b _080F2614
_080F2540:
	cmp r4, #2
	bne _080F2548
	movs r0, #0xa
	b _080F2614
_080F2548:
	movs r0, #0xf
	b _080F2614
_080F254C:
	bl FUN_08001210
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080F2616
	cmp r4, #1
	bne _080F2560
	movs r0, #0x12
	b _080F2614
_080F2560:
	movs r0, #0xa
	b _080F2614
_080F2564:
	bl FUN_08001264
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080F2616
	cmp r4, #1
	bne _080F25A8
	movs r2, #0
	ldr r3, _080F259C @ =0x020021B0
	ldr r1, [r3, #0x40]
	ldr r0, _080F25A0 @ =0x000032DA
	cmp r1, r0
	beq _080F2586
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_080F2586:
	strh r2, [r5, #4]
	ldr r0, _080F25A4 @ =0x020014C0
	ldrh r1, [r0, #0x14]
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r3, #0x40]
	bl sram_08008368
	movs r0, #0x13
	b _080F2614
	.align 2, 0
_080F259C: .4byte 0x020021B0
_080F25A0: .4byte 0x000032DA
_080F25A4: .4byte 0x020014C0
_080F25A8:
	movs r0, #0xa
	b _080F2614
_080F25AC:
	bl FUN_08001298
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080F2616
	cmp r4, #1
	bne _080F25C0
	movs r0, #0x14
	b _080F2614
_080F25C0:
	movs r0, #0x14
	b _080F2614
_080F25C4:
	movs r0, #4
	ldrsh r3, [r5, r0]
	movs r2, #0
	ldr r0, _080F25E8 @ =0x020021B0
	ldr r1, [r0, #0x40]
	ldr r0, _080F25EC @ =0x000032DA
	cmp r1, r0
	beq _080F25DA
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_080F25DA:
	cmp r3, r2
	beq _080F25F0
	movs r0, #0x6e
	bl printOptionMessage
	b _080F25F6
	.align 2, 0
_080F25E8: .4byte 0x020021B0
_080F25EC: .4byte 0x000032DA
_080F25F0:
	movs r0, #0x6f
	bl printOptionMessage
_080F25F6:
	movs r0, #6
	bl playSound
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
_080F2602:
	ldr r0, _080F261C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F260E
	cmp r0, #4
	bne _080F2616
_080F260E:
	bl SIO_FUN_0800244c
_080F2612:
	movs r0, #1
_080F2614:
	strb r0, [r5, #3]
_080F2616:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F261C: .4byte 0x020308D8

	thumb_func_start searchSunkenLibraryData
searchSunkenLibraryData: @ 0x080F2620
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	ldrb r0, [r6, #3]
	cmp r0, #9
	bls _080F2636
	b _080F2BF8
_080F2636:
	lsls r0, r0, #2
	ldr r1, _080F2640 @ =_080F2644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F2640: .4byte _080F2644
_080F2644: @ jump table
	.4byte _080F266C @ case 0
	.4byte _080F26FE @ case 1
	.4byte _080F2724 @ case 2
	.4byte _080F29AC @ case 3
	.4byte _080F29E8 @ case 4
	.4byte _080F2A18 @ case 5
	.4byte _080F2A98 @ case 6
	.4byte _080F2AF0 @ case 7
	.4byte _080F2B20 @ case 8
	.4byte _080F2BD8 @ case 9
_080F266C:
	ldr r2, _080F26B4 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F2676
	b _080F29F0
_080F2676:
	ldr r7, _080F26B8 @ =0x0000FFFF
	movs r3, #0
	ldr r0, _080F26BC @ =0x08386288
	mov sl, r0
	ldr r0, _080F26C0 @ =0x0203DC50
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _080F26C4 @ =0x08386290
	mov sb, r1
_080F2688:
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	add r0, sb
	ldrb r2, [r0]
	lsrs r0, r2, #2
	add r0, r8
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	movs r0, #3
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	adds r5, r3, #0
	cmp r1, #0
	bne _080F26C8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	b _080F26CA
	.align 2, 0
_080F26B4: .4byte 0x020308D8
_080F26B8: .4byte 0x0000FFFF
_080F26BC: .4byte 0x08386288
_080F26C0: .4byte 0x0203DC50
_080F26C4: .4byte 0x08386290
_080F26C8:
	lsls r0, r4, #0x10
_080F26CA:
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080F2688
	lsls r0, r7, #0x10
	asrs r0, r0, #0xf
	add r0, sl
	ldrh r0, [r0]
	bl printOptionMessage
	movs r0, #0x97
	movs r1, #0
	bl loadBeatPalette
	movs r0, #0x98
	movs r1, #0
	bl loadBeatPalette
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F26FE:
	ldr r0, _080F2918 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F270C
	cmp r0, #4
	beq _080F270C
	b _080F2BF8
_080F270C:
	ldr r0, _080F291C @ =0x00000F07
	bl _printOptionMessage
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	strh r0, [r6, #8]
	movs r0, #0xf
	strh r0, [r6, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F2724:
	ldr r0, _080F2918 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2732
	cmp r0, #4
	beq _080F2732
	b _080F2BF8
_080F2732:
	movs r7, #0
	movs r3, #0
	ldr r0, _080F2920 @ =0x0203DC50
	ldr r5, [r0]
	ldr r0, _080F2924 @ =0x08386290
	mov r8, r0
_080F273E:
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	mov r1, r8
	adds r0, r4, r1
	ldrb r2, [r0]
	lsrs r0, r2, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	movs r0, #3
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080F2770
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	add r1, sp
	strh r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080F2770:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080F273E
	movs r5, #4
	ldrsh r2, [r6, r5]
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	subs r0, #1
	adds r7, r1, #0
	cmp r2, r0
	bge _080F27A4
	ldr r0, _080F2928 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F27A4
	movs r0, #1
	bl playSound
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_080F27A4:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	ble _080F27C4
	ldr r0, _080F2928 @ =0x02001EB0
	ldrh r1, [r0, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F27C4
	movs r0, #1
	bl playSound
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
_080F27C4:
	ldrh r3, [r6, #4]
	movs r2, #4
	ldrsh r1, [r6, r2]
	movs r5, #6
	ldrsh r0, [r6, r5]
	adds r2, r3, #0
	cmp r1, r0
	bge _080F27D6
	strh r2, [r6, #6]
_080F27D6:
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r2, #6
	ldrsh r0, [r6, r2]
	adds r0, #1
	cmp r1, r0
	ble _080F27E8
	subs r0, r3, #1
	strh r0, [r6, #6]
_080F27E8:
	movs r3, #0
	cmp r7, #0
	ble _080F285A
	ldr r5, _080F292C @ =0x08372210
	mov sb, r5
	ldr r0, _080F2930 @ =0x08386294
	mov r8, r0
_080F27F6:
	lsls r1, r3, #0x10
	asrs r3, r1, #0x10
	movs r2, #6
	ldrsh r0, [r6, r2]
	subs r0, r3, r0
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x18
	adds r5, r1, #0
	cmp r2, #2
	bhi _080F284E
	lsls r0, r3, #1
	add r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	ldr r0, _080F2934 @ =0x08372AA0
	adds r4, r1, r0
	movs r3, #0
	ldr r1, _080F2918 @ =0x020308D8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _080F2832
	ldrb r0, [r1, #4]
	cmp r0, #1
	bne _080F2834
_080F2832:
	movs r3, #1
_080F2834:
	lsls r0, r3, #3
	subs r0, r0, r3
	movs r1, #0xa
	subs r1, r1, r0
	ldr r0, _080F2918 @ =0x020308D8
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r2, #2
	ldrb r0, [r0, #5]
	adds r2, r2, r0
	adds r0, r4, #0
	bl print
_080F284E:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r3, r0, #0x10
	cmp r0, r7
	blt _080F27F6
_080F285A:
	ldr r0, _080F292C @ =0x08372210
	ldrh r1, [r0]
	ldr r0, _080F2934 @ =0x08372AA0
	adds r3, r1, r0
	movs r2, #0
	ldr r0, _080F2918 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F2874
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F2876
_080F2874:
	movs r2, #1
_080F2876:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #8
	subs r1, r1, r0
	movs r5, #4
	ldrsh r2, [r6, r5]
	movs r5, #6
	ldrsh r0, [r6, r5]
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r2, #2
	ldrb r0, [r4, #5]
	adds r2, r2, r0
	adds r0, r3, #0
	bl print
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080F2906
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080F28D2
	ldr r3, _080F2938 @ =0x0810E240
	movs r1, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080F28BC
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F28BE
_080F28BC:
	movs r1, #1
_080F28BE:
	lsls r0, r1, #3
	subs r0, r0, r1
	movs r1, #0x1c
	subs r1, r1, r0
	ldr r0, _080F2918 @ =0x020308D8
	ldrb r2, [r0, #5]
	adds r2, #2
	adds r0, r3, #0
	bl printUnicodeString
_080F28D2:
	movs r2, #6
	ldrsh r1, [r6, r2]
	asrs r0, r7, #0x10
	subs r0, #2
	cmp r1, r0
	bge _080F2906
	ldr r3, _080F293C @ =0x0810E244
	movs r2, #0
	ldr r0, _080F2918 @ =0x020308D8
	ldrb r1, [r0, #6]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F28F2
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _080F28F4
_080F28F2:
	movs r2, #1
_080F28F4:
	lsls r0, r2, #3
	subs r0, r0, r2
	movs r1, #0x1c
	subs r1, r1, r0
	ldrb r2, [r4, #5]
	adds r2, #5
	adds r0, r3, #0
	bl printUnicodeString
_080F2906:
	ldrh r1, [r6, #0xa]
	movs r5, #0xa
	ldrsh r0, [r6, r5]
	cmp r0, #0
	beq _080F2940
	subs r0, r1, #1
	strh r0, [r6, #0xa]
	b _080F2BF8
	.align 2, 0
_080F2918: .4byte 0x020308D8
_080F291C: .4byte 0x00000F07
_080F2920: .4byte 0x0203DC50
_080F2924: .4byte 0x08386290
_080F2928: .4byte 0x02001EB0
_080F292C: .4byte 0x08372210
_080F2930: .4byte 0x08386294
_080F2934: .4byte 0x08372AA0
_080F2938: .4byte 0x0810E240
_080F293C: .4byte 0x0810E244
_080F2940:
	ldr r0, _080F2964 @ =0x02001EB0
	ldrh r1, [r0, #4]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080F296C
	movs r0, #3
	bl playSound
	ldr r2, _080F2968 @ =0x020308D8
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
	movs r0, #3
	b _080F2BF6
	.align 2, 0
_080F2964: .4byte 0x02001EB0
_080F2968: .4byte 0x020308D8
_080F296C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F2976
	b _080F2BF8
_080F2976:
	movs r0, #2
	bl playSound
	ldr r2, _080F29A4 @ =0x020308D8
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080F29A8 @ =0x0202FE60
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #4
	ldrsh r0, [r6, r2]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r6, #4]
	movs r0, #5
	b _080F2BF6
	.align 2, 0
_080F29A4: .4byte 0x020308D8
_080F29A8: .4byte 0x0202FE60
_080F29AC:
	ldr r0, _080F29FC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F29BA
	cmp r0, #4
	beq _080F29BA
	b _080F2BF8
_080F29BA:
	movs r0, #0x97
	bl clearValFrom0x02001fe0
	movs r0, #0x98
	bl clearValFrom0x02001fe0
	ldr r4, _080F2A00 @ =0x087044BC
	ldr r0, [r4]
	ldr r5, _080F2A04 @ =0x08704520
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #7
	bl loadGraphics
	ldr r0, [r4]
	ldr r1, _080F2A08 @ =0x0870452C
	adds r0, r0, r1
	movs r1, #0
	bl transferPalette
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_080F29E8:
	ldr r2, _080F29FC @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F2A0C
_080F29F0:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F2BF8
	.align 2, 0
_080F29FC: .4byte 0x020308D8
_080F2A00: .4byte 0x087044BC
_080F2A04: .4byte 0x08704520
_080F2A08: .4byte 0x0870452C
_080F2A0C:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r6, #0
	bl FUN_080ee000
	b _080F2BF8
_080F2A18:
	ldr r5, _080F2A88 @ =0x0202FE60
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r2, r2, r5
	mov sb, r2
	ldr r7, [r2]
	cmp r7, #0
	beq _080F2A2A
	b _080F2BF8
_080F2A2A:
	ldr r1, _080F2A8C @ =0x0202FB90
	ldr r0, _080F2A90 @ =0x0000020E
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #4]
	bl FUN_0801f6dc
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0xe8
	adds r0, r4, #0
	movs r1, #3
	bl changeCameraMode
	movs r0, #8
	strb r0, [r4, #0x19]
	strh r7, [r4, #0x22]
	mov r1, r8
	str r1, [r4, #0x48]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	str r7, [r0]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r5, r2
	str r7, [r0]
	movs r0, #1
	mov r5, sb
	str r0, [r5]
	ldr r1, _080F2A94 @ =0x00000ECC
	adds r0, r6, r1
	str r7, [r0]
	ldrb r0, [r6, #3]
	adds r0, #1
	b _080F2BF6
	.align 2, 0
_080F2A88: .4byte 0x0202FE60
_080F2A8C: .4byte 0x0202FB90
_080F2A90: .4byte 0x0000020E
_080F2A94: .4byte 0x00000ECC
_080F2A98:
	ldr r0, _080F2AE0 @ =0x02002180
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0, #2]
	ldr r2, _080F2AE4 @ =0x00000ECC
	adds r4, r6, r2
	ldr r0, [r4]
	cmp r0, #0
	bne _080F2AB8
	ldrb r0, [r6, #4]
	bl FUN_0801f6dc
	movs r1, #0x18
	bl createStill21
	str r0, [r4]
_080F2AB8:
	ldr r0, _080F2AE8 @ =0x0202FE60
	movs r5, #0xaa
	lsls r5, r5, #1
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _080F2AC8
	b _080F2BF8
_080F2AC8:
	ldr r1, _080F2AEC @ =0x0838629C
	movs r2, #4
	ldrsh r0, [r6, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl printNormalMessage
	ldrb r0, [r6, #3]
	adds r0, #1
	b _080F2BF6
	.align 2, 0
_080F2AE0: .4byte 0x02002180
_080F2AE4: .4byte 0x00000ECC
_080F2AE8: .4byte 0x0202FE60
_080F2AEC: .4byte 0x0838629C
_080F2AF0:
	ldr r1, _080F2B14 @ =0x02002180
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r0, _080F2B18 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _080F2BF8
	ldr r0, _080F2B1C @ =0x0202FE60
	movs r5, #0xaa
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #2
	str r1, [r0]
	ldrb r0, [r6, #3]
	adds r0, #1
	b _080F2BF6
	.align 2, 0
_080F2B14: .4byte 0x02002180
_080F2B18: .4byte 0x020308D8
_080F2B1C: .4byte 0x0202FE60
_080F2B20:
	ldr r1, _080F2BC8 @ =0x02002180
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r7, _080F2BCC @ =0x0202FE60
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r5, [r0]
	cmp r5, #0
	bne _080F2BF8
	ldr r1, [r7, #0x20]
	mov sb, r1
	movs r2, #0x54
	add r2, sb
	mov r8, r2
	ldr r1, _080F2BD0 @ =0x00000ECC
	adds r0, r6, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _080F2B84
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
	adds r1, r2, #0
	adds r1, #0x94
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r2, #0xa]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r1, _080F2BD4 @ =0x0836FB24
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #3
	str r1, [r2, #0xc]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	str r0, [r2, #0x14]
_080F2B84:
	adds r4, r7, #0
	adds r4, #0xe8
	adds r0, r4, #0
	movs r1, #6
	bl changeCameraMode
	movs r0, #8
	strb r0, [r4, #0x19]
	strh r5, [r4, #0x22]
	mov r2, r8
	str r2, [r4, #0x48]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r7, r0
	mov r2, sb
	ldr r0, [r2, #0x54]
	str r0, [r1]
	mov r2, r8
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	str r5, [r0]
	movs r0, #1
	mov r5, sl
	str r0, [r5]
	ldrb r0, [r6, #3]
	adds r0, #1
	b _080F2BF6
	.align 2, 0
_080F2BC8: .4byte 0x02002180
_080F2BCC: .4byte 0x0202FE60
_080F2BD0: .4byte 0x00000ECC
_080F2BD4: .4byte 0x0836FB24
_080F2BD8:
	ldr r0, _080F2C14 @ =0x0202FE60
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080F2BF8
	ldr r1, _080F2C18 @ =0x0202FB90
	ldr r2, _080F2C1C @ =0x0000020E
	adds r1, r1, r2
	ldrh r2, [r1]
	ldr r0, _080F2C20 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1]
	movs r0, #1
_080F2BF6:
	strb r0, [r6, #3]
_080F2BF8:
	movs r0, #0x97
	bl FUN_08004068
	movs r0, #0x98
	bl FUN_08004068
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F2C14: .4byte 0x0202FE60
_080F2C18: .4byte 0x0202FB90
_080F2C1C: .4byte 0x0000020E
_080F2C20: .4byte 0x0000FFFE

	thumb_func_start FUN_080f2c24
FUN_080f2c24: @ 0x080F2C24
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #3
	beq _080F2CC4
	cmp r0, #3
	bgt _080F2C40
	cmp r0, #1
	beq _080F2C66
	cmp r0, #1
	bgt _080F2C7E
	cmp r0, #0
	beq _080F2C5A
	b _080F2C52
_080F2C40:
	cmp r0, #0x77
	beq _080F2CF8
	cmp r0, #0x77
	bgt _080F2C4E
	cmp r0, #4
	beq _080F2CD4
	b _080F2C52
_080F2C4E:
	cmp r0, #0x7c
	beq _080F2D10
_080F2C52:
	adds r0, r4, #0
	bl manageSaveData
	b _080F2D26
_080F2C5A:
	ldr r0, _080F2CA4 @ =0x00001312
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2C66:
	ldr r0, _080F2CA8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2C72
	cmp r0, #4
	bne _080F2D26
_080F2C72:
	ldr r0, _080F2CAC @ =0x00001302
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2C7E:
	ldr r0, _080F2CA8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2C8A
	cmp r0, #4
	bne _080F2D26
_080F2C8A:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F2D26
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F2CB0
	movs r0, #0x70
	b _080F2D24
	.align 2, 0
_080F2CA4: .4byte 0x00001312
_080F2CA8: .4byte 0x020308D8
_080F2CAC: .4byte 0x00001302
_080F2CB0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F2CBC
	movs r0, #0x7c
	b _080F2D24
_080F2CBC:
	movs r0, #4
	bl playSound
	b _080F2D26
_080F2CC4:
	ldr r0, _080F2CE8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2CD0
	cmp r0, #4
	bne _080F2D26
_080F2CD0:
	movs r0, #4
	strb r0, [r4, #3]
_080F2CD4:
	ldr r2, _080F2CE8 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F2CEC
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F2D26
	.align 2, 0
_080F2CE8: .4byte 0x020308D8
_080F2CEC:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F2D26
_080F2CF8:
	ldr r0, _080F2D08 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2D04
	cmp r0, #4
	bne _080F2D26
_080F2D04:
	ldr r0, _080F2D0C @ =0x00001313
	b _080F2D1E
	.align 2, 0
_080F2D08: .4byte 0x020308D8
_080F2D0C: .4byte 0x00001313
_080F2D10:
	ldr r0, _080F2D2C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2D1C
	cmp r0, #4
	bne _080F2D26
_080F2D1C:
	ldr r0, _080F2D30 @ =0x00001314
_080F2D1E:
	bl printOptionMessage
	movs r0, #3
_080F2D24:
	strb r0, [r4, #3]
_080F2D26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F2D2C: .4byte 0x020308D8
_080F2D30: .4byte 0x00001314

	thumb_func_start FUN_080f2d34
FUN_080f2d34: @ 0x080F2D34
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #3
	beq _080F2DD4
	cmp r0, #3
	bgt _080F2D50
	cmp r0, #1
	beq _080F2D76
	cmp r0, #1
	bgt _080F2D8E
	cmp r0, #0
	beq _080F2D6A
	b _080F2D62
_080F2D50:
	cmp r0, #0x77
	beq _080F2E08
	cmp r0, #0x77
	bgt _080F2D5E
	cmp r0, #4
	beq _080F2DE4
	b _080F2D62
_080F2D5E:
	cmp r0, #0x7c
	beq _080F2E20
_080F2D62:
	adds r0, r4, #0
	bl manageSaveData
	b _080F2E36
_080F2D6A:
	ldr r0, _080F2DB4 @ =0x00001326
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2D76:
	ldr r0, _080F2DB8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2D82
	cmp r0, #4
	bne _080F2E36
_080F2D82:
	ldr r0, _080F2DBC @ =0x00001302
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2D8E:
	ldr r0, _080F2DB8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2D9A
	cmp r0, #4
	bne _080F2E36
_080F2D9A:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F2E36
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F2DC0
	movs r0, #0x70
	b _080F2E34
	.align 2, 0
_080F2DB4: .4byte 0x00001326
_080F2DB8: .4byte 0x020308D8
_080F2DBC: .4byte 0x00001302
_080F2DC0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F2DCC
	movs r0, #0x7c
	b _080F2E34
_080F2DCC:
	movs r0, #4
	bl playSound
	b _080F2E36
_080F2DD4:
	ldr r0, _080F2DF8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2DE0
	cmp r0, #4
	bne _080F2E36
_080F2DE0:
	movs r0, #4
	strb r0, [r4, #3]
_080F2DE4:
	ldr r2, _080F2DF8 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F2DFC
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F2E36
	.align 2, 0
_080F2DF8: .4byte 0x020308D8
_080F2DFC:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F2E36
_080F2E08:
	ldr r0, _080F2E18 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2E14
	cmp r0, #4
	bne _080F2E36
_080F2E14:
	ldr r0, _080F2E1C @ =0x00001327
	b _080F2E2E
	.align 2, 0
_080F2E18: .4byte 0x020308D8
_080F2E1C: .4byte 0x00001327
_080F2E20:
	ldr r0, _080F2E3C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2E2C
	cmp r0, #4
	bne _080F2E36
_080F2E2C:
	ldr r0, _080F2E40 @ =0x00001328
_080F2E2E:
	bl printOptionMessage
	movs r0, #3
_080F2E34:
	strb r0, [r4, #3]
_080F2E36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F2E3C: .4byte 0x020308D8
_080F2E40: .4byte 0x00001328

	thumb_func_start FUN_080f2e44
FUN_080f2e44: @ 0x080F2E44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0xb
	bhi _080F2E8C
	lsls r0, r0, #2
	ldr r1, _080F2E58 @ =_080F2E5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F2E58: .4byte _080F2E5C
_080F2E5C: @ jump table
	.4byte _080F2E94 @ case 0
	.4byte _080F2EA0 @ case 1
	.4byte _080F2EB8 @ case 2
	.4byte _080F2EEC @ case 3
	.4byte _080F2EFE @ case 4
	.4byte _080F2E8C @ case 5
	.4byte _080F2E8C @ case 6
	.4byte _080F2E8C @ case 7
	.4byte _080F2E8C @ case 8
	.4byte _080F2E8C @ case 9
	.4byte _080F2E8C @ case 10
	.4byte _080F2F20 @ case 11
_080F2E8C:
	adds r0, r4, #0
	bl transportalChatScript
	b _080F2F36
_080F2E94:
	ldr r0, _080F2EDC @ =0x00001332
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2EA0:
	ldr r0, _080F2EE0 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2EAC
	cmp r0, #4
	bne _080F2F36
_080F2EAC:
	ldr r0, _080F2EE4 @ =0x0000130E
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2EB8:
	ldr r0, _080F2EE0 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2EC4
	cmp r0, #4
	bne _080F2F36
_080F2EC4:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F2F36
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _080F2EE8
	movs r0, #0x12
	b _080F2F34
	.align 2, 0
_080F2EDC: .4byte 0x00001332
_080F2EE0: .4byte 0x020308D8
_080F2EE4: .4byte 0x0000130E
_080F2EE8:
	movs r0, #0xb
	b _080F2F34
_080F2EEC:
	ldr r0, _080F2F10 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2EF8
	cmp r0, #4
	bne _080F2F36
_080F2EF8:
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2EFE:
	ldr r2, _080F2F10 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F2F14
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F2F36
	.align 2, 0
_080F2F10: .4byte 0x020308D8
_080F2F14:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F2F36
_080F2F20:
	ldr r0, _080F2F3C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2F2C
	cmp r0, #4
	bne _080F2F36
_080F2F2C:
	ldr r0, _080F2F40 @ =0x0000130F
	bl printOptionMessage
	movs r0, #3
_080F2F34:
	strb r0, [r4, #3]
_080F2F36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F2F3C: .4byte 0x020308D8
_080F2F40: .4byte 0x0000130F

	thumb_func_start FUN_080f2f44
FUN_080f2f44: @ 0x080F2F44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #2
	beq _080F2F9A
	cmp r0, #2
	bgt _080F2F5C
	cmp r0, #0
	beq _080F2F76
	cmp r0, #1
	beq _080F2F82
	b _080F2F6E
_080F2F5C:
	cmp r0, #0x77
	beq _080F3020
	cmp r0, #0x77
	bgt _080F2F6A
	cmp r0, #3
	beq _080F3000
	b _080F2F6E
_080F2F6A:
	cmp r0, #0x7c
	beq _080F3020
_080F2F6E:
	adds r0, r4, #0
	bl manageSaveData
	b _080F3036
_080F2F76:
	ldr r0, _080F2FCC @ =0x00001336
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2F82:
	ldr r0, _080F2FD0 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2F8E
	cmp r0, #4
	bne _080F3036
_080F2F8E:
	ldr r0, _080F2FD4 @ =0x00001302
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F2F9A:
	ldr r0, _080F2FD0 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F2FA6
	cmp r0, #4
	bne _080F3036
_080F2FA6:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F3036
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F2FDC
	ldr r2, _080F2FD8 @ =0x0202FDC0
	ldrb r1, [r2, #6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x70
	b _080F3034
	.align 2, 0
_080F2FCC: .4byte 0x00001336
_080F2FD0: .4byte 0x020308D8
_080F2FD4: .4byte 0x00001302
_080F2FD8: .4byte 0x0202FDC0
_080F2FDC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F2FF8
	ldr r2, _080F2FF4 @ =0x0202FDC0
	ldrb r1, [r2, #6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x7c
	b _080F3034
	.align 2, 0
_080F2FF4: .4byte 0x0202FDC0
_080F2FF8:
	movs r0, #4
	bl playSound
	b _080F3036
_080F3000:
	ldr r0, _080F3018 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F300C
	cmp r0, #4
	bne _080F3036
_080F300C:
	ldr r1, _080F301C @ =0x000C0400
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F3036
	.align 2, 0
_080F3018: .4byte 0x020308D8
_080F301C: .4byte 0x000C0400
_080F3020:
	ldr r0, _080F303C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F302C
	cmp r0, #4
	bne _080F3036
_080F302C:
	ldr r0, _080F3040 @ =0x00001337
	bl printOptionMessage
	movs r0, #3
_080F3034:
	strb r0, [r4, #3]
_080F3036:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F303C: .4byte 0x020308D8
_080F3040: .4byte 0x00001337

	thumb_func_start FUN_080f3044
FUN_080f3044: @ 0x080F3044
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0xb
	bhi _080F308C
	lsls r0, r0, #2
	ldr r1, _080F3058 @ =_080F305C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F3058: .4byte _080F305C
_080F305C: @ jump table
	.4byte _080F3094 @ case 0
	.4byte _080F308C @ case 1
	.4byte _080F309E @ case 2
	.4byte _080F30D0 @ case 3
	.4byte _080F30E2 @ case 4
	.4byte _080F308C @ case 5
	.4byte _080F308C @ case 6
	.4byte _080F308C @ case 7
	.4byte _080F308C @ case 8
	.4byte _080F308C @ case 9
	.4byte _080F308C @ case 10
	.4byte _080F3104 @ case 11
_080F308C:
	adds r0, r4, #0
	bl transportalChatScript
	b _080F311A
_080F3094:
	ldr r0, _080F30C4 @ =0x0000130E
	bl _printOptionMessage
	movs r0, #2
	strb r0, [r4, #3]
_080F309E:
	ldr r0, _080F30C8 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F30AA
	cmp r0, #4
	bne _080F311A
_080F30AA:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F311A
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _080F30CC
	movs r0, #0x12
	b _080F3118
	.align 2, 0
_080F30C4: .4byte 0x0000130E
_080F30C8: .4byte 0x020308D8
_080F30CC:
	movs r0, #0xb
	b _080F3118
_080F30D0:
	ldr r0, _080F30F4 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F30DC
	cmp r0, #4
	bne _080F311A
_080F30DC:
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F30E2:
	ldr r2, _080F30F4 @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F30F8
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F311A
	.align 2, 0
_080F30F4: .4byte 0x020308D8
_080F30F8:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F311A
_080F3104:
	ldr r0, _080F3120 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F3110
	cmp r0, #4
	bne _080F311A
_080F3110:
	ldr r0, _080F3124 @ =0x0000130F
	bl printOptionMessage
	movs r0, #3
_080F3118:
	strb r0, [r4, #3]
_080F311A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F3120: .4byte 0x020308D8
_080F3124: .4byte 0x0000130F

	thumb_func_start FUN_080f3128
FUN_080f3128: @ 0x080F3128
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #3
	beq _080F31C8
	cmp r0, #3
	bgt _080F3144
	cmp r0, #1
	beq _080F316A
	cmp r0, #1
	bgt _080F3182
	cmp r0, #0
	beq _080F315E
	b _080F3156
_080F3144:
	cmp r0, #0x77
	beq _080F31FC
	cmp r0, #0x77
	bgt _080F3152
	cmp r0, #4
	beq _080F31D8
	b _080F3156
_080F3152:
	cmp r0, #0x7c
	beq _080F3214
_080F3156:
	adds r0, r4, #0
	bl manageSaveData
	b _080F322A
_080F315E:
	ldr r0, _080F31A8 @ =0x00001339
	bl printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F316A:
	ldr r0, _080F31AC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F3176
	cmp r0, #4
	bne _080F322A
_080F3176:
	ldr r0, _080F31B0 @ =0x00001302
	bl _printOptionMessage
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
_080F3182:
	ldr r0, _080F31AC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F318E
	cmp r0, #4
	bne _080F322A
_080F318E:
	adds r0, r4, #0
	bl optionHandleScript
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _080F322A
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _080F31B4
	movs r0, #0x70
	b _080F3228
	.align 2, 0
_080F31A8: .4byte 0x00001339
_080F31AC: .4byte 0x020308D8
_080F31B0: .4byte 0x00001302
_080F31B4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F31C0
	movs r0, #0x7c
	b _080F3228
_080F31C0:
	movs r0, #4
	bl playSound
	b _080F322A
_080F31C8:
	ldr r0, _080F31EC @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F31D4
	cmp r0, #4
	bne _080F322A
_080F31D4:
	movs r0, #4
	strb r0, [r4, #3]
_080F31D8:
	ldr r2, _080F31EC @ =0x020308D8
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _080F31F0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	b _080F322A
	.align 2, 0
_080F31EC: .4byte 0x020308D8
_080F31F0:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl FUN_080ee000
	b _080F322A
_080F31FC:
	ldr r0, _080F320C @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F3208
	cmp r0, #4
	bne _080F322A
_080F3208:
	ldr r0, _080F3210 @ =0x0000133A
	b _080F3222
	.align 2, 0
_080F320C: .4byte 0x020308D8
_080F3210: .4byte 0x0000133A
_080F3214:
	ldr r0, _080F3230 @ =0x020308D8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080F3220
	cmp r0, #4
	bne _080F322A
_080F3220:
	ldr r0, _080F3234 @ =0x0000133B
_080F3222:
	bl printOptionMessage
	movs r0, #3
_080F3228:
	strb r0, [r4, #3]
_080F322A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F3230: .4byte 0x020308D8
_080F3234: .4byte 0x0000133B
