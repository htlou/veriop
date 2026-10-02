#!/usr/bin/env python3
"""Benchmark a proved trial using official kernels and matched IR inlining."""
import argparse
import csv
import hashlib
import io
import json
import os
from pathlib import Path
import re
import resource
import statistics
import subprocess
import time
from check import ROOT, FLAGS, verify_artifacts, verify_trial

p = argparse.ArgumentParser()
p.add_argument('trial', type=Path)
p.add_argument('--repeats', type=int, default=3)
p.add_argument('--workload', choices=('varying','fixed'), default='varying', help='libdivide workload')
p.add_argument('--inline', action='store_true', help='internalize xxHash helpers so their sole callback caller can inline them')
p.add_argument('--build-only', action='store_true', help='Build checked implementations and save commands without running timings')
p.add_argument('--label', help='Suffix for a fresh benchmark directory, preserving earlier runs')
p.add_argument('--auto-vectorize', action='store_true', help='Enable loop and SLP vectorization for both benchmark builds')
p.add_argument('--march', choices=('x86-64-v3', 'x86-64-v4'), default='x86-64-v3')
a = p.parse_args()
FLAGS = [f'-march={a.march}' if f.startswith('-march=') else f for f in FLAGS]
if a.auto_vectorize:
    assert a.label, 'Use a separate label for the vectorized configuration.'
    FLAGS = [f for f in FLAGS if f not in ('-fno-vectorize', '-fno-slp-vectorize')]
    FLAGS += ['-fvectorize', '-fslp-vectorize']
verify_artifacts()
trial = a.trial.resolve()
report = verify_trial(trial)
assert a.march == report.get('march', 'x86-64-v3'), 'Match the proved candidate architecture.'
assert a.repeats > 0
assert a.label is None or re.fullmatch(r'[a-zA-Z0-9_-]+', a.label), 'Use a simple directory label.'
directory = 'bench-inline' if a.inline else 'bench-fixed' if a.workload == 'fixed' else 'bench'
out = trial/(directory + ('-' + a.label if a.label else ''))
out.mkdir(exist_ok=True)
assert not (out/'raw.json').exists(), 'Preserve prior measurements.'
commands = []

def run(*cmd):
    cmd = [str(c) for c in cmd]
    subprocess.run(cmd, check=True)
    commands.append(cmd)

project = report['name'].split('_')[0]
if project == 'xxhash':
    repo = ROOT/'repos/xxHash'
    run('clang', *FLAGS, '-I', repo, '-I', repo/'tests/bench', '-S', '-emit-llvm',
        ROOT/'experiments/bench_xxhash.c', '-o', out/'harness.ll')
    for variant in ('old', 'new'):
        run('llvm-link', out/'harness.ll', trial/f'{variant}.ll', '-o', out/f'{variant}.bc')
        if a.inline:
            run('opt', '-passes=internalize,globaldce,default<O3>', '-internalize-public-api-list=main',
                out/f'{variant}.bc', '-o', out/f'{variant}-inline.bc')
        module = out/f'{variant}-inline.bc' if a.inline else out/f'{variant}.bc'
        run('clang', *FLAGS, module, *[repo/f'tests/bench/{s}.c' for s in ('benchHash','benchfn','timefn')],
            '-o', out/variant)
    args = []
else:
    assert not a.inline, '--inline currently applies to xxHash only'
    repo = ROOT/'repos/libdivide'
    cxx = ['clang++', '--gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11', *FLAGS, '-std=c++17']
    # Existing adapter changes only the two raw-helper calls; benchmark source is upstream.
    source = repo/'test/benchmark_branchfree.cpp' if a.workload == 'varying' else ROOT/'experiments/bench_libdivide_fixed.cpp'
    run(*cxx, '-I', ROOT/'build/bench', '-I', repo/'test', '-S', '-emit-llvm', source, '-o', out/'harness.ll')
    for variant in ('old', 'new'):
        run('llvm-link', out/'harness.ll', trial/f'{variant}.ll', '-o', out/f'{variant}.bc')
        run(*cxx, out/f'{variant}.bc', '-o', out/variant)
    args = ['u32', 'u64', 'branchfull'] if a.workload == 'varying' else []

(out/'build.json').write_text(json.dumps(commands,indent=2)+'\n')
if a.build_only:
    print('Built checked benchmark binaries:', out, flush=True)
    raise SystemExit(0)

cpu = int(os.environ.get('BENCH_CPU', '24'))
os.sched_setaffinity(0, {cpu})
runner = Path(__file__).read_bytes()
(out/'runner.py').write_bytes(runner)
runner_sha256 = hashlib.sha256(runner).hexdigest()
records = []
for pair in range(a.repeats):
    for variant in (('old','new') if pair%2 == 0 else ('new','old')):
        before = resource.getrusage(resource.RUSAGE_CHILDREN)
        start = time.monotonic()
        cmd = [str(out/variant), *args]
        proc = subprocess.run(cmd, check=True, capture_output=True, text=True)
        wall_seconds = time.monotonic() - start
        after = resource.getrusage(resource.RUSAGE_CHILDREN)
        process_usage = dict(wall_seconds=wall_seconds,
            user_seconds=after.ru_utime-before.ru_utime,
            system_seconds=after.ru_stime-before.ru_stime,
            voluntary_switches=after.ru_nvcsw-before.ru_nvcsw,
            involuntary_switches=after.ru_nivcsw-before.ru_nivcsw)
        (out/f'{pair}-{variant}.txt').write_text(proc.stdout+proc.stderr)
        if project == 'xxhash':
            values = {f"{r['mode']}/{r['length']}/{r['distribution']}":float(r['ns_per_hash'])
                      for r in csv.DictReader(io.StringIO(proc.stdout))}
        elif a.workload == 'fixed':
            values = {f"u{r['bits']}/{r['divisor']}":float(r['ns_per_divide'])
                      for r in csv.DictReader(io.StringIO(proc.stdout))}
        else:
            values = {t:float(s) for t,s in re.findall(r'----- (u\d+) -----.*?branchfull: ([0-9.e+-]+) seconds',proc.stdout,re.S)}
            assert len(values)==2
        records.append(dict(pair=pair, variant=variant, values=values, cpu=cpu,
                            command=cmd, process_usage=process_usage, runner_sha256=runner_sha256,
                            binary_sha256=hashlib.sha256((out/variant).read_bytes()).hexdigest()))
        (out/'raw.json').write_text(json.dumps(records,indent=2)+'\n')
        print(pair, variant, 'done', flush=True)
old = [r['values'] for r in records if r['variant']=='old']
new = [r['values'] for r in records if r['variant']=='new']
summary = {k:dict(old_median=statistics.median(r[k] for r in old),
                  new_median=statistics.median(r[k] for r in new),
                  paired_speedup=statistics.median(x[k]/y[k] for x,y in zip(old,new))) for k in old[0]}
(out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
