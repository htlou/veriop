#!/usr/bin/env python3
"""Alive2 equivalence proof of the uint16 fast path, on the exact checked IR.

Inputs: build/ir/stock/u16_impl.ll (old) and build/ir/cand/u16_impl.ll (new); these
are the same .ll files that build-linked.sh turns into the linked benchmark objects.

Decomposition (new entry E = fast path, else tail call G = from_chars_int_advanced_slow):
  V3  G_new vs F_old: whole function, Alive2 bidirectional (syntactic equality).
  V1a len < 8 (any base/options/memory): E_new behaves exactly as `call G(args)`.
  (V1b/V2 also require the first eight bytes to be initialized, i.e. not poison.)
  V1b len >= 8, [first,first+8) dereferenceable, NOT Fast: E_new == `call G(args)`.
  V2  len >= 8, [first,first+8) dereferenceable, Fast: E_new == F_old (old body
      inlined; G only declared on the new side), bidirectional, loops unrolled.
  V2 may be split as v2s5 + v2s4 (one shape each), and each further by the number z
  of leading '0' bytes: v2s5z0..v2s5z5, v2s4z0..v2s4z4 (z0..z{n} partition the shape).
  Each may be split further by the two format bits read by the parser: suffix f0..f3.
  Fast := base == 10 && (b0..b4 digits && b5 not digit  ||  b0..b3 digits && b4 not)
  with the shape written independently of the SWAR code (per-byte range tests).
V1a+V1b+V2 partition all inputs with last >= first; with V3, E_new == F_old.
Wrappers add only preconditions (llvm.assume, dereferenceable) and are combined
with the checked functions by `opt -passes=always-inline` (no other pass).
"""
import hashlib, json, os, re, subprocess, sys, time, argparse
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / 'build/verify'; RES = ROOT / 'results/alive2'
ALIVE = ROOT.parent.parent / 'alive2/build/alive2/alive-tv'
# raises only Z3's hard-coded 2 GB memory_high_watermark (see tools/z3mem_shim.c)
SHIM = ROOT / 'tools/z3mem_shim.so'
F = '_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE'
G = '_ZN10fast_float28from_chars_int_advanced_slowItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE'
ARGS = 'ptr noundef %buf, ptr noundef %end, ptr noundef nonnull align 2 dereferenceable(2) %v, i64 %fmt, i64 %o2'
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()

def extract(variant, func):
    txt = subprocess.run(['llvm-extract', '-S', f'--func={func}', str(ROOT / f'build/ir/{variant}/u16_impl.ll'), '-o', '-'],
                         check=True, capture_output=True, text=True).stdout
    # make the defined checked function inlinable into the wrapper
    return re.sub(r'^(attributes #\d+ = \{)(.*)$',
                  lambda m: m.group(1) + (' alwaysinline' + m.group(2).replace(' noinline', '')
                                          if 'uwtable' in m.group(2) and 'alwaysinline' not in m.group(2) else m.group(2)),
                  txt, flags=re.M)

def shape_ir():
    L = []
    for k in range(6):
        L += [f'  %p{k} = getelementptr inbounds i8, ptr %buf, i64 {k}', f'  %b{k} = load i8, ptr %p{k}, align 1',
              f'  %s{k} = sub i8 %b{k}, 48', f'  %d{k} = icmp ult i8 %s{k}, 10']
    L += ['  %d01 = and i1 %d0, %d1', '  %d012 = and i1 %d01, %d2', '  %d0123 = and i1 %d012, %d3',
          '  %nd4 = xor i1 %d4, true', '  %nd5 = xor i1 %d5, true',
          '  %shape4 = and i1 %d0123, %nd4', '  %d01234 = and i1 %d0123, %d4', '  %shape5 = and i1 %d01234, %nd5',
          '  %shape = or i1 %shape4, %shape5']
    return L

