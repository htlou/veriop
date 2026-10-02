	.file	"xxhash_old.c"
	.text
	.globl	target_1to3                     # -- Begin function target_1to3
	.p2align	4
	.type	target_1to3,@function
target_1to3:                            # @target_1to3
	.cfi_startproc
# %bb.0:
	movzbl	(%rdi), %eax
	movq	%rsi, %r8
	shrq	%r8
	movzbl	-1(%rdi,%rsi), %r9d
	shll	$16, %eax
	movzbl	(%rdi,%r8), %edi
	shll	$24, %edi
	orl	%eax, %edi
	orq	%r9, %rdi
	shlq	$8, %rsi
	orq	%rsi, %rdi
	movl	4(%rdx), %eax
	xorl	(%rdx), %eax
	addq	%rcx, %rax
	xorq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$33, %rcx
	xorq	%rax, %rcx
	movabsq	$-4417276706812531889, %rax     # imm = 0xC2B2AE3D27D4EB4F
	imulq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$29, %rcx
	xorq	%rax, %rcx
	movabsq	$1609587929392839161, %rdx      # imm = 0x165667B19E3779F9
	imulq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	xorq	%rdx, %rax
	retq
.Lfunc_end0:
	.size	target_1to3, .Lfunc_end0-target_1to3
	.cfi_endproc
                                        # -- End function
	.globl	target_4to8                     # -- Begin function target_4to8
	.p2align	4
	.type	target_4to8,@function
target_4to8:                            # @target_4to8
	.cfi_startproc
# %bb.0:
	movl	%ecx, %eax
	bswapl	%eax
	shlq	$32, %rax
	xorq	%rcx, %rax
	movl	-4(%rdi,%rsi), %ecx
	movq	16(%rdx), %r8
	xorq	8(%rdx), %r8
	subq	%rax, %r8
	movl	(%rdi), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	xorq	%r8, %rax
	rorxq	$15, %rax, %rcx
	rorxq	$40, %rax, %rdx
	xorq	%rcx, %rdx
	xorq	%rax, %rdx
	movabsq	$-6939452855193903323, %rax     # imm = 0x9FB21C651E98DF25
	imulq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$35, %rcx
	addq	%rsi, %rcx
	xorq	%rdx, %rcx
	imulq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$28, %rax
	xorq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	target_4to8, .Lfunc_end1-target_4to8
	.cfi_endproc
                                        # -- End function
	.globl	target_9to16                    # -- Begin function target_9to16
	.p2align	4
	.type	target_9to16,@function
target_9to16:                           # @target_9to16
	.cfi_startproc
# %bb.0:
	movq	32(%rdx), %r8
	movq	48(%rdx), %rax
	xorq	24(%rdx), %r8
	addq	%rcx, %r8
	xorq	40(%rdx), %rax
	subq	%rcx, %rax
	xorq	(%rdi), %r8
	xorq	-8(%rdi,%rsi), %rax
	movq	%rax, %rdx
	mulxq	%r8, %rcx, %rdx
	bswapq	%r8
	addq	%rsi, %rax
	addq	%rax, %r8
	xorq	%rcx, %rdx
	addq	%r8, %rdx
	movq	%rdx, %rax
	shrq	$37, %rax
	xorq	%rdx, %rax
	movabsq	$1609587791953885689, %rcx      # imm = 0x165667919E3779F9
	imulq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	xorq	%rcx, %rax
	retq
.Lfunc_end2:
	.size	target_9to16, .Lfunc_end2-target_9to16
	.cfi_endproc
                                        # -- End function
	.globl	target_0to16                    # -- Begin function target_0to16
	.p2align	4
	.type	target_0to16,@function
target_0to16:                           # @target_0to16
	.cfi_startproc
# %bb.0:
	cmpq	$9, %rsi
	jb	.LBB3_3
# %bb.1:
	movq	32(%rdx), %r8
	movq	48(%rdx), %rax
	xorq	24(%rdx), %r8
	addq	%rcx, %r8
	xorq	40(%rdx), %rax
	subq	%rcx, %rax
	xorq	(%rdi), %r8
	xorq	-8(%rdi,%rsi), %rax
	movq	%rax, %rdx
	mulxq	%r8, %rcx, %rdx
	bswapq	%r8
	addq	%rax, %rsi
	addq	%r8, %rsi
	xorq	%rcx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	shrq	$37, %rax
	xorq	%rdx, %rax
	movabsq	$1609587791953885689, %rcx      # imm = 0x165667919E3779F9
.LBB3_2:
	imulq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	xorq	%rcx, %rax
	retq
.LBB3_3:
	cmpq	$4, %rsi
	jb	.LBB3_5
# %bb.4:
	movl	%ecx, %eax
	bswapl	%eax
	shlq	$32, %rax
	xorq	%rcx, %rax
	movl	-4(%rdi,%rsi), %ecx
	movq	16(%rdx), %r8
	xorq	8(%rdx), %r8
	subq	%rax, %r8
	movl	(%rdi), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	xorq	%r8, %rax
	rorxq	$15, %rax, %rcx
	rorxq	$40, %rax, %rdx
	xorq	%rcx, %rdx
	xorq	%rax, %rdx
	movabsq	$-6939452855193903323, %rax     # imm = 0x9FB21C651E98DF25
	imulq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$35, %rcx
	addq	%rsi, %rcx
	xorq	%rdx, %rcx
	imulq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$28, %rax
	xorq	%rcx, %rax
	retq
.LBB3_5:
	movabsq	$-4417276706812531889, %r8      # imm = 0xC2B2AE3D27D4EB4F
	movabsq	$1609587929392839161, %rax      # imm = 0x165667B19E3779F9
	testq	%rsi, %rsi
	je	.LBB3_7
# %bb.6:
	movzbl	(%rdi), %r9d
	movq	%rsi, %r10
	shrq	%r10
	movzbl	-1(%rdi,%rsi), %r11d
	shll	$16, %r9d
	movzbl	(%rdi,%r10), %edi
	shll	$24, %edi
	orl	%r9d, %edi
	orq	%r11, %rdi
	shlq	$8, %rsi
	orq	%rdi, %rsi
	movl	4(%rdx), %edi
	xorl	(%rdx), %edi
	addq	%rdi, %rcx
	xorq	%rsi, %rcx
	movq	%rcx, %rdx
	shrq	$33, %rdx
	xorq	%rcx, %rdx
	imulq	%r8, %rdx
	movq	%rdx, %rcx
	shrq	$29, %rcx
	xorq	%rdx, %rcx
	jmp	.LBB3_2
.LBB3_7:
	movq	56(%rdx), %rsi
	xorq	64(%rdx), %rsi
	xorq	%rcx, %rsi
	movq	%rsi, %rcx
	shrq	$33, %rcx
	xorq	%rsi, %rcx
	imulq	%r8, %rcx
	movq	%rcx, %rdx
	shrq	$29, %rdx
	xorq	%rcx, %rdx
	imulq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	xorq	%rdx, %rax
	retq
.Lfunc_end3:
	.size	target_0to16, .Lfunc_end3-target_0to16
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
