#!/usr/bin/env python3
"""Replace vector extracts with constant switches; verify complete functions.

The fallback retains poison/undef behavior. Native compilation may eliminate it.
This experiment does not emit native code unless the second proof edge passes.
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
p.add_argument('--source', default='xxhash_vectable_split')
p.add_argument('--label', default='xxhash_vectable_switch')
p.add_argument('--checker', type=Path, default=ROOT / 'build/alive2/alive-tv')
p.add_argument('--dump-smt', action='store_true')
p.add_argument('--timeout', type=int, default=30, help='Seconds per SMT query')
a = p.parse_args()
source = ROOT / 'results/search' / a.source
prior = verify_trial(source)
out = ROOT / 'results/search' / a.label
out.mkdir(exist_ok=True)
assert not (out / 'trial.json').exists(), 'Preserve prior evidence.'
source_c = prior['name'] + '.c'
for name, dest in [('old.ll', 'old.ll'), ('new.ll', 'vector.ll'), (source_c, source_c)]:
    (out / dest).write_bytes((source / name).read_bytes())
(out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text = (out / 'vector.ll').read_text()
size = int(re.search(r'extractelement <(32|128) x i64>', text).group(1))
tables = {}
count = 0

def replace(match):
    global count
    result, values, index = match.groups()
    mask = re.search(rf'^  {re.escape(index)} = zext nneg i8 (%\d+) to i32$', text, re.M)
    bounded = re.search(rf'^  {re.escape(index)} = and i32 %\d+, {size-1}$', text, re.M)
    assert bounded or (mask and re.search(rf'^  {re.escape(mask.group(1))} = and i8 %\d+, {size-1}$', text, re.M))
    name = tables.setdefault(values, f'lookup_{len(tables)}')
    count += 1
    return f'  {result} = call i64 @{name}(i32 {index})'

lowered = re.sub(rf'^  (%\d+) = extractelement <{size} x i64> <([^\n]+)>, i32 (%\d+)$',
                 replace, text, flags=re.M)
assert count == 2 * len(tables) and len(tables) * size == 256
helpers = []
for values, name in tables.items():
    entries = values.split(', ')
    assert len(entries) == size
    helpers.append(f'''define internal i64 @{name}(i32 %idx) alwaysinline {{
  %stable = freeze i32 %idx
  %safe = and i32 %stable, {size-1}
  switch i32 %safe, label %case0 [
''' + ''.join(f'    i32 {i}, label %case{i}\n' for i in range(1, size)) + '  ]\n'
        + ''.join(f'case{i}:\n  br label %merge\n' for i in range(size))
        + 'merge:\n  %value = phi i64 '
        + ', '.join(f'[ {value.removeprefix("i64 ")}, %case{i} ]' for i, value in enumerate(entries)) + f'''
  %same = icmp eq i32 %idx, %stable
  %fallback = extractelement <{size} x i64> <{values}>, i32 %idx
  %result = select i1 %same, i64 %value, i64 %fallback
  ret i64 %result
}}
''')
lowered += '\n' + '\n'.join(helpers)
(out / 'before-inline.ll').write_text(lowered)
compile_cmd = ['opt', '-S', '-passes=always-inline,globaldce,verify',
               str(out / 'before-inline.ll'), '-o', str(out / 'new.ll')]
subprocess.run(compile_cmd, check=True)
checker = a.checker.resolve()
cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
       f'--smt-to={a.timeout * 1000}', '--time-verify', str(out / 'vector.ll'), str(out / 'new.ll')]
if a.dump_smt:
    (out / 'smt').mkdir(exist_ok=True)
    cmd.insert(-2, '--smt-bench=' + str(out / 'smt'))
with (out / 'proof.log').open('w') as log:
    proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
log = (out / 'proof.log').read_text()
ok = proc.returncode == 0 and accepted(log, 2) and log.count('These functions seem to be equivalent!') == 2
record = dict(name=a.label, accepted=ok, functions=prior['functions'],
              proof_kind='composition', source_trial=str(source),
              compile=compile_cmd, proof=cmd,
              checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    cmd = ['clang', *FLAGS, '-c', str(out / 'new.ll'), '-o', str(out / 'new.o')]
    subprocess.run(cmd, check=True)
    record['native'] = cmd
record['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                    for p in out.iterdir() if p.is_file()}
(out / 'trial.json').write_text(json.dumps(record, indent=2) + '\n')
print('PASS' if ok else 'REJECTED', 'complete vector-to-switch functions', flush=True)
