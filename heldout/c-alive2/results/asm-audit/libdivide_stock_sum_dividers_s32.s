_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB_1
	pushq	%rbx
	movslq	%edi, %rsi
	xorl	%eax, %eax
	testl	%esi, %esi
	jns	.LBB_4
	movl	$-1, %r8d
	jmp	.LBB_7
.LBB_5:
	sarb	$7, %r10b
	movsbl	%r10b, %r10d
	shrxl	%r9d, %edi, %r8d
	xorl	%r10d, %r8d
	subl	%r10d, %r8d
.LBB_16:
	movslq	%r8d, %r8
	addq	%r8, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB_17
.LBB_4:
	movslq	(%rcx), %r8
	movzbl	4(%rcx), %r10d
	movl	%r10d, %r9d
	andl	$31, %r9d
	testq	%r8, %r8
	je	.LBB_5
	imulq	%rsi, %r8
	shrq	$32, %r8
	testb	$64, %r10b
	je	.LBB_15
	sarb	$7, %r10b
	movsbl	%r10b, %r10d
	movl	%edi, %r11d
	xorl	%r10d, %r11d
	subl	%r10d, %r11d
	addl	%r8d, %r11d
	movl	%r11d, %r8d
.LBB_15:
	sarxl	%r9d, %r8d, %r9d
	shrl	$31, %r8d
	addl	%r9d, %r8d
	jmp	.LBB_16
.LBB_11:
	sarb	$7, %r11b
	movsbl	%r11b, %r11d
	shlxl	%r10d, %r8d, %r9d
	notl	%r9d
	addl	%edi, %r9d
	sarxl	%r10d, %r9d, %r9d
	xorl	%r11d, %r9d
	subl	%r11d, %r9d
.LBB_12:
	movslq	%r9d, %r9
	addq	%r9, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB_17
.LBB_7:
	movslq	(%rcx), %r9
	movzbl	4(%rcx), %r11d
	movl	%r11d, %r10d
	andl	$31, %r10d
	testq	%r9, %r9
	je	.LBB_11
	imulq	%rsi, %r9
	shrq	$32, %r9
	testb	$64, %r11b
	je	.LBB_10
	sarb	$7, %r11b
	movsbl	%r11b, %r11d
	movl	%edi, %ebx
	xorl	%r11d, %ebx
	subl	%r11d, %ebx
	addl	%r9d, %ebx
	movl	%ebx, %r9d
.LBB_10:
	sarxl	%r10d, %r9d, %r10d
	shrl	$31, %r9d
	addl	%r10d, %r9d
	jmp	.LBB_12
.LBB_17:
	popq	%rbx
	retq
.LBB_1:
	xorl	%eax, %eax
	retq
