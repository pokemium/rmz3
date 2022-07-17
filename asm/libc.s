	.include "asm/macros.inc"

	.syntax unified
	
	.text
	
	thumb_func_start memcpy
memcpy: @ 0x080FE9C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _080FEA00
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080FEA00
	adds r1, r5, #0
_080FE9DA:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080FE9DA
	cmp r2, #3
	bls _080FE9FE
_080FE9F4:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080FE9F4
_080FE9FE:
	adds r4, r1, #0
_080FEA00:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080FEA1A
	adds r1, r0, #0
_080FEA0C:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080FEA0C
_080FEA1A:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start memset
memset: @ 0x080FEA20
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _080FEA66
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _080FEA66
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _080FEA5A
_080FEA46:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080FEA46
	b _080FEA5A
_080FEA56:
	stm r1!, {r3}
	subs r2, #4
_080FEA5A:
	cmp r2, #3
	bhi _080FEA56
	adds r3, r1, #0
	b _080FEA66
_080FEA62:
	strb r4, [r3]
	adds r3, #1
_080FEA66:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080FEA62
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