def wrapper(case, callee):
    deref = '' if case == 'v1a' else ' nonnull align 1 dereferenceable(8)'
    L = [f'define {{ ptr, i32 }} @ver(ptr noundef{deref} %buf, i64 noundef %len, ptr noundef nonnull align 2 dereferenceable(2) %v, i64 noundef %fmt, i64 noundef %o2) {{',
         '  %end = getelementptr i8, ptr %buf, i64 %len']
    if case != 'v1a':
        # precondition: the first eight input bytes are initialized (not undef/poison);
        # encoded by storing a noundef word into them before the call (same on both sides)
        L[0] = L[0].replace('i64 noundef %o2)', 'i64 noundef %o2, i64 noundef %w)')
        L.append('  store i64 %w, ptr %buf, align 1')
    if case == 'v1a':
        L += ['  %pre = icmp ult i64 %len, 8', '  call void @llvm.assume(i1 %pre)']
    else:
        # 8 <= len <= PTRDIFF_MAX ([first,last) is a valid range, so last - first is a
        # non-negative ptrdiff_t). An earlier unsigned bound admitted negative ptrdiff
        # values and produced a spurious counterexample (results/alive2/explore/e5*).
        L += ['  %pre = icmp sge i64 %len, 8', '  call void @llvm.assume(i1 %pre)'] + shape_ir()
        L += ['  %bhi = lshr i64 %o2, 32', '  %base = trunc i64 %bhi to i32', '  %b10 = icmp eq i32 %base, 10']
        if case == 'v1b':
            L += ['  %fast = and i1 %b10, %shape', '  %slow = xor i1 %fast, true', '  call void @llvm.assume(i1 %slow)']
        else:  # v2 (whole fast region) or v2s5 / v2s4 (one shape each; together = v2)
            m = re.fullmatch(r'v2(s[45])?(?:z(\d))?(?:f(\d))?', case)
            if m.group(3) is not None:
                # sub-partition on the two format bits the integer parser reads
                # (allow_leading_plus = 0x80, skip_white_space = 0x100); all other bits stay symbolic
                c = int(m.group(3)); cbits = (0x80 if c & 1 else 0) | (0x100 if c & 2 else 0)
                L += ['  %fmtm = and i64 %fmt, -385', f'  %fmtc = or i64 %fmtm, {cbits}']
            sh = {None: '%shape', 's5': '%shape5', 's4': '%shape4'}[m.group(1)]
            L += ['  call void @llvm.assume(i1 %b10)', f'  call void @llvm.assume(i1 {sh})',
                  # base == 10 is assumed; also pass it as a literal (equal under the assumption)
                  '  %o2lo = and i64 %o2, 4294967295', '  %o2b = or i64 %o2lo, 42949672960']
            if m.group(2) is not None:
                # sub-partition by the number z of leading '0' bytes (z = ndigits: all zeros)
                z, nd = int(m.group(2)), int(m.group(1)[1])
                for k in range(z):
                    L += [f'  %z{k} = icmp eq i8 %b{k}, 48', f'  call void @llvm.assume(i1 %z{k})']
                if z < nd:
                    L += [f'  %nz = icmp ne i8 %b{z}, 48', '  call void @llvm.assume(i1 %nz)']
    args = ARGS.replace('i64 %fmt', 'i64 %fmtc') if any('%fmtc =' in x for x in L) else ARGS
    if any('%o2b =' in x for x in L):
        args = args.replace('i64 %o2', 'i64 %o2b')
    L += [f'  %r = call {{ ptr, i32 }} @{callee}({args})', '  ret { ptr, i32 } %r', '}', 'declare void @llvm.assume(i1)', '']
    return '\n'.join(L)

def module(name, variant, func, case, callee):
    pre = OUT / f'{name}.pre.ll'; out = OUT / f'{name}.ll'
    pre.write_text(extract(variant, func) + '\n' + wrapper(case, callee))
    subprocess.run(['opt', '-S', '-passes=always-inline', str(pre), '-o', str(out)], check=True)
    return out

