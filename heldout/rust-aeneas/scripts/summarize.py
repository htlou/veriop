"""Summarize a bench.sh result directory from raw Criterion data.
Usage: summarize.py <results/name>
Speedup = baseline median latency / candidate median latency (Criterion median point estimate,
re-derived from sample.json). Per round: per-workload ratios and their geometric mean.
Reported: median over rounds (per workload, and of the per-round geomeans), min/max.
"""
import json, math, statistics, sys, re
from pathlib import Path
d = Path(sys.argv[1])
SIZES = [3, 50, 100, 500, 3072, 3145728, 10485760, 31457280]
def wl(size):
    return ('decode_small_input' if size <= 3072 else 'decode_large_input') + f'/decode_slice/{size}'
def median_ns(tag, label, size):
    base = d / 'criterion' / tag / label / wl(size) / 'new'
    est = json.loads((base / 'estimates.json').read_text())['median']['point_estimate']
    sample = json.loads((base / 'sample.json').read_text())
    raw = statistics.median(t / n for t, n in zip(sample['times'], sample['iters'], strict=True))
    assert math.isclose(raw, est, rel_tol=1e-9), (tag, label, size, raw, est)
    return est
gm = lambda xs: math.exp(sum(math.log(x) for x in xs) / len(xs))
tags = sorted({p.name for p in (d / 'criterion').iterdir()})
aa = [t for t in tags if t.startswith('aa')]
rounds = sorted([t for t in tags if re.fullmatch(r'r\d+', t)], key=lambda t: int(t[1:]))
out = {'workloads': [wl(s) for s in SIZES], 'aa': {}, 'rounds': {}}
for t in aa:
    r = [median_ns(t, 'A1', s) / median_ns(t, 'A2', s) for s in SIZES]
    out['aa'][t] = {'per_workload_ratio': r, 'geomean': gm(r)}
for t in rounds:
    b = [median_ns(t, 'baseline', s) for s in SIZES]
    c = [median_ns(t, 'candidate', s) for s in SIZES]
    r = [x / y for x, y in zip(b, c)]
    out['rounds'][t] = {'baseline_ns': b, 'candidate_ns': c, 'speedup': r, 'geomean': gm(r)}
per = []
for i, s in enumerate(SIZES):
    xs = [out['rounds'][t]['speedup'][i] for t in rounds]
    per.append({'workload': wl(s), 'median': statistics.median(xs), 'min': min(xs), 'max': max(xs),
                'baseline_median_ns': statistics.median(out['rounds'][t]['baseline_ns'][i] for t in rounds),
                'candidate_median_ns': statistics.median(out['rounds'][t]['candidate_ns'][i] for t in rounds)})
gms = [out['rounds'][t]['geomean'] for t in rounds]
out['per_workload'] = per
out['geomean_of_round_geomeans'] = {'median': statistics.median(gms), 'min': min(gms), 'max': max(gms)}
out['geomean_of_per_workload_medians'] = gm([p['median'] for p in per])
aa_all = [x for t in aa for x in out['aa'][t]['per_workload_ratio']]
out['aa_summary'] = {'geomeans': [out['aa'][t]['geomean'] for t in aa],
                     'per_workload_min': min(aa_all), 'per_workload_max': max(aa_all)}
(d / 'summary.json').write_text(json.dumps(out, indent=2) + '\n')
print(f"A/A geomeans: {', '.join(f'{x:.4f}' for x in out['aa_summary']['geomeans'])}; per-workload A/A range "
      f"{out['aa_summary']['per_workload_min']:.3f}-{out['aa_summary']['per_workload_max']:.3f}")
print(f"{'workload':45s} {'base ns':>12s} {'cand ns':>12s} {'median':>7s} {'min':>7s} {'max':>7s}")
for p in per:
    print(f"{p['workload']:45s} {p['baseline_median_ns']:12.1f} {p['candidate_median_ns']:12.1f} "
          f"{p['median']:7.3f} {p['min']:7.3f} {p['max']:7.3f}")
print('round geomeans:', ', '.join(f'{t}={out["rounds"][t]["geomean"]:.3f}' for t in rounds))
g = out['geomean_of_round_geomeans']
print(f"geomean speedup: median of rounds {g['median']:.3f} (min {g['min']:.3f}, max {g['max']:.3f}); "
      f"geomean of per-workload medians {out['geomean_of_per_workload_medians']:.3f}")
