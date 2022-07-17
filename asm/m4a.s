	.include "asm/macros.inc"

	.syntax unified
	
	.text
	
	thumb_func_start umul3232H32
umul3232H32: @ 0x080FC44C
	add r2, pc, #0x0 @ =sub_080FC450
	bx r2

	arm_func_start sub_080FC450
sub_080FC450: @ 0x080FC450
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x080FC45C
	ldr r0, _080FC4C8 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080FC4CC @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _080FC46A
	bx lr
_080FC46A:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080FC48E
	ldr r2, _080FC4D4 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _080FC48C
	adds r2, #0xe4
_080FC48C:
	adds r1, r1, r2
_080FC48E:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080FC49E
	ldr r0, [r0, #0x24]
	bl m4a_bxR3
	ldr r0, [sp, #0x18]
_080FC49E:
	ldr r3, [r0, #0x28]
	bl m4a_bxR3
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080FC4D8 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080FC4BE
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080FC4BE:
	str r5, [sp, #8]
	ldr r6, _080FC4DC @ =0x00000630
	ldr r3, _080FC4D0 @ =0x03000001
	bx r3
	.align 2, 0
_080FC4C8: .4byte 0x03007FF0
_080FC4CC: .4byte 0x68736D53
_080FC4D0: .4byte 0x03000001
_080FC4D4: .4byte 0x04000006
_080FC4D8: .4byte 0x00000350
_080FC4DC: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x080FC4E0
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_080FC52C
	add r1, pc, #0x4 @ =sub_080FC4EC
	bx r1
	.align 2, 0

	arm_func_start sub_080FC4EC
sub_080FC4EC: @ 0x080FC4EC
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_080FC4FC:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _080FC4FC
	add r0, pc, #0x1F @ =sub_080FC54A
	bx r0

	thumb_func_start sub_080FC52C
sub_080FC52C: @ 0x080FC52C
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _080FC536
	stm r5!, {r0}
_080FC536:
	lsrs r1, r1, #1
	blo _080FC53E
	stm r5!, {r0}
	stm r5!, {r0}
_080FC53E:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _080FC53E

	non_word_aligned_thumb_func_start sub_080FC54A
sub_080FC54A: @ 0x080FC54A
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_080FC554:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080FC574
	ldr r1, _080FC570 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _080FC568
	adds r1, #0xe4
_080FC568:
	cmp r1, r0
	blo _080FC574
	b _080FC7F6
	.align 2, 0
_080FC570: .4byte 0x04000006
_080FC574:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _080FC57E
	b sub_080FC7EC
_080FC57E:
	movs r0, #0x80
	tst r0, r6
	beq _080FC5AE
	movs r0, #0x40
	tst r0, r6
	bne _080FC5BE
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080FC606
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _080FC606
_080FC5AE:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080FC5C4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080FC614
_080FC5BE:
	movs r0, #0
	strb r0, [r4]
	b sub_080FC7EC
_080FC5C4:
	movs r0, #0x40
	tst r0, r6
	beq _080FC5E4
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080FC614
_080FC5D6:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080FC5BE
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _080FC614
_080FC5E4:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080FC602
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080FC614
	adds r5, r0, #0
	beq _080FC5D6
	subs r6, #1
	strb r6, [r4]
	b _080FC614
_080FC602:
	cmp r2, #3
	bne _080FC614
_080FC606:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080FC614
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_080FC614:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080FC644
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080FC644:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_080FC650
	bx r0
	.align 2, 0

	arm_func_start sub_080FC650
sub_080FC650: @ 0x080FC650
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _080FC758
_080FC668:
	cmp r2, #4
	ble _080FC6C4
	subs r2, r2, r8
	movgt lr, #0
	bgt _080FC694
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_080FC694:
	ldr r6, [r5]
_080FC698:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _080FC698
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080FC694
	adds r8, r8, lr
	beq _080FC7D8
_080FC6C4:
	ldr r6, [r5]
_080FC6C8:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _080FC728
_080FC6E0:
	adds r5, r5, #0x40000000
	blo _080FC6C8
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080FC668
	b _080FC7D8
_080FC6F8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080FC71C
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080FC70C:
	adds r2, r0, r2
	bgt _080FC7AC
	sub sb, sb, r0
	b _080FC70C
_080FC71C:
	pop {r4, ip}
	mov r2, #0
	b _080FC738
_080FC728:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _080FC6E0
_080FC738:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _080FC7E0
_080FC758:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080FC774:
	ldr r6, [r5]
_080FC778:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _080FC7B8
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _080FC6F8
	subs sb, sb, #1
	addeq r0, r0, r1
_080FC7AC:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080FC7B8:
	adds r5, r5, #0x40000000
	blo _080FC778
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080FC774
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_080FC7D8:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080FC7E0:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080FC7EC
	bx r0

	thumb_func_start sub_080FC7EC
sub_080FC7EC: @ 0x080FC7EC
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080FC7F6
	adds r4, #0x40
	b _080FC554
_080FC7F6:
	ldr r0, [sp, #0x18]
	ldr r3, _080FC80C @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start m4a_bxR3
m4a_bxR3: @ 0x080FC80A
	bx r3
	.align 2, 0
_080FC80C: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080FC810
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start RealClearChain
RealClearChain: @ 0x080FC828
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080FC846
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080FC83A
	str r1, [r2, #0x34]
	b _080FC83C
_080FC83A:
	str r1, [r3, #0x20]
_080FC83C:
	cmp r1, #0
	beq _080FC842
	str r2, [r1, #0x30]
_080FC842:
	movs r1, #0
	str r1, [r0, #0x2c]
_080FC846:
	bx lr
_080FC848:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080FC86C
_080FC852:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080FC860
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080FC860:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080FC852
_080FC86C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x080FC878
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080FC8A8 @ =0x0810E2CC
_080FC87E:
	ldr r3, [r2]
	bl _080FC892
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080FC87E
	bx ip
	.align 2, 0

	thumb_func_start FUN_080fc890
FUN_080fc890: @ 0x080FC890
	ldrb r3, [r2]
_080FC892:
	push {r0}
	lsrs r0, r2, #0x19
	bne _080FC8A4
	ldr r0, _080FC8A8 @ =0x0810E2CC
	cmp r2, r0
	blo _080FC8A2
	lsrs r0, r2, #0xe
	beq _080FC8A4
_080FC8A2:
	movs r3, #0
_080FC8A4:
	pop {r0}
	bx lr
	.align 2, 0
_080FC8A8: .4byte 0x0810E2CC

	thumb_func_start FUN_080fc8ac
FUN_080fc8ac: @ 0x080FC8AC
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start FUN_080fc8ae
FUN_080fc8ae: @ 0x080FC8AE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _080FC892
	.align 2, 0
_080FC8B8:
	push {lr}
_080FC8BA:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl FUN_080fc890
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x080FC8D8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080FC8F0
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _080FC8B8
_080FC8F0:
	b _080FC848
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080FC8F4
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080FC906
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080FC906:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x080FC908
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080FC918
	adds r2, #1
	str r2, [r1, #0x40]
	b _080FC8BA
_080FC918:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl FUN_080fc8ac
	cmp ip, r3
	bhs _080FC92A
	b _080FC8BA
_080FC92A:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x080FC938
	mov ip, lr
	bl FUN_080fc8ac
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x080FC944
	mov ip, lr
	bl FUN_080fc8ac
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x080FC958
	mov ip, lr
	bl FUN_080fc8ac
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x080FC96C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _080FC892
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _080FC892
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _080FC892
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x080FC99C
	mov ip, lr
	bl FUN_080fc8ac
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x080FC9B0
	mov ip, lr
	bl FUN_080fc8ac
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x080FC9C4
	mov ip, lr
	bl FUN_080fc8ac
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x080FC9D8
	mov ip, lr
	bl FUN_080fc8ac
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080FC9EC
	mov ip, lr
	bl FUN_080fc8ac
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080FC9F8
	mov ip, lr
	bl FUN_080fc8ac
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080FCA0E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080FCA0E:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x080FCA10
	mov ip, lr
	bl FUN_080fc8ac
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x080FCA24
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080FCA38 @ =0x04000060
	adds r0, r0, r3
	bl FUN_080fc8ae
	strb r3, [r0]
	bx ip
	.align 2, 0
_080FCA38: .4byte 0x04000060

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x080FCA3C
	ldr r0, _080FCCD8 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080FCCDC @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080FCA6E
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080FCA6E
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080FCA70 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080FCA62
	ldr r1, _080FCA74 @ =0x84400004
	str r1, [r2, #8]
_080FCA62:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_080FCA6E:
	bx lr
	.align 2, 0
_080FCA70: .4byte 0x040000BC
_080FCA74: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x080FCA78
	ldr r2, _080FCCDC @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080FCA82
	bx lr
_080FCA82:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080FCA94
	ldr r0, [r0, #0x3c]
	bl call_r3
_080FCA94:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080FCAAC
	b _080FCCC0
_080FCAAC:
	ldr r0, _080FCCD8 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080FCAC0
	b _080FCCC0
_080FCAC0:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080FCC10
_080FCAC8:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080FCAD0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080FCADA
	b _080FCBEC
_080FCADA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080FCB0E
_080FCAE6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080FCB02
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080FCB08
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080FCB08
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _080FCB08
_080FCB02:
	adds r0, r4, #0
	bl ClearChain
_080FCB08:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080FCAE6
_080FCB0E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080FCB8C
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080FCB8C
_080FCB34:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _080FCB40
	ldrb r1, [r5, #7]
	b _080FCB4A
_080FCB40:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080FCB4A
	strb r1, [r5, #7]
_080FCB4A:
	cmp r1, #0xcf
	blo _080FCB60
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl call_r3
	b _080FCB8C
_080FCB60:
	cmp r1, #0xb0
	bls _080FCB82
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl call_r3
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FCBE8
	b _080FCB8C
_080FCB82:
	ldr r0, _080FCCD4 @ =0x0810E540
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080FCB8C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080FCB34
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080FCBE8
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080FCBE8
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080FCBAE
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080FCBE8
_080FCBAE:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _080FCBC2
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _080FCBC6
_080FCBC2:
	movs r0, #0x80
	subs r2, r0, r1
_080FCBC6:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080FCBE8
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080FCBE2
	movs r1, #0xc
	b _080FCBE4
_080FCBE2:
	movs r1, #3
_080FCBE4:
	orrs r0, r1
	strb r0, [r5]
_080FCBE8:
	mov r3, sl
	mov r4, fp
_080FCBEC:
	subs r6, #1
	ble _080FCBF8
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080FCAD0
_080FCBF8:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080FCC0A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _080FCCC0
_080FCC0A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080FCC10:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080FCC18
	b _080FCAC8
_080FCC18:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080FCC1C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _080FCCB6
	movs r1, #0xf
	tst r1, r0
	beq _080FCCB6
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080FCCAC
_080FCC3A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _080FCC4A
	adds r0, r4, #0
	bl ClearChain
	b _080FCCA6
_080FCC4A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _080FCC68
	bl ChnVolSetAsm
	cmp r6, #0
	beq _080FCC68
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080FCC68:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _080FCCA6
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080FCC7C
	movs r2, #0
_080FCC7C:
	cmp r6, #0
	beq _080FCC9A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl call_r3
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _080FCCA6
_080FCC9A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_080FCCA6:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080FCC3A
_080FCCAC:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_080FCCB6:
	subs r2, #1
	ble _080FCCC0
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080FCC1C
_080FCCC0:
	ldr r0, _080FCCDC @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start call_r3
call_r3: @ 0x080FCCD0
	bx r3
	.align 2, 0
_080FCCD4: .4byte 0x0810E540
_080FCCD8: .4byte 0x03007FF0
_080FCCDC: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x080FCCE0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080FCD18
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080FCD16
	movs r6, #0
_080FCCF4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080FCD0E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080FCD0C
	ldr r3, _080FCD20 @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl call_r3
_080FCD0C:
	strb r6, [r4]
_080FCD0E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080FCCF4
_080FCD16:
	str r4, [r5, #0x20]
_080FCD18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FCD20: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x080FCD24
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080FCD3C
	movs r0, #0xff
_080FCD3C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080FCD50
	movs r0, #0xff
_080FCD50:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x080FCD54
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080FCF4C @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080FCF50 @ =0x0810E540
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080FCD9A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080FCD98
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080FCD98
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080FCD98:
	str r3, [r5, #0x40]
_080FCD9A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080FCDEC
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080FCDBA
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080FCDBC
_080FCDBA:
	adds r0, r3, #0
_080FCDBC:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080FCDD4
	b _080FCF3A
_080FCDD4:
	movs r0, #0x80
	tst r0, r2
	beq _080FCDF0
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080FCDE8
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080FCDE8:
	ldrb r3, [r6, #1]
	b _080FCDF0
_080FCDEC:
	mov sb, r4
	ldrb r3, [r5, #5]
_080FCDF0:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080FCE00
	movs r0, #0xff
_080FCE00:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080FCE40
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080FCE18
	b _080FCF3A
_080FCE18:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080FCE94
	movs r0, #0x40
	tst r0, r1
	bne _080FCE94
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080FCE94
	beq _080FCE38
	b _080FCF3A
_080FCE38:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080FCE94
	b _080FCF3A
_080FCE40:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080FCE4E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080FCE94
	movs r0, #0x40
	tst r0, r1
	beq _080FCE68
	cmp r2, #0
	bne _080FCE6C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080FCE86
_080FCE68:
	cmp r2, #0
	bne _080FCE88
_080FCE6C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080FCE78
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080FCE86
_080FCE78:
	bhi _080FCE88
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080FCE84
	adds r7, r0, #0
	b _080FCE86
_080FCE84:
	blo _080FCE88
_080FCE86:
	mov r8, r4
_080FCE88:
	adds r4, #0x40
	subs r3, #1
	bgt _080FCE4E
	mov r4, r8
	cmp r4, #0
	beq _080FCF3A
_080FCE94:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080FCEA8
	str r4, [r3, #0x30]
_080FCEA8:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080FCEBA
	adds r1, r5, #0
	bl clear_modM
_080FCEBA:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080FCEF4
	movs r3, #0
_080FCEF4:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080FCF22
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080FCF0E
	movs r0, #0x70
	tst r0, r1
	bne _080FCF10
_080FCF0E:
	movs r1, #8
_080FCF10:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl call_r3
	b _080FCF2C
_080FCF22:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_080FCF2C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080FCF3A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080FCF4C: .4byte 0x03007FF0
_080FCF50: .4byte 0x0810E540

	thumb_func_start ply_endtie
ply_endtie: @ 0x080FCF54
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080FCF66
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080FCF68
_080FCF66:
	ldrb r3, [r1, #5]
_080FCF68:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080FCF90
	movs r4, #0x83
	movs r5, #0x40
_080FCF72:
	ldrb r2, [r1]
	tst r2, r4
	beq _080FCF8A
	tst r2, r5
	bne _080FCF8A
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080FCF8A
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080FCF90
_080FCF8A:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080FCF72
_080FCF90:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x080FCF94
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080FCFA4
	movs r2, #0xc
	b _080FCFA6
_080FCFA4:
	movs r2, #3
_080FCFA6:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_unchecked
ld_r3_tp_adr_i_unchecked: @ 0x080FCFB0
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x080FCFBC
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080FCFCC
	bl clear_modM
_080FCFCC:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x080FCFD0
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080FCFE0
	bl clear_modM
_080FCFE0:
	bx ip
	.align 2, 0

	thumb_func_start MidiKeyToFreq
MidiKeyToFreq: @ 0x080FCFE4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080FCFF8
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080FCFF8:
	ldr r3, _080FD040 @ =0x0810E35C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _080FD044 @ =0x0810E410
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080FD040: .4byte 0x0810E35C
_080FD044: .4byte 0x0810E410

	thumb_func_start UnusedDummyFunc
UnusedDummyFunc: @ 0x080FD048
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x080FD04C
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _080FD060 @ =0x68736D53
	cmp r3, r0
	bne _080FD05E
	ldr r0, [r2, #4]
	ldr r1, _080FD064 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080FD05E:
	bx lr
	.align 2, 0
_080FD060: .4byte 0x68736D53
_080FD064: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x080FD068
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080FD084 @ =0x68736D53
	cmp r3, r0
	bne _080FD080
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080FD080:
	bx lr
	.align 2, 0
_080FD084: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x080FD088
	push {r4, r5, r6, lr}
	ldr r0, _080FD0DC @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080FD0E0 @ =0x03000000
	ldr r2, _080FD0E4 @ =0x040000E0
	bl CpuSet
	ldr r0, _080FD0E8 @ =0x0203DC60
	bl SoundInit
	ldr r0, _080FD0EC @ =0x0203E670
	bl MPlayExtender
	ldr r0, _080FD0F0 @ =0x0097DC00
	bl m4aSoundMode
	ldr r0, _080FD0F4 @ =0x0000000F
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080FD0D6
	ldr r5, _080FD0F8 @ =0x0810F75C
	adds r6, r0, #0
_080FD0BA:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _080FD0FC @ =0x0203EA70
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080FD0BA
_080FD0D6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FD0DC: .4byte SoundMainRAM
_080FD0E0: .4byte 0x03000000
_080FD0E4: .4byte 0x040000E0
_080FD0E8: .4byte 0x0203DC60
_080FD0EC: .4byte 0x0203E670
_080FD0F0: .4byte 0x0097DC00
_080FD0F4: .4byte 0x0000000F
_080FD0F8: .4byte 0x0810F75C
_080FD0FC: .4byte 0x0203EA70

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x080FD100
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x080FD10C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080FD130 @ =0x0810F75C
	ldr r1, _080FD134 @ =0x0810F810
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_080FD130: .4byte 0x0810F75C
_080FD134: .4byte 0x0810F810

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x080FD138
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080FD164 @ =0x0810F75C
	ldr r1, _080FD168 @ =0x0810F810
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080FD16C
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080FD180
	.align 2, 0
_080FD164: .4byte 0x0810F75C
_080FD168: .4byte 0x0810F810
_080FD16C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080FD178
	cmp r2, #0
	bge _080FD180
_080FD178:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
_080FD180:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x080FD184
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080FD1B0 @ =0x0810F75C
	ldr r1, _080FD1B4 @ =0x0810F810
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080FD1B8
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080FD1D4
	.align 2, 0
_080FD1B0: .4byte 0x0810F75C
_080FD1B4: .4byte 0x0810F810
_080FD1B8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080FD1CA
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _080FD1D4
_080FD1CA:
	cmp r2, #0
	bge _080FD1D4
	adds r0, r1, #0
	bl MPlayContinue
_080FD1D4:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x080FD1D8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080FD204 @ =0x0810F75C
	ldr r1, _080FD208 @ =0x0810F810
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080FD1FE
	adds r0, r2, #0
	bl m4aMPlayStop
_080FD1FE:
	pop {r0}
	bx r0
	.align 2, 0
_080FD204: .4byte 0x0810F75C
_080FD208: .4byte 0x0810F810

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x080FD20C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080FD238 @ =0x0810F75C
	ldr r1, _080FD23C @ =0x0810F810
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080FD232
	adds r0, r2, #0
	bl MPlayContinue
_080FD232:
	pop {r0}
	bx r0
	.align 2, 0
_080FD238: .4byte 0x0810F75C
_080FD23C: .4byte 0x0810F810

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x080FD240
	push {r4, r5, lr}
	ldr r0, _080FD264 @ =0x0000000F
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080FD25E
	ldr r5, _080FD268 @ =0x0810F75C
	adds r4, r0, #0
_080FD250:
	ldr r0, [r5]
	bl m4aMPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080FD250
_080FD25E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FD264: .4byte 0x0000000F
_080FD268: .4byte 0x0810F75C

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x080FD26C
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x080FD278
	push {r4, r5, lr}
	ldr r0, _080FD29C @ =0x0000000F
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080FD296
	ldr r5, _080FD2A0 @ =0x0810F75C
	adds r4, r0, #0
_080FD288:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080FD288
_080FD296:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FD29C: .4byte 0x0000000F
_080FD2A0: .4byte 0x0810F75C

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x080FD2A4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x080FD2B4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080FD2CC @ =0x68736D53
	cmp r3, r0
	bne _080FD2CA
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080FD2D0 @ =0x00000101
	strh r0, [r2, #0x28]
_080FD2CA:
	bx lr
	.align 2, 0
_080FD2CC: .4byte 0x68736D53
_080FD2D0: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x080FD2D4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080FD2F4 @ =0x68736D53
	cmp r3, r0
	bne _080FD2F2
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080FD2F8 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080FD2F2:
	bx lr
	.align 2, 0
_080FD2F4: .4byte 0x68736D53
_080FD2F8: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x080FD2FC
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080FD33E
	movs r7, #0x80
_080FD308:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080FD336
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080FD336
	adds r0, r4, #0
	bl Clear64byte
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080FD336:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080FD308
_080FD33E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x080FD344
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080FD40C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080FD410 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080FD414 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080FD418 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080FD41C @ =0x68736D53
	cmp r6, r0
	bne _080FD404
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080FD420 @ =0x0203E5E0
	ldr r0, _080FD424 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _080FD428 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _080FD42C @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _080FD430 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _080FD434 @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _080FD438 @ =SampleFreqSet
	str r0, [r1, #0x78]
	ldr r0, _080FD43C @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080FD440 @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080FD444 @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080FD448 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _080FD44C @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _080FD450 @ =MidiKeyToCgbFreq
	str r0, [r4, #0x30]
	ldr r0, _080FD454 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080FD458 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080FD404:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FD40C: .4byte 0x04000084
_080FD410: .4byte 0x04000080
_080FD414: .4byte 0x04000063
_080FD418: .4byte 0x03007FF0
_080FD41C: .4byte 0x68736D53
_080FD420: .4byte 0x0203E5E0
_080FD424: .4byte ply_memacc
_080FD428: .4byte ply_lfos
_080FD42C: .4byte ply_mod
_080FD430: .4byte ply_xcmd
_080FD434: .4byte ply_endtie
_080FD438: .4byte SampleFreqSet
_080FD43C: .4byte TrackStop
_080FD440: .4byte FadeOutBody
_080FD444: .4byte TrkVolPitSet
_080FD448: .4byte CgbSound
_080FD44C: .4byte CgbOscOff
_080FD450: .4byte MidiKeyToCgbFreq
_080FD454: .4byte 0x00000000
_080FD458: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x080FD45C
	svc #0x2a
	bx lr

	thumb_func_start ClearChain
ClearChain: @ 0x080FD460
	push {lr}
	ldr r1, _080FD470 @ =0x0203E668
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080FD470: .4byte 0x0203E668

	thumb_func_start Clear64byte
Clear64byte: @ 0x080FD474
	push {lr}
	ldr r1, _080FD484 @ =0x0203E66C
	ldr r1, [r1]
	bl bxR1
	pop {r0}
	bx r0
	.align 2, 0
_080FD484: .4byte 0x0203E66C

	thumb_func_start SoundInit
SoundInit: @ 0x080FD488
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r2, _080FD520 @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080FD4A4
	ldr r0, _080FD524 @ =0x84400004
	str r0, [r2]
_080FD4A4:
	ldr r1, _080FD528 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080FD52C @ =0x00000B0E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080FD530 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080FD534 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080FD538 @ =0x040000A0
	str r0, [r1]
	ldr r0, _080FD53C @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080FD540 @ =0x05000260
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080FD544 @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _080FD548 @ =DummyFunc
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080FD54C @ =0x0203E5E0
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _080FD550 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FD520: .4byte 0x040000C4
_080FD524: .4byte 0x84400004
_080FD528: .4byte 0x040000C6
_080FD52C: .4byte 0x00000B0E
_080FD530: .4byte 0x04000089
_080FD534: .4byte 0x040000BC
_080FD538: .4byte 0x040000A0
_080FD53C: .4byte 0x03007FF0
_080FD540: .4byte 0x05000260
_080FD544: .4byte ply_note
_080FD548: .4byte DummyFunc
_080FD54C: .4byte 0x0203E5E0
_080FD550: .4byte 0x68736D53

	thumb_func_start SampleFreqSet
SampleFreqSet: @ 0x080FD554
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080FD5D4 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080FD5D8 @ =0x0810E440
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _080FD5DC @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _080FD5E0 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _080FD5E4 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080FD5E8 @ =0x04000102
	strh r6, [r0]
	ldr r4, _080FD5EC @ =0x04000100
	ldr r0, _080FD5F0 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _080FD5F4 @ =0x04000006
_080FD5B8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080FD5B8
	ldr r1, _080FD5F4 @ =0x04000006
_080FD5C0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080FD5C0
	ldr r1, _080FD5E8 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FD5D4: .4byte 0x03007FF0
_080FD5D8: .4byte 0x0810E440
_080FD5DC: .4byte 0x00091D1B
_080FD5E0: .4byte 0x00001388
_080FD5E4: .4byte 0x00002710
_080FD5E8: .4byte 0x04000102
_080FD5EC: .4byte 0x04000100
_080FD5F0: .4byte 0x00044940
_080FD5F4: .4byte 0x04000006

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x080FD5F8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080FD684 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080FD688 @ =0x68736D53
	cmp r1, r0
	bne _080FD67E
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080FD61A
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080FD61A:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080FD63A
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080FD630:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080FD630
_080FD63A:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080FD648
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080FD648:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _080FD666
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080FD68C @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080FD666:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080FD67A
	bl m4aSoundVSyncOff
	adds r0, r4, #0
	bl SampleFreqSet
_080FD67A:
	ldr r0, _080FD688 @ =0x68736D53
	str r0, [r5]
_080FD67E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FD684: .4byte 0x03007FF0
_080FD688: .4byte 0x68736D53
_080FD68C: .4byte 0x04000089

	thumb_func_start SoundClear
SoundClear: @ 0x080FD690
	push {r4, r5, r6, r7, lr}
	ldr r0, _080FD6DC @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080FD6E0 @ =0x68736D53
	cmp r1, r0
	bne _080FD6D6
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080FD6AA:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080FD6AA
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080FD6D2
	movs r5, #1
	movs r7, #0
_080FD6BE:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl bxR1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080FD6BE
_080FD6D2:
	ldr r0, _080FD6E0 @ =0x68736D53
	str r0, [r6]
_080FD6D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FD6DC: .4byte 0x03007FF0
_080FD6E0: .4byte 0x68736D53

	thumb_func_start m4aSoundVSyncOff
m4aSoundVSyncOff: @ 0x080FD6E4
	push {lr}
	sub sp, #4
	ldr r0, _080FD730 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080FD734 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080FD72A
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r3, _080FD738 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080FD70E
	ldr r0, _080FD73C @ =0x84400004
	str r0, [r3]
_080FD70E:
	ldr r1, _080FD740 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080FD744 @ =0x0500018C
	mov r0, sp
	bl CpuSet
_080FD72A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080FD730: .4byte 0x03007FF0
_080FD734: .4byte 0x978C92AD
_080FD738: .4byte 0x040000C4
_080FD73C: .4byte 0x84400004
_080FD740: .4byte 0x040000C6
_080FD744: .4byte 0x0500018C

	thumb_func_start m4aSoundVSyncOn
m4aSoundVSyncOn: @ 0x080FD748
	push {r4, lr}
	ldr r0, _080FD774 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080FD778 @ =0x68736D53
	cmp r3, r0
	beq _080FD76C
	ldr r1, _080FD77C @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_080FD76C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FD774: .4byte 0x03007FF0
_080FD778: .4byte 0x68736D53
_080FD77C: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x080FD780
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080FD7E4
	cmp r4, #0x10
	bls _080FD794
	movs r4, #0x10
_080FD794:
	ldr r0, _080FD7EC @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080FD7F0 @ =0x68736D53
	cmp r1, r0
	bne _080FD7E4
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080FD7C8
	movs r1, #0
_080FD7BA:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080FD7BA
_080FD7C8:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080FD7D8
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080FD7D8:
	str r7, [r5, #0x24]
	ldr r0, _080FD7F4 @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _080FD7F0 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080FD7E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FD7EC: .4byte 0x03007FF0
_080FD7F0: .4byte 0x68736D53
_080FD7F4: .4byte MPlayMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x080FD7F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080FD8D8 @ =0x68736D53
	cmp r1, r0
	bne _080FD8CE
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080FD83A
	ldr r0, [r5]
	cmp r0, #0
	beq _080FD824
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080FD830
_080FD824:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080FD83A
	cmp r1, #0
	blt _080FD83A
_080FD830:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080FD8CE
_080FD83A:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080FD89A
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080FD8BA
	mov r8, r6
_080FD86E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080FD89A
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080FD86E
_080FD89A:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080FD8BA
	movs r1, #0
	mov r8, r1
_080FD8A4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080FD8A4
_080FD8BA:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080FD8CA
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_080FD8CA:
	ldr r0, _080FD8D8 @ =0x68736D53
	str r0, [r5, #0x34]
_080FD8CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FD8D8: .4byte 0x68736D53

	thumb_func_start m4aMPlayStop
m4aMPlayStop: @ 0x080FD8DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080FD918 @ =0x68736D53
	cmp r1, r0
	bne _080FD912
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080FD90E
_080FD8FE:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080FD8FE
_080FD90E:
	ldr r0, _080FD918 @ =0x68736D53
	str r0, [r6, #0x34]
_080FD912:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FD918: .4byte 0x68736D53

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x080FD91C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080FD9DE
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080FD95C @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080FD9DE
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080FD960
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080FD9B2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080FD9B2
	.align 2, 0
_080FD95C: .4byte 0x0000FFFF
_080FD960:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080FD9B2
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080FD992
_080FD976:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080FD98A
	strb r0, [r4]
_080FD98A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080FD976
_080FD992:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080FD9A6
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080FD9AA
_080FD9A6:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080FD9AA:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080FD9DE
_080FD9B2:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080FD9DE
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080FD9C0:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080FD9D6
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080FD9D6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080FD9C0
_080FD9DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x080FD9E4
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080FDA48
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080FDA0C
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080FDA0C:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080FDA22
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080FDA22:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080FDA2E
	adds r1, r0, #0
	b _080FDA34
_080FDA2E:
	cmp r1, #0x7f
	ble _080FDA34
	movs r1, #0x7f
_080FDA34:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_080FDA48:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080FDA8C
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080FDA86
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080FDA86:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080FDA8C:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKeyToCgbFreq
MidiKeyToCgbFreq: @ 0x080FDA98
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080FDAD0
	cmp r5, #0x14
	bhi _080FDAB4
	movs r5, #0
	b _080FDAC2
_080FDAB4:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080FDAC2
	movs r5, #0x3b
_080FDAC2:
	ldr r0, _080FDACC @ =0x0810E4F4
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080FDB32
	.align 2, 0
_080FDACC: .4byte 0x0810E4F4
_080FDAD0:
	cmp r5, #0x23
	bhi _080FDADC
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080FDAEE
_080FDADC:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080FDAEE
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080FDAEE:
	ldr r3, _080FDB38 @ =0x0810E458
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080FDB3C @ =0x0810E4DC
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080FDB32:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080FDB38: .4byte 0x0810E458
_080FDB3C: .4byte 0x0810E4DC

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x080FDB40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080FDB68
	cmp r0, #2
	bgt _080FDB54
	cmp r0, #1
	beq _080FDB5A
	b _080FDB7C
_080FDB54:
	cmp r1, #3
	beq _080FDB70
	b _080FDB7C
_080FDB5A:
	ldr r1, _080FDB64 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _080FDB84
	.align 2, 0
_080FDB64: .4byte 0x04000063
_080FDB68:
	ldr r1, _080FDB6C @ =0x04000069
	b _080FDB7E
	.align 2, 0
_080FDB6C: .4byte 0x04000069
_080FDB70:
	ldr r1, _080FDB78 @ =0x04000070
	movs r0, #0
	b _080FDB86
	.align 2, 0
_080FDB78: .4byte 0x04000070
_080FDB7C:
	ldr r1, _080FDB8C @ =0x04000079
_080FDB7E:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_080FDB84:
	movs r0, #0x80
_080FDB86:
	strb r0, [r1]
	bx lr
	.align 2, 0
_080FDB8C: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x080FDB90
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _080FDBB0
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _080FDBBC
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _080FDBCA
_080FDBB0:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080FDBBC
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _080FDBCA
_080FDBBC:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _080FDBDA
_080FDBCA:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _080FDBDC
	movs r0, #0xf
_080FDBDA:
	strb r0, [r1, #0xa]
_080FDBDC:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x080FDBF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _080FDC18 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080FDC1C
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _080FDC22
	.align 2, 0
_080FDC18: .4byte 0x03007FF0
_080FDC1C:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_080FDC22:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_080FDC28:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _080FDC3E
	b _080FE028
_080FDC3E:
	cmp r6, #2
	beq _080FDC70
	cmp r6, #2
	bgt _080FDC4C
	cmp r6, #1
	beq _080FDC52
	b _080FDCA8
_080FDC4C:
	cmp r6, #3
	beq _080FDC88
	b _080FDCA8
_080FDC52:
	ldr r0, _080FDC64 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _080FDC68 @ =0x04000062
	ldr r2, _080FDC6C @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080FDCB8
	.align 2, 0
_080FDC64: .4byte 0x04000060
_080FDC68: .4byte 0x04000062
_080FDC6C: .4byte 0x04000063
_080FDC70:
	ldr r0, _080FDC7C @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _080FDC80 @ =0x04000068
	ldr r2, _080FDC84 @ =0x04000069
	b _080FDCB0
	.align 2, 0
_080FDC7C: .4byte 0x04000061
_080FDC80: .4byte 0x04000068
_080FDC84: .4byte 0x04000069
_080FDC88:
	ldr r0, _080FDC9C @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _080FDCA0 @ =0x04000072
	ldr r2, _080FDCA4 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080FDCB8
	.align 2, 0
_080FDC9C: .4byte 0x04000070
_080FDCA0: .4byte 0x04000072
_080FDCA4: .4byte 0x04000073
_080FDCA8:
	ldr r0, _080FDD08 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _080FDD0C @ =0x04000078
	ldr r2, _080FDD10 @ =0x04000079
_080FDCB0:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080FDCB8:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080FDDAE
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _080FDDD2
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _080FDD20
	cmp r6, #2
	bgt _080FDD14
	cmp r6, #1
	beq _080FDD1A
	b _080FDD74
	.align 2, 0
_080FDD08: .4byte 0x04000071
_080FDD0C: .4byte 0x04000078
_080FDD10: .4byte 0x04000079
_080FDD14:
	cmp r6, #3
	beq _080FDD2C
	b _080FDD74
_080FDD1A:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_080FDD20:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _080FDD80
_080FDD2C:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080FDD54
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _080FDD68 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080FDD54:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080FDD6C
	movs r0, #0xc0
	b _080FDD8E
	.align 2, 0
_080FDD68: .4byte 0x04000090
_080FDD6C:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _080FDD90
_080FDD74:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_080FDD80:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080FDD8E
	movs r0, #0x40
_080FDD8E:
	strb r0, [r4, #0x1a]
_080FDD90:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080FDDAA
	b _080FDEE6
_080FDDAA:
	strb r2, [r4, #9]
	b _080FDF14
_080FDDAE:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080FDDE0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _080FDDD2
	b _080FDF26
_080FDDD2:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _080FE024
_080FDDE0:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _080FDE20
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080FDE20
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080FDE52
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080FDF14
	ldrb r2, [r4, #7]
	mov r8, r2
	b _080FDF14
_080FDE20:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080FDF14
	cmp r6, #3
	bne _080FDE32
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080FDE32:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _080FDE86
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080FDE82
_080FDE52:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080FDDD2
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080FDF26
	movs r2, #8
	mov r8, r2
	b _080FDF26
_080FDE82:
	ldrb r0, [r4, #7]
	b _080FDF12
_080FDE86:
	cmp r0, #1
	bne _080FDE92
_080FDE8A:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080FDF12
_080FDE92:
	cmp r0, #2
	bne _080FDED6
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080FDED2
_080FDEAA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080FDEBA
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _080FDE52
_080FDEBA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080FDE8A
	movs r0, #8
	mov r8, r0
	b _080FDE8A
_080FDED2:
	ldrb r0, [r4, #5]
	b _080FDF12
_080FDED6:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _080FDF10
_080FDEE6:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080FDEAA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080FDF14
	ldrb r2, [r4, #5]
	mov r8, r2
	b _080FDF14
_080FDF10:
	ldrb r0, [r4, #4]
_080FDF12:
	strb r0, [r4, #0xb]
_080FDF14:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _080FDF26
	subs r0, #1
	str r0, [sp]
	b _080FDE20
_080FDF26:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080FDF9E
	cmp r6, #3
	bgt _080FDF66
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _080FDF66
	ldr r0, _080FDF50 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _080FDF58
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080FDF54 @ =0x000007FC
	b _080FDF62
	.align 2, 0
_080FDF50: .4byte 0x04000089
_080FDF54: .4byte 0x000007FC
_080FDF58:
	cmp r0, #0x7f
	bgt _080FDF66
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080FDF74 @ =0x000007FE
_080FDF62:
	ands r0, r1
	str r0, [r4, #0x20]
_080FDF66:
	cmp r6, #4
	beq _080FDF78
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _080FDF86
	.align 2, 0
_080FDF74: .4byte 0x000007FE
_080FDF78:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_080FDF86:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080FDF9E:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _080FE024
	ldr r1, _080FDFE8 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _080FDFF0
	ldr r0, _080FDFEC @ =0x0810E530
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _080FE024
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _080FE024
	.align 2, 0
_080FDFE8: .4byte 0x04000081
_080FDFEC: .4byte 0x0810E530
_080FDFF0:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _080FE024
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080FE024
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080FE024:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080FE028:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080FE032
	b _080FDC28
_080FE032:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayTempoControl
m4aMPlayTempoControl: @ 0x080FE044
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080FE068 @ =0x68736D53
	cmp r3, r0
	bne _080FE060
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080FE060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FE068: .4byte 0x68736D53

	thumb_func_start m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x080FE06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080FE0D0 @ =0x68736D53
	cmp r3, r0
	bne _080FE0C4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080FE0C0
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080FE09C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080FE0B6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080FE0B6
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080FE0B6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080FE09C
_080FE0C0:
	ldr r0, _080FE0D0 @ =0x68736D53
	str r0, [r4, #0x34]
_080FE0C4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FE0D0: .4byte 0x68736D53

	thumb_func_start m4aMPlayPitchControl
m4aMPlayPitchControl: @ 0x080FE0D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080FE144 @ =0x68736D53
	cmp r3, r0
	bne _080FE136
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080FE132
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080FE10C:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080FE128
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080FE128
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_080FE128:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080FE10C
_080FE132:
	ldr r0, _080FE144 @ =0x68736D53
	str r0, [r4, #0x34]
_080FE136:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FE144: .4byte 0x68736D53

	thumb_func_start m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x080FE148
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080FE1AC @ =0x68736D53
	cmp r3, r0
	bne _080FE1A0
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080FE19C
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080FE178:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080FE192
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080FE192
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080FE192:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080FE178
_080FE19C:
	ldr r0, _080FE1AC @ =0x68736D53
	str r0, [r4, #0x34]
_080FE1A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FE1AC: .4byte 0x68736D53

	thumb_func_start ClearModM
ClearModM: @ 0x080FE1B0
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080FE1C4
	movs r0, #0xc
	b _080FE1C6
_080FE1C4:
	movs r0, #3
_080FE1C6:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start m4aMPlayModDepthSet
m4aMPlayModDepthSet: @ 0x080FE1D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080FE240 @ =0x68736D53
	cmp r1, r0
	bne _080FE230
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080FE22C
	mov sb, r8
_080FE200:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080FE222
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080FE222
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _080FE222
	adds r0, r4, #0
	bl ClearModM
_080FE222:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080FE200
_080FE22C:
	ldr r0, _080FE240 @ =0x68736D53
	str r0, [r6, #0x34]
_080FE230:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FE240: .4byte 0x68736D53

	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x080FE244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080FE2B4 @ =0x68736D53
	cmp r1, r0
	bne _080FE2A4
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080FE2A0
	mov sb, r8
_080FE274:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080FE296
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080FE296
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _080FE296
	adds r0, r4, #0
	bl ClearModM
_080FE296:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080FE274
_080FE2A0:
	ldr r0, _080FE2B4 @ =0x68736D53
	str r0, [r6, #0x34]
_080FE2A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FE2B4: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x080FE2B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080FE2DC
	b _080FE40A
_080FE2DC:
	lsls r0, r5, #2
	ldr r1, _080FE2E8 @ =_080FE2EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FE2E8: .4byte _080FE2EC
_080FE2EC: @ jump table
	.4byte _080FE334 @ case 0
	.4byte _080FE338 @ case 1
	.4byte _080FE340 @ case 2
	.4byte _080FE348 @ case 3
	.4byte _080FE352 @ case 4
	.4byte _080FE360 @ case 5
	.4byte _080FE36E @ case 6
	.4byte _080FE376 @ case 7
	.4byte _080FE37E @ case 8
	.4byte _080FE386 @ case 9
	.4byte _080FE38E @ case 10
	.4byte _080FE396 @ case 11
	.4byte _080FE39E @ case 12
	.4byte _080FE3AC @ case 13
	.4byte _080FE3BA @ case 14
	.4byte _080FE3C8 @ case 15
	.4byte _080FE3D6 @ case 16
	.4byte _080FE3E4 @ case 17
_080FE334:
	strb r2, [r3]
	b _080FE40A
_080FE338:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _080FE40A
_080FE340:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _080FE40A
_080FE348:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _080FE40A
_080FE352:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _080FE40A
_080FE360:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _080FE40A
_080FE36E:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080FE3F0
	b _080FE404
_080FE376:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080FE3F0
	b _080FE404
_080FE37E:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080FE3F0
	b _080FE404
_080FE386:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080FE3F0
	b _080FE404
_080FE38E:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080FE3F0
	b _080FE404
_080FE396:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080FE3F0
	b _080FE404
_080FE39E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080FE3F0
	b _080FE404
_080FE3AC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080FE3F0
	b _080FE404
_080FE3BA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080FE3F0
	b _080FE404
_080FE3C8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080FE3F0
	b _080FE404
_080FE3D6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080FE3F0
	b _080FE404
_080FE3E4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080FE404
_080FE3F0:
	ldr r0, _080FE400 @ =0x0203E5E4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl bxR2
	b _080FE40A
	.align 2, 0
_080FE400: .4byte 0x0203E5E4
_080FE404:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080FE40A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x080FE410
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080FE42C @ =0x0810E574
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl bxR2
	pop {r0}
	bx r0
	.align 2, 0
_080FE42C: .4byte 0x0810E574

	thumb_func_start ply_xxx
ply_xxx: @ 0x080FE430
	push {lr}
	ldr r2, _080FE440 @ =0x0203E5E0
	ldr r2, [r2]
	bl bxR2
	pop {r0}
	bx r0
	.align 2, 0
_080FE440: .4byte 0x0203E5E0

	thumb_func_start ply_xwave
ply_xwave: @ 0x080FE444
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080FE47C @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080FE480 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080FE484 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080FE488 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FE47C: .4byte 0xFFFFFF00
_080FE480: .4byte 0xFFFF00FF
_080FE484: .4byte 0xFF00FFFF
_080FE488: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x080FE48C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x080FE4A0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x080FE4B4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x080FE4C8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x080FE4DC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x080FE4F0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x080FE4FC
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x080FE508
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x080FE51C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start DummyFunc
DummyFunc: @ 0x080FE530
	bx lr
	.align 2, 0
