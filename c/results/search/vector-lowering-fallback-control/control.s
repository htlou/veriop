	.file	"control.ll"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function src
.LCPI0_0:
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	300                             # 0x12c
	.quad	7000                            # 0x1b58
	.text
	.globl	src
	.p2align	4
	.type	src,@function
src:                                    # @src
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$64, %rsp
                                        # kill: def $edi killed $edi def $rdi
	vmovaps	.LCPI0_0(%rip), %ymm0           # ymm0 = [4,20,300,7000]
	vmovaps	%ymm0, (%rsp)
	andl	$3, %edi
	movq	(%rsp,%rdi,8), %rax
	movq	%rbp, %rsp
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end0:
	.size	src, .Lfunc_end0-src
                                        # -- End function
	.globl	tgt                             # -- Begin function tgt
	.p2align	4
	.type	tgt,@function
tgt:                                    # @tgt
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	andl	$3, %edi
	leaq	table(%rip), %rax
	movq	(%rax,%rdi,8), %rax
	retq
.Lfunc_end1:
	.size	tgt, .Lfunc_end1-tgt
                                        # -- End function
	.type	table,@object                   # @table
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
table:
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	300                             # 0x12c
	.quad	7000                            # 0x1b58
	.size	table, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
