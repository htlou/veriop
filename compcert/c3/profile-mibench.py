#!/usr/bin/env python3
"""Collect only baseline-valid small-workload profiles; no timing score."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[1]
report = json.loads((root / 'results/c3-profile-run/mibench-evaluation/summary.json').read_text())
out = root / 'results/c3-profiling/mibench'
records = []
for row in report['programs']:
    if row['name'] == 'security-blowfish-bf':
        assert not row['functional_pass']
        continue
    assert row['functional_pass'], row['name']
    path = out / (row['name'] + '.counts')
    assert not path.exists()
    call = row['runs'][0]
    env = os.environ | {'VERIOP_EDGE_COUNTS': str(path), 'LC_ALL':'C', 'TZ':'UTC'}
    with (out / (row['name'] + '.stdout')).open('xb') as stdout, \
         (out / (row['name'] + '.stderr')).open('xb') as stderr:
        subprocess.run(call['command'], cwd=call['cwd'], env=env,
                       stdout=stdout, stderr=stderr, check=True)
    records.append({'program':row['name'], 'command':call['command'],
        'cwd':call['cwd'], 'profile':str(path.relative_to(root)),
        'sha256':hashlib.sha256(path.read_bytes()).hexdigest()})
    print(row['name'], 'profile PASS', flush=True)
assert len(records) == 11
(out / 'summary.json').write_text(json.dumps(records, indent=2) + '\n')
