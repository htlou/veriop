
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	48 83 fe 09          	cmp    $0x9,%rsi
    1654:	72 75                	jb     16cb <hash+0x7b>
    1656:	48 83 fe 10          	cmp    $0x10,%rsi
    165a:	75 19                	jne    1675 <hash+0x25>
    165c:	c5 fa 6f 07          	vmovdqu (%rdi),%xmm0
    1660:	c5 f9 ef 05 a8 19 00 	vpxor  0x19a8(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1667:	00 
    1668:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
    166d:	c4 e3 f9 16 c0 01    	vpextrq $0x1,%xmm0,%rax
    1673:	eb 1c                	jmp    1691 <hash+0x41>
    1675:	48 ba b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rdx
    167c:	73 82 67 
    167f:	48 33 17             	xor    (%rdi),%rdx
    1682:	48 b8 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rax
    1689:	bc 56 af 
    168c:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    1691:	48 89 d1             	mov    %rdx,%rcx
    1694:	c4 e2 eb f6 f8       	mulx   %rax,%rdx,%rdi
    1699:	48 0f c9             	bswap  %rcx
    169c:	48 31 d7             	xor    %rdx,%rdi
    169f:	48 01 c6             	add    %rax,%rsi
    16a2:	48 01 ce             	add    %rcx,%rsi
    16a5:	48 01 fe             	add    %rdi,%rsi
    16a8:	48 89 f0             	mov    %rsi,%rax
    16ab:	48 c1 e8 25          	shr    $0x25,%rax
    16af:	48 31 f0             	xor    %rsi,%rax
    16b2:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    16b9:	67 56 16 
    16bc:	48 0f af c8          	imul   %rax,%rcx
    16c0:	48 89 c8             	mov    %rcx,%rax
    16c3:	48 c1 e8 20          	shr    $0x20,%rax
    16c7:	48 31 c8             	xor    %rcx,%rax
    16ca:	c3                   	ret    
    16cb:	48 83 fe 04          	cmp    $0x4,%rsi
    16cf:	72 56                	jb     1727 <hash+0xd7>
    16d1:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    16d5:	8b 0f                	mov    (%rdi),%ecx
    16d7:	48 c1 e1 20          	shl    $0x20,%rcx
    16db:	48 09 c1             	or     %rax,%rcx
    16de:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    16e5:	b1 3a c7 
    16e8:	48 31 c8             	xor    %rcx,%rax
    16eb:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    16f1:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    16f7:	48 31 ca             	xor    %rcx,%rdx
    16fa:	48 31 c2             	xor    %rax,%rdx
    16fd:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    1704:	1c b2 9f 
    1707:	48 0f af d0          	imul   %rax,%rdx
    170b:	48 89 d1             	mov    %rdx,%rcx
    170e:	48 c1 e9 23          	shr    $0x23,%rcx
    1712:	48 01 f1             	add    %rsi,%rcx
    1715:	48 31 d1             	xor    %rdx,%rcx
    1718:	48 0f af c8          	imul   %rax,%rcx
    171c:	48 89 c8             	mov    %rcx,%rax
    171f:	48 c1 e8 1c          	shr    $0x1c,%rax
    1723:	48 31 c8             	xor    %rcx,%rax
    1726:	c3                   	ret    
    1727:	48 85 f6             	test   %rsi,%rsi
    172a:	74 53                	je     177f <hash+0x12f>
    172c:	0f b6 07             	movzbl (%rdi),%eax
    172f:	48 89 f1             	mov    %rsi,%rcx
    1732:	48 d1 e9             	shr    %rcx
    1735:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    173a:	c1 e0 10             	shl    $0x10,%eax
    173d:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    1741:	c1 e1 18             	shl    $0x18,%ecx
    1744:	09 c1                	or     %eax,%ecx
    1746:	48 09 d1             	or     %rdx,%rcx
    1749:	48 c1 e6 08          	shl    $0x8,%rsi
    174d:	48 09 ce             	or     %rcx,%rsi
    1750:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1755:	48 31 f0             	xor    %rsi,%rax
    1758:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    175f:	ae b2 c2 
    1762:	48 0f af c8          	imul   %rax,%rcx
    1766:	48 89 c8             	mov    %rcx,%rax
    1769:	48 c1 e8 1d          	shr    $0x1d,%rax
    176d:	48 31 c8             	xor    %rcx,%rax
    1770:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1777:	67 56 16 
    177a:	e9 3d ff ff ff       	jmp    16bc <hash+0x6c>
    177f:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1786:	80 06 2d 
    1789:	c3                   	ret    

Disassembly of section .fini:
