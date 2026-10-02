
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_loadlikely/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	cmp    $0x10,%rsi
    3134:	ja     317f <localXXH3_64b+0x4f>
    3136:	cmp    $0x9,%rsi
    313a:	jb     3340 <localXXH3_64b+0x210>
    3140:	movabs $0x6782737bea4239b9,%rax
    314a:	xor    (%rdi),%rax
    314d:	movabs $0xaf56bc3b0996523a,%rdx
    3157:	xor    -0x8(%rdi,%rsi,1),%rdx
    315c:	mulx   %rax,%rcx,%rdi
    3161:	add    %rdx,%rsi
    3164:	bswap  %rax
    3167:	add    %rax,%rsi
    316a:	xor    %rcx,%rdi
    316d:	add    %rsi,%rdi
    3170:	mov    %rdi,%rax
    3173:	shr    $0x25,%rax
    3177:	xor    %rdi,%rax
    317a:	jmp    3300 <localXXH3_64b+0x1d0>
    317f:	cmp    $0x80,%rsi
    3186:	ja     3319 <localXXH3_64b+0x1e9>
    318c:	movabs $0x9e3779b185ebca87,%rcx
    3196:	imul   %rsi,%rcx
    319a:	cmp    $0x21,%rsi
    319e:	jb     32a4 <localXXH3_64b+0x174>
    31a4:	cmp    $0x41,%rsi
    31a8:	jb     3254 <localXXH3_64b+0x124>
    31ae:	cmp    $0x61,%rsi
    31b2:	jb     3204 <localXXH3_64b+0xd4>
    31b4:	movabs $0x3f349ce33f76faa8,%rax
    31be:	xor    0x30(%rdi),%rax
    31c2:	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    31cc:	xor    0x38(%rdi),%rdx
    31d0:	mulx   %rax,%rax,%r8
    31d5:	movabs $0x3159b4cd4be0518a,%r9
    31df:	xor    -0x40(%rdi,%rsi,1),%r9
    31e4:	movabs $0x647378d9c97e9fc8,%rdx
    31ee:	xor    -0x38(%rdi,%rsi,1),%rdx
    31f3:	mulx   %r9,%r9,%rdx
    31f8:	xor    %rax,%r8
    31fb:	add    %r8,%rcx
    31fe:	xor    %r9,%rdx
    3201:	add    %rdx,%rcx
    3204:	movabs $0xcb00c391bb52283c,%rax
    320e:	xor    0x20(%rdi),%rax
    3212:	movabs $0xa32e531b8b65d088,%rdx
    321c:	xor    0x28(%rdi),%rdx
    3220:	mulx   %rax,%rax,%r8
    3225:	movabs $0x4ef90da297486471,%r9
    322f:	xor    -0x30(%rdi,%rsi,1),%r9
    3234:	xor    %rax,%r8
    3237:	movabs $0xd8acdea946ef1938,%rdx
    3241:	xor    -0x28(%rdi,%rsi,1),%rdx
    3246:	add    %rcx,%r8
    3249:	mulx   %r9,%rax,%rcx
    324e:	xor    %rax,%rcx
    3251:	add    %r8,%rcx
    3254:	movabs $0x78e5c0cc4ee679cb,%rax
    325e:	xor    0x10(%rdi),%rax
    3262:	movabs $0x2172ffcc7dd05a82,%rdx
    326c:	xor    0x18(%rdi),%rdx
    3270:	mulx   %rax,%rax,%r8
    3275:	movabs $0x8e2443f7744608b8,%r9
    327f:	xor    -0x20(%rdi,%rsi,1),%r9
    3284:	xor    %rax,%r8
    3287:	movabs $0x4c263a81e69035e0,%rdx
    3291:	xor    -0x18(%rdi,%rsi,1),%rdx
    3296:	add    %rcx,%r8
    3299:	mulx   %r9,%rax,%rcx
    329e:	xor    %rax,%rcx
    32a1:	add    %r8,%rcx
    32a4:	movabs $0xbe4ba423396cfeb8,%r8
    32ae:	xor    (%rdi),%r8
    32b1:	movabs $0xdb979083e96dd4de,%r9
    32bb:	xor    -0x10(%rdi,%rsi,1),%r9
    32c0:	movabs $0x1f67b3b7a4a44072,%rax
    32ca:	xor    -0x8(%rdi,%rsi,1),%rax
    32cf:	movabs $0x1cad21f72c81017c,%rdx
    32d9:	xor    0x8(%rdi),%rdx
    32dd:	mulx   %r8,%rdx,%rsi
    32e2:	xor    %rdx,%rsi
    32e5:	add    %rcx,%rsi
    32e8:	mov    %rax,%rdx
    32eb:	mulx   %r9,%rax,%rcx
    32f0:	xor    %rax,%rcx
    32f3:	add    %rsi,%rcx
    32f6:	mov    %rcx,%rax
    32f9:	shr    $0x25,%rax
    32fd:	xor    %rcx,%rax
    3300:	movabs $0x165667919e3779f9,%rcx
    330a:	imul   %rax,%rcx
    330e:	mov    %rcx,%rax
    3311:	shr    $0x20,%rax
    3315:	xor    %rcx,%rax
    3318:	ret    
    3319:	push   %rax
    331a:	cmp    $0xf0,%rsi
    3321:	ja     3336 <localXXH3_64b+0x206>
    3323:	lea    0x185d6(%rip),%rdx        # 1b900 <XXH3_kSecret>
    332a:	xor    %ecx,%ecx
    332c:	call   8000 <XXH3_len_129to240_64b>
    3331:	add    $0x8,%rsp
    3335:	ret    
    3336:	call   8d60 <XXH3_hashLong_64b_default>
    333b:	add    $0x8,%rsp
    333f:	ret    
    3340:	cmp    $0x4,%rsi
    3344:	jb     33aa <localXXH3_64b+0x27a>
    3346:	cmp    $0x8,%rsi
    334a:	jne    3354 <localXXH3_64b+0x224>
    334c:	rorx   $0x20,(%rdi),%rax
    3352:	jmp    3361 <localXXH3_64b+0x231>
    3354:	mov    -0x4(%rdi,%rsi,1),%ecx
    3358:	mov    (%rdi),%eax
    335a:	shl    $0x20,%rax
    335e:	or     %rcx,%rax
    3361:	movabs $0xc73ab174c5ecd5a2,%rcx
    336b:	xor    %rax,%rcx
    336e:	rorx   $0xf,%rcx,%rax
    3374:	rorx   $0x28,%rcx,%rdx
    337a:	xor    %rax,%rdx
    337d:	xor    %rcx,%rdx
    3380:	movabs $0x9fb21c651e98df25,%rax
    338a:	imul   %rax,%rdx
    338e:	mov    %rdx,%rcx
    3391:	shr    $0x23,%rcx
    3395:	add    %rsi,%rcx
    3398:	xor    %rdx,%rcx
    339b:	imul   %rax,%rcx
    339f:	mov    %rcx,%rax
    33a2:	shr    $0x1c,%rax
    33a6:	xor    %rcx,%rax
    33a9:	ret    
    33aa:	test   %rsi,%rsi
    33ad:	je     33c8 <localXXH3_64b+0x298>
    33af:	cmp    $0x1,%rsi
    33b3:	jne    33d3 <localXXH3_64b+0x2a3>
    33b5:	movzbl (%rdi),%ecx
    33b8:	mov    %ecx,%edx
    33ba:	shl    $0x10,%edx
    33bd:	mov    %ecx,%eax
    33bf:	shl    $0x18,%eax
    33c2:	or     %edx,%eax
    33c4:	or     %ecx,%eax
    33c6:	jmp    33e1 <localXXH3_64b+0x2b1>
    33c8:	movabs $0x2d06800538d394c2,%rax
    33d2:	ret    
    33d3:	movzwl (%rdi),%ecx
    33d6:	shl    $0x10,%ecx
    33d9:	movzbl -0x1(%rdi,%rsi,1),%eax
    33de:	or     %rcx,%rax
    33e1:	shl    $0x8,%rsi
    33e5:	or     %rax,%rsi
    33e8:	mov    $0x87275a9b,%eax
    33ed:	xor    %rsi,%rax
    33f0:	movabs $0xc2b2ae3d27d4eb4f,%rcx
    33fa:	imul   %rax,%rcx
    33fe:	mov    %rcx,%rax
    3401:	shr    $0x1d,%rax
    3405:	xor    %rcx,%rax
    3408:	movabs $0x165667b19e3779f9,%rcx
    3412:	jmp    330a <localXXH3_64b+0x1da>

Disassembly of section .fini:
