#!/usr/bin/env python3
"""Prepare a key-mixing IR variant, then check the complete functions."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
from check import ROOT, FLAGS, accepted, verify_artifacts

p = argparse.ArgumentParser()
p.add_argument('--select', action='store_true', help='Select the constant-key mix without branching on the key.')
a = p.parse_args()
verify_artifacts()
source = ROOT / 'results/search/xxhash_keymix'
record = json.loads((source / 'trial.json').read_text())
for name, digest in record['sha256'].items():
    assert hashlib.sha256((source / name).read_bytes()).hexdigest() == digest
label = 'xxhash_keymix_select' if a.select else 'xxhash_keymix_ir'
out = ROOT / 'results/search' / label
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / 'old.ll').write_bytes((ROOT / 'build/ir/xxhash_old.ll').read_bytes())
(out / 'before.ll').write_bytes((source / 'new.ll').read_bytes())
(out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text = (out / 'before.ll').read_text()
for start, data, key in [(32, 27, 23), (71, 66, 62)]:
    before = '\n'.join([
        f'  %{start} = xor i64 %{start-3}, %{start-4}',
        f'  %{start+1} = xor i64 %{start}, %{start-1}',
        f'  %{start+2} = xor i64 %{start+1}, %{start-2}',
        f'  %{start+3} = xor i64 %{start+2}, %{data}',
        f'  %{start+4} = xor i64 %{start+3}, %{key}'])
    after = '\n'.join([
        f'  %{start} = xor i64 %{start-4}, %{start-2}',
        f'  %{start+1} = xor i64 %{start-3}, %{start-1}',
        f'  %{start+2} = xor i64 %{data}, %{key}',
        f'  %{start+3} = xor i64 %{start+1}, %{start}',
        f'  %{start+4} = xor i64 %{start+3}, %{start+2}'])
    if a.select:
        default_key = 0xc73ab174c5ecd5a2
        def rol(value, shift):
            return ((value << shift) | (value >> (64-shift))) & ((1 << 64)-1)
        mixed_key = default_key ^ rol(default_key, 49) ^ rol(default_key, 24)
        after = '\n'.join([
            f'  %{start} = xor i64 %{start-3}, %{start-4}',
            f'  %{start+1} = xor i64 %{start}, %{data}',
            f'  %{start+2} = xor i64 %{start+1}, {mixed_key}',
            f'  %{start+3} = xor i64 %{data}, %{key}',
            f'  %keymix.r49 = call i64 @llvm.fshl.i64(i64 %{start+3}, i64 %{start+3}, i64 49)',
            f'  %keymix.r24 = call i64 @llvm.fshl.i64(i64 %{start+3}, i64 %{start+3}, i64 24)',
            '  %keymix.rot = xor i64 %keymix.r24, %keymix.r49',
            f'  %keymix.normal = xor i64 %keymix.rot, %{start+3}',
            f'  %keymix.match = icmp eq i64 %{key}, {default_key}',
            f'  %{start+4} = select i1 %keymix.match, i64 %{start+2}, i64 %keymix.normal'])
    assert text.count(before) == 1
    text = text.replace(before, after)
(out / 'new.ll').write_text(text)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out / 'new.ll')], check=True)
checker = ROOT / 'build/alive2/alive-tv'
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
       '--smt-to=30000', '--time-verify', str(out / 'old.ll'), str(out / 'new.ll')]
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
trial = dict(name=label, accepted=ok, functions=['target_4to8', 'target_0to16'],
             input_trial=str(source), ir_transform=['python', str(Path(__file__).resolve())] + (['--select'] if a.select else []),
             proof=cmd, checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    cmd = ['clang', *FLAGS, '-c', str(out / 'new.ll'), '-o', str(out / 'new.o')]
    subprocess.run(cmd, check=True)
    trial['native'] = cmd
trial['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(trial, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', label, 'complete function checks', flush=True)
