
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_veckeymix_qf/bench-cli/old:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000002f80 <localXXH3_64b>:
    2f80:	48 83 fe 10          	cmp    $0x10,%rsi
    2f84:	77 49                	ja     2fcf <localXXH3_64b+0x4f>
    2f86:	48 83 fe 09          	cmp    $0x9,%rsi
    2f8a:	0f 82 00 02 00 00    	jb     3190 <localXXH3_64b+0x210>
    2f90:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    2f97:	73 82 67 
    2f9a:	48 33 07             	xor    (%rdi),%rax
    2f9d:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    2fa4:	bc 56 af 
    2fa7:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    2fac:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    2fb1:	48 01 d6             	add    %rdx,%rsi
    2fb4:	48 0f c8             	bswap  %rax
    2fb7:	48 01 c6             	add    %rax,%rsi
    2fba:	48 31 cf             	xor    %rcx,%rdi
    2fbd:	48 01 f7             	add    %rsi,%rdi
    2fc0:	48 89 f8             	mov    %rdi,%rax
    2fc3:	48 c1 e8 25          	shr    $0x25,%rax
    2fc7:	48 31 f8             	xor    %rdi,%rax
    2fca:	e9 81 01 00 00       	jmp    3150 <localXXH3_64b+0x1d0>
    2fcf:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    2fd6:	0f 87 8d 01 00 00    	ja     3169 <localXXH3_64b+0x1e9>
    2fdc:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    2fe3:	79 37 9e 
    2fe6:	48 0f af ce          	imul   %rsi,%rcx
    2fea:	48 83 fe 21          	cmp    $0x21,%rsi
    2fee:	0f 82 00 01 00 00    	jb     30f4 <localXXH3_64b+0x174>
    2ff4:	48 83 fe 41          	cmp    $0x41,%rsi
    2ff8:	0f 82 a6 00 00 00    	jb     30a4 <localXXH3_64b+0x124>
    2ffe:	48 83 fe 61          	cmp    $0x61,%rsi
    3002:	72 50                	jb     3054 <localXXH3_64b+0xd4>
    3004:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    300b:	9c 34 3f 
    300e:	48 33 47 30          	xor    0x30(%rdi),%rax
    3012:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    3019:	0b 4f 1d 
    301c:	48 33 57 38          	xor    0x38(%rdi),%rdx
    3020:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3025:	49 31 c0             	xor    %rax,%r8
    3028:	48 b8 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%rax
    302f:	b4 59 31 
    3032:	48 33 44 37 c0       	xor    -0x40(%rdi,%rsi,1),%rax
    3037:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    303e:	78 73 64 
    3041:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    3046:	4c 01 c1             	add    %r8,%rcx
    3049:	c4 e2 eb f6 c0       	mulx   %rax,%rdx,%rax
    304e:	48 31 d0             	xor    %rdx,%rax
    3051:	48 01 c1             	add    %rax,%rcx
    3054:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    305b:	c3 00 cb 
    305e:	48 33 47 20          	xor    0x20(%rdi),%rax
    3062:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    3069:	53 2e a3 
    306c:	48 33 57 28          	xor    0x28(%rdi),%rdx
    3070:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3075:	49 31 c0             	xor    %rax,%r8
    3078:	48 b8 71 64 48 97 a2 	movabs $0x4ef90da297486471,%rax
    307f:	0d f9 4e 
    3082:	48 33 44 37 d0       	xor    -0x30(%rdi,%rsi,1),%rax
    3087:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    308e:	de ac d8 
    3091:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3096:	49 01 c8             	add    %rcx,%r8
    3099:	c4 e2 fb f6 c8       	mulx   %rax,%rax,%rcx
    309e:	48 31 c1             	xor    %rax,%rcx
    30a1:	4c 01 c1             	add    %r8,%rcx
    30a4:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    30ab:	c0 e5 78 
    30ae:	48 33 47 10          	xor    0x10(%rdi),%rax
    30b2:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    30b9:	ff 72 21 
    30bc:	48 33 57 18          	xor    0x18(%rdi),%rdx
    30c0:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    30c5:	49 31 c0             	xor    %rax,%r8
    30c8:	48 b8 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%rax
    30cf:	43 24 8e 
    30d2:	48 33 44 37 e0       	xor    -0x20(%rdi,%rsi,1),%rax
    30d7:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    30de:	3a 26 4c 
    30e1:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    30e6:	49 01 c8             	add    %rcx,%r8
    30e9:	c4 e2 fb f6 c8       	mulx   %rax,%rax,%rcx
    30ee:	48 31 c1             	xor    %rax,%rcx
    30f1:	4c 01 c1             	add    %r8,%rcx
    30f4:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    30fb:	a4 4b be 
    30fe:	4c 33 07             	xor    (%rdi),%r8
    3101:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    3108:	90 97 db 
    310b:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    3110:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    3117:	b3 67 1f 
    311a:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    311f:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    3126:	21 ad 1c 
    3129:	48 33 57 08          	xor    0x8(%rdi),%rdx
    312d:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    3132:	48 31 d6             	xor    %rdx,%rsi
    3135:	48 01 ce             	add    %rcx,%rsi
    3138:	48 89 c2             	mov    %rax,%rdx
    313b:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    3140:	48 31 c1             	xor    %rax,%rcx
    3143:	48 01 f1             	add    %rsi,%rcx
    3146:	48 89 c8             	mov    %rcx,%rax
    3149:	48 c1 e8 25          	shr    $0x25,%rax
    314d:	48 31 c8             	xor    %rcx,%rax
    3150:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3157:	67 56 16 
    315a:	48 0f af c8          	imul   %rax,%rcx
    315e:	48 89 c8             	mov    %rcx,%rax
    3161:	48 c1 e8 20          	shr    $0x20,%rax
    3165:	48 31 c8             	xor    %rcx,%rax
    3168:	c3                   	ret    
    3169:	50                   	push   %rax
    316a:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3171:	77 13                	ja     3186 <localXXH3_64b+0x206>
    3173:	48 8d 15 c6 87 01 00 	lea    0x187c6(%rip),%rdx        # 1b940 <XXH3_kSecret>
    317a:	31 c9                	xor    %ecx,%ecx
    317c:	e8 6f 4f 00 00       	call   80f0 <XXH3_len_129to240_64b>
    3181:	48 83 c4 08          	add    $0x8,%rsp
    3185:	c3                   	ret    
    3186:	e8 d5 5d 00 00       	call   8f60 <XXH3_hashLong_64b_default>
    318b:	48 83 c4 08          	add    $0x8,%rsp
    318f:	c3                   	ret    
    3190:	48 83 fe 04          	cmp    $0x4,%rsi
    3194:	72 56                	jb     31ec <localXXH3_64b+0x26c>
    3196:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    319a:	8b 0f                	mov    (%rdi),%ecx
    319c:	48 c1 e1 20          	shl    $0x20,%rcx
    31a0:	48 09 c1             	or     %rax,%rcx
    31a3:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    31aa:	b1 3a c7 
    31ad:	48 31 c8             	xor    %rcx,%rax
    31b0:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    31b6:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    31bc:	48 31 ca             	xor    %rcx,%rdx
    31bf:	48 31 c2             	xor    %rax,%rdx
    31c2:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    31c9:	1c b2 9f 
    31cc:	48 0f af d0          	imul   %rax,%rdx
    31d0:	48 89 d1             	mov    %rdx,%rcx
    31d3:	48 c1 e9 23          	shr    $0x23,%rcx
    31d7:	48 01 f1             	add    %rsi,%rcx
    31da:	48 31 d1             	xor    %rdx,%rcx
    31dd:	48 0f af c8          	imul   %rax,%rcx
    31e1:	48 89 c8             	mov    %rcx,%rax
    31e4:	48 c1 e8 1c          	shr    $0x1c,%rax
    31e8:	48 31 c8             	xor    %rcx,%rax
    31eb:	c3                   	ret    
    31ec:	48 85 f6             	test   %rsi,%rsi
    31ef:	74 53                	je     3244 <localXXH3_64b+0x2c4>
    31f1:	0f b6 07             	movzbl (%rdi),%eax
    31f4:	48 89 f1             	mov    %rsi,%rcx
    31f7:	48 d1 e9             	shr    %rcx
    31fa:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    31ff:	c1 e0 10             	shl    $0x10,%eax
    3202:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    3206:	c1 e1 18             	shl    $0x18,%ecx
    3209:	09 c1                	or     %eax,%ecx
    320b:	48 09 d1             	or     %rdx,%rcx
    320e:	48 c1 e6 08          	shl    $0x8,%rsi
    3212:	48 09 ce             	or     %rcx,%rsi
    3215:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    321a:	48 31 f0             	xor    %rsi,%rax
    321d:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    3224:	ae b2 c2 
    3227:	48 0f af c8          	imul   %rax,%rcx
    322b:	48 89 c8             	mov    %rcx,%rax
    322e:	48 c1 e8 1d          	shr    $0x1d,%rax
    3232:	48 31 c8             	xor    %rcx,%rax
    3235:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    323c:	67 56 16 
    323f:	e9 16 ff ff ff       	jmp    315a <localXXH3_64b+0x1da>
    3244:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    324b:	80 06 2d 
    324e:	c3                   	ret    

Disassembly of section .fini:
