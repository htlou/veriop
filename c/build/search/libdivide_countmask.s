	.file	"libdivide_countmask.c"
	.text
	.globl	target_u32                      # -- Begin function target_u32
	.p2align	4
	.type	target_u32,@function
target_u32:                             # @target_u32
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	je	.LBB0_1
# %bb.2:
	movl	%edi, %eax
	movl	%esi, %ecx
	imulq	%rax, %rcx
	shrq	$32, %rcx
	movzbl	%dl, %eax
	movl	%eax, %edx
	shrl	$6, %edx
	andl	$1, %edx
	imull	$224, %edx, %esi
	negl	%edx
	subl	%ecx, %edi
	shrl	%edi
	andl	%edx, %edi
	addl	%ecx, %edi
	andnl	%eax, %esi, %eax
	shrxl	%eax, %edi, %eax
	retq
.LBB0_1:
	shrxl	%edx, %edi, %eax
	retq
.Lfunc_end0:
	.size	target_u32, .Lfunc_end0-target_u32
	.cfi_endproc
                                        # -- End function
	.globl	target_u64                      # -- Begin function target_u64
	.p2align	4
	.type	target_u64,@function
target_u64:                             # @target_u64
	.cfi_startproc
# %bb.0:
	movl	%edx, %eax
	testq	%rsi, %rsi
	je	.LBB1_1
# %bb.2:
	movq	%rsi, %rdx
	mulxq	%rdi, %rcx, %rcx
	movl	%eax, %edx
	shrb	$6, %dl
	andb	$1, %dl
	movzbl	%dl, %edx
	subq	%rcx, %rdi
	shrq	%rdi
	movq	%rdx, %rsi
	negq	%rsi
	andq	%rdi, %rsi
	addq	%rcx, %rsi
	shll	$6, %edx
	leal	(%rdx,%rdx,2), %ecx
	movzbl	%al, %eax
	andnl	%eax, %ecx, %eax
	shrxq	%rax, %rsi, %rax
	retq
.LBB1_1:
	shrxq	%rax, %rdi, %rax
	retq
.Lfunc_end1:
	.size	target_u64, .Lfunc_end1-target_u64
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
