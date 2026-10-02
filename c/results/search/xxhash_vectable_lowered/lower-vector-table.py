#!/usr/bin/env python3
"""Experimental IR candidate: replace bounded constant-vector extracts by loads.

This rewrite is not assumed sound. The resulting complete functions must pass
bidirectional verification against the unchanged original before native emission.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, FLAGS, accepted, verify_artifacts, verify_trial

verify_artifacts()
p = argparse.ArgumentParser()
p.add_argument('--label', default='xxhash_vectable_lowered')
a = p.parse_args()
source = ROOT / 'results/search/xxhash_vectable_split'
prior = verify_trial(source)
out = ROOT / 'results/search' / a.label
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
for name in ('old.ll', 'new.ll', 'xxhash_vectable_split.c'):
    dest = 'vector.ll' if name == 'new.ll' else name
    (out / dest).write_bytes((source / name).read_bytes())
(out / 'lower-vector-table.py').write_bytes(Path(__file__).read_bytes())
text = (out / 'vector.ll').read_text()
tables = {}
count = 0

def lower(match):
    global count
    result, values, index = match.groups()
    # These specific inputs have a preceding explicit 7-bit mask. No original
    # load or assumption is removed, including loads whose values may be poison.
    mask = re.search(rf'^  {re.escape(index)} = zext nneg i8 (%\d+) to i32$', text, re.M)
    assert mask and re.search(rf'^  {re.escape(mask.group(1))} = and i8 %\d+, 127$', text, re.M)
    assert len(values.split(',')) == 128
    table = tables.setdefault(values, f'lookup_{len(tables)}')
    prefix = f'%lookup{count}'
    count += 1
    return f'''  {prefix}.frozen = freeze i32 {index}
  {prefix}.bounded = and i32 {prefix}.frozen, 127
  {prefix}.index = zext i32 {prefix}.bounded to i64
  {prefix}.ptr = getelementptr inbounds [128 x i64], ptr @{table}, i64 0, i64 {prefix}.index
  {prefix}.value = load i64, ptr {prefix}.ptr, align 8
  {prefix}.poison = and i32 {index}, 0
  {prefix}.marker = zext i32 {prefix}.poison to i64
  {result} = xor i64 {prefix}.value, {prefix}.marker'''

pattern = r'^  (%\d+) = extractelement <128 x i64> <([^\n]+)>, i32 (%\d+)$'
lowered = re.sub(pattern, lower, text, flags=re.M)
assert count == 4 and len(tables) == 2
globals_text = '\n'.join(f'@{name} = internal unnamed_addr constant [128 x i64] [{values}], align 8'
                         for values, name in tables.items())
pos = lowered.index('; Function Attrs:')
lowered = lowered[:pos] + globals_text + '\n\n' + lowered[pos:]
(out / 'new.ll').write_text(lowered)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out / 'new.ll')], check=True)
# Existing isolated checker changes only the constant-initializer size cutoff.
checker = ROOT / 'build/alive2-constants/alive-tv'
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub', '--smt-to=30000',
       '--time-verify', str(out / 'old.ll'), str(out / 'new.ll')]
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
record = dict(name='xxhash_vectable_lowered', accepted=ok, functions=prior['functions'],
              source_trial=str(source), compile=prior['compile'],
              ir_transform=['python', str(Path(__file__).resolve()), '--label', a.label], proof=cmd,
              checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    cmd = ['clang', *FLAGS, '-c', str(out / 'new.ll'), '-o', str(out / 'new.o')]
    subprocess.run(cmd, check=True)
    record['native'] = cmd
record['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(record, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', 'complete original-to-lowered check', flush=True)
