#!/usr/bin/env python3
"""Try byte packing directly in the original IR; require complete equivalence."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, FLAGS, accepted, verify_artifacts

verify_artifacts()
out = ROOT / 'results/search/xxhash_vecbytes_ir'
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / 'old.ll').write_bytes((ROOT / 'build/ir/xxhash_old.ll').read_bytes())
(out / 'pack-short-vector.py').write_bytes(Path(__file__).read_bytes())
text = (out / 'old.ll').read_text()
text = re.sub(r'^define [^\n]*@target_(?:4to8|9to16)\([^\n]*\{\n.*?^}', '', text, flags=re.M | re.S)
for result, first, middle, last, old in [
    (24, 9, 12, 15, '  %24 = or disjoint i64 %22, %23'),
    (99, 84, 87, 90, '  %99 = or disjoint i64 %97, %98'),
]:
    assert text.count(old) == 1
    text = text.replace(old, f'''  %packed.len = trunc i64 %1 to i8
  %packed.0 = insertelement <4 x i8> poison, i8 %{last}, i64 0
  %packed.1 = insertelement <4 x i8> %packed.0, i8 %packed.len, i64 1
  %packed.2 = insertelement <4 x i8> %packed.1, i8 %{first}, i64 2
  %packed.3 = insertelement <4 x i8> %packed.2, i8 %{middle}, i64 3
  %packed.word = bitcast <4 x i8> %packed.3 to i32
  %{result} = zext i32 %packed.word to i64''')
(out / 'new.ll').write_text(text)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out / 'new.ll')], check=True)
checker = ROOT / 'build/alive2/alive-tv'
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub', '--smt-to=15000',
       '--time-verify', str(out / 'old.ll'), str(out / 'new.ll')]
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
record = dict(name='xxhash_vecbytes_ir', accepted=ok, functions=['target_1to3', 'target_0to16'],
              ir_transform=['python', str(Path(__file__).resolve())], proof=cmd,
              checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    cmd = ['clang', *FLAGS, '-c', str(out / 'new.ll'), '-o', str(out / 'new.o')]
    subprocess.run(cmd, check=True)
    record['native'] = cmd
record['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(record, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', 'complete original-to-vector-packing check', flush=True)
