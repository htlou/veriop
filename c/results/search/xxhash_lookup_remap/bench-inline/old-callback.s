
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_lookup_remap/bench-inline/old:     file format elf64-x86-64


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
    16ad:	72 56                	jb     1705 <hash+0xb5>
    16af:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    16b3:	8b 0f                	mov    (%rdi),%ecx
    16b5:	48 c1 e1 20          	shl    $0x20,%rcx
    16b9:	48 09 c1             	or     %rax,%rcx
    16bc:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    16c3:	b1 3a c7 
    16c6:	48 31 c8             	xor    %rcx,%rax
    16c9:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    16cf:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    16d5:	48 31 ca             	xor    %rcx,%rdx
    16d8:	48 31 c2             	xor    %rax,%rdx
    16db:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    16e2:	1c b2 9f 
    16e5:	48 0f af d0          	imul   %rax,%rdx
    16e9:	48 89 d1             	mov    %rdx,%rcx
    16ec:	48 c1 e9 23          	shr    $0x23,%rcx
    16f0:	48 01 f1             	add    %rsi,%rcx
    16f3:	48 31 d1             	xor    %rdx,%rcx
    16f6:	48 0f af c8          	imul   %rax,%rcx
    16fa:	48 89 c8             	mov    %rcx,%rax
    16fd:	48 c1 e8 1c          	shr    $0x1c,%rax
    1701:	48 31 c8             	xor    %rcx,%rax
    1704:	c3                   	ret    
    1705:	48 85 f6             	test   %rsi,%rsi
    1708:	74 53                	je     175d <hash+0x10d>
    170a:	0f b6 07             	movzbl (%rdi),%eax
    170d:	48 89 f1             	mov    %rsi,%rcx
    1710:	48 d1 e9             	shr    %rcx
    1713:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    1718:	c1 e0 10             	shl    $0x10,%eax
    171b:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    171f:	c1 e1 18             	shl    $0x18,%ecx
    1722:	09 c1                	or     %eax,%ecx
    1724:	48 09 d1             	or     %rdx,%rcx
    1727:	48 c1 e6 08          	shl    $0x8,%rsi
    172b:	48 09 ce             	or     %rcx,%rsi
    172e:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1733:	48 31 f0             	xor    %rsi,%rax
    1736:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    173d:	ae b2 c2 
    1740:	48 0f af c8          	imul   %rax,%rcx
    1744:	48 89 c8             	mov    %rcx,%rax
    1747:	48 c1 e8 1d          	shr    $0x1d,%rax
    174b:	48 31 c8             	xor    %rcx,%rax
    174e:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1755:	67 56 16 
    1758:	e9 3d ff ff ff       	jmp    169a <hash+0x4a>
    175d:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1764:	80 06 2d 
    1767:	c3                   	ret    

Disassembly of section .fini:
