#!/usr/bin/env python3
"""Emit partition.ll: an Alive2 check that the case split is exhaustive and disjoint.

@src returns 1.  @tgt returns the number of sub-checks whose precondition holds
for an input (len = last-first, base, first six bytes b0..b5), with every
predicate written exactly as the corresponding wrapper states it:
  V1a       0 <= len < 8                                   (scripts/verify.py, 'ult 8')
  V1b       len >= 8 && !(base == 10 && (shape4 || shape5))  (verify.py)
  V2 s,z,L  base == 10 && len-class L && b0..b{z-1} == '0' && (z < s -> b_z != '0')
            && b_z..b_{s-1} digits && b_s not a digit       (gen.py)
            L in 8..15: len == L;   L == 16: len >= 16 (signed)
Domain: len >= 0 (signed), i.e. [first,last) is a valid range.  Alive2 proving
src == tgt shows every input satisfies exactly one sub-check precondition.
"""
from pathlib import Path
L = []
a = L.append
a('define i32 @src(i64 noundef %len, i32 noundef %base, i8 noundef %b0, i8 noundef %b1, i8 noundef %b2, i8 noundef %b3, i8 noundef %b4, i8 noundef %b5) {')
a('  %dom = icmp sge i64 %len, 0'); a('  call void @llvm.assume(i1 %dom)'); a('  ret i32 1'); a('}')
a('define i32 @tgt(i64 noundef %len, i32 noundef %base, i8 noundef %b0, i8 noundef %b1, i8 noundef %b2, i8 noundef %b3, i8 noundef %b4, i8 noundef %b5) {')
a('  %dom = icmp sge i64 %len, 0'); a('  call void @llvm.assume(i1 %dom)')
for k in range(6):
    a(f'  %s{k} = sub i8 %b{k}, 48'); a(f'  %d{k} = icmp ult i8 %s{k}, 10'); a(f'  %n{k} = xor i1 %d{k}, true')
    a(f'  %z{k} = icmp eq i8 %b{k}, 48'); a(f'  %nz{k} = xor i1 %z{k}, true')
a('  %b10 = icmp eq i32 %base, 10')
# V1a, V1b exactly as in scripts/verify.py
a('  %v1a = icmp ult i64 %len, 8')
a('  %ge8 = icmp sge i64 %len, 8')
a('  %d01 = and i1 %d0, %d1'); a('  %d012 = and i1 %d01, %d2'); a('  %d0123 = and i1 %d012, %d3')
a('  %shape4 = and i1 %d0123, %n4'); a('  %d01234 = and i1 %d0123, %d4'); a('  %shape5 = and i1 %d01234, %n5')
a('  %shape = or i1 %shape4, %shape5'); a('  %fast = and i1 %b10, %shape'); a('  %slow = xor i1 %fast, true')
a('  %v1b = and i1 %ge8, %slow')
a('  %c0 = zext i1 %v1a to i32'); a('  %c1x = zext i1 %v1b to i32'); a('  %acc1 = add i32 %c0, %c1x')
acc = '%acc1'; n = 0
for S in (4, 5):
    for Z in range(S + 1):
        for Lc in range(8, 17):
            t = f's{S}z{Z}L{Lc}'
            conds = ['%b10']
            if Lc < 16:
                a(f'  %len_{t} = icmp eq i64 %len, {Lc}')
            else:
                a(f'  %len_{t} = icmp sge i64 %len, 16')
            conds.append(f'%len_{t}')
            conds += [f'%z{k}' for k in range(Z)]
            if Z < S:
                conds.append(f'%nz{Z}')
            conds += [f'%d{k}' for k in range(Z, S)]
            conds.append(f'%n{S}')
            cur = conds[0]
            for i, c in enumerate(conds[1:]):
                a(f'  %p{i}_{t} = and i1 {cur}, {c}'); cur = f'%p{i}_{t}'
            a(f'  %c_{t} = zext i1 {cur} to i32'); a(f'  %acc_{t} = add i32 {acc}, %c_{t}'); acc = f'%acc_{t}'
            n += 1
a(f'  ret i32 {acc}'); a('}'); a('declare void @llvm.assume(i1)')
out = Path(__file__).resolve().parent / 'modules/partition.ll'
out.parent.mkdir(exist_ok=True)
out.write_text('\n'.join(L) + '\n')
print(out, n, 'V2 cases')
