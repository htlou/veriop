
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_shared/bench-inline/new:     file format elf64-x86-64


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
    16a9:	48 83 fe 08          	cmp    $0x8,%rsi
    16ad:	75 4f                	jne    16fe <hash+0xae>
    16af:	c4 e3 fb f0 07 20    	rorx   $0x20,(%rdi),%rax
    16b5:	48 b9 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rcx
    16bc:	b1 3a c7 
    16bf:	48 31 c1             	xor    %rax,%rcx
    16c2:	c4 e3 fb f0 c1 0f    	rorx   $0xf,%rcx,%rax
    16c8:	c4 e3 fb f0 d1 28    	rorx   $0x28,%rcx,%rdx
    16ce:	48 31 c2             	xor    %rax,%rdx
    16d1:	48 31 ca             	xor    %rcx,%rdx
    16d4:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    16db:	1c b2 9f 
    16de:	48 0f af d0          	imul   %rax,%rdx
    16e2:	48 89 d1             	mov    %rdx,%rcx
    16e5:	48 c1 e9 23          	shr    $0x23,%rcx
    16e9:	48 01 f1             	add    %rsi,%rcx
    16ec:	48 31 d1             	xor    %rdx,%rcx
    16ef:	48 0f af c8          	imul   %rax,%rcx
    16f3:	48 89 c8             	mov    %rcx,%rax
    16f6:	48 c1 e8 1c          	shr    $0x1c,%rax
    16fa:	48 31 c8             	xor    %rcx,%rax
    16fd:	c3                   	ret    
    16fe:	48 83 fe 04          	cmp    $0x4,%rsi
    1702:	72 0f                	jb     1713 <hash+0xc3>
    1704:	8b 4c 37 fc          	mov    -0x4(%rdi,%rsi,1),%ecx
    1708:	8b 07                	mov    (%rdi),%eax
    170a:	48 c1 e0 20          	shl    $0x20,%rax
    170e:	48 09 c8             	or     %rcx,%rax
    1711:	eb a2                	jmp    16b5 <hash+0x65>
    1713:	48 85 f6             	test   %rsi,%rsi
    1716:	74 53                	je     176b <hash+0x11b>
    1718:	0f b6 07             	movzbl (%rdi),%eax
    171b:	48 89 f1             	mov    %rsi,%rcx
    171e:	48 d1 e9             	shr    %rcx
    1721:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    1726:	c1 e0 10             	shl    $0x10,%eax
    1729:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    172d:	c1 e1 18             	shl    $0x18,%ecx
    1730:	09 c1                	or     %eax,%ecx
    1732:	48 09 d1             	or     %rdx,%rcx
    1735:	48 c1 e6 08          	shl    $0x8,%rsi
    1739:	48 09 ce             	or     %rcx,%rsi
    173c:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1741:	48 31 f0             	xor    %rsi,%rax
    1744:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    174b:	ae b2 c2 
    174e:	48 0f af c8          	imul   %rax,%rcx
    1752:	48 89 c8             	mov    %rcx,%rax
    1755:	48 c1 e8 1d          	shr    $0x1d,%rax
    1759:	48 31 c8             	xor    %rcx,%rax
    175c:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    1763:	67 56 16 
    1766:	e9 2f ff ff ff       	jmp    169a <hash+0x4a>
    176b:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    1772:	80 06 2d 
    1775:	c3                   	ret    

Disassembly of section .fini:
