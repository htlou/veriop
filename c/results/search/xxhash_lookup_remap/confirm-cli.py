"""Repeat the changed byte lookup and an unchanged control with existing CLI binaries."""
import hashlib, json, os, re, statistics, subprocess, sys
from pathlib import Path
trial = Path(__file__).resolve().parent
root = trial.parents[2]
sys.path.insert(0, str(root))
from check import verify_artifacts, verify_trial
verify_artifacts()
verify_trial(trial)
out = trial / 'bench-cli-confirm'
out.mkdir(exist_ok=True)
assert not (out / 'raw.json').exists(), 'Preserve prior measurements.'
binaries = {v: trial / 'bench-cli' / v for v in ['old', 'new']}
hashes = {v: hashlib.sha256(p.read_bytes()).hexdigest() for v, p in binaries.items()}
prior = json.loads((trial / 'bench-cli/raw.json').read_text())
assert len(prior) == 96
for row in prior:
    assert row['binary_sha256'] == hashes[row['variant']]
cpu = int(os.environ.get('BENCH_CPU', '24'))
os.sched_setaffinity(0, {cpu})
records = []
for pair in range(5):
    for length in [1, 11]:
        for variant in (('old', 'new') if pair % 2 == 0 else ('new', 'old')):
            assert hashlib.sha256(binaries[variant].read_bytes()).hexdigest() == hashes[variant]
            cmd = [str(binaries[variant]), '-b5,6', '-i1', f'-B{length}', '-q']
            proc = subprocess.run(cmd, capture_output=True, text=True, check=True)
            log = proc.stdout + proc.stderr
            (out / f'{pair}-{length}-{variant}.txt').write_text(log)
            values = {test: float(rate) for test, rate in re.findall(r'(\d+)#XXH3_64b[^\r\n]*?->\s*([0-9.]+) it/s', log)}
            assert set(values) == {'5', '6'}, log
            records.append(dict(pair=pair, length=length, variant=variant, hashes_per_second=values,
                                command=cmd, cpu=cpu, binary_sha256=hashes[variant]))
            (out / 'raw.json').write_text(json.dumps(records, indent=2) + '\n')
        print('pair', pair, 'length', length, 'done', flush=True)
summary = {}
for length in [1, 11]:
    old = [r['hashes_per_second'] for r in records if r['length'] == length and r['variant'] == 'old']
    new = [r['hashes_per_second'] for r in records if r['length'] == length and r['variant'] == 'new']
    for test, label in [('5', 'aligned'), ('6', 'unaligned')]:
        ratios = [y[test] / x[test] for x, y in zip(old, new)]
        summary[f'{length}/{label}'] = dict(old_ns=1e9 / statistics.median(r[test] for r in old),
            new_ns=1e9 / statistics.median(r[test] for r in new), paired_speedup=statistics.median(ratios),
            paired_ratios=ratios)
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
(out / 'scope.json').write_text(json.dumps(dict(pairs=5, lengths=[1,11], records=len(records),
    scope='Unchanged official CLI tests 5/6; same binaries as the preserved full sweep.', binary_sha256=hashes), indent=2) + '\n')
print(json.dumps(summary, indent=2))
