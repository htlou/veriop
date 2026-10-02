
/srv/home/hantaolou/code/veriop/alive2/results/search/loadwide-asserts/bench-inline/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	cmp    $0x9,%rsi
    1654:	jb     169f <hash+0x4f>
    1656:	movabs $0x6782737bea4239b9,%rax
    1660:	xor    (%rdi),%rax
    1663:	movabs $0xaf56bc3b0996523a,%rdx
    166d:	xor    -0x8(%rdi,%rsi,1),%rdx
    1672:	mulx   %rax,%rcx,%rdi
    1677:	add    %rdx,%rsi
    167a:	bswap  %rax
    167d:	add    %rax,%rsi
    1680:	xor    %rcx,%rdi
    1683:	add    %rsi,%rdi
    1686:	mov    %rdi,%rax
    1689:	shr    $0x25,%rax
    168d:	xor    %rdi,%rax
    1690:	movabs $0x165667919e3779f9,%rcx
    169a:	jmp    1771 <hash+0x121>
    169f:	cmp    $0x4,%rsi
    16a3:	jb     16b3 <hash+0x63>
    16a5:	cmp    $0x8,%rsi
    16a9:	jne    16d1 <hash+0x81>
    16ab:	rorx   $0x20,(%rdi),%rax
    16b1:	jmp    16de <hash+0x8e>
    16b3:	test   %rsi,%rsi
    16b6:	je     1727 <hash+0xd7>
    16b8:	cmp    $0x1,%rsi
    16bc:	jne    1732 <hash+0xe2>
    16be:	movzbl (%rdi),%ecx
    16c1:	mov    %ecx,%edx
    16c3:	shl    $0x10,%edx
    16c6:	mov    %ecx,%eax
    16c8:	shl    $0x18,%eax
    16cb:	or     %edx,%eax
    16cd:	or     %ecx,%eax
    16cf:	jmp    1740 <hash+0xf0>
    16d1:	mov    -0x4(%rdi,%rsi,1),%ecx
    16d5:	mov    (%rdi),%eax
    16d7:	shl    $0x20,%rax
    16db:	or     %rcx,%rax
    16de:	movabs $0xc73ab174c5ecd5a2,%rcx
    16e8:	xor    %rax,%rcx
    16eb:	rorx   $0xf,%rcx,%rax
    16f1:	rorx   $0x28,%rcx,%rdx
    16f7:	xor    %rax,%rdx
    16fa:	xor    %rcx,%rdx
    16fd:	movabs $0x9fb21c651e98df25,%rax
    1707:	imul   %rax,%rdx
    170b:	mov    %rdx,%rcx
    170e:	shr    $0x23,%rcx
    1712:	add    %rsi,%rcx
    1715:	xor    %rdx,%rcx
    1718:	imul   %rax,%rcx
    171c:	mov    %rcx,%rax
    171f:	shr    $0x1c,%rax
    1723:	xor    %rcx,%rax
    1726:	ret    
    1727:	movabs $0x2d06800538d394c2,%rax
    1731:	ret    
    1732:	movzwl (%rdi),%ecx
    1735:	shl    $0x10,%ecx
    1738:	movzbl -0x1(%rdi,%rsi,1),%eax
    173d:	or     %rcx,%rax
    1740:	shl    $0x8,%rsi
    1744:	or     %rax,%rsi
    1747:	mov    $0x87275a9b,%eax
    174c:	xor    %rsi,%rax
    174f:	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1759:	imul   %rax,%rcx
    175d:	mov    %rcx,%rax
    1760:	shr    $0x1d,%rax
    1764:	xor    %rcx,%rax
    1767:	movabs $0x165667b19e3779f9,%rcx
    1771:	imul   %rax,%rcx
    1775:	mov    %rcx,%rax
    1778:	shr    $0x20,%rax
    177c:	xor    %rcx,%rax
    177f:	ret    

Disassembly of section .fini:
