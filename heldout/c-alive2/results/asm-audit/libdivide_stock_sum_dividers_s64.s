_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %r8
	je	.LBB_15
	testq	%rdi, %rdi
	jns	.LBB_2
	movq	$-1, %r9
	jmp	.LBB_5
.LBB_13:
	sarxq	%r9, %rdx, %rax
	shrq	$63, %rdx
	addq	%rax, %rdx
	addq	%rdx, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB_15
.LBB_2:
	movq	(%r8), %rax
	movzbl	8(%r8), %r10d
	movl	%r10d, %r9d
	andl	$63, %r9d
	testq	%rax, %rax
	je	.LBB_3
	imulq	%rdi
	testb	$64, %r10b
	je	.LBB_13
	sarb	$7, %r10b
	movsbq	%r10b, %rax
	movq	%rdi, %r10
	xorq	%rax, %r10
	subq	%rax, %r10
	addq	%r10, %rdx
	jmp	.LBB_13
.LBB_3:
	shrxq	%r9, %rdi, %rdx
	sarb	$7, %r10b
	movsbq	%r10b, %rax
	xorq	%rax, %rdx
	subq	%rax, %rdx
	addq	%rdx, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	jne	.LBB_2
.LBB_15:
	movq	%rcx, %rax
	retq
.LBB_8:
	sarxq	%r10, %rdx, %rax
	shrq	$63, %rdx
	addq	%rax, %rdx
.LBB_10:
	addq	%rdx, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB_15
.LBB_5:
	movq	(%r8), %rax
	movzbl	8(%r8), %r11d
	movl	%r11d, %r10d
	andl	$63, %r10d
	testq	%rax, %rax
	je	.LBB_9
	imulq	%rdi
	testb	$64, %r11b
	je	.LBB_8
	sarb	$7, %r11b
	movsbq	%r11b, %rax
	movq	%rdi, %r11
	xorq	%rax, %r11
	subq	%rax, %r11
	addq	%r11, %rdx
	jmp	.LBB_8
.LBB_9:
	shlxq	%r10, %r9, %rax
	notq	%rax
	addq	%rdi, %rax
	sarxq	%r10, %rax, %rdx
	sarb	$7, %r11b
	movsbq	%r11b, %rax
	xorq	%rax, %rdx
	subq	%rax, %rdx
	jmp	.LBB_10
