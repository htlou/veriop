"""Paired comparison of accepted parent/new binaries using the existing core driver."""
import csv, hashlib, io, json, os, statistics, subprocess, sys, time
from pathlib import Path
trial = Path(__file__).resolve().parent
root = trial.parents[2]
sys.path.insert(0, str(root))
from check import verify_artifacts, verify_trial
parent = root / 'results/search/xxhash_lookup_tail_ir'
verify_artifacts()
for p in [parent, trial]:
    verify_trial(p)
assert (parent / 'bench-inline/harness.ll').read_bytes() == (trial / 'bench-inline/harness.ll').read_bytes()
out = trial / 'bench-vs-parent'
out.mkdir(exist_ok=True)
assert not (out / 'raw.json').exists(), 'Preserve prior measurements.'
binaries = {'parent': parent / 'bench-inline/new', 'new': trial / 'bench-inline/new'}
hashes = {v: hashlib.sha256(p.read_bytes()).hexdigest() for v, p in binaries.items()}
cpu = int(os.environ.get('BENCH_CPU', '24'))
os.sched_setaffinity(0, {cpu})
records = []
for pair in range(5):
    for variant in (('parent', 'new') if pair % 2 == 0 else ('new', 'parent')):
        binary = binaries[variant]
        assert hashlib.sha256(binary.read_bytes()).hexdigest() == hashes[variant]
        cmd = [str(binary)]
        start = time.monotonic()
        proc = subprocess.run(cmd, capture_output=True, text=True, check=True)
        seconds = time.monotonic() - start
        (out / f'{pair}-{variant}.txt').write_text(proc.stdout + proc.stderr)
        values = {f"{r['mode']}/{r['length']}/{r['distribution']}": float(r['ns_per_hash'])
                  for r in csv.DictReader(io.StringIO(proc.stdout))}
        assert len(values) == 34
        records.append(dict(pair=pair, variant=variant, command=cmd, values=values,
                            cpu=cpu, wall_seconds=seconds, binary_sha256=hashes[variant]))
        (out / 'raw.json').write_text(json.dumps(records, indent=2) + '\n')
    print('pair', pair, 'done', flush=True)
old = [r['values'] for r in records if r['variant'] == 'parent']
new = [r['values'] for r in records if r['variant'] == 'new']
summary = {k: dict(parent_median=statistics.median(r[k] for r in old),
                   new_median=statistics.median(r[k] for r in new),
                   paired_speedup=statistics.median(x[k] / y[k] for x, y in zip(old, new)),
                   paired_ratios=[x[k] / y[k] for x, y in zip(old, new)]) for k in old[0]}
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
(out / 'scope.json').write_text(json.dumps(dict(baseline=str(parent), candidate=str(trial),
    workload='Existing custom core driver with unchanged upstream timing engine; not the official CLI.',
    pairs=5, records=len(records), identical_harness_ir=True, binary_sha256=hashes), indent=2) + '\n')
print(json.dumps({k:v for k,v in summary.items() if k in ['throughput/1/fixed', 'latency/1/fixed']}, indent=2))
