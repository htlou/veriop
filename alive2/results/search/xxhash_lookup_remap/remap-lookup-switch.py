#!/usr/bin/env python3
"""Remap the verified byte lookup and prove both complete functions again."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, FLAGS, accepted, verify_artifacts, verify_trial

verify_artifacts()
source = ROOT / 'results/search/xxhash_lookup_tail_ir'
prior = verify_trial(source)
out = ROOT / 'results/search/xxhash_lookup_remap'
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / 'old.ll').write_bytes((source / 'old.ll').read_bytes())
(out / 'vector.ll').write_bytes((source / 'new.ll').read_bytes())
(out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text = (out / 'vector.ll').read_text()
count = 0

def remap(match):
    global count
    index, default, cases = match.groups()
    assert re.search(rf'^  {re.escape(index)} = zext i8 %stable[.\w]+ to i32$', text, re.M)
    assert [int(n) for n in re.findall(r'i32 (\d+),', cases)] == list(range(1, 256))
    count += 1
    name = f'%lookup.remap{count}'
    cases = re.sub(r'i32 (\d+),', lambda m: f'i32 {int(m.group(1)) ^ 128},', cases)
    return f'  {name} = xor i32 {index}, 128\n  switch i32 {name}, label {default} [\n{cases}  ]'

text = re.sub(r'  switch i32 (%safe[.\w]+), label (%case0[.\w]+) \[\n(.*?)  \]', remap, text, flags=re.S)
assert count == 2
(out / 'new.ll').write_text(text)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out / 'new.ll')], check=True)
checker = ROOT / 'build/alive2/alive-tv'
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
       '--smt-to=30000', '--time-verify', str(out / 'vector.ll'), str(out / 'new.ll')]
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
report = dict(name='xxhash_lookup_remap', accepted=ok, functions=prior['functions'],
              proof_kind='composition', source_trial=str(source), proof=cmd,
              ir_transform=['python', str(Path(__file__).resolve())],
              checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    native = ['clang', *FLAGS, '-c', str(out / 'new.ll'), '-o', str(out / 'new.o')]
    subprocess.run(native, check=True)
    report['native'] = native
report['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(report, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', 'complete lookup remapping check', flush=True)
