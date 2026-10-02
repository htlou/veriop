
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_balanced/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	48 83 fe 03          	cmp    $0x3,%rsi
    1654:	77 73                	ja     16c9 <hash+0x79>
    1656:	48 83 fe 02          	cmp    $0x2,%rsi
    165a:	72 4e                	jb     16aa <hash+0x5a>
    165c:	0f b7 07             	movzwl (%rdi),%eax
    165f:	c1 e0 10             	shl    $0x10,%eax
    1662:	0f b6 4c 37 ff       	movzbl -0x1(%rdi,%rsi,1),%ecx
    1667:	48 09 c1             	or     %rax,%rcx
    166a:	48 c1 e6 08          	shl    $0x8,%rsi
    166e:	48 09 ce             	or     %rcx,%rsi
    1671:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1676:	48 31 f0             	xor    %rsi,%rax
    1679:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1680:	ae b2 c2 
    1683:	48 0f af c8          	imul   %rax,%rcx
    1687:	48 89 c8             	mov    %rcx,%rax
    168a:	48 c1 e8 1d          	shr    $0x1d,%rax
    168e:	48 31 c8             	xor    %rcx,%rax
    1691:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1698:	67 56 16 
    169b:	48 0f af c8          	imul   %rax,%rcx
    169f:	48 89 c8             	mov    %rcx,%rax
    16a2:	48 c1 e8 20          	shr    $0x20,%rax
    16a6:	48 31 c8             	xor    %rcx,%rax
    16a9:	c3                   	ret    
    16aa:	48 85 f6             	test   %rsi,%rsi
    16ad:	74 0f                	je     16be <hash+0x6e>
    16af:	0f b6 07             	movzbl (%rdi),%eax
    16b2:	48 8d 0d b7 19 00 00 	lea    0x19b7(%rip),%rcx        # 3070 <_IO_stdin_used+0x70>
    16b9:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    16bd:	c3                   	ret    
    16be:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    16c5:	80 06 2d 
    16c8:	c3                   	ret    
    16c9:	48 83 fe 08          	cmp    $0x8,%rsi
    16cd:	77 56                	ja     1725 <hash+0xd5>
    16cf:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    16d3:	8b 0f                	mov    (%rdi),%ecx
    16d5:	48 c1 e1 20          	shl    $0x20,%rcx
    16d9:	48 09 c1             	or     %rax,%rcx
    16dc:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    16e3:	b1 3a c7 
    16e6:	48 31 c8             	xor    %rcx,%rax
    16e9:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    16ef:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    16f5:	48 31 ca             	xor    %rcx,%rdx
    16f8:	48 31 c2             	xor    %rax,%rdx
    16fb:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    1702:	1c b2 9f 
    1705:	48 0f af d0          	imul   %rax,%rdx
    1709:	48 89 d1             	mov    %rdx,%rcx
    170c:	48 c1 e9 23          	shr    $0x23,%rcx
    1710:	48 01 f1             	add    %rsi,%rcx
    1713:	48 31 d1             	xor    %rdx,%rcx
    1716:	48 0f af c8          	imul   %rax,%rcx
    171a:	48 89 c8             	mov    %rcx,%rax
    171d:	48 c1 e8 1c          	shr    $0x1c,%rax
    1721:	48 31 c8             	xor    %rcx,%rax
    1724:	c3                   	ret    
    1725:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    172c:	73 82 67 
    172f:	48 33 07             	xor    (%rdi),%rax
    1732:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    1739:	bc 56 af 
    173c:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    1741:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    1746:	48 01 d6             	add    %rdx,%rsi
    1749:	48 0f c8             	bswap  %rax
    174c:	48 01 c6             	add    %rax,%rsi
    174f:	48 31 cf             	xor    %rcx,%rdi
    1752:	48 01 f7             	add    %rsi,%rdi
    1755:	48 89 f8             	mov    %rdi,%rax
    1758:	48 c1 e8 25          	shr    $0x25,%rax
    175c:	48 31 f8             	xor    %rdi,%rax
    175f:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    1766:	67 56 16 
    1769:	e9 2d ff ff ff       	jmp    169b <hash+0x4b>

Disassembly of section .fini:
