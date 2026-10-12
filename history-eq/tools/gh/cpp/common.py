"""Shared helpers for the simdjson / fast_float Alive2 runs."""
import json, os, subprocess, sys, time, re, shutil
from pathlib import Path

ROOT = Path('/srv/home/hantaolou/code/veriop')
HQ = ROOT / 'history-eq'
CLANG = ROOT / 'alive2/toolchain/usr/lib/llvm-20/bin/clang++'
LLVMBIN = ROOT / 'alive2/toolchain/usr/lib/llvm-20/bin'
GCC_DIR = '/usr/lib/gcc/x86_64-linux-gnu/11'
CHECKER = 'Alive2 (LLVM 20, -O2, x86-64)'
BASE_FLAGS = ['--gcc-install-dir=' + GCC_DIR, '-O2', '-DNDEBUG', '-fno-exceptions', '-fno-rtti', '-fno-strict-aliasing',
              '-fno-vectorize', '-fno-slp-vectorize', '-Wno-everything', '-S', '-emit-llvm']


def sh(cmd, timeout=None, cwd=None, **kw):
    t = time.time()
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout, cwd=cwd, **kw)
        return p.returncode, p.stdout, p.stderr, time.time() - t
    except subprocess.TimeoutExpired as e:
        return 124, '', 'TIMEOUT', time.time() - t


def materialize(repo, commit, dest, paths):
    rc, o, e, _ = sh(['python3', str(HQ / 'tools/gh/materialize.py'), repo, commit, str(dest), *paths])
    if rc:
        raise RuntimeError('materialize failed: ' + e[-500:])
    return json.load(open(Path(dest) / 'meta.json'))


def compile_tu(src, side_dir, incs, out, extra=(), std='c++17', timeout=900, target=None):
    cmd = [str(CLANG), *BASE_FLAGS, f'-std={std}']
    if target:
        cmd.append('--target=' + target)
    for i in incs:
        cmd += ['-I', str(i)]
    cmd += list(extra) + [str(src), '-o', str(out)]
    rc, o, e, dt = sh(cmd, timeout=timeout, cwd=side_dir)
    return rc, e, ' '.join(cmd), dt


def llvm_link(inputs, out):
    rc, o, e, _ = sh([str(LLVMBIN / 'llvm-link'), '-S', *map(str, inputs), '-o', str(out)])
    return rc, e


def combine(units, built=None):
    """Combine unit results (list of dict result strings) -> verdict string."""
    rs = [u['result'] for u in units]
    if not rs:
        return 'EQUIV'
    good = {'EQUIV', 'IDENTICAL'}
    if 'NOT_EQUIV' in rs:
        return 'NOT_EQUIV'
    if all(r in good for r in rs):
        return 'EQUIV'
    anygood = any(r in good for r in rs)
    if all(r in good | {'REFINES'} for r in rs):
        return 'REFINES'
    if all(r in good | {'EQUIV_BOUNDED', 'REFINES_BOUNDED', 'REFINES'} for r in rs):
        return 'EQUIV_BOUNDED'
    if all(r == 'UNSUPPORTED' for r in rs):
        return 'UNSUPPORTED'
    if anygood or any(r.startswith(('EQUIV_B', 'REFINES')) for r in rs):
        return 'EQUIV_PARTIAL'
    return 'UNKNOWN'


def write_result(repo, commit, res):
    d = HQ / 'gh/results' / repo
    d.mkdir(parents=True, exist_ok=True)
    (d / f'{commit}.json').write_text(json.dumps(res, indent=2))
