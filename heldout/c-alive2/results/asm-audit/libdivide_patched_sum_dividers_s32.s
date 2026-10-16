_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB_1
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movslq	%edi, %rsi
	xorl	%r8d, %r8d
	testl	%esi, %esi
	js	.LBB_7
	xorl	%eax, %eax
	jmp	.LBB_5
.LBB_12:
	imulq	%rsi, %r10
	shrq	$32, %r10
	movl	%ebx, %r11d
	sarb	$7, %r11b
	movsbl	%r11b, %ebp
	movl	%edi, %r11d
	xorl	%ebp, %r11d
	subl	%ebp, %r11d
	testb	$64, %bl
	cmovel	%r8d, %r11d
	addl	%r10d, %r11d
	sarxl	%r9d, %r11d, %r9d
	shrl	$31, %r11d
	addl	%r9d, %r11d
.LBB_13:
	movslq	%r11d, %r9
	addq	%r9, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB_14
.LBB_5:
	movslq	(%rcx), %r10
	movzbl	4(%rcx), %ebx
	movl	%ebx, %r9d
	andl	$31, %r9d
	testq	%r10, %r10
	jne	.LBB_12
	sarb	$7, %bl
	movsbl	%bl, %r10d
	shrxl	%r9d, %edi, %r11d
	xorl	%r10d, %r11d
	subl	%r10d, %r11d
	jmp	.LBB_13
.LBB_1:
	xorl	%eax, %eax
	retq
.LBB_7:
	movl	$-1, %r9d
	xorl	%eax, %eax
	jmp	.LBB_8
.LBB_9:
	imulq	%rsi, %rbx
	shrq	$32, %rbx
	movl	%ebp, %r11d
	sarb	$7, %r11b
	movsbl	%r11b, %r14d
	movl	%edi, %r11d
	xorl	%r14d, %r11d
	subl	%r14d, %r11d
	testb	$64, %bpl
	cmovel	%r8d, %r11d
	addl	%ebx, %r11d
	sarxl	%r10d, %r11d, %r10d
	shrl	$31, %r11d
	addl	%r10d, %r11d
.LBB_11:
	movslq	%r11d, %r10
	addq	%r10, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB_14
.LBB_8:
	movslq	(%rcx), %rbx
	movzbl	4(%rcx), %ebp
	movl	%ebp, %r10d
	andl	$31, %r10d
	testq	%rbx, %rbx
	jne	.LBB_9
	sarb	$7, %bpl
	movsbl	%bpl, %ebx
	shlxl	%r10d, %r9d, %r11d
	notl	%r11d
	addl	%edi, %r11d
	sarxl	%r10d, %r11d, %r11d
	xorl	%ebx, %r11d
	subl	%ebx, %r11d
	jmp	.LBB_11
.LBB_14:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
