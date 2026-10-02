#!/usr/bin/env python3
"""Expose the repeated 32-bit word as concatenation for direct LLVM checking."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, verify_artifacts

verify_artifacts()
source = ROOT / 'results/search/xxhash_four_periodic'
record = json.loads((source / 'trial.json').read_text())
for name, digest in record['sha256'].items():
    assert hashlib.sha256((source / name).read_bytes()).hexdigest() == digest
out = ROOT / 'results/search/xxhash_four_periodic_ir'
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / 'old.ll').write_bytes((ROOT / 'build/ir/xxhash_old.ll').read_bytes())
(out / 'before.ll').write_bytes((source / 'new.ll').read_bytes())
(out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text = (out / 'before.ll').read_text()

def expand(match):
    result, word = match.groups()
    assert re.search(rf'^  {re.escape(word)} = zext i32 %\d+ to i64$', text, re.M)
    return (f'  %periodic.high = shl nuw i64 {word}, 32\n'
            f'  {result} = or disjoint i64 %periodic.high, {word}')

text, count = re.subn(r'^  (%\d+) = mul nuw i64 (%\d+), 4294967297$', expand, text, flags=re.M)
assert count == 2
(out / 'new.ll').write_text(text)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out / 'new.ll')], check=True)
checker = ROOT / 'results/search/alive2-keymix-portfolio/alive-tv'
trial = dict(name=out.name, accepted=False, functions=['target_4to8', 'target_0to16'],
             proof_kind='exhaustive-lengths', input_trial=str(source),
             note='Direct proof against immutable original required; source trial is unaccepted.',
             ir_transform=['python3', str(Path(__file__).resolve())],
             checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
trial['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(trial, indent=2) + '\n')
print('Prepared IR candidate; equivalence not yet established.', flush=True)
