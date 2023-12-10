# rustc 1.74.0
# Generated with:
# cargo rustc
#			--release
#			-- --target x86_64-pc-windows-gnu
#			   --emit asm
sum_vec:
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB0_1
	movq	(%rcx), %rcx
	cmpq	$8, %rdx
	jae	.LBB0_5
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.LBB0_4
.LBB0_1:
	xorl	%eax, %eax
	retq
.LBB0_5:
	movq	%rdx, %r8
	andq	$-8, %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_6:
	movdqu	(%rcx,%rax,4), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	16(%rcx,%rax,4), %xmm2
	paddd	%xmm2, %xmm1
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.LBB0_6
	paddd	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	jmp	.LBB0_8
.LBB0_4:
	addl	(%rcx,%r8,4), %eax
	incq	%r8
.LBB0_8:
	cmpq	%r8, %rdx
	jne	.LBB0_4
	retq
