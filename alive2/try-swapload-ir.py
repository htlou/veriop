#!/usr/bin/env python3
"""Distribute the byte swap while retaining the original definedness check."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
import time
from check import ROOT, FLAGS, accepted, verify_artifacts

verify_artifacts()
out = ROOT / 'results/search/xxhash_swapload_ir'
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / 'old.ll').write_bytes((ROOT / 'build/ir/xxhash_old.ll').read_bytes())
(out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text = (out / 'old.ll').read_text()
text = re.sub(r'^define .*?@target_(?:1to3|4to8)\(.*?^}\n', '', text,
              flags=re.M | re.S)
count = 0
def distribute(match):
    global count
    result, value = match.groups()
    # Both retained functions have the input load and mixed key immediately
    # before the XOR feeding the original noundef byte-swap call.
    block = text[:match.start()].rsplit('define ', 1)[-1]
    operands = re.search(rf'^  {re.escape(value)} = xor i64 (%\d+), (%\d+)$',
                         block, re.M)
    assert operands
    data, key = operands.groups()
    count += 1
    return '\n'.join([
        f'  %swapload.check = tail call noundef i64 @llvm.bswap.i64(i64 {value})',
        f'  %swapload.data = call i64 @llvm.bswap.i64(i64 {data})',
        f'  %swapload.key = call i64 @llvm.bswap.i64(i64 {key})',
        f'  {result} = xor i64 %swapload.data, %swapload.key'])
text = re.sub(r'^  (%\d+) = tail call noundef i64 @llvm.bswap.i64\(i64 (%\d+)\)$',
              distribute, text, flags=re.M)
assert count == 2
(out / 'new.ll').write_text(text)
subprocess.run(['opt', '-passes=verify', '-disable-output', str(out/'new.ll')], check=True)
checker = ROOT / 'build/alive2/alive-tv'
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
       '--smt-to=30000', '--time-verify', str(out/'old.ll'), str(out/'new.ll')]
start = time.monotonic()
with (out/'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out/'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
report = dict(name=out.name, accepted=ok, functions=['target_9to16', 'target_0to16'],
              proof=cmd, seconds=time.monotonic()-start,
              ir_transform=['python', str(Path(__file__).resolve())],
              checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    native = ['clang', *FLAGS, '-c', str(out/'new.ll'), '-o', str(out/'new.o')]
    subprocess.run(native, check=True)
    report['native'] = native
report['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                    for p in out.iterdir() if p.is_file()}
(out/'trial.json').write_text(json.dumps(report, indent=2)+'\n')
print('PASS' if ok else 'REJECTED', out.name, round(report['seconds'], 3), flush=True)
