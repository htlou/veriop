
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecpack/bench-inline/new:     file format elf64-x86-64


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
    16ad:	72 5a                	jb     1709 <hash+0xb9>
    16af:	c5 f9 6e 44 37 fc    	vmovd  -0x4(%rdi,%rsi,1),%xmm0
    16b5:	c4 e3 79 22 07 01    	vpinsrd $0x1,(%rdi),%xmm0,%xmm0
    16bb:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    16c0:	48 b9 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rcx
    16c7:	b1 3a c7 
    16ca:	48 31 c1             	xor    %rax,%rcx
    16cd:	c4 e3 fb f0 c1 0f    	rorx   $0xf,%rcx,%rax
    16d3:	c4 e3 fb f0 d1 28    	rorx   $0x28,%rcx,%rdx
    16d9:	48 31 c2             	xor    %rax,%rdx
    16dc:	48 31 ca             	xor    %rcx,%rdx
    16df:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    16e6:	1c b2 9f 
    16e9:	48 0f af d0          	imul   %rax,%rdx
    16ed:	48 89 d1             	mov    %rdx,%rcx
    16f0:	48 c1 e9 23          	shr    $0x23,%rcx
    16f4:	48 01 f1             	add    %rsi,%rcx
    16f7:	48 31 d1             	xor    %rdx,%rcx
    16fa:	48 0f af c8          	imul   %rax,%rcx
    16fe:	48 89 c8             	mov    %rcx,%rax
    1701:	48 c1 e8 1c          	shr    $0x1c,%rax
    1705:	48 31 c8             	xor    %rcx,%rax
    1708:	c3                   	ret    
    1709:	48 85 f6             	test   %rsi,%rsi
    170c:	74 53                	je     1761 <hash+0x111>
    170e:	0f b6 07             	movzbl (%rdi),%eax
    1711:	48 89 f1             	mov    %rsi,%rcx
    1714:	48 d1 e9             	shr    %rcx
    1717:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    171c:	c1 e0 10             	shl    $0x10,%eax
    171f:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    1723:	c1 e1 18             	shl    $0x18,%ecx
    1726:	09 c1                	or     %eax,%ecx
    1728:	48 09 d1             	or     %rdx,%rcx
    172b:	48 c1 e6 08          	shl    $0x8,%rsi
    172f:	48 09 ce             	or     %rcx,%rsi
    1732:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1737:	48 31 f0             	xor    %rsi,%rax
    173a:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1741:	ae b2 c2 
    1744:	48 0f af c8          	imul   %rax,%rcx
    1748:	48 89 c8             	mov    %rcx,%rax
    174b:	48 c1 e8 1d          	shr    $0x1d,%rax
    174f:	48 31 c8             	xor    %rcx,%rax
    1752:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1759:	67 56 16 
    175c:	e9 39 ff ff ff       	jmp    169a <hash+0x4a>
    1761:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1768:	80 06 2d 
    176b:	c3                   	ret    

Disassembly of section .fini:
