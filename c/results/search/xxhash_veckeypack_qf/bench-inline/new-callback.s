
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_veckeypack_qf/bench-inline/new:     file format elf64-x86-64


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
    16ad:	72 63                	jb     1712 <hash+0xc2>
    16af:	c5 f9 6e 44 37 fc    	vmovd  -0x4(%rdi,%rsi,1),%xmm0
    16b5:	c4 e3 79 22 07 01    	vpinsrd $0x1,(%rdi),%xmm0,%xmm0
    16bb:	c4 e2 79 59 c8       	vpbroadcastq %xmm0,%xmm1
    16c0:	62 f2 f5 08 15 0d 46 	vprolvq 0x1946(%rip),%xmm1,%xmm1        # 3010 <_IO_stdin_used+0x10>
    16c7:	19 00 00 
    16ca:	c5 f9 70 d1 ee       	vpshufd $0xee,%xmm1,%xmm2
    16cf:	62 f3 f5 08 25 d0 96 	vpternlogq $0x96,%xmm0,%xmm1,%xmm2
    16d6:	c4 e1 f9 7e d0       	vmovq  %xmm2,%rax
    16db:	48 b9 ca 64 c2 05 d4 	movabs $0x18bad3d405c264ca,%rcx
    16e2:	d3 ba 18 
    16e5:	48 31 c1             	xor    %rax,%rcx
    16e8:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    16ef:	1c b2 9f 
    16f2:	48 0f af c8          	imul   %rax,%rcx
    16f6:	48 89 ca             	mov    %rcx,%rdx
    16f9:	48 c1 ea 23          	shr    $0x23,%rdx
    16fd:	48 01 f2             	add    %rsi,%rdx
    1700:	48 31 ca             	xor    %rcx,%rdx
    1703:	48 0f af d0          	imul   %rax,%rdx
    1707:	48 89 d0             	mov    %rdx,%rax
    170a:	48 c1 e8 1c          	shr    $0x1c,%rax
    170e:	48 31 d0             	xor    %rdx,%rax
    1711:	c3                   	ret    
    1712:	48 85 f6             	test   %rsi,%rsi
    1715:	74 53                	je     176a <hash+0x11a>
    1717:	0f b6 07             	movzbl (%rdi),%eax
    171a:	48 89 f1             	mov    %rsi,%rcx
    171d:	48 d1 e9             	shr    %rcx
    1720:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    1725:	c1 e0 10             	shl    $0x10,%eax
    1728:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    172c:	c1 e1 18             	shl    $0x18,%ecx
    172f:	09 c1                	or     %eax,%ecx
    1731:	48 09 d1             	or     %rdx,%rcx
    1734:	48 c1 e6 08          	shl    $0x8,%rsi
    1738:	48 09 ce             	or     %rcx,%rsi
    173b:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1740:	48 31 f0             	xor    %rsi,%rax
    1743:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    174a:	ae b2 c2 
    174d:	48 0f af c8          	imul   %rax,%rcx
    1751:	48 89 c8             	mov    %rcx,%rax
    1754:	48 c1 e8 1d          	shr    $0x1d,%rax
    1758:	48 31 c8             	xor    %rcx,%rax
    175b:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1762:	67 56 16 
    1765:	e9 30 ff ff ff       	jmp    169a <hash+0x4a>
    176a:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1771:	80 06 2d 
    1774:	c3                   	ret    

Disassembly of section .fini:
