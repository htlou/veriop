#!/usr/bin/env python3
"""Isolated, reproducible candidate trials; emit native code only after proof."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
import time
from check import ROOT, FLAGS, accepted, verify_artifacts

p = argparse.ArgumentParser()
p.add_argument('name')
p.add_argument('--timeout', type=int, default=30, help='seconds per SMT query')
p.add_argument('--label')
p.add_argument('--march', choices=('x86-64-v3', 'x86-64-v4'), default='x86-64-v3')
p.add_argument('--checker', type=Path, default=ROOT/'build/alive2/alive-tv')
a = p.parse_args()
FLAGS = [f'-march={a.march}' if f.startswith('-march=') else f for f in FLAGS]
verify_artifacts()
assert re.fullmatch(r'(xxhash|libdivide)_[a-z0-9_]+', a.name)
out = ROOT / 'results/search' / (a.label or a.name)
out.mkdir(parents=True, exist_ok=True)
assert not (out / 'trial.json').exists(), 'Use a new label to preserve prior trials.'
src = out / (a.name + '.c')
src.write_bytes((ROOT / f'experiments/{a.name}.c').read_bytes())
ll = out / 'new.ll'
old = out / 'old.ll'
old.write_bytes((ROOT / f'build/ir/{a.name.split("_")[0]}_old.ll').read_bytes())
cmd = ['clang', *FLAGS, '-I', str(ROOT / 'repos/xxHash'), '-I', str(ROOT / 'repos/libdivide'),
       '-S', '-emit-llvm', str(src), '-o', str(ll)]
subprocess.run(cmd, check=True)
names = re.findall(r'^define .*?@(target_\w+)\(', ll.read_text(), re.M)
assert names and len(names) == len(set(names))
assert all('@' + n + '(' in old.read_text() for n in names)
proof = [str(a.checker.resolve()), '--bidirectional', '--always-verify', '--fail-src-ub',
         f'--smt-to={a.timeout*1000}', '--time-verify', str(old), str(ll)]
start = time.monotonic()
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(proof, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, len(names)) and log.count('These functions seem to be equivalent!') == len(names)
report = dict(name=a.name, accepted=bool(ok), functions=names, compile=cmd, proof=proof,
              march=a.march,
              seconds=time.monotonic()-start,
              checker_sha256=hashlib.sha256(a.checker.read_bytes()).hexdigest())
if ok:
    native = ['clang', *FLAGS, '-c', str(ll), '-o', str(out / 'new.o')]
    subprocess.run(native, check=True)
    report['native'] = native
report['sha256'] = {q.name: hashlib.sha256(q.read_bytes()).hexdigest() for q in out.iterdir() if q.is_file()}
(out / 'trial.json').write_text(json.dumps(report, indent=2) + '\n')
print(a.name, 'PASS' if ok else 'REJECTED', round(report['seconds'], 3), flush=True)
