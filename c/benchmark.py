#!/usr/bin/env python3
"""Serial, CPU-pinned paired runs of the repositories' own benchmark kernels."""
import csv
import hashlib
import io
import json
import os
from pathlib import Path
import re
import statistics
import subprocess
import sys
import time
from check import ROOT

cpu = int(os.environ.get("BENCH_CPU", "24"))
os.sched_setaffinity(0, {cpu})
repeats = int(os.environ.get("BENCH_REPEATS", "5"))
link = os.environ.get("BENCH_LINK", "object")
assert link in ("object", "lto")
out = ROOT / ("results/" + os.environ.get("BENCH_LABEL", "benchmarks-" + link))
out.mkdir(parents=True, exist_ok=True)
records = []
build = json.loads((ROOT / 'results/benchmark-build.json').read_text())
primes = bytearray(b"\1") * (2**22 + 1)
primes[:2] = b"\0\0"
for n in range(2, 2049):
    if primes[n]:
        primes[n*n::n] = b"\0" * len(primes[n*n::n])
divisions = sum(primes) * 3000


def measure(suite, variant, round):
    binary = ROOT / f"build/bench/{suite.split(':')[0]}_{variant}"
    args = []
    if suite.startswith("libdivide"):
        binary = Path(str(binary) + "_" + suite.split(":")[1])
        if suite.endswith("varying"):
            args = ["u32", "u64", "branchfull"]
    digest = hashlib.sha256(binary.read_bytes()).hexdigest()
    assert digest == build['sha256'][str(binary.relative_to(ROOT))], binary
    start = time.monotonic()
    p = subprocess.run([str(binary), *args], check=True, capture_output=True, text=True)
    (out / f"{suite.replace(':', '_')}.{variant}.{round}.txt").write_text(p.stdout + p.stderr)
    if suite.endswith("varying"):
        values = {bits: float(t)*1e9/divisions for bits, t in re.findall(
            r"----- (u\d+) -----.*?branchfull: ([0-9.e+-]+) seconds", p.stdout, re.S)}
        assert len(values) == 2, p.stdout
    else:
        rows = list(csv.DictReader(io.StringIO(p.stdout)))
        if suite == "xxhash":
            values = {f"{r['mode']}/{r['length']}/{r['distribution']}": float(r['ns_per_hash']) for r in rows}
        else:
            values = {f"u{r['bits']}/{r['divisor']}": float(r['ns_per_divide']) for r in rows}
    records.append(dict(suite=suite, variant=variant, round=round, ns=values,
                        wall_seconds=time.monotonic()-start, cpu=cpu, binary_sha256=digest,
                        command=[str(binary), *args]))
    (out / "raw.json").write_text(json.dumps(records, indent=2) + "\n")
    print(suite, variant, round, values if suite.endswith("varying") else "done", flush=True)


for suite, candidate in [("libdivide:varying", "select"), ("libdivide:fixed", "select"), ("xxhash", "dispatch")]:
    if len(sys.argv) > 1 and suite not in sys.argv[1:]:
        continue
    measure(suite, "stock", 0)
    reference = "old"
    if link == "lto" and suite.startswith("libdivide"):
        reference += "_lto"
        candidate += "_lto"
    for round in range(repeats):
        for variant in ((reference, candidate) if round % 2 == 0 else (candidate, reference)):
            measure(suite, variant, round)

summary = []
for suite in sorted({r['suite'] for r in records}):
    old = [r for r in records if r['suite'] == suite and r['variant'].startswith('old')]
    new = [r for r in records if r['suite'] == suite and not r['variant'].startswith(('old', 'stock'))]
    for key in old[0]['ns']:
        baseline = [r['ns'][key] for r in old]
        candidate = [r['ns'][key] for r in new]
        ratios = [a/b for a, b in zip(baseline, candidate)]
        summary.append(dict(suite=suite, workload=key, old_ns=statistics.median(baseline),
                            new_ns=statistics.median(candidate), speedup=statistics.median(ratios),
                            min_speedup=min(ratios), max_speedup=max(ratios)))
(out / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
for r in summary:
    print(r)
