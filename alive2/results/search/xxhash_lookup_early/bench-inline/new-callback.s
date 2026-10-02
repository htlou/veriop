
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_lookup_early/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	48 83 fe 01          	cmp    $0x1,%rsi
    1654:	75 14                	jne    166a <hash+0x1a>
    1656:	0f b6 07             	movzbl (%rdi),%eax
    1659:	04 80                	add    $0x80,%al
    165b:	0f b6 c0             	movzbl %al,%eax
    165e:	48 8d 0d 0b 1a 00 00 	lea    0x1a0b(%rip),%rcx        # 3070 <_IO_stdin_used+0x70>
    1665:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    1669:	c3                   	ret    
    166a:	48 83 fe 09          	cmp    $0x9,%rsi
    166e:	72 53                	jb     16c3 <hash+0x73>
    1670:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    1677:	73 82 67 
    167a:	48 33 07             	xor    (%rdi),%rax
    167d:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    1684:	bc 56 af 
    1687:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    168c:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    1691:	48 01 d6             	add    %rdx,%rsi
    1694:	48 0f c8             	bswap  %rax
    1697:	48 01 c6             	add    %rax,%rsi
    169a:	48 31 cf             	xor    %rcx,%rdi
    169d:	48 01 f7             	add    %rsi,%rdi
    16a0:	48 89 f8             	mov    %rdi,%rax
    16a3:	48 c1 e8 25          	shr    $0x25,%rax
    16a7:	48 31 f8             	xor    %rdi,%rax
    16aa:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    16b1:	67 56 16 
    16b4:	48 0f af c8          	imul   %rax,%rcx
    16b8:	48 89 c8             	mov    %rcx,%rax
    16bb:	48 c1 e8 20          	shr    $0x20,%rax
    16bf:	48 31 c8             	xor    %rcx,%rax
    16c2:	c3                   	ret    
    16c3:	48 83 fe 04          	cmp    $0x4,%rsi
    16c7:	72 56                	jb     171f <hash+0xcf>
    16c9:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    16cd:	8b 0f                	mov    (%rdi),%ecx
    16cf:	48 c1 e1 20          	shl    $0x20,%rcx
    16d3:	48 09 c1             	or     %rax,%rcx
    16d6:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    16dd:	b1 3a c7 
    16e0:	48 31 c8             	xor    %rcx,%rax
    16e3:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    16e9:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    16ef:	48 31 ca             	xor    %rcx,%rdx
    16f2:	48 31 c2             	xor    %rax,%rdx
    16f5:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    16fc:	1c b2 9f 
    16ff:	48 0f af d0          	imul   %rax,%rdx
    1703:	48 89 d1             	mov    %rdx,%rcx
    1706:	48 c1 e9 23          	shr    $0x23,%rcx
    170a:	48 01 f1             	add    %rsi,%rcx
    170d:	48 31 d1             	xor    %rdx,%rcx
    1710:	48 0f af c8          	imul   %rax,%rcx
    1714:	48 89 c8             	mov    %rcx,%rax
    1717:	48 c1 e8 1c          	shr    $0x1c,%rax
    171b:	48 31 c8             	xor    %rcx,%rax
    171e:	c3                   	ret    
    171f:	48 85 f6             	test   %rsi,%rsi
    1722:	74 53                	je     1777 <hash+0x127>
    1724:	0f b6 07             	movzbl (%rdi),%eax
    1727:	48 89 f1             	mov    %rsi,%rcx
    172a:	48 d1 e9             	shr    %rcx
    172d:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    1732:	c1 e0 10             	shl    $0x10,%eax
    1735:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    1739:	c1 e1 18             	shl    $0x18,%ecx
    173c:	09 c1                	or     %eax,%ecx
    173e:	48 09 d1             	or     %rdx,%rcx
    1741:	48 c1 e6 08          	shl    $0x8,%rsi
    1745:	48 09 ce             	or     %rcx,%rsi
    1748:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    174d:	48 31 f0             	xor    %rsi,%rax
    1750:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1757:	ae b2 c2 
    175a:	48 0f af c8          	imul   %rax,%rcx
    175e:	48 89 c8             	mov    %rcx,%rax
    1761:	48 c1 e8 1d          	shr    $0x1d,%rax
    1765:	48 31 c8             	xor    %rcx,%rax
    1768:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    176f:	67 56 16 
    1772:	e9 3d ff ff ff       	jmp    16b4 <hash+0x64>
    1777:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    177e:	80 06 2d 
    1781:	c3                   	ret    

Disassembly of section .fini:
