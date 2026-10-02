
alive2/results/search/xxhash_sharedmix_seed/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	48 83 fe 03          	cmp    $0x3,%rsi
    1654:	77 66                	ja     16bc <hash+0x6c>
    1656:	48 85 f6             	test   %rsi,%rsi
    1659:	0f 84 41 01 00 00    	je     17a0 <hash+0x150>
    165f:	0f b6 07             	movzbl (%rdi),%eax
    1662:	48 89 f1             	mov    %rsi,%rcx
    1665:	48 d1 e9             	shr    %rcx
    1668:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    166d:	c1 e0 10             	shl    $0x10,%eax
    1670:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    1674:	c1 e1 18             	shl    $0x18,%ecx
    1677:	09 c1                	or     %eax,%ecx
    1679:	48 09 d1             	or     %rdx,%rcx
    167c:	48 c1 e6 08          	shl    $0x8,%rsi
    1680:	48 09 ce             	or     %rcx,%rsi
    1683:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    1688:	48 31 f0             	xor    %rsi,%rax
    168b:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1692:	ae b2 c2 
    1695:	48 0f af c8          	imul   %rax,%rcx
    1699:	48 89 c8             	mov    %rcx,%rax
    169c:	48 c1 e8 1d          	shr    $0x1d,%rax
    16a0:	48 31 c8             	xor    %rcx,%rax
    16a3:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    16aa:	67 56 16 
    16ad:	48 0f af c8          	imul   %rax,%rcx
    16b1:	48 89 c8             	mov    %rcx,%rax
    16b4:	48 c1 e8 20          	shr    $0x20,%rax
    16b8:	48 31 c8             	xor    %rcx,%rax
    16bb:	c3                   	ret    
    16bc:	31 c0                	xor    %eax,%eax
    16be:	48 83 fe 09          	cmp    $0x9,%rsi
    16c2:	0f 93 c0             	setae  %al
    16c5:	48 b9 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rcx
    16cc:	73 82 67 
    16cf:	49 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%r8
    16d6:	b1 3a c7 
    16d9:	4c 0f 43 c1          	cmovae %rcx,%r8
    16dd:	8b 17                	mov    (%rdi),%edx
    16df:	8b 4c 37 fc          	mov    -0x4(%rdi,%rsi,1),%ecx
    16e3:	44 8b 0c 87          	mov    (%rdi,%rax,4),%r9d
    16e7:	44 0f 42 ca          	cmovb  %edx,%r9d
    16eb:	0f 42 d1             	cmovb  %ecx,%edx
    16ee:	49 c1 e1 20          	shl    $0x20,%r9
    16f2:	4c 09 ca             	or     %r9,%rdx
    16f5:	4c 31 c2             	xor    %r8,%rdx
    16f8:	45 31 c9             	xor    %r9d,%r9d
    16fb:	48 83 fe 09          	cmp    $0x9,%rsi
    16ff:	49 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%r10
    1706:	bc 56 af 
    1709:	4d 0f 42 d1          	cmovb  %r9,%r10
    170d:	49 89 d0             	mov    %rdx,%r8
    1710:	49 0f c8             	bswap  %r8
    1713:	4d 0f 42 c1          	cmovb  %r9,%r8
    1717:	49 89 f3             	mov    %rsi,%r11
    171a:	49 83 eb 08          	sub    $0x8,%r11
    171e:	4d 0f 42 d9          	cmovb  %r9,%r11
    1722:	42 8b 3c 1f          	mov    (%rdi,%r11,1),%edi
    1726:	c4 63 fb f0 ca 0f    	rorx   $0xf,%rdx,%r9
    172c:	c4 63 fb f0 da 28    	rorx   $0x28,%rdx,%r11
    1732:	4d 31 cb             	xor    %r9,%r11
    1735:	48 c1 e1 20          	shl    $0x20,%rcx
    1739:	48 09 f9             	or     %rdi,%rcx
    173c:	4c 31 d1             	xor    %r10,%rcx
    173f:	49 31 d3             	xor    %rdx,%r11
    1742:	48 bf 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rdi
    1749:	1c b2 9f 
    174c:	4c 0f af df          	imul   %rdi,%r11
    1750:	4d 89 d9             	mov    %r11,%r9
    1753:	49 c1 e9 23          	shr    $0x23,%r9
    1757:	c4 62 eb f6 d1       	mulx   %rcx,%rdx,%r10
    175c:	49 01 f1             	add    %rsi,%r9
    175f:	4d 31 d9             	xor    %r11,%r9
    1762:	49 31 d2             	xor    %rdx,%r10
    1765:	48 01 f1             	add    %rsi,%rcx
    1768:	4c 01 c1             	add    %r8,%rcx
    176b:	4c 01 d1             	add    %r10,%rcx
    176e:	48 89 ca             	mov    %rcx,%rdx
    1771:	48 c1 ea 25          	shr    $0x25,%rdx
    1775:	48 31 ca             	xor    %rcx,%rdx
    1778:	48 83 fe 09          	cmp    $0x9,%rsi
    177c:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    1783:	67 56 16 
    1786:	48 0f 42 cf          	cmovb  %rdi,%rcx
    178a:	49 0f 42 d1          	cmovb  %r9,%rdx
    178e:	48 0f af d1          	imul   %rcx,%rdx
    1792:	c0 e0 02             	shl    $0x2,%al
    1795:	04 1c                	add    $0x1c,%al
    1797:	c4 e2 fb f7 c2       	shrx   %rax,%rdx,%rax
    179c:	48 31 d0             	xor    %rdx,%rax
    179f:	c3                   	ret    
    17a0:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    17a7:	80 06 2d 
    17aa:	c3                   	ret    

Disassembly of section .fini:
