
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_early/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	48 83 fe 01          	cmp    $0x1,%rsi
    1654:	75 0f                	jne    1665 <hash+0x15>
    1656:	0f b6 07             	movzbl (%rdi),%eax
    1659:	48 8d 0d 10 1a 00 00 	lea    0x1a10(%rip),%rcx        # 3070 <_IO_stdin_used+0x70>
    1660:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    1664:	c3                   	ret    
    1665:	48 83 fe 09          	cmp    $0x9,%rsi
    1669:	72 53                	jb     16be <hash+0x6e>
    166b:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    1672:	73 82 67 
    1675:	48 33 07             	xor    (%rdi),%rax
    1678:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    167f:	bc 56 af 
    1682:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    1687:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    168c:	48 01 d6             	add    %rdx,%rsi
    168f:	48 0f c8             	bswap  %rax
    1692:	48 01 c6             	add    %rax,%rsi
    1695:	48 31 cf             	xor    %rcx,%rdi
    1698:	48 01 f7             	add    %rsi,%rdi
    169b:	48 89 f8             	mov    %rdi,%rax
    169e:	48 c1 e8 25          	shr    $0x25,%rax
    16a2:	48 31 f8             	xor    %rdi,%rax
    16a5:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    16ac:	67 56 16 
    16af:	48 0f af c8          	imul   %rax,%rcx
    16b3:	48 89 c8             	mov    %rcx,%rax
    16b6:	48 c1 e8 20          	shr    $0x20,%rax
    16ba:	48 31 c8             	xor    %rcx,%rax
    16bd:	c3                   	ret    
    16be:	48 83 fe 04          	cmp    $0x4,%rsi
    16c2:	72 56                	jb     171a <hash+0xca>
    16c4:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    16c8:	8b 0f                	mov    (%rdi),%ecx
    16ca:	48 c1 e1 20          	shl    $0x20,%rcx
    16ce:	48 09 c1             	or     %rax,%rcx
    16d1:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    16d8:	b1 3a c7 
    16db:	48 31 c8             	xor    %rcx,%rax
    16de:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    16e4:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    16ea:	48 31 ca             	xor    %rcx,%rdx
    16ed:	48 31 c2             	xor    %rax,%rdx
    16f0:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    16f7:	1c b2 9f 
    16fa:	48 0f af d0          	imul   %rax,%rdx
    16fe:	48 89 d1             	mov    %rdx,%rcx
    1701:	48 c1 e9 23          	shr    $0x23,%rcx
    1705:	48 01 f1             	add    %rsi,%rcx
    1708:	48 31 d1             	xor    %rdx,%rcx
    170b:	48 0f af c8          	imul   %rax,%rcx
    170f:	48 89 c8             	mov    %rcx,%rax
    1712:	48 c1 e8 1c          	shr    $0x1c,%rax
    1716:	48 31 c8             	xor    %rcx,%rax
    1719:	c3                   	ret    
    171a:	48 85 f6             	test   %rsi,%rsi
    171d:	74 44                	je     1763 <hash+0x113>
    171f:	0f b7 07             	movzwl (%rdi),%eax
    1722:	c1 e0 10             	shl    $0x10,%eax
    1725:	0f b6 4c 37 ff       	movzbl -0x1(%rdi,%rsi,1),%ecx
    172a:	48 09 c1             	or     %rax,%rcx
    172d:	48 c1 e6 08          	shl    $0x8,%rsi
    1731:	48 09 ce             	or     %rcx,%rsi
    1734:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1739:	48 31 f0             	xor    %rsi,%rax
    173c:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1743:	ae b2 c2 
    1746:	48 0f af c8          	imul   %rax,%rcx
    174a:	48 89 c8             	mov    %rcx,%rax
    174d:	48 c1 e8 1d          	shr    $0x1d,%rax
    1751:	48 31 c8             	xor    %rcx,%rax
    1754:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    175b:	67 56 16 
    175e:	e9 4c ff ff ff       	jmp    16af <hash+0x5f>
    1763:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    176a:	80 06 2d 
    176d:	c3                   	ret    

Disassembly of section .fini:
