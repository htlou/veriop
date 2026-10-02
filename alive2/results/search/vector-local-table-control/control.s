	.file	"control.ll"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function src
.LCPI0_0:
	.quad	2765702133756617546             # 0x2661bf6ff51a634a
	.quad	-8493270429887581760            # 0x8a21d78b1538b1c0
	.quad	-1160504230424452080            # 0xefe50f8d11366410
	.quad	5291143887273806931             # 0x496deb54f06f4c53
.LCPI0_1:
	.quad	-2572398748971526355            # 0xdc4d00f78ae4972d
	.quad	-2436064182340099334            # 0xde315c887190e2fa
	.quad	4055606894390288348             # 0x384868fba0c21fdc
	.quad	5350621376133947991             # 0x4a4139caf4136257
.LCPI0_2:
	.quad	8336770163655280242             # 0x73b2284b32bf8672
	.quad	-7881803417479397662            # 0x929e358d27ae3ee2
	.quad	-2941004127381733739            # 0xd72f745408743e95
	.quad	5502495245947142431             # 0x4c5cca45d0f4811f
.LCPI0_3:
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
	subq	$160, %rsp
	vmovaps	.LCPI0_0(%rip), %ymm0           # ymm0 = [2765702133756617546,9953473643821969856,17286239843285099536,5291143887273806931]
	vmovaps	%ymm0, 96(%rsp)
                                        # kill: def $edi killed $edi def $rdi
	vmovaps	.LCPI0_1(%rip), %ymm0           # ymm0 = [15874345324738025261,16010679891369452282,4055606894390288348,5350621376133947991]
	vmovaps	%ymm0, 64(%rsp)
	vmovaps	.LCPI0_2(%rip), %ymm0           # ymm0 = [8336770163655280242,10564940656230153954,15505739946327817877,5502495245947142431]
	vmovaps	%ymm0, 32(%rsp)
	vmovaps	.LCPI0_3(%rip), %ymm0           # ymm0 = [14144645293874801883,16226181191752404715,14552307339992752127,1433843135270481901]
	vmovaps	%ymm0, (%rsp)
	andl	$15, %edi
	movq	(%rsp,%rdi,8), %rax
	movq	%rbp, %rsp
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end0:
	.size	src, .Lfunc_end0-src
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function tgt
.LCPI1_0:
	.quad	-4302098779834749733            # 0xc44bdff4074eecdb
	.quad	-2220562881957146901            # 0xe12ef9d2eb86ceeb
	.quad	-3894436733716799489            # 0xc9f42e6c9e93dfff
	.quad	1433843135270481901             # 0x13e608bc156defed
.LCPI1_1:
	.quad	8336770163655280242             # 0x73b2284b32bf8672
	.quad	-7881803417479397662            # 0x929e358d27ae3ee2
	.quad	-2941004127381733739            # 0xd72f745408743e95
	.quad	5502495245947142431             # 0x4c5cca45d0f4811f
.LCPI1_2:
	.quad	-2572398748971526355            # 0xdc4d00f78ae4972d
	.quad	-2436064182340099334            # 0xde315c887190e2fa
	.quad	4055606894390288348             # 0x384868fba0c21fdc
	.quad	5350621376133947991             # 0x4a4139caf4136257
.LCPI1_3:
	.quad	2765702133756617546             # 0x2661bf6ff51a634a
	.quad	-8493270429887581760            # 0x8a21d78b1538b1c0
	.quad	-1160504230424452080            # 0xefe50f8d11366410
	.quad	5291143887273806931             # 0x496deb54f06f4c53
	.text
	.globl	tgt
	.p2align	4
	.type	tgt,@function
tgt:                                    # @tgt
# %bb.0:
	vmovaps	.LCPI1_0(%rip), %ymm0           # ymm0 = [14144645293874801883,16226181191752404715,14552307339992752127,1433843135270481901]
	vmovups	%ymm0, -128(%rsp)
                                        # kill: def $edi killed $edi def $rdi
	vmovaps	.LCPI1_1(%rip), %ymm0           # ymm0 = [8336770163655280242,10564940656230153954,15505739946327817877,5502495245947142431]
	vmovups	%ymm0, -96(%rsp)
	vmovaps	.LCPI1_2(%rip), %ymm0           # ymm0 = [15874345324738025261,16010679891369452282,4055606894390288348,5350621376133947991]
	vmovups	%ymm0, -64(%rsp)
	vmovaps	.LCPI1_3(%rip), %ymm0           # ymm0 = [2765702133756617546,9953473643821969856,17286239843285099536,5291143887273806931]
	vmovups	%ymm0, -32(%rsp)
	andl	$15, %edi
	movq	-128(%rsp,%rdi,8), %rax
	vzeroupper
	retq
.Lfunc_end1:
	.size	tgt, .Lfunc_end1-tgt
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
