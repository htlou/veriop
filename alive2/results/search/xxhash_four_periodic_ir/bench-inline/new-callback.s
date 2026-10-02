
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_four_periodic_ir/bench-inline/new:     file format elf64-x86-64


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
    16ad:	0f 82 81 00 00 00    	jb     1734 <hash+0xe4>
    16b3:	8b 07                	mov    (%rdi),%eax
    16b5:	75 29                	jne    16e0 <hash+0x90>
    16b7:	c4 e3 7b f0 c8 0f    	rorx   $0xf,%eax,%ecx
    16bd:	c4 e3 7b f0 d0 08    	rorx   $0x8,%eax,%edx
    16c3:	31 ca                	xor    %ecx,%edx
    16c5:	31 c2                	xor    %eax,%edx
    16c7:	48 89 d1             	mov    %rdx,%rcx
    16ca:	48 c1 e1 20          	shl    $0x20,%rcx
    16ce:	48 09 d1             	or     %rdx,%rcx
    16d1:	48 b8 ca 64 c2 05 d4 	movabs $0x18bad3d405c264ca,%rax
    16d8:	d3 ba 18 
    16db:	48 31 c8             	xor    %rcx,%rax
    16de:	eb 2a                	jmp    170a <hash+0xba>
    16e0:	48 c1 e0 20          	shl    $0x20,%rax
    16e4:	8b 4c 37 fc          	mov    -0x4(%rdi,%rsi,1),%ecx
    16e8:	48 09 c1             	or     %rax,%rcx
    16eb:	48 ba a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rdx
    16f2:	b1 3a c7 
    16f5:	48 31 ca             	xor    %rcx,%rdx
    16f8:	c4 e3 fb f0 ca 0f    	rorx   $0xf,%rdx,%rcx
    16fe:	c4 e3 fb f0 c2 28    	rorx   $0x28,%rdx,%rax
    1704:	48 31 c8             	xor    %rcx,%rax
    1707:	48 31 d0             	xor    %rdx,%rax
    170a:	48 b9 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rcx
    1711:	1c b2 9f 
    1714:	48 0f af c1          	imul   %rcx,%rax
    1718:	48 89 c2             	mov    %rax,%rdx
    171b:	48 c1 ea 23          	shr    $0x23,%rdx
    171f:	48 01 f2             	add    %rsi,%rdx
    1722:	48 31 c2             	xor    %rax,%rdx
    1725:	48 0f af d1          	imul   %rcx,%rdx
    1729:	48 89 d0             	mov    %rdx,%rax
    172c:	48 c1 e8 1c          	shr    $0x1c,%rax
    1730:	48 31 d0             	xor    %rdx,%rax
    1733:	c3                   	ret    
    1734:	48 85 f6             	test   %rsi,%rsi
    1737:	74 53                	je     178c <hash+0x13c>
    1739:	0f b6 07             	movzbl (%rdi),%eax
    173c:	48 89 f1             	mov    %rsi,%rcx
    173f:	48 d1 e9             	shr    %rcx
    1742:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    1747:	c1 e0 10             	shl    $0x10,%eax
    174a:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    174e:	c1 e1 18             	shl    $0x18,%ecx
    1751:	09 c1                	or     %eax,%ecx
    1753:	48 09 d1             	or     %rdx,%rcx
    1756:	48 c1 e6 08          	shl    $0x8,%rsi
    175a:	48 09 ce             	or     %rcx,%rsi
    175d:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1762:	48 31 f0             	xor    %rsi,%rax
    1765:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    176c:	ae b2 c2 
    176f:	48 0f af c8          	imul   %rax,%rcx
    1773:	48 89 c8             	mov    %rcx,%rax
    1776:	48 c1 e8 1d          	shr    $0x1d,%rax
    177a:	48 31 c8             	xor    %rcx,%rax
    177d:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1784:	67 56 16 
    1787:	e9 0e ff ff ff       	jmp    169a <hash+0x4a>
    178c:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1793:	80 06 2d 
    1796:	c3                   	ret    

Disassembly of section .fini:
