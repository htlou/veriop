#!/usr/bin/env python3
"""simdjson old/new Alive2 pipeline (facts only; verdict assembled by sj_verdict.py).

usage: sj_check.py COMMIT [--jobs N] [--budget-min M] [--only tu1,tu2] [--force]
Writes gh/work/simdjson/<8>/ev/summary.json
"""
import argparse, glob, json, os, re, shutil, subprocess, sys, time
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))
from common import *
import cov

ap = argparse.ArgumentParser()
ap.add_argument('commit')
ap.add_argument('--jobs', type=int, default=6)
ap.add_argument('--budget-min', type=float, default=14)
ap.add_argument('--only', default='')
ap.add_argument('--fn-timeout', type=int, default=150)
ap.add_argument('--target', default='')
args = ap.parse_args()
commit = args.commit
t_start = time.time()
deadline = int(t_start + args.budget_min * 60)
wd = HQ / 'gh/work/simdjson' / commit[:8]
meta = materialize('simdjson', commit, wd, ['include', 'src'])
parent = meta['parent']
ev = wd / 'ev'
ev.mkdir(exist_ok=True)
HERE = Path(__file__).parent
CLIENTS = HERE / 'sj_clients'
OVR = HERE / 'sj_override' / commit[:8]

changed = []
for f in meta['changed']:
    for p in f['paths']:
        if p.startswith(('include/', 'src/')) and p.endswith(('.h', '.hpp', '.cpp', '.inl', '.cc')):
            changed.append(p)
changed = sorted(set(changed))
hk = cov.hunks('simdjson', parent, commit, changed)

def exists(side, p):
    return (wd / side / p).exists()

# ---------------------------------------------------------------- TU list
tus = []  # dict(name, srcs=[abs paths or rel-in-tree], kind)
def tu_list():
    out = []
    src_cpp_new = sorted(p.name for p in (wd / 'new/src').glob('*.cpp')) if exists('new', 'src') else []
    src_cpp_old = sorted(p.name for p in (wd / 'old/src').glob('*.cpp')) if exists('old', 'src') else []
    def unity(side):
        p = wd / side / 'src/simdjson.cpp'
        if not p.exists():
            return False
        t = p.read_text(errors='replace')
        return bool(re.search(r'#include\s*[<"](?:\.?/)?implementation\.cpp[>"]', t))
    if unity('old') and unity('new'):
        out.append({'name': 'lib', 'kind': 'lib-unity', 'srcs': ['src/simdjson.cpp']})
    else:
        common = sorted(set(src_cpp_old) & set(src_cpp_new))
        out.append({'name': 'lib', 'kind': 'lib-multi', 'srcs': ['src/' + n for n in common]})
    for c in sorted(CLIENTS.glob('*.cpp')):
        out.append({'name': 'client-' + c.stem, 'kind': 'client', 'srcs': [str(c)]})
    if OVR.exists():
        for c in sorted(OVR.glob('*.cpp')):
            out.append({'name': 'ovr-' + c.stem, 'kind': 'client', 'srcs': [str(c)]})
    return out

tus = tu_list()
if args.only:
    keep = set(args.only.split(','))
    tus = [t for t in tus if t['name'] in keep]

# era flags
def era_flags(tu):
    fl = []
    if not list((wd / 'new').glob('**/isadetection.h')):
        if tu['kind'] != 'client':
            fl += ['-march=haswell']      # pre-dispatch era: single compile-time architecture
    if tu['kind'] == 'client':
        fl += ['-march=haswell']
    if args.target:
        fl = ['--target=' + args.target]
    return fl

STDS = ['c++17', 'c++20', 'c++14', 'c++11']
COMPAT_INC = ['-include', 'cstdint', '-include', 'cstring', '-include', 'cstdlib', '-include', 'cstdio', '-include', 'cmath', '-include', 'string', '-include', 'cstddef', '-include', 'cstdarg']

