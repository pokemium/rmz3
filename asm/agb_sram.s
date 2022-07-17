	.include "asm/macros.inc"

	.syntax unified
	
	.text
	
	thumb_func_start ReadSram_Core
ReadSram_Core: @ 0x080FE550
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _080FE56C
	movs r2, #1
	rsbs r2, r2, #0
_080FE55E:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _080FE55E
_080FE56C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadSram
ReadSram: @ 0x080FE574
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080FE5A0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080FE5A4 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080FE5A8 @ =ReadSram_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080FE5AC @ =ReadSram
	ldr r1, _080FE5A8 @ =ReadSram_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080FE5BC
	.align 2, 0
_080FE5A0: .4byte 0x04000204
_080FE5A4: .4byte 0x0000FFFC
_080FE5A8: .4byte ReadSram_Core
_080FE5AC: .4byte ReadSram
_080FE5B0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080FE5BC:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080FE5B0
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl bxR3
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start WriteSram
WriteSram: @ 0x080FE5D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080FE610 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080FE614 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080FE608
	adds r1, r0, #0
_080FE5FA:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080FE5FA
_080FE608:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FE610: .4byte 0x04000204
_080FE614: .4byte 0x0000FFFC

	thumb_func_start VerifySram_Core
VerifySram_Core: @ 0x080FE618
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080FE63E
	movs r2, #1
	rsbs r2, r2, #0
_080FE628:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080FE638
	subs r0, r3, #1
	b _080FE640
_080FE638:
	subs r4, #1
	cmp r4, r2
	bne _080FE628
_080FE63E:
	movs r0, #0
_080FE640:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifySram
VerifySram: @ 0x080FE648
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080FE674 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080FE678 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080FE67C @ =VerifySram_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080FE680 @ =VerifySram
	ldr r1, _080FE67C @ =VerifySram_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080FE690
	.align 2, 0
_080FE674: .4byte 0x04000204
_080FE678: .4byte 0x0000FFFC
_080FE67C: .4byte VerifySram_Core
_080FE680: .4byte VerifySram
_080FE684:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080FE690:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080FE684
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl bxR3
	add sp, #0xc0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start WriteSramEx
WriteSramEx: @ 0x080FE6AC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _080FE6BE
_080FE6B8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080FE6BE:
	cmp r7, #2
	bhi _080FE6DC
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl WriteSram
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl VerifySram
	adds r3, r0, #0
	cmp r3, #0
	bne _080FE6B8
_080FE6DC:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
