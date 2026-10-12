#!/usr/bin/env python3
"""Semantic model of the LoongArch LSX/LASX intrinsics used by xxHash's XXH3 LSX/LASX paths.
Replaces each `call @llvm.loongarch.{lsx,lasx}.*` by generic LLVM IR with the ISA semantics
(LoongArch Reference Manual Vol.1 / LSX-LASX manual), applied identically to old.ll and new.ll:
  vld/xvld(p, 0)            -> load <16|32 x i8>, ptr p, align 1      (unaligned 128/256-bit load)
  vxor.v / vadd.d / vmul.d  -> xor / add / mul (lane-wise, mod 2^64)
  vsrli.d / vslli.d (a,K)   -> lshr / shl by splat K (K < 64)
  vmulwev.d.wu(a,b)         -> zext(a[even 32-bit lanes]) * zext(b[even lanes])  (64-bit products)
  vreplgr2vr.{w,d}(x)       -> splat x
  vshuf4i.w(a,imm)          -> d.w[i] = a.w[(i & ~3) + ((imm >> 2*(i&3)) & 3)]   (per 128-bit lane)
usage: la_model.py in.ll out.ll"""
import re, sys
t = open(sys.argv[1]).read()
CALL = re.compile(r'^(\s*)(%[\w.]+) = (?:tail |notail )?call (<\d+ x i\d+>) @llvm\.loongarch\.(lsx|lasx)\.([\w.]+)\((.*)\)(?: #\d+)?\s*$')
def split_args(s):
    out, depth, cur = [], 0, ''
    for ch in s:
        if ch in '(<[{': depth += 1
        if ch in ')>]}': depth -= 1
        if ch == ',' and depth == 0: out.append(cur.strip()); cur = ''
        else: cur += ch
    if cur.strip(): out.append(cur.strip())
    return out
def tyval(a):
    a = re.sub(r'\b(noundef|nonnull|readonly|range\([^)]*\)) ', '', a)
    m = re.match(r'(<\d+ x i\d+>|ptr|i\d+) (.*)$', a); return m.group(1), m.group(2)
cnt = {}; unhandled = []; k = 0
def vec(ty):
    m = re.match(r'<(\d+) x i(\d+)>', ty); return int(m.group(1)), int(m.group(2))
out = []
for line in t.split('\n'):
    m = CALL.match(line)
    if not m: out.append(line); continue
    ind, r, rty, ext, op, args = m.groups(); a = [tyval(x) for x in split_args(args)]
    op = op[1:] if ext == 'lasx' and op.startswith('x') else op
    k += 1; f = f'%lam{k}_'; L = []
    n, w = vec(rty)
    if op == 'vld':
        L.append(f'{r} = load {rty}, ptr {a[0][1]}, align 1')
    elif op in ('vxor.v', 'vadd.d', 'vmul.d'):
        L.append(f'{r} = {dict(zip(["vxor.v","vadd.d","vmul.d"],["xor","add","mul"]))[op]} {rty} {a[0][1]}, {a[1][1]}')
    elif op in ('vsrli.d', 'vslli.d'):
        L.append(f'{r} = {"lshr" if op=="vsrli.d" else "shl"} {rty} {a[0][1]}, splat (i{w} {int(a[1][1])})')
    elif op == 'vmulwev.d.wu':
        sn, sw = vec(a[0][0]); mask = ', '.join(f'i32 {2*i}' for i in range(sn // 2))
        for j in (0, 1):
            L.append(f'{f}e{j} = shufflevector {a[j][0]} {a[j][1]}, {a[j][0]} poison, <{sn//2} x i32> <{mask}>')
            L.append(f'{f}z{j} = zext <{sn//2} x i32> {f}e{j} to {rty}')
        L.append(f'{r} = mul nuw {rty} {f}z0, {f}z1')
    elif op in ('vreplgr2vr.d', 'vreplgr2vr.w'):
        L.append(f'{f}i = insertelement {rty} poison, {a[0][0]} {a[0][1]}, i64 0')
        L.append(f'{r} = shufflevector {rty} {f}i, {rty} poison, <{n} x i32> zeroinitializer')
    elif op == 'vshuf4i.w':
        imm = int(a[1][1]); mask = ', '.join(f'i32 {(i & ~3) + ((imm >> (2*(i&3))) & 3)}' for i in range(n))
        L.append(f'{r} = shufflevector {rty} {a[0][1]}, {rty} poison, <{n} x i32> <{mask}>')
    else:
        unhandled.append(line.strip()); out.append(line); continue
    cnt[ext + '.' + op] = cnt.get(ext + '.' + op, 0) + 1
    out += [ind + x for x in L]
t2 = '\n'.join(out)
open(sys.argv[2], 'w').write(t2)
print(sys.argv[1], 'replaced:', cnt, 'unhandled:', unhandled, 'remaining loongarch calls:', len(re.findall(r'call [^\n]*@llvm\.loongarch', t2)))
