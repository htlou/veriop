	.file	"4-valid.ll"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function src
.LCPI0_0:
	.quad	-4302098779834749733            # 0xc44bdff4074eecdb
	.quad	-2220562881957146901            # 0xe12ef9d2eb86ceeb
	.quad	-3894436733716799489            # 0xc9f42e6c9e93dfff
	.quad	1433843135270481901             # 0x13e608bc156defed
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
	andl	$3, %edi
	vmovaps	.LCPI0_0(%rip), %ymm0           # ymm0 = [14144645293874801883,16226181191752404715,14552307339992752127,1433843135270481901]
	vmovaps	%ymm0, (%rsp)
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
# %bb.0:                                # %switch.lookup
                                        # kill: def $edi killed $edi def $rdi
	andl	$3, %edi
	leaq	.Lswitch.table.tgt(%rip), %rax
	movq	(%rax,%rdi,8), %rax
	retq
.Lfunc_end1:
	.size	tgt, .Lfunc_end1-tgt
                                        # -- End function
	.type	.Lswitch.table.tgt,@object      # @switch.table.tgt
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.Lswitch.table.tgt:
	.quad	-4302098779834749733            # 0xc44bdff4074eecdb
	.quad	-2220562881957146901            # 0xe12ef9d2eb86ceeb
	.quad	-3894436733716799489            # 0xc9f42e6c9e93dfff
	.quad	1433843135270481901             # 0x13e608bc156defed
	.size	.Lswitch.table.tgt, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
