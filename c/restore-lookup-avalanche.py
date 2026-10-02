#!/usr/bin/env python3
"""Keep the original avalanche expression in the lookup-tail IR candidate."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, verify_artifacts

verify_artifacts()
source = ROOT / 'results/search/xxhash_lookup_tail'
record = json.loads((source / 'trial.json').read_text())
for name, digest in record['sha256'].items():
    assert hashlib.sha256((source / name).read_bytes()).hexdigest() == digest
out = ROOT / 'results/search/xxhash_lookup_tail_ir'
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / 'old.ll').write_bytes((ROOT / 'build/ir/xxhash_old.ll').read_bytes())
(out / 'before.ll').write_bytes((source / 'new.ll').read_bytes())
(out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text = (out / 'before.ll').read_text()
before = '  %100 = lshr i64 %99, 33\n  %101 = xor i64 %93, %100\n  %102 = xor i64 %101, %99'
after = '  %100 = xor i64 %99, %93\n  %101 = lshr i64 %100, 33\n  %102 = xor i64 %101, %100'
assert text.count(before) == 1
text = text.replace(before, after)
(out / 'new.ll').write_text(text)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out / 'new.ll')], check=True)
names = re.findall(r'^define .*?@(target_\w+)\(', text, re.M)
assert names == ['target_0to16', 'target_1to3']
trial = dict(name='xxhash_lookup_tail_ir', accepted=False, functions=names,
             proof_kind='exhaustive-lengths', input_trial=str(source),
             note='No whole-range proof attempted; exhaustive length proof required before native emission.',
             ir_transform=['python', str(Path(__file__).resolve())])
trial['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(trial, indent=2) + '\n')
print('Prepared IR candidate; equivalence not yet established.', flush=True)
