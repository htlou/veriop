#!/usr/bin/env python3
"""fast_float old/new check: usage ff_check.py COMMIT [--abstract-probe]"""
import json, re, shutil, subprocess, sys, time
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))
from common import *

commit = sys.argv[1]
abstract = '--abstract-probe' in sys.argv
wd = HQ / 'gh/work/fast_float' / commit[:8]
meta = materialize('fast_float', commit, wd, ['include'])
tag = 'probe' if abstract else 'plain'
ev = wd / ('ev-' + tag)
ev.mkdir(exist_ok=True)
TU = Path(__file__).parent / 'ff_tu.cpp'

PURE_DECL = '\nextern "C" bool ff_rtn_pure(void) __attribute__((const));\n'
def patch_probe(tree):
    f = tree / 'include/fast_float/parse_number.h'
    t = f.read_text()
    m = re.search(r'fastfloat_really_inline bool rounds_to_nearest\(\) noexcept \{', t)
    assert m, 'rounds_to_nearest not found'
    i = m.end(); depth = 1
    while depth:
        c = t[i]
        depth += (c == '{') - (c == '}')
        i += 1
    t = t[:m.start()] + PURE_DECL + 'fastfloat_really_inline bool rounds_to_nearest() noexcept { return ff_rtn_pure(); }' + t[i:]
    f.write_text(t)

def has_int(side):
    return any('parse_int_string' in (wd / side / 'include/fast_float' / f).read_text(errors='replace')
               for f in ('parse_number.h', 'ascii_number.h') if (wd / side / 'include/fast_float' / f).exists())

COMPAT = [('constexpr int max_digits = max_digits_u64(base);', 'const int max_digits = max_digits_u64(base);')]
notes = {'compat_applied': [], 'int_dropped': False, 'std': {}}

def tree_for(side, compat):
    src = wd / side
    if compat:
        dst = wd / (side + '-compat')
        if dst.exists(): shutil.rmtree(dst)
        shutil.copytree(src, dst)
        for fn in (dst / 'include/fast_float').glob('*.h'):
            t = fn.read_text()
            for a, b in COMPAT: t = t.replace(a, b)
            fn.write_text(t)
        src = dst
    if abstract:
        dst = wd / (side + ('-compat' if compat else '') + '-probe')
        if dst.exists(): shutil.rmtree(dst)
        shutil.copytree(src, dst)
        patch_probe(dst)
        src = dst
    return src

want_int = has_int('old') and has_int('new')
def attempt(side, int_on, compat, std):
    src = tree_for(side, compat)
    extra = ['-DFF_HAVE_INT'] if int_on else []
    rc, err, cmd, dt = compile_tu(TU, wd, [src / 'include'], ev / f'{side}.ll', extra=extra, std=std)
    return rc, err, cmd

# decide a common configuration for both sides: first (int, compat, std) that builds both
configs = []
for int_on in ([True, False] if want_int else [False]):
    for compat in (False, True):
        for std in ('c++17', 'c++20'):
            configs.append((int_on, compat, std))
chosen = None
logs = []
for cfg in configs:
    ok = True
    for side in ('old', 'new'):
        rc, err, cmd = attempt(side, *cfg)
        logs.append(f'### {side} int={cfg[0]} compat={cfg[1]} std={cfg[2]} rc={rc}\n{cmd}\n{err[-1500:]}\n')
        if rc: ok = False; break
    if ok:
        chosen = cfg; break
(ev / 'compile.log').write_text('\n'.join(logs))
if not chosen:
    print('does not build'); json.dump({'built': False}, open(ev / 'build.json', 'w')); sys.exit(2)
notes.update(built=True, int_on=chosen[0], compat=chosen[1], std=chosen[2], want_int=want_int)
skip_main = '--skip-main' in sys.argv
if not skip_main:
    rc, o, e, dt = sh(['python3', str(Path(__file__).parent / 'irpair.py'), '--old', str(ev / 'old.ll'), '--new', str(ev / 'new.ll'), '--out', str(ev), '--jobs', '8', '--fn-timeout', '150'])
    print(o, e[-500:])
json.dump(notes, open(ev / 'build.json', 'w'))

# ---- unit TU (non-inlined internal entry points)
def txt(side, f):
    p = wd / side / 'include/fast_float' / f
    return p.read_text(errors='replace') if p.exists() else ''
both = lambda pat: all(re.search(pat, txt(sd, 'parse_number.h') + txt(sd, 'decimal_to_binary.h')) for sd in ('old', 'new'))
uextra = []
if both(r'from_chars_advanced\(parsed_number_string_t<UC>\s*&\s*pns'): uextra.append('-DFF_HAVE_ADV')
if both(r'compute_float\(int64_t q, uint64_t w\)'): uextra.append('-DFF_HAVE_CF')
notes['unit_flags'] = uextra
if uextra:
    uev = ev / 'unit'
    uev.mkdir(exist_ok=True)
    ok = True
    for side in ('old', 'new'):
        src = tree_for(side, chosen[1])
        rc, err, cmd, dt = compile_tu(Path(__file__).parent / 'ff_unit_tu.cpp', wd, [src / 'include'], uev / f'{side}.ll', extra=uextra, std=chosen[2])
        (uev / f'{side}-compile.log').write_text(cmd + '\n' + err)
        if rc: ok = False
    notes['unit_built'] = ok
    if ok:
        rc, o, e, dt = sh(['python3', str(Path(__file__).parent / 'irpair.py'), '--old', str(uev / 'old.ll'), '--new', str(uev / 'new.ll'), '--out', str(uev), '--jobs', '8', '--fn-timeout', '300'])
        print('UNIT', o, e[-500:])
json.dump(notes, open(ev / 'build.json', 'w'))
