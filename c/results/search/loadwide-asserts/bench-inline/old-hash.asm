
/srv/home/hantaolou/code/veriop/alive2/results/search/loadwide-asserts/bench-inline/old:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000001650 <hash>:
    1650:	cmp    $0x9,%rsi
    1654:	jb     16a9 <hash+0x59>
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
    169a:	imul   %rax,%rcx
    169e:	mov    %rcx,%rax
    16a1:	shr    $0x20,%rax
    16a5:	xor    %rcx,%rax
    16a8:	ret    
    16a9:	cmp    $0x4,%rsi
    16ad:	jb     1705 <hash+0xb5>
    16af:	mov    -0x4(%rdi,%rsi,1),%eax
    16b3:	mov    (%rdi),%ecx
    16b5:	shl    $0x20,%rcx
    16b9:	or     %rax,%rcx
    16bc:	movabs $0xc73ab174c5ecd5a2,%rax
    16c6:	xor    %rcx,%rax
    16c9:	rorx   $0xf,%rax,%rcx
    16cf:	rorx   $0x28,%rax,%rdx
    16d5:	xor    %rcx,%rdx
    16d8:	xor    %rax,%rdx
    16db:	movabs $0x9fb21c651e98df25,%rax
    16e5:	imul   %rax,%rdx
    16e9:	mov    %rdx,%rcx
    16ec:	shr    $0x23,%rcx
    16f0:	add    %rsi,%rcx
    16f3:	xor    %rdx,%rcx
    16f6:	imul   %rax,%rcx
    16fa:	mov    %rcx,%rax
    16fd:	shr    $0x1c,%rax
    1701:	xor    %rcx,%rax
    1704:	ret    
    1705:	test   %rsi,%rsi
    1708:	je     175d <hash+0x10d>
    170a:	movzbl (%rdi),%eax
    170d:	mov    %rsi,%rcx
    1710:	shr    %rcx
    1713:	movzbl -0x1(%rdi,%rsi,1),%edx
    1718:	shl    $0x10,%eax
    171b:	movzbl (%rdi,%rcx,1),%ecx
    171f:	shl    $0x18,%ecx
    1722:	or     %eax,%ecx
    1724:	or     %rdx,%rcx
    1727:	shl    $0x8,%rsi
    172b:	or     %rcx,%rsi
    172e:	mov    $0x87275a9b,%eax
    1733:	xor    %rsi,%rax
    1736:	movabs $0xc2b2ae3d27d4eb4f,%rcx
    1740:	imul   %rax,%rcx
    1744:	mov    %rcx,%rax
    1747:	shr    $0x1d,%rax
    174b:	xor    %rcx,%rax
    174e:	movabs $0x165667b19e3779f9,%rcx
    1758:	jmp    169a <hash+0x4a>
    175d:	movabs $0x2d06800538d394c2,%rax
    1767:	ret    

Disassembly of section .fini:
