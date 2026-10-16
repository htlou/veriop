_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	cmpq	%rsi, %r8
	je	.LBB_1
	pushq	%r14
	pushq	%rbx
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	jns	.LBB_4
	movq	$-1, %r9
	jmp	.LBB_7
.LBB_11:
	imulq	%rdi
	movq	%rdi, %rbx
	xorq	%r11, %rbx
	subq	%r11, %rbx
	testb	$64, %r10b
	movl	$0, %eax
	cmovneq	%rbx, %rax
	addq	%rdx, %rax
	sarxq	%r9, %rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB_13
.LBB_4:

	movq	(%r8), %rax
	movzbl	8(%r8), %r10d
	movl	%r10d, %r9d
	andl	$63, %r9d
	movl	%r10d, %edx
	sarb	$7, %dl
	movsbq	%dl, %r11
	testq	%rax, %rax
	jne	.LBB_11
	shrxq	%r9, %rdi, %rax
	xorq	%r11, %rax
	subq	%r11, %rax
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	jne	.LBB_4
.LBB_13:
	popq	%rbx
	popq	%r14
	movq	%rcx, %rax
	retq
.LBB_8:
	imulq	%rdi
	movq	%rdi, %r14
	xorq	%r11, %r14
	subq	%r11, %r14
	testb	$64, %bl
	movl	$0, %eax
	cmovneq	%r14, %rax
	addq	%rdx, %rax
	sarxq	%r10, %rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
.LBB_10:

	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB_13
.LBB_7:

	movq	(%r8), %rax
	movzbl	8(%r8), %ebx
	movl	%ebx, %r10d
	andl	$63, %r10d
	movl	%ebx, %edx
	sarb	$7, %dl
	movsbq	%dl, %r11
	testq	%rax, %rax
	jne	.LBB_8
	shlxq	%r10, %r9, %rax
	notq	%rax
	addq	%rdi, %rax
	sarxq	%r10, %rax, %rax
	xorq	%r11, %rax
	subq	%r11, %rax
	jmp	.LBB_10
.LBB_1:
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
