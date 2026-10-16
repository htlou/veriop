"""Summarize full-suite runs (scripts/full-bench.sh) from raw Criterion data.
Usage: summarize_full.py <results/name>
Per case: median estimate (re-derived from sample.json), speedup = baseline/candidate per round,
median over rounds. A/A noise band = central 90% (5th..95th percentile) of the 88 A1/A2 per-case ratios; the full
A/A range is also reported. A case is flagged if every round's speedup falls below the band
(slower = regression) or above it (faster).
"""
import json, math, statistics, sys, re
from pathlib import Path
d = Path(sys.argv[1])
gm = lambda xs: math.exp(sum(math.log(x) for x in xs) / len(xs))
def cases(root):
    out = {}
    for f in root.rglob('new/estimates.json'):
        bench = json.loads((f.parent / 'benchmark.json').read_text())
        est = json.loads(f.read_text())['median']['point_estimate']
        s = json.loads((f.parent / 'sample.json').read_text())
        raw = statistics.median(t / n for t, n in zip(s['times'], s['iters'], strict=True))
        assert math.isclose(raw, est, rel_tol=1e-9), f
        out[bench['full_id']] = est
    return out
crit = d / 'criterion'
aa = {}
for t in sorted(p.name for p in crit.iterdir() if p.name.startswith('aa')):
    a1, a2 = cases(crit / t / 'A1'), cases(crit / t / 'A2')
    assert a1.keys() == a2.keys() and len(a1) == 88, len(a1)
    aa[t] = {k: a1[k] / a2[k] for k in a1}
rounds = sorted((p.name for p in crit.iterdir() if re.fullmatch(r'r\d+', p.name)), key=lambda x: int(x[1:]))
R = {}
for t in rounds:
    b, c = cases(crit / t / 'baseline'), cases(crit / t / 'candidate')
    assert b.keys() == c.keys() and len(b) == 88
    R[t] = {k: (b[k], c[k], b[k] / c[k]) for k in b}
ids = sorted(R[rounds[0]], key=lambda k: (k.split('/')[0], k.split('/')[1], int(k.split('/')[2])))
aa_vals = sorted(v for t in aa for v in aa[t].values())
n = len(aa_vals)
lo, hi = aa_vals[int(0.05 * n)], aa_vals[int(0.95 * n) - 1]
full_lo, full_hi = aa_vals[0], aa_vals[-1]
rows = []
for k in ids:
    sp = [R[t][k][2] for t in rounds]
    row = {'case': k, 'baseline_median_ns': statistics.median(R[t][k][0] for t in rounds),
           'candidate_median_ns': statistics.median(R[t][k][1] for t in rounds),
           'speedup_rounds': sp, 'speedup_median': statistics.median(sp),
           'aa_ratio': [aa[t][k] for t in aa],
           'group': 'decode (affected)' if k.startswith('decode') else 'encode (unaffected)'}
    row['outside_aa_band'] = (all(x < lo for x in sp) and 'slower') or (all(x > hi for x in sp) and 'faster') or ''
    rows.append(row)
dec = [r for r in rows if r['case'].startswith('decode')]
enc = [r for r in rows if r['case'].startswith('encode')]
summary = {
  'aa_band_p5_p95': [lo, hi], 'aa_full_range': [full_lo, full_hi], 'aa_geomean': {t: gm(list(aa[t].values())) for t in aa},
  'decode_geomean_of_medians': gm([r['speedup_median'] for r in dec]),
  'encode_geomean_of_medians': gm([r['speedup_median'] for r in enc]),
  'full_suite_geomean_of_medians': gm([r['speedup_median'] for r in rows]),
  'per_round_geomeans': {t: {'decode': gm([R[t][r['case']][2] for r in dec]),
                             'encode': gm([R[t][r['case']][2] for r in enc]),
                             'all': gm([R[t][r['case']][2] for r in rows])} for t in rounds},
  'flagged': [r['case'] + ' ' + r['outside_aa_band'] for r in rows if r['outside_aa_band']],
  'cases': rows}
(d / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
fmt = lambda ns: f'{ns:.1f} ns' if ns < 1e3 else (f'{ns/1e3:.2f} µs' if ns < 1e6 else f'{ns/1e6:.2f} ms')
lines = ['| case | baseline | candidate | speedup (median) | per round | A/A ratio | flag |', '|---|---:|---:|---:|---|---|---|']
for r in rows:
    lines.append(f"| {r['case']} | {fmt(r['baseline_median_ns'])} | {fmt(r['candidate_median_ns'])} | {r['speedup_median']:.3f} | "
                 f"{', '.join(f'{x:.3f}' for x in r['speedup_rounds'])} | {', '.join(f'{x:.3f}' for x in r['aa_ratio'])} | {r['outside_aa_band']} |")
(d / 'table.md').write_text('\n'.join(lines) + '\n')
print(f"A/A per-case p5-p95 band [{lo:.3f}, {hi:.3f}] (full range [{full_lo:.3f}, {full_hi:.3f}]), A/A geomean {', '.join(f'{v:.4f}' for v in summary['aa_geomean'].values())}")
print(f"decode (32 affected) geomean {summary['decode_geomean_of_medians']:.3f}; encode (56 unaffected) geomean "
      f"{summary['encode_geomean_of_medians']:.3f}; full suite (88) {summary['full_suite_geomean_of_medians']:.3f}")
for t, v in summary['per_round_geomeans'].items():
    print(t, {k: round(x, 3) for k, x in v.items()})
print('flagged:', summary['flagged'] or 'none')
