#!/usr/bin/env python3
"""Replace llvm.wasm.shuffle(<16 x i8> a, <16 x i8> b, i32 k0..k15) (WASM i8x16.shuffle: r[i] = concat(a,b)[k_i], k_i < 32)
   by the equivalent `shufflevector <16 x i8> a, <16 x i8> b, <16 x i32> <k0..k15>`. usage: wasm_model.py in.ll out.ll"""
import re, sys
t = open(sys.argv[1]).read(); n = 0
pat = re.compile(r'(%[\w.]+) = (?:tail )?call <16 x i8> @llvm\.wasm\.shuffle\(<16 x i8> ([^,]+), <16 x i8> ([^,]+), ((?:i32 \d+(?:, )?){16})\)')
def rep(m):
    global n; n += 1
    ks = re.findall(r'i32 (\d+)', m.group(4)); assert len(ks) == 16 and all(int(k) < 32 for k in ks)
    return f'{m.group(1)} = shufflevector <16 x i8> {m.group(2)}, <16 x i8> {m.group(3)}, <16 x i32> <' + ', '.join('i32 ' + k for k in ks) + '>'
t = pat.sub(rep, t); open(sys.argv[2], 'w').write(t)
print(sys.argv[1], 'wasm.shuffle replaced:', n, 'remaining llvm.wasm calls:', len(re.findall(r'call [^\n]*@llvm\.wasm\.', t)))
