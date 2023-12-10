; rustc 1.74.0
; Generated with:
; cargo rustc
;			--release
;			-- --target x86_64-pc-windows-gnu
;			   --emit asm
sum_slice:
	testq	%rdx, %rdx
	je	.LBB2_1
	cmpq	$8, %rdx
	jae	.LBB2_4
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.LBB2_7
.LBB2_1:
	xorl	%eax, %eax
	retq
.LBB2_4:
	movq	%rdx, %r8
	andq	$-8, %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB2_5:
	movdqu	(%rcx,%rax,4), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	16(%rcx,%rax,4), %xmm2
	paddd	%xmm2, %xmm1
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.LBB2_5
	paddd	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpq	%rdx, %r8
	je	.LBB2_8
	.p2align	4, 0x90
.LBB2_7:
	addl	(%rcx,%r8,4), %eax
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB2_7
.LBB2_8:
	retq
