	.file	"libdivide_select.c"
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
	movl	%eax, %esi
	shll	$25, %esi
	sarl	$31, %esi
	subl	%ecx, %edi
	shrl	%edi
	andl	%esi, %edi
	addl	%ecx, %edi
	movl	%eax, %ecx
	andb	$31, %cl
	testb	$64, %dl
	movzbl	%cl, %ecx
	cmovel	%eax, %ecx
	shrxl	%ecx, %edi, %eax
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
	movzbl	%al, %edx
	subq	%rcx, %rdi
	shrq	%rdi
	movl	%edx, %esi
	andb	$63, %sil
	xorl	%r8d, %r8d
	testb	$64, %al
	cmovneq	%rdi, %r8
	movzbl	%sil, %eax
	cmovel	%edx, %eax
	addq	%rcx, %r8
	shrxq	%rax, %r8, %rax
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
