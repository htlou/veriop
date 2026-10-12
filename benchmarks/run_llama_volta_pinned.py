#!/usr/bin/env python3
"""Rebuild and recheck the pinned llama.cpp RMSNorm/cache8 PTX pair."""
import hashlib
import json
import subprocess
from pathlib import Path

root = Path(__file__).resolve().parents[1]
bench = root / 'benchmarks'
source = bench / 'repos/llama.cpp'
candidate = bench / 'build/llama-cache8'
prior = root / 'cuda/verified_optimization'
volta = root / 'cuda/repos/volta/target/release/volta'
out = bench / 'volta/llama-cache8-pinned-results'
out.mkdir(parents=True, exist_ok=True)
(out / 'summary.json').unlink(missing_ok=True)


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command, log):
    result = subprocess.run(command, cwd=root, capture_output=True, text=True)
    log.write_text(result.stdout + result.stderr)
    if result.returncode:
        raise RuntimeError(f'command failed ({result.returncode}): {log}')
    return result.stdout


pin = next(line.split('\t')[4] for line in (bench / 'targets.tsv').read_text().splitlines()
           if line.split('\t')[1] == 'llama.cpp')
assert subprocess.check_output(['git', '-C', source, 'rev-parse', 'HEAD'], text=True).strip() == pin
if not candidate.exists():
    subprocess.run(['git', '-C', source, 'worktree', 'add', '--detach', candidate, pin], check=True)
    subprocess.run(['git', '-C', candidate, 'apply', prior / 'candidate/cache8.patch'], check=True)
assert subprocess.check_output(['git', '-C', candidate, 'rev-parse', 'HEAD'], text=True).strip() == pin

sources = [source / 'ggml/src/ggml-cuda/norm.cu', candidate / 'ggml/src/ggml-cuda/norm.cu']
expected_source = ['22665ae073caf2090716ce6476d7661caada5e327edcd48ba202550209fdedfd',
                   '7e2c7148acc6bcd8eeea53b0f2a5ae52a59aa4039332ccdaca7c04faafc2d4b4']
assert [sha(path) for path in sources] == expected_source, 'RMSNorm source changed'

ptx = [bench / 'volta/llama-norm-pinned.ptx', bench / 'volta/llama-norm-cache8-pinned.ptx']
old_ptx = [prior / 'ptx/llama-norm-baseline.ptx', prior / 'ptx/llama-norm-cache8.ptx']
builds = [prior / 'baseline/llama-ptx-build.json', prior / 'candidate/cache8-ptx-build.json']
old_roots = [root / 'cuda/repos/llama.cpp', prior / 'candidate/cache8']
for i in range(2):
    command = json.loads(builds[i].read_text())['command']
    command = [part.replace(str(old_roots[i]), str(source if i == 0 else candidate)) for part in command]
    command[command.index('-o') + 1] = str(ptx[i])
    run(command, bench / 'logs' / f'llama-norm-{"baseline" if i == 0 else "cache8"}-pinned-ptx-build.log')
    assert ptx[i].read_bytes() == old_ptx[i].read_bytes(), f'PTX differs: {ptx[i]}'
    (bench / 'volta' / f'llama-norm-{"baseline" if i == 0 else "cache8"}-pinned-build.json').write_text(
        json.dumps({'command': command, 'source_pin': pin, 'ptx_sha256': sha(ptx[i])}, indent=2) + '\n')

previous = json.loads((prior / 'volta/cache8-complete-instances.json').read_text())
for inplace in (False, True):
    case = next(item for item in previous if item['ncols'] == 1024 and item['inplace'] == inplace)
    extra = dict(case)
    extra['ncols'] = 1025
    extra['compare_command'] = [
        part.replace(':1024:', ':1025:') if part.startswith(('x:0x100000:4:1024:', 'out:0x200000:4:1024:'))
        else 'int:1025' if part == 'int:1024' else part
        for part in case['compare_command']
    ]
    previous.append(extra)
expected_checker = json.loads((prior / 'volta/cache8-summary.json').read_text())['checker_sha256']
assert sha(volta) == expected_checker, 'Volta binary changed'
checks = []
for case in previous:
    command = list(case['compare_command'])
    command[0] = str(volta)
    index = command.index('compare')
    command[index + 1:index + 3] = [str(path) for path in ptx]
    assert command[command.index('--sample') + 1] == '0'
    name = f"{case['ncols']}-{'inplace' if case['inplace'] else 'separate'}"
    log = out / f'{name}.log'
    result = run(command, log)
    assert 'EQUIVALENT' in result and f"elements: {case['ncols']}" in result, name
    checks.append({'name': name, 'ncols': case['ncols'], 'inplace': case['inplace'],
                   'log': str(log.relative_to(root)), 'command': command})

for side, path in [('reference', ptx[0]), ('candidate', ptx[1])]:
    record = json.loads((prior / f'volta/cache8-8192-inplace-{side}-safety.json').read_text())
    command = list(record['command'])
    command[command.index('analyze') + 1] = str(path)
    result = run(command, out / f'8192-inplace-{side}-safety.log')
    assert 'no data races or deadlocks detected' in result

summary = {'source_pin': pin, 'volta_sha256': sha(volta), 'source_sha256': expected_source,
           'ptx_sha256': [sha(path) for path in ptx], 'model': 'Volta real-valued PTX semantics',
           'checks': checks, 'all_passed': len(checks) == 24}
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
assert summary['all_passed']
print('Pinned llama.cpp RMSNorm/cache8: 24/24 complete Volta comparisons passed.')
