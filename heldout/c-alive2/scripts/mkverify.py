#!/usr/bin/env python3
"""Build Alive2 verification modules from the exact checked IR (build/ir/<v>/u16_impl.ll).

c2 (composition): wrapper @ver(buf, len, value, fmt, opt2) with preconditions
  buf: dereferenceable(N) (the C++ from_chars precondition that [first,last) is a
  valid range), len <= N via llvm.assume, last = buf + len, optional base := 10.
  The checked functions are made alwaysinline (noinline removed) and inlined into
  @ver with `opt -passes=always-inline` (no other pass); everything else is the
  unmodified checked IR.
"""
import re, subprocess, sys, argparse
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
OLD = '_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE'
GEN = '_ZN10fast_float31from_chars_int_advanced_generalItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE'

def build(variant, out, n, base10, minlen):
    src = ROOT / f'build/ir/{variant}/u16_impl.ll'
    funcs = [OLD] + ([GEN] if variant != 'stock' else [])
    ext = subprocess.run(['llvm-extract', '-S', *[f'--func={f}' for f in funcs], str(src), '-o', '-'],
                         check=True, capture_output=True, text=True).stdout
    # make every attribute group of the extracted functions alwaysinline
    ext = re.sub(r'^(attributes #\d+ = \{)(.*)$',
                 lambda m: m.group(1) + (' alwaysinline' + m.group(2).replace(' noinline', '')
                                         if 'uwtable' in m.group(2) else m.group(2)),
                 ext, flags=re.M)
    lines = [f'define {{ ptr, i32 }} @ver(ptr noundef nonnull align 1 dereferenceable({n}) %buf, i64 %len, '
             'ptr noundef nonnull align 2 dereferenceable(2) %v, i64 %fmt, i64 %o2) {',
             f'  %ok = icmp ule i64 %len, {n}', '  call void @llvm.assume(i1 %ok)']
    if minlen:
        lines += [f'  %ok2 = icmp uge i64 %len, {minlen}', '  call void @llvm.assume(i1 %ok2)']
    o2 = '%o2'
    if base10:
        lines += ['  %lo = and i64 %o2, 4294967295', '  %o2b = or i64 %lo, 42949672960']
        o2 = '%o2b'
    lines += ['  %end = getelementptr inbounds i8, ptr %buf, i64 %len',
              f'  %r = call {{ ptr, i32 }} @{OLD}(ptr %buf, ptr %end, ptr %v, i64 %fmt, i64 {o2})',
              '  ret { ptr, i32 } %r', '}', 'declare void @llvm.assume(i1)']
    tmp = Path(out).with_suffix('.pre.ll')
    tmp.write_text(ext + '\n' + '\n'.join(lines) + '\n')
    subprocess.run(['opt', '-S', '-passes=always-inline', str(tmp), '-o', str(tmp) + '.inl'], check=True)
    subprocess.run(['llvm-extract', '-S', '--func=ver', str(tmp) + '.inl', '-o', str(out)], check=True)

if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('variant'); ap.add_argument('out')
    ap.add_argument('--n', type=int, default=16); ap.add_argument('--base10', action='store_true')
    ap.add_argument('--minlen', type=int, default=0)
    a = ap.parse_args(); build(a.variant, a.out, a.n, a.base10, a.minlen)
