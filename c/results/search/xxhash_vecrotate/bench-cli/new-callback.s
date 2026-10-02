
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecrotate/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	50                   	push   %rax
    3131:	48 83 fe 10          	cmp    $0x10,%rsi
    3135:	77 49                	ja     3180 <localXXH3_64b+0x50>
    3137:	48 83 fe 09          	cmp    $0x9,%rsi
    313b:	0f 82 fa 01 00 00    	jb     333b <localXXH3_64b+0x20b>
    3141:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    3148:	73 82 67 
    314b:	48 33 07             	xor    (%rdi),%rax
    314e:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    3155:	bc 56 af 
    3158:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    315d:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    3162:	48 01 d6             	add    %rdx,%rsi
    3165:	48 0f c8             	bswap  %rax
    3168:	48 01 c6             	add    %rax,%rsi
    316b:	48 31 cf             	xor    %rcx,%rdi
    316e:	48 01 f7             	add    %rsi,%rdi
    3171:	48 89 f8             	mov    %rdi,%rax
    3174:	48 c1 e8 25          	shr    $0x25,%rax
    3178:	48 31 f8             	xor    %rdi,%rax
    317b:	e9 81 01 00 00       	jmp    3301 <localXXH3_64b+0x1d1>
    3180:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    3187:	0f 87 8e 01 00 00    	ja     331b <localXXH3_64b+0x1eb>
    318d:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    3194:	79 37 9e 
    3197:	48 0f af ce          	imul   %rsi,%rcx
    319b:	48 83 fe 21          	cmp    $0x21,%rsi
    319f:	0f 82 00 01 00 00    	jb     32a5 <localXXH3_64b+0x175>
    31a5:	48 83 fe 41          	cmp    $0x41,%rsi
    31a9:	0f 82 a6 00 00 00    	jb     3255 <localXXH3_64b+0x125>
    31af:	48 83 fe 61          	cmp    $0x61,%rsi
    31b3:	72 50                	jb     3205 <localXXH3_64b+0xd5>
    31b5:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    31bc:	9c 34 3f 
    31bf:	48 33 47 30          	xor    0x30(%rdi),%rax
    31c3:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    31ca:	0b 4f 1d 
    31cd:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31d1:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31d6:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31dd:	b4 59 31 
    31e0:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    31e5:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    31ec:	78 73 64 
    31ef:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    31f4:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    31f9:	49 31 c0             	xor    %rax,%r8
    31fc:	4c 01 c1             	add    %r8,%rcx
    31ff:	4c 31 ca             	xor    %r9,%rdx
    3202:	48 01 d1             	add    %rdx,%rcx
    3205:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    320c:	c3 00 cb 
    320f:	48 33 47 20          	xor    0x20(%rdi),%rax
    3213:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    321a:	53 2e a3 
    321d:	48 33 57 28          	xor    0x28(%rdi),%rdx
    3221:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3226:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    322d:	0d f9 4e 
    3230:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    3235:	49 31 c0             	xor    %rax,%r8
    3238:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    323f:	de ac d8 
    3242:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3247:	49 01 c8             	add    %rcx,%r8
    324a:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    324f:	48 31 c1             	xor    %rax,%rcx
    3252:	4c 01 c1             	add    %r8,%rcx
    3255:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    325c:	c0 e5 78 
    325f:	48 33 47 10          	xor    0x10(%rdi),%rax
    3263:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    326a:	ff 72 21 
    326d:	48 33 57 18          	xor    0x18(%rdi),%rdx
    3271:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3276:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    327d:	43 24 8e 
    3280:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    3285:	49 31 c0             	xor    %rax,%r8
    3288:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    328f:	3a 26 4c 
    3292:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    3297:	49 01 c8             	add    %rcx,%r8
    329a:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    329f:	48 31 c1             	xor    %rax,%rcx
    32a2:	4c 01 c1             	add    %r8,%rcx
    32a5:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    32ac:	a4 4b be 
    32af:	4c 33 07             	xor    (%rdi),%r8
    32b2:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    32b9:	90 97 db 
    32bc:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    32c1:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    32c8:	b3 67 1f 
    32cb:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    32d0:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32d7:	21 ad 1c 
    32da:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32de:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32e3:	48 31 d6             	xor    %rdx,%rsi
    32e6:	48 01 ce             	add    %rcx,%rsi
    32e9:	48 89 c2             	mov    %rax,%rdx
    32ec:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32f1:	48 31 c1             	xor    %rax,%rcx
    32f4:	48 01 f1             	add    %rsi,%rcx
    32f7:	48 89 c8             	mov    %rcx,%rax
    32fa:	48 c1 e8 25          	shr    $0x25,%rax
    32fe:	48 31 c8             	xor    %rcx,%rax
    3301:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3308:	67 56 16 
    330b:	48 0f af c8          	imul   %rax,%rcx
    330f:	48 89 c8             	mov    %rcx,%rax
    3312:	48 c1 e8 20          	shr    $0x20,%rax
    3316:	48 31 c8             	xor    %rcx,%rax
    3319:	59                   	pop    %rcx
    331a:	c3                   	ret    
    331b:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3322:	77 10                	ja     3334 <localXXH3_64b+0x204>
    3324:	48 8d 15 15 86 01 00 	lea    0x18615(%rip),%rdx        # 1b940 <XXH3_kSecret>
    332b:	31 c9                	xor    %ecx,%ecx
    332d:	e8 de 4c 00 00       	call   8010 <XXH3_len_129to240_64b>
    3332:	59                   	pop    %rcx
    3333:	c3                   	ret    
    3334:	e8 37 5a 00 00       	call   8d70 <XXH3_hashLong_64b_default>
    3339:	59                   	pop    %rcx
    333a:	c3                   	ret    
    333b:	48 83 fe 04          	cmp    $0x4,%rsi
    333f:	72 76                	jb     33b7 <localXXH3_64b+0x287>
    3341:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    3345:	8b 0f                	mov    (%rdi),%ecx
    3347:	48 c1 e1 20          	shl    $0x20,%rcx
    334b:	48 09 c1             	or     %rax,%rcx
    334e:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    3355:	b1 3a c7 
    3358:	48 31 c8             	xor    %rcx,%rax
    335b:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    3360:	c4 e2 79 59 c0       	vpbroadcastq %xmm0,%xmm0
    3365:	c4 e2 f9 45 0d e2 81 	vpsrlvq 0x181e2(%rip),%xmm0,%xmm1        # 1b550 <XSUM_algoLength+0x50>
    336c:	01 00 
    336e:	c4 e2 f9 47 05 e9 81 	vpsllvq 0x181e9(%rip),%xmm0,%xmm0        # 1b560 <XSUM_algoLength+0x60>
    3375:	01 00 
    3377:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
    337b:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
    3380:	c5 f1 ef c0          	vpxor  %xmm0,%xmm1,%xmm0
    3384:	c4 e1 f9 7e c1       	vmovq  %xmm0,%rcx
    3389:	48 31 c1             	xor    %rax,%rcx
    338c:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    3393:	1c b2 9f 
    3396:	48 0f af c8          	imul   %rax,%rcx
    339a:	48 89 ca             	mov    %rcx,%rdx
    339d:	48 c1 ea 23          	shr    $0x23,%rdx
    33a1:	48 01 f2             	add    %rsi,%rdx
    33a4:	48 31 ca             	xor    %rcx,%rdx
    33a7:	48 0f af d0          	imul   %rax,%rdx
    33ab:	48 89 d0             	mov    %rdx,%rax
    33ae:	48 c1 e8 1c          	shr    $0x1c,%rax
    33b2:	48 31 d0             	xor    %rdx,%rax
    33b5:	59                   	pop    %rcx
    33b6:	c3                   	ret    
    33b7:	48 85 f6             	test   %rsi,%rsi
    33ba:	74 53                	je     340f <localXXH3_64b+0x2df>
    33bc:	0f b6 07             	movzbl (%rdi),%eax
    33bf:	48 89 f1             	mov    %rsi,%rcx
    33c2:	48 d1 e9             	shr    %rcx
    33c5:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    33ca:	c1 e0 10             	shl    $0x10,%eax
    33cd:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    33d1:	c1 e1 18             	shl    $0x18,%ecx
    33d4:	09 c1                	or     %eax,%ecx
    33d6:	48 09 d1             	or     %rdx,%rcx
    33d9:	48 c1 e6 08          	shl    $0x8,%rsi
    33dd:	48 09 ce             	or     %rcx,%rsi
    33e0:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    33e5:	48 31 f0             	xor    %rsi,%rax
    33e8:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    33ef:	ae b2 c2 
    33f2:	48 0f af c8          	imul   %rax,%rcx
    33f6:	48 89 c8             	mov    %rcx,%rax
    33f9:	48 c1 e8 1d          	shr    $0x1d,%rax
    33fd:	48 31 c8             	xor    %rcx,%rax
    3400:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    3407:	67 56 16 
    340a:	e9 fc fe ff ff       	jmp    330b <localXXH3_64b+0x1db>
    340f:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    3416:	80 06 2d 
    3419:	59                   	pop    %rcx
    341a:	c3                   	ret    

Disassembly of section .fini:
