#!/usr/bin/env python3
"""Run unchanged upstream CLI benchmarks with checked short-input helpers."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import resource
import shutil
import statistics
import subprocess
import time
from check import ROOT, FLAGS, verify_artifacts, verify_trial

p = argparse.ArgumentParser()
p.add_argument('trial', type=Path)
p.add_argument('--repeats', type=int, default=3)
p.add_argument('--lengths', type=int, nargs='+', default=list(range(1, 17)))
p.add_argument('--march', choices=('x86-64-v3', 'x86-64-v4'), default='x86-64-v3')
p.add_argument('--build-only', action='store_true', help='Build checked CLI binaries without running timings')
p.add_argument('--label', help='Suffix for a fresh benchmark directory, preserving earlier runs')
a = p.parse_args()
FLAGS = [f'-march={a.march}' if f.startswith('-march=') else f for f in FLAGS]
verify_artifacts()
trial = a.trial.resolve()
report = verify_trial(trial)
assert a.march == report.get('march', 'x86-64-v3'), 'Match the proved candidate architecture.'
assert report['name'].startswith('xxhash_') and 'target_0to16' in report['functions']
assert a.repeats > 0 and all(1 <= n <= 16 for n in a.lengths)
assert a.label is None or re.fullmatch(r'[a-zA-Z0-9_-]+', a.label), 'Use a simple directory label.'
out = trial / ('bench-cli' + ('-' + a.label if a.label else ''))
out.mkdir(exist_ok=True)
assert not (out / 'raw.json').exists(), 'Preserve prior measurements.'
repo = ROOT / 'repos/xxHash'
tree = out / 'upstream'
shutil.copytree(repo / 'cli', tree / 'cli', dirs_exist_ok=True)
header = (repo / 'xxhash.h').read_text()
start = header.index('\nXXH3_len_0to16_64b(')
begin = header.index('{', start)
end, depth = begin + 1, 1
while depth:
    depth += (header[end] == '{') - (header[end] == '}')
    end += 1
decl = header.rfind('XXH_FORCE_INLINE', 0, start)
header = (header[:decl] + 'extern XXH64_hash_t target_0to16(const xxh_u8*, size_t, const xxh_u8*, XXH64_hash_t);\n'
          + header[decl:begin] + '{\n    return target_0to16(input, len, secret, seed);\n}' + header[end:])
(tree / 'xxhash.h').write_text(header)
commands = []
def run(*cmd):
    cmd = [str(x) for x in cmd]
    subprocess.run(cmd, check=True)
    commands.append(cmd)

modules = []
for src in sorted((tree / 'cli').glob('*.c')):
    assert src.read_bytes() == (repo / 'cli' / src.name).read_bytes()
    ll = out / (src.stem + '.ll')
    run('clang', *FLAGS, '-DXXH_INLINE_ALL', '-DXXH_VECTOR=XXH_SCALAR', '-S', '-emit-llvm', src, '-o', ll)
    modules.append(ll)
for variant in ('old', 'new'):
    run('llvm-link', *modules, trial / f'{variant}.ll', '-o', out / f'{variant}.bc')
    # Restore the upstream helper's forced-inline policy on both checked bodies.
    run('opt', '-passes=forceattrs,always-inline,internalize,globaldce,default<O3>',
        '-force-attribute=target_0to16:alwaysinline', '-internalize-public-api-list=main',
        out / f'{variant}.bc', '-o', out / f'{variant}-inline.bc')
    run('clang', *FLAGS, out / f'{variant}-inline.bc', '-o', out / variant)
(out / 'build.json').write_text(json.dumps(dict(commands=commands,
    cli_source_sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in (tree / 'cli').glob('*') if p.is_file()},
    adapter_header_sha256=hashlib.sha256((tree / 'xxhash.h').read_bytes()).hexdigest()), indent=2) + '\n')
if a.build_only:
    print('Built checked CLI binaries:', out, flush=True)
    raise SystemExit(0)
cpu = int(os.environ.get('BENCH_CPU', '24'))
os.sched_setaffinity(0, {cpu})
runner = Path(__file__).read_bytes()
(out/'runner.py').write_bytes(runner)
runner_sha256 = hashlib.sha256(runner).hexdigest()
records = []
for pair in range(a.repeats):
    for length in a.lengths:
        for variant in (('old', 'new') if pair % 2 == 0 else ('new', 'old')):
            binary = out / variant
            cmd = [str(binary), '-b5,6', '-i1', f'-B{length}', '-q']
            before = resource.getrusage(resource.RUSAGE_CHILDREN)
            start = time.monotonic()
            proc = subprocess.run(cmd, check=True, capture_output=True, text=True)
            wall_seconds = time.monotonic() - start
            after = resource.getrusage(resource.RUSAGE_CHILDREN)
            process_usage = dict(wall_seconds=wall_seconds,
                user_seconds=after.ru_utime-before.ru_utime,
                system_seconds=after.ru_stime-before.ru_stime,
                voluntary_switches=after.ru_nvcsw-before.ru_nvcsw,
                involuntary_switches=after.ru_nivcsw-before.ru_nivcsw)
            log = proc.stdout + proc.stderr
            (out / f'{pair}-{length}-{variant}.txt').write_text(log)
            values = {test: float(rate) for test, rate in re.findall(r'(\d+)#XXH3_64b[^\r\n]*?->\s*([0-9.]+) it/s', log)}
            assert set(values) == {'5', '6'}, log
            records.append(dict(pair=pair, length=length, variant=variant, hashes_per_second=values,
                                process_usage=process_usage, runner_sha256=runner_sha256,
                                command=cmd, cpu=cpu, binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest()))
            (out / 'raw.json').write_text(json.dumps(records, indent=2) + '\n')
        print('pair', pair, 'length', length, 'done', flush=True)
summary = {}
for length in a.lengths:
    old = [r['hashes_per_second'] for r in records if r['length'] == length and r['variant'] == 'old']
    new = [r['hashes_per_second'] for r in records if r['length'] == length and r['variant'] == 'new']
    for test, label in (('5', 'aligned'), ('6', 'unaligned')):
        summary[f'{length}/{label}'] = dict(old_ns=1e9 / statistics.median(r[test] for r in old),
            new_ns=1e9 / statistics.median(r[test] for r in new),
            paired_speedup=statistics.median(y[test] / x[test] for x, y in zip(old, new)))
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
print(json.dumps(summary, indent=2))
