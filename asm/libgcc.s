	.include "asm/macros.inc"

	.syntax unified
	
	.text
	
	thumb_func_start bxR0
bxR0: @ 0x080FE6E4
	bx r0
	nop

	thumb_func_start bxR1
bxR1: @ 0x080FE6E8
	bx r1
	nop

	thumb_func_start bxR2
bxR2: @ 0x080FE6EC
	bx r2
	nop

	thumb_func_start bxR3
bxR3: @ 0x080FE6F0
	bx r3
	nop

	thumb_func_start bxR4
bxR4: @ 0x080FE6F4
	bx r4
	nop

	thumb_func_start bxR5
bxR5: @ 0x080FE6F8
	bx r5
	nop

	thumb_func_start bxR6
bxR6: @ 0x080FE6FC
	bx r6
	nop

	thumb_func_start bxR7
bxR7: @ 0x080FE700
	bx r7
	nop

	thumb_func_start bxR8
bxR8: @ 0x080FE704
	bx r8
	nop

	thumb_func_start bxR9
bxR9: @ 0x080FE708
	bx sb
	nop

	thumb_func_start bxR10
bxR10: @ 0x080FE70C
	bx sl
	nop

	thumb_func_start bxR11
bxR11: @ 0x080FE710
	bx fp
	nop

	thumb_func_start bxR12
bxR12: @ 0x080FE714
	bx ip
	nop

	thumb_func_start bxR13
bxR13: @ 0x080FE718
	bx sp
	nop

	thumb_func_start bxR14
bxR14: @ 0x080FE71C
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x080FE720
	cmp r1, #0
	beq _080FE7A8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _080FE736
	rsbs r1, r1, #0
_080FE736:
	cmp r0, #0
	bpl _080FE73C
	rsbs r0, r0, #0
_080FE73C:
	cmp r0, r1
	blo _080FE79A
	movs r4, #1
	lsls r4, r4, #0x1c
_080FE744:
	cmp r1, r4
	bhs _080FE752
	cmp r1, r0
	bhs _080FE752
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080FE744
_080FE752:
	lsls r4, r4, #3
_080FE754:
	cmp r1, r4
	bhs _080FE762
	cmp r1, r0
	bhs _080FE762
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080FE754
_080FE762:
	cmp r0, r1
	blo _080FE76A
	subs r0, r0, r1
	orrs r2, r3
_080FE76A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080FE776
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080FE776:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080FE782
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080FE782:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080FE78E
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080FE78E:
	cmp r0, #0
	beq _080FE79A
	lsrs r3, r3, #4
	beq _080FE79A
	lsrs r1, r1, #4
	b _080FE762
_080FE79A:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080FE7A4
	rsbs r0, r0, #0
_080FE7A4:
	pop {r4}
	mov pc, lr
_080FE7A8:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __div0
__div0: @ 0x080FE7B4
	mov pc, lr
	.align 2, 0

	thumb_func_start __modsi3
__modsi3: @ 0x080FE7B8
	movs r3, #1
	cmp r1, #0
	beq _080FE87C
	bpl _080FE7C2
	rsbs r1, r1, #0
_080FE7C2:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _080FE7CC
	rsbs r0, r0, #0
_080FE7CC:
	cmp r0, r1
	blo _080FE870
	movs r4, #1
	lsls r4, r4, #0x1c
_080FE7D4:
	cmp r1, r4
	bhs _080FE7E2
	cmp r1, r0
	bhs _080FE7E2
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080FE7D4
_080FE7E2:
	lsls r4, r4, #3
_080FE7E4:
	cmp r1, r4
	bhs _080FE7F2
	cmp r1, r0
	bhs _080FE7F2
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080FE7E4
_080FE7F2:
	movs r2, #0
	cmp r0, r1
	blo _080FE7FA
	subs r0, r0, r1
_080FE7FA:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080FE80C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080FE80C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080FE81E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080FE81E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080FE830
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080FE830:
	mov ip, r3
	cmp r0, #0
	beq _080FE83E
	lsrs r3, r3, #4
	beq _080FE83E
	lsrs r1, r1, #4
	b _080FE7F2
_080FE83E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080FE870
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080FE854
	lsrs r4, r1, #3
	adds r0, r0, r4
_080FE854:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080FE862
	lsrs r4, r1, #2
	adds r0, r0, r4
_080FE862:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080FE870
	lsrs r4, r1, #1
	adds r0, r0, r4
_080FE870:
	pop {r4}
	cmp r4, #0
	bpl _080FE878
	rsbs r0, r0, #0
_080FE878:
	pop {r4}
	mov pc, lr
_080FE87C:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x080FE888
	cmp r1, #0
	beq _080FE8F6
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _080FE8F0
	movs r4, #1
	lsls r4, r4, #0x1c
_080FE89A:
	cmp r1, r4
	bhs _080FE8A8
	cmp r1, r0
	bhs _080FE8A8
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080FE89A
_080FE8A8:
	lsls r4, r4, #3
_080FE8AA:
	cmp r1, r4
	bhs _080FE8B8
	cmp r1, r0
	bhs _080FE8B8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080FE8AA
_080FE8B8:
	cmp r0, r1
	blo _080FE8C0
	subs r0, r0, r1
	orrs r2, r3
_080FE8C0:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080FE8CC
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080FE8CC:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080FE8D8
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080FE8D8:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080FE8E4
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080FE8E4:
	cmp r0, #0
	beq _080FE8F0
	lsrs r3, r3, #4
	beq _080FE8F0
	lsrs r1, r1, #4
	b _080FE8B8
_080FE8F0:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_080FE8F6:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x080FE900
	cmp r1, #0
	beq _080FE9B6
	movs r3, #1
	cmp r0, r1
	bhs _080FE90C
	mov pc, lr
_080FE90C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_080FE912:
	cmp r1, r4
	bhs _080FE920
	cmp r1, r0
	bhs _080FE920
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080FE912
_080FE920:
	lsls r4, r4, #3
_080FE922:
	cmp r1, r4
	bhs _080FE930
	cmp r1, r0
	bhs _080FE930
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080FE922
_080FE930:
	movs r2, #0
	cmp r0, r1
	blo _080FE938
	subs r0, r0, r1
_080FE938:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080FE94A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080FE94A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080FE95C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080FE95C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080FE96E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080FE96E:
	mov ip, r3
	cmp r0, #0
	beq _080FE97C
	lsrs r3, r3, #4
	beq _080FE97C
	lsrs r1, r1, #4
	b _080FE930
_080FE97C:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080FE988
	pop {r4}
	mov pc, lr
_080FE988:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080FE996
	lsrs r4, r1, #3
	adds r0, r0, r4
_080FE996:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080FE9A4
	lsrs r4, r1, #2
	adds r0, r0, r4
_080FE9A4:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080FE9B2
	lsrs r4, r1, #1
	adds r0, r0, r4
_080FE9B2:
	pop {r4}
	mov pc, lr
_080FE9B6:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
