
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	50                   	push   %rax
    3131:	48 83 fe 10          	cmp    $0x10,%rsi
    3135:	77 30                	ja     3167 <localXXH3_64b+0x37>
    3137:	48 83 fe 09          	cmp    $0x9,%rsi
    313b:	0f 82 20 02 00 00    	jb     3361 <localXXH3_64b+0x231>
    3141:	48 83 fe 10          	cmp    $0x10,%rsi
    3145:	0f 85 b8 01 00 00    	jne    3303 <localXXH3_64b+0x1d3>
    314b:	c5 fa 6f 07          	vmovdqu (%rdi),%xmm0
    314f:	c5 f9 ef 05 f9 83 01 	vpxor  0x183f9(%rip),%xmm0,%xmm0        # 1b550 <XSUM_algoLength+0x50>
    3156:	00 
    3157:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
    315c:	c4 e3 f9 16 c0 01    	vpextrq $0x1,%xmm0,%rax
    3162:	e9 b8 01 00 00       	jmp    331f <localXXH3_64b+0x1ef>
    3167:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    316e:	0f 87 76 01 00 00    	ja     32ea <localXXH3_64b+0x1ba>
    3174:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    317b:	79 37 9e 
    317e:	48 0f af ce          	imul   %rsi,%rcx
    3182:	48 83 fe 21          	cmp    $0x21,%rsi
    3186:	0f 82 00 01 00 00    	jb     328c <localXXH3_64b+0x15c>
    318c:	48 83 fe 41          	cmp    $0x41,%rsi
    3190:	0f 82 a6 00 00 00    	jb     323c <localXXH3_64b+0x10c>
    3196:	48 83 fe 61          	cmp    $0x61,%rsi
    319a:	72 50                	jb     31ec <localXXH3_64b+0xbc>
    319c:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    31a3:	9c 34 3f 
    31a6:	48 33 47 30          	xor    0x30(%rdi),%rax
    31aa:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    31b1:	0b 4f 1d 
    31b4:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31b8:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31bd:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31c4:	b4 59 31 
    31c7:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    31cc:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    31d3:	78 73 64 
    31d6:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    31db:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    31e0:	49 31 c0             	xor    %rax,%r8
    31e3:	4c 01 c1             	add    %r8,%rcx
    31e6:	4c 31 ca             	xor    %r9,%rdx
    31e9:	48 01 d1             	add    %rdx,%rcx
    31ec:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    31f3:	c3 00 cb 
    31f6:	48 33 47 20          	xor    0x20(%rdi),%rax
    31fa:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    3201:	53 2e a3 
    3204:	48 33 57 28          	xor    0x28(%rdi),%rdx
    3208:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    320d:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    3214:	0d f9 4e 
    3217:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    321c:	49 31 c0             	xor    %rax,%r8
    321f:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    3226:	de ac d8 
    3229:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    322e:	49 01 c8             	add    %rcx,%r8
    3231:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    3236:	48 31 c1             	xor    %rax,%rcx
    3239:	4c 01 c1             	add    %r8,%rcx
    323c:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    3243:	c0 e5 78 
    3246:	48 33 47 10          	xor    0x10(%rdi),%rax
    324a:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    3251:	ff 72 21 
    3254:	48 33 57 18          	xor    0x18(%rdi),%rdx
    3258:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    325d:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    3264:	43 24 8e 
    3267:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    326c:	49 31 c0             	xor    %rax,%r8
    326f:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    3276:	3a 26 4c 
    3279:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    327e:	49 01 c8             	add    %rcx,%r8
    3281:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    3286:	48 31 c1             	xor    %rax,%rcx
    3289:	4c 01 c1             	add    %r8,%rcx
    328c:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    3293:	a4 4b be 
    3296:	4c 33 07             	xor    (%rdi),%r8
    3299:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    32a0:	90 97 db 
    32a3:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    32a8:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    32af:	b3 67 1f 
    32b2:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    32b7:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32be:	21 ad 1c 
    32c1:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32c5:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32ca:	48 31 d6             	xor    %rdx,%rsi
    32cd:	48 01 ce             	add    %rcx,%rsi
    32d0:	48 89 c2             	mov    %rax,%rdx
    32d3:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32d8:	48 31 c1             	xor    %rax,%rcx
    32db:	48 01 f1             	add    %rsi,%rcx
    32de:	48 89 c8             	mov    %rcx,%rax
    32e1:	48 c1 e8 25          	shr    $0x25,%rax
    32e5:	48 31 c8             	xor    %rcx,%rax
    32e8:	eb 56                	jmp    3340 <localXXH3_64b+0x210>
    32ea:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    32f1:	77 67                	ja     335a <localXXH3_64b+0x22a>
    32f3:	48 8d 15 46 86 01 00 	lea    0x18646(%rip),%rdx        # 1b940 <XXH3_kSecret>
    32fa:	31 c9                	xor    %ecx,%ecx
    32fc:	e8 3f 4d 00 00       	call   8040 <XXH3_len_129to240_64b>
    3301:	59                   	pop    %rcx
    3302:	c3                   	ret    
    3303:	48 ba b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rdx
    330a:	73 82 67 
    330d:	48 33 17             	xor    (%rdi),%rdx
    3310:	48 b8 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rax
    3317:	bc 56 af 
    331a:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    331f:	48 89 d1             	mov    %rdx,%rcx
    3322:	c4 e2 eb f6 f8       	mulx   %rax,%rdx,%rdi
    3327:	48 0f c9             	bswap  %rcx
    332a:	48 31 d7             	xor    %rdx,%rdi
    332d:	48 01 c6             	add    %rax,%rsi
    3330:	48 01 ce             	add    %rcx,%rsi
    3333:	48 01 fe             	add    %rdi,%rsi
    3336:	48 89 f0             	mov    %rsi,%rax
    3339:	48 c1 e8 25          	shr    $0x25,%rax
    333d:	48 31 f0             	xor    %rsi,%rax
    3340:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3347:	67 56 16 
    334a:	48 0f af c8          	imul   %rax,%rcx
    334e:	48 89 c8             	mov    %rcx,%rax
    3351:	48 c1 e8 20          	shr    $0x20,%rax
    3355:	48 31 c8             	xor    %rcx,%rax
    3358:	59                   	pop    %rcx
    3359:	c3                   	ret    
    335a:	e8 41 5a 00 00       	call   8da0 <XXH3_hashLong_64b_default>
    335f:	59                   	pop    %rcx
    3360:	c3                   	ret    
    3361:	48 83 fe 04          	cmp    $0x4,%rsi
    3365:	72 57                	jb     33be <localXXH3_64b+0x28e>
    3367:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    336b:	8b 0f                	mov    (%rdi),%ecx
    336d:	48 c1 e1 20          	shl    $0x20,%rcx
    3371:	48 09 c1             	or     %rax,%rcx
    3374:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    337b:	b1 3a c7 
    337e:	48 31 c8             	xor    %rcx,%rax
    3381:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    3387:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    338d:	48 31 ca             	xor    %rcx,%rdx
    3390:	48 31 c2             	xor    %rax,%rdx
    3393:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    339a:	1c b2 9f 
    339d:	48 0f af d0          	imul   %rax,%rdx
    33a1:	48 89 d1             	mov    %rdx,%rcx
    33a4:	48 c1 e9 23          	shr    $0x23,%rcx
    33a8:	48 01 f1             	add    %rsi,%rcx
    33ab:	48 31 d1             	xor    %rdx,%rcx
    33ae:	48 0f af c8          	imul   %rax,%rcx
    33b2:	48 89 c8             	mov    %rcx,%rax
    33b5:	48 c1 e8 1c          	shr    $0x1c,%rax
    33b9:	48 31 c8             	xor    %rcx,%rax
    33bc:	59                   	pop    %rcx
    33bd:	c3                   	ret    
    33be:	48 85 f6             	test   %rsi,%rsi
    33c1:	74 53                	je     3416 <localXXH3_64b+0x2e6>
    33c3:	0f b6 07             	movzbl (%rdi),%eax
    33c6:	48 89 f1             	mov    %rsi,%rcx
    33c9:	48 d1 e9             	shr    %rcx
    33cc:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    33d1:	c1 e0 10             	shl    $0x10,%eax
    33d4:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    33d8:	c1 e1 18             	shl    $0x18,%ecx
    33db:	09 c1                	or     %eax,%ecx
    33dd:	48 09 d1             	or     %rdx,%rcx
    33e0:	48 c1 e6 08          	shl    $0x8,%rsi
    33e4:	48 09 ce             	or     %rcx,%rsi
    33e7:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    33ec:	48 31 f0             	xor    %rsi,%rax
    33ef:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    33f6:	ae b2 c2 
    33f9:	48 0f af c8          	imul   %rax,%rcx
    33fd:	48 89 c8             	mov    %rcx,%rax
    3400:	48 c1 e8 1d          	shr    $0x1d,%rax
    3404:	48 31 c8             	xor    %rcx,%rax
    3407:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    340e:	67 56 16 
    3411:	e9 34 ff ff ff       	jmp    334a <localXXH3_64b+0x21a>
    3416:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    341d:	80 06 2d 
    3420:	59                   	pop    %rcx
    3421:	c3                   	ret    

Disassembly of section .fini:
