#!/usr/bin/env python3
"""Replace calls to llvm.aarch64.neon.umull.v2i64(a,b) by their exact semantics
   mul nuw (zext a to <2 x i64>), (zext b to <2 x i64>)   [UMULL: unsigned 32x32->64 widening multiply per lane]
   Applied identically to old.ll and new.ll.  usage: umull_model.py in.ll out.ll"""
import re, sys
t = open(sys.argv[1]).read()
pat = re.compile(r'^(\s*)(%[\w.]+) = (?:tail )?call <2 x i64> @llvm\.aarch64\.neon\.umull\.v2i64\(<2 x i32> ((?:splat \([^)]*\))|[^,]+), <2 x i32> ((?:splat \([^)]*\))|[^)]+)\)', re.M)
n = 0
def rep(m):
    global n; n += 1
    ind, r, a, b = m.groups(); base = r[1:]
    return (f'{ind}%umza_{base} = zext <2 x i32> {a} to <2 x i64>\n'
            f'{ind}%umzb_{base} = zext <2 x i32> {b} to <2 x i64>\n'
            f'{ind}{r} = mul nuw <2 x i64> %umza_{base}, %umzb_{base}')
t = pat.sub(rep, t)
open(sys.argv[2], 'w').write(t)
print(sys.argv[1], 'umull calls replaced:', n, 'remaining umull calls:', len(re.findall(r'call .*@llvm\.aarch64\.neon\.umull', t)))
