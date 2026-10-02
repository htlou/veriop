#!/usr/bin/env python3
"""Exhaustively specialize the length argument of loop-free xxHash IR checks."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, FLAGS, accepted, verify_artifacts

p = argparse.ArgumentParser()
p.add_argument('trial', type=Path)
p.add_argument('--timeout', type=int, default=30)
p.add_argument('--checker', type=Path, default=ROOT / 'build/alive2/alive-tv')
a = p.parse_args()
verify_artifacts()
trial = a.trial.resolve()
record = json.loads((trial / 'trial.json').read_text())
march = record.get('march', 'x86-64-v3')
assert march in ('x86-64-v3', 'x86-64-v4')
FLAGS = [f'-march={march}' if f.startswith('-march=') else f for f in FLAGS]
assert record['name'].startswith('xxhash_')
for name, digest in record['sha256'].items():
    assert hashlib.sha256((trial / name).read_bytes()).hexdigest() == digest, name
assert (trial / 'old.ll').read_bytes() == (ROOT / 'build/ir/xxhash_old.ll').read_bytes()
out = trial / 'length-proof'
out.mkdir(exist_ok=True)
assert not (out / 'summary.json').exists(), 'Preserve completed evidence.'
ranges = {'1to3': range(1, 4), '4to8': range(4, 9),
          '9to16': range(9, 17), '0to16': range(17)}
definition = re.compile(r'^define [^\n]*@target_(\w+)\([^\n]*\{\n.*?^}', re.M | re.S)
texts = {v: (trial / f'{v}.ll').read_text() for v in ('old', 'new')}
names = [m.group(1) for m in definition.finditer(texts['new'])]
assert names == [n.removeprefix('target_') for n in record['functions']]
assert set(names) <= ranges.keys()
expected = sum(len(ranges[n]) for n in names)
# Outside the enumerated ranges the original is undefined. Require exactly the
# same unconditional entry assumptions in the candidate, preserving that domain.
definitions = {v: {m.group(1): m.group(0) for m in definition.finditer(t)}
               for v, t in texts.items()}
for name in names:
    lines = 2 if name == '0to16' else 4
    old_prefix = definitions['old'][name].splitlines()[1:1 + lines]
    assert old_prefix == definitions['new'][name].splitlines()[1:1 + lines]
    assert old_prefix[-1].strip().startswith('tail call void @llvm.assume(')
for variant, text in texts.items():
    bodies = {m.group(1): m.group(0) for m in definition.finditer(text)}
    copies = []
    for name in names:
        signature, body = bodies[name].split('\n', 1)
        assert re.search(r'\(ptr [^,]*%0, i64 noundef %1, ptr ', signature), signature
        assert not re.search(r'@target_\w+\(', body), 'Inline helper calls before partitioning.'
        for length in ranges[name]:
            # Keep the signature/SSA numbering intact. Replace only uses of the
            # length parameter with a literal, without optimizing either body.
            copies.append(signature.replace(f'@target_{name}(', f'@target_{name}_len{length}(')
                          + '\n' + re.sub(r'%1(?![\w.])', str(length), body))
    specialized = definition.sub('', text) + '\n' + '\n\n'.join(copies) + '\n'
    path = out / f'{variant}.ll'
    path.write_text(specialized)
    subprocess.run(['opt', '-passes=verify', '-disable-output', str(path)], check=True)
checker = a.checker.resolve()
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
       f'--smt-to={a.timeout * 1000}', '--time-verify', str(out / 'old.ll'), str(out / 'new.ll')]
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, expected) and log.count('These functions seem to be equivalent!') == expected
result = dict(accepted=ok, returncode=proc.returncode, functions=names, lengths={n: list(ranges[n]) for n in names},
              expected_checks=expected, command=cmd,
              input_sha256={v: hashlib.sha256((trial / f'{v}.ll').read_bytes()).hexdigest() for v in texts},
              script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
              checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    # Benchmark the untouched candidate IR, never the constant-length copies.
    native = ['clang', *FLAGS, '-c', str(trial / 'new.ll'), '-o', str(out / 'new.o')]
    subprocess.run(native, check=True)
    result['native'] = native
result['sha256'] = {q.name: hashlib.sha256(q.read_bytes()).hexdigest() for q in out.iterdir() if q.is_file()}
(out / 'summary.json').write_text(json.dumps(result, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', expected, 'exhaustive length checks', flush=True)
