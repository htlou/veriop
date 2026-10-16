#!/usr/bin/env python3
"""Summarize alternating-order rounds: per-round ratio A/B (A = baseline)."""
import csv, statistics, sys, json
def load(path):
    rows = list(csv.DictReader(open(path), delimiter='\t'))
    by = {}
    for r in rows:
        by.setdefault(int(r['round']), {})[r['side']] = float(r['ns'])
    return by
out = {}
for label in sys.argv[1:]:
    by = load(label)
    ratios = [v['A'] / v['B'] for k, v in sorted(by.items()) if 'A' in v and 'B' in v]
    a = [v['A'] for v in by.values()]; b = [v['B'] for v in by.values()]
    out[label] = dict(rounds=len(ratios), median_A_ns=statistics.median(a),
                      median_B_ns=statistics.median(b),
                      ratio_A_over_B_median=statistics.median(ratios),
                      ratio_min=min(ratios), ratio_max=max(ratios),
                      ratios=[round(x, 4) for x in ratios])
print(json.dumps(out, indent=2))
