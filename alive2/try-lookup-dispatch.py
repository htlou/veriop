#!/usr/bin/env python3
"""Inline the verified lookup helper into a new C dispatcher; prove the result."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
from check import ROOT, FLAGS, accepted, verify_artifacts, verify_trial

p = argparse.ArgumentParser()
p.add_argument('name')
p.add_argument('--timeout', type=int, default=15)
p.add_argument('--source', default='xxhash_vectable_fusedswitch120')
p.add_argument('--keep-dispatch', action='store_true', help='Inline the accepted dispatcher as lookup_fallback')
a = p.parse_args()
assert re.fullmatch(r'xxhash_[a-z0-9_]+', a.name)
verify_artifacts()
source = ROOT / 'results/search' / a.source
verify_trial(source)
out = ROOT / 'results/search' / a.name
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
(out / (a.name + '.c')).write_bytes((ROOT / 'experiments' / (a.name + '.c')).read_bytes())
(out / 'try-lookup-dispatch.py').write_bytes(Path(__file__).read_bytes())
(out / 'old.ll').write_bytes((ROOT / 'build/ir/xxhash_old.ll').read_bytes())
(out / 'lookup-source.ll').write_bytes((source / 'new.ll').read_bytes())
text = (out / 'lookup-source.ll').read_text()
text, count = re.subn(r'^define [^\n]*@target_0to16\([^\n]*\{\n.*?^}',
                     (lambda m: m.group(0).replace('@target_0to16(', '@lookup_fallback(')) if a.keep_dispatch else '',
                     text, flags=re.M | re.S)
assert count == 1
(out / 'lookup.ll').write_text(text)
commands = []
def run(cmd):
    cmd = [str(x) for x in cmd]
    subprocess.run(cmd, check=True)
    commands.append(cmd)

run(['clang', *FLAGS, '-I', ROOT / 'repos/xxHash', '-S', '-emit-llvm',
     out / (a.name + '.c'), '-o', out / 'dispatcher.ll'])
run(['llvm-link', '-S', out / 'dispatcher.ll', out / 'lookup.ll', '-o', out / 'linked.ll'])
extra = ['-force-attribute=lookup_fallback:alwaysinline', '-internalize-public-api-list=target_0to16,target_1to3'] if a.keep_dispatch else []
passes = 'forceattrs,always-inline,internalize,globaldce,verify' if a.keep_dispatch else 'forceattrs,always-inline,globaldce,verify'
run(['opt', '-S', '-passes=' + passes, '-force-attribute=target_1to3:alwaysinline',
     *extra, out / 'linked.ll', '-o', out / 'new.ll'])
text = (out / 'new.ll').read_text()
names = re.findall(r'^define .*?@(target_\w+)\(', text, re.M)
assert set(names) == {'target_1to3', 'target_0to16'} and len(names) == 2
assert not re.search(r'call [^\n]*@(?:target_\w+|lookup_fallback)\(', text), 'All helper calls must be inlined.'
checker = ROOT / 'build/alive2/alive-tv'
proof = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
         f'--smt-to={a.timeout * 1000}', '--time-verify', str(out / 'old.ll'), str(out / 'new.ll')]
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(proof, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
record = dict(name=a.name, accepted=ok, functions=names, source_trial=str(source),
              build=commands, proof=proof, checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    run(['clang', *FLAGS, '-c', out / 'new.ll', '-o', out / 'new.o'])
    record['native'] = commands[-1]
record['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(record, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', a.name, flush=True)