def comp_one(side, src, out, std, extra, o0=False):
    p = Path(src)
    srcp = str(p) if p.is_absolute() else f'{side}/{src}'
    cmd = [str(CLANG), *BASE_FLAGS, f'-std={std}', '-I', f'{side}/include', '-I', f'{side}/src', *extra]
    if o0:
        cmd = [c for c in cmd if c not in ('-S', '-emit-llvm', '-O2')] + ['-O0', '-gline-tables-only', '-c']
    cmd += [srcp, '-o', str(out)]
    rc, o, e, dt = sh(cmd, timeout=900, cwd=wd)
    return rc, e, ' '.join(cmd)

def build_tu(tu):
    """try (std, compat) combos until both sides build. returns dict"""
    res = {'name': tu['name'], 'built': False, 'attempts': []}
    base_extra = era_flags(tu)
    for compat in (False, True):
        for std in STDS:
            extra = base_extra + (COMPAT_INC if compat else [])
            ok = True
            outs = {}
            for side in ('old', 'new'):
                objs = []
                for i, s in enumerate(tu['srcs']):
                    ll = ev / f"{tu['name']}-{side}-{i}.ll"
                    rc, e, cmd = comp_one(side, s, ll, std, extra)
                    if rc:
                        ok = False
                        res['attempts'].append({'side': side, 'std': std, 'compat': compat, 'src': s, 'err': e[-800:]})
                        break
                    objs.append(ll)
                if not ok:
                    break
                if len(objs) == 1:
                    final = ev / f"{tu['name']}-{side}.ll"
                    shutil.move(objs[0], final)
                else:
                    final = ev / f"{tu['name']}-{side}.ll"
                    rc, e = llvm_link(objs, final)
                    if rc:
                        ok = False
                        res['attempts'].append({'side': side, 'std': std, 'compat': compat, 'err': 'llvm-link: ' + e[-800:]})
                        break
                    for o in objs:
                        o.unlink()
                outs[side] = final
            if ok:
                res.update(built=True, std=std, compat=compat, extra=extra, cmd=cmd)
                return res
            if std == 'c++17' and tu['name'].startswith('client-builder'):
                continue
    return res

def cov_tu(tu, res):
    """O0 line tables for coverage (using the chosen std/flags)"""
    lts = {}
    for side in ('old', 'new'):
        lt = {}
        for i, s in enumerate(tu['srcs']):
            obj = ev / f"{tu['name']}-{side}-o0-{i}.o"
            rc, e, cmd = comp_one(side, s, obj, res['std'], res['extra'], o0=True)
            if rc:
                continue
            t = cov.line_table(obj, wd)
            for k, v in t.items():
                lt.setdefault(k, set()).update(v)
            obj.unlink()
        lts[side] = lt
    return lts

# ---------------------------------------------------------------- run
summary = {'commit': commit, 'parent': parent, 'changed_files': changed, 'tus': [], 'hunks': None}
covs = {'old': [], 'new': []}
for tu in tus:
    if time.time() > deadline:
        summary['tus'].append({'name': tu['name'], 'built': False, 'skipped': 'budget'}); continue
    res = build_tu(tu)
    if res['built']:
        lts = cov_tu(tu, res)
        covs['old'].append(lts['old']); covs['new'].append(lts['new'])
        pj = ev / ('pair-' + tu['name'])
        rc, o, e, dt = sh(['python3', str(HERE / 'irpair.py'), '--old', str(ev / f"{tu['name']}-old.ll"), '--new', str(ev / f"{tu['name']}-new.ll"),
                           '--out', str(pj), '--jobs', str(args.jobs), '--fn-timeout', str(args.fn_timeout), '--deadline', str(deadline)])
        res['irpair_stdout'] = o[-500:]
        res['irpair_err'] = e[-500:]
        try:
            res['pair'] = json.load(open(pj / 'pair.json'))
        except Exception as ex:
            res['pair'] = None
        # keep IR small: remove module IR once compared (units logs remain)
        sz = (ev / f"{tu['name']}-old.ll").stat().st_size
        res['ll_bytes'] = sz
    summary['tus'].append(res)
summary['hunks'] = cov.coverage(wd, hk, covs)
summary['elapsed_s'] = round(time.time() - t_start)
(ev / 'summary.json').write_text(json.dumps(summary, indent=1, default=list))
print(commit[:10], 'done', summary['elapsed_s'], 's')
