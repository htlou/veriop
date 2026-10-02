	.file	"libdivide_unpredictable.c"
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
	movl	%edi, %ecx
	movl	%esi, %eax
	imulq	%rcx, %rax
	shrq	$32, %rax
	testb	$64, %dl
	jne	.LBB0_3
# %bb.4:
	shrxl	%edx, %eax, %eax
	retq
.LBB0_1:
	shrxl	%edx, %edi, %eax
	retq
.LBB0_3:
	subl	%eax, %edi
	shrl	%edi
	addl	%eax, %edi
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
	testb	$64, %al
	jne	.LBB1_3
# %bb.4:
	shrxq	%rax, %rcx, %rax
	retq
.LBB1_1:
	shrxq	%rax, %rdi, %rax
	retq
.LBB1_3:
	subq	%rcx, %rdi
	shrq	%rdi
	addq	%rcx, %rdi
	shrxq	%rax, %rdi, %rax
	retq
.Lfunc_end1:
	.size	target_u64, .Lfunc_end1-target_u64
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