def run(name, src, tgt, unroll, smt_to, extra=(), oneway=False):
    cmd = [str(ALIVE), '--func=ver', *([] if oneway else ['--bidirectional']), '--always-verify', '--fail-src-ub', f'--smt-to={smt_to}',
           '--smt-max-mem=60000', '--time-verify', f'--src-unroll={unroll}', f'--tgt-unroll={unroll}', *extra, str(src), str(tgt)]
    t = time.monotonic()
    env = dict(os.environ, LD_PRELOAD=str(SHIM), Z3MEM_BYTES=os.environ.get('Z3MEM_BYTES', str(24 << 30)))
    p = subprocess.run(cmd, capture_output=True, text=True, env=env)
    log = p.stdout + p.stderr
    (RES / f'{name}.log').write_text(' '.join(cmd) + '\n\n' + log)
    ok = (p.returncode == 0 and '1 correct transformations' in log and '0 incorrect transformations' in log
          and '0 failed-to-prove transformations' in log and '0 Alive2 errors' in log
          and log.count('These functions seem to be equivalent!') == 1)
    rec = dict(accepted=ok, seconds=round(time.monotonic() - t, 1), cmd=cmd,
               env={'LD_PRELOAD': env['LD_PRELOAD'], 'Z3MEM_BYTES': env['Z3MEM_BYTES']}, shim_sha256=sha(SHIM),
               src_sha256=sha(src), tgt_sha256=sha(tgt), unroll=unroll)
    print(name, 'PASS' if ok else 'FAIL', rec['seconds'], flush=True)
    return rec

if __name__ == '__main__':
    ap = argparse.ArgumentParser(); ap.add_argument('cases', nargs='*', default=['v3', 'v1a', 'v1b', 'v2'])
    ap.add_argument('--unroll', type=int, default=8); ap.add_argument('--tgt', default='cand'); ap.add_argument('--tag', default=''); ap.add_argument('--oneway', action='store_true'); ap.add_argument('--smt-to', type=int, default=600000)
    a = ap.parse_args()
    OUT.mkdir(parents=True, exist_ok=True); RES.mkdir(parents=True, exist_ok=True)
    summ_p = RES / 'summary.json'
    summ = json.loads(summ_p.read_text()) if summ_p.exists() else {}
    summ['inputs'] = {v: sha(ROOT / f'build/ir/{v}/u16_impl.ll') for v in ('stock', 'cand')}
    for c in a.cases:
        if c == 'v3':
            s = OUT / 'v3_src.ll'; t = OUT / 'v3_tgt.ll'
            s.write_text(subprocess.run(['llvm-extract', '-S', f'--func={F}', str(ROOT / 'build/ir/stock/u16_impl.ll'), '-o', '-'], check=True, capture_output=True, text=True).stdout)
            t.write_text(subprocess.run(['llvm-extract', '-S', f'--func={G}', str(ROOT / 'build/ir/cand/u16_impl.ll'), '-o', '-'], check=True, capture_output=True, text=True).stdout.replace(G, F))
            cmd = [str(ALIVE), '--bidirectional', str(s), str(t)]
            p = subprocess.run(cmd, capture_output=True, text=True); log = p.stdout + p.stderr
            (RES / 'v3.log').write_text(' '.join(cmd) + '\n\n' + log)
            ok = ('Transformation seems to be correct! (syntactically equal)' in log and '0 incorrect transformations' in log
                  and '1 correct transformations' in log and '0 Alive2 errors' in log)
            summ['v3'] = dict(accepted=ok, cmd=cmd, src_sha256=sha(s), tgt_sha256=sha(t),
                              note='bodies identical; only the noinline function attribute differs')
            print('v3', 'PASS' if ok else 'FAIL', flush=True)
        elif c in ('v1a', 'v1b'):
            s = module(f'{c}_src', 'cand', F, c, G)   # src: wrapper calls G directly (F unused)
            t = module(f'{c}_tgt', 'cand', F, c, F)   # tgt: wrapper calls new entry F (inlined)
            summ[c] = run(c, s, t, 0, a.smt_to)
        elif c.startswith('v2'):
            s = module(f'{c}{a.tag}_src', 'stock', F, c, F)  # old function, inlined
            t = module(f'{c}{a.tag}_tgt', a.tgt, F, c, F)   # new entry, inlined; G only declared
            summ_p = RES / f'summary_{c}{a.tag}_u{a.unroll}.json'
            summ[f'{c}{a.tag}_u{a.unroll}'] = run(f'{c}{a.tag}_u{a.unroll}', s, t, a.unroll, a.smt_to, oneway=a.oneway)
        summ_p.write_text(json.dumps(summ, indent=2) + '\n')
