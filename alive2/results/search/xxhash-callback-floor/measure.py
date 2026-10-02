"""Diagnostic callback overhead; never scored as an equivalent optimization."""
import csv
import hashlib
import io
import json
import os
from pathlib import Path
import statistics
import subprocess

out = Path(__file__).resolve().parent
executables = {'original': out.parent / 'loadwide-asserts/bench-inline/old', 'floor': out / 'floor'}
cpu = int(os.environ.get('BENCH_CPU', '24'))
os.sched_setaffinity(0, {cpu})
records = []
for pair in range(3):
    for variant in (('original', 'floor') if pair % 2 == 0 else ('floor', 'original')):
        binary = executables[variant]
        p = subprocess.run([str(binary)], check=True, capture_output=True, text=True)
        (out / f'{pair}-{variant}.txt').write_text(p.stdout + p.stderr)
        values = {f"{r['mode']}/{r['length']}/{r['distribution']}": float(r['ns_per_hash'])
                  for r in csv.DictReader(io.StringIO(p.stdout))}
        records.append(dict(pair=pair, variant=variant, cpu=cpu, values=values,
                            binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest()))
        (out / 'raw.json').write_text(json.dumps(records, indent=2) + '\n')
old = [r['values'] for r in records if r['variant'] == 'original']
floor = [r['values'] for r in records if r['variant'] == 'floor']
summary = {k: dict(original_ns=statistics.median(r[k] for r in old),
                   diagnostic_floor_ns=statistics.median(r[k] for r in floor),
                   original_over_floor=statistics.median(x[k] / y[k] for x, y in zip(old, floor)))
           for k in old[0]}
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
for mode in ('throughput', 'latency'):
    print(mode, statistics.median(v['original_over_floor'] for k, v in summary.items() if k.startswith(mode)))
