
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecmix/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	48 83 fe 09          	cmp    $0x9,%rsi
    1654:	72 53                	jb     16a9 <hash+0x59>
    1656:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    165d:	73 82 67 
    1660:	48 33 07             	xor    (%rdi),%rax
    1663:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    166a:	bc 56 af 
    166d:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    1672:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    1677:	48 01 d6             	add    %rdx,%rsi
    167a:	48 0f c8             	bswap  %rax
    167d:	48 01 c6             	add    %rax,%rsi
    1680:	48 31 cf             	xor    %rcx,%rdi
    1683:	48 01 f7             	add    %rsi,%rdi
    1686:	48 89 f8             	mov    %rdi,%rax
    1689:	48 c1 e8 25          	shr    $0x25,%rax
    168d:	48 31 f8             	xor    %rdi,%rax
    1690:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    1697:	67 56 16 
    169a:	48 0f af c8          	imul   %rax,%rcx
    169e:	48 89 c8             	mov    %rcx,%rax
    16a1:	48 c1 e8 20          	shr    $0x20,%rax
    16a5:	48 31 c8             	xor    %rcx,%rax
    16a8:	c3                   	ret    
    16a9:	48 83 fe 04          	cmp    $0x4,%rsi
    16ad:	72 65                	jb     1714 <hash+0xc4>
    16af:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    16b3:	8b 0f                	mov    (%rdi),%ecx
    16b5:	48 c1 e1 20          	shl    $0x20,%rcx
    16b9:	48 09 c1             	or     %rax,%rcx
    16bc:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    16c3:	b1 3a c7 
    16c6:	48 31 c8             	xor    %rcx,%rax
    16c9:	62 f2 fd 08 7c c0    	vpbroadcastq %rax,%xmm0
    16cf:	62 f2 fd 08 15 0d 37 	vprolvq 0x1937(%rip),%xmm0,%xmm1        # 3010 <_IO_stdin_used+0x10>
    16d6:	19 00 00 
    16d9:	c5 f9 70 d1 ee       	vpshufd $0xee,%xmm1,%xmm2
    16de:	62 f3 fd 08 25 d1 96 	vpternlogq $0x96,%xmm1,%xmm0,%xmm2
    16e5:	c4 e1 f9 7e d0       	vmovq  %xmm2,%rax
    16ea:	48 b9 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rcx
    16f1:	1c b2 9f 
    16f4:	48 0f af c1          	imul   %rcx,%rax
    16f8:	48 89 c2             	mov    %rax,%rdx
    16fb:	48 c1 ea 23          	shr    $0x23,%rdx
    16ff:	48 01 f2             	add    %rsi,%rdx
    1702:	48 31 c2             	xor    %rax,%rdx
    1705:	48 0f af d1          	imul   %rcx,%rdx
    1709:	48 89 d0             	mov    %rdx,%rax
    170c:	48 c1 e8 1c          	shr    $0x1c,%rax
    1710:	48 31 d0             	xor    %rdx,%rax
    1713:	c3                   	ret    
    1714:	48 85 f6             	test   %rsi,%rsi
    1717:	74 53                	je     176c <hash+0x11c>
    1719:	0f b6 07             	movzbl (%rdi),%eax
    171c:	48 89 f1             	mov    %rsi,%rcx
    171f:	48 d1 e9             	shr    %rcx
    1722:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    1727:	c1 e0 10             	shl    $0x10,%eax
    172a:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    172e:	c1 e1 18             	shl    $0x18,%ecx
    1731:	09 c1                	or     %eax,%ecx
    1733:	48 09 d1             	or     %rdx,%rcx
    1736:	48 c1 e6 08          	shl    $0x8,%rsi
    173a:	48 09 ce             	or     %rcx,%rsi
    173d:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1742:	48 31 f0             	xor    %rsi,%rax
    1745:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    174c:	ae b2 c2 
    174f:	48 0f af c8          	imul   %rax,%rcx
    1753:	48 89 c8             	mov    %rcx,%rax
    1756:	48 c1 e8 1d          	shr    $0x1d,%rax
    175a:	48 31 c8             	xor    %rcx,%rax
    175d:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1764:	67 56 16 
    1767:	e9 2e ff ff ff       	jmp    169a <hash+0x4a>
    176c:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1773:	80 06 2d 
    1776:	c3                   	ret    

Disassembly of section .fini:
