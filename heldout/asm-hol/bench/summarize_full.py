#!/usr/bin/env python3
"""Summarize full-suite alternating rounds (A = baseline, B = optimized)."""
import csv, json, math, statistics, sys
rows = list(csv.DictReader(open(sys.argv[1]), delimiter='\t'))
data = {}
for r in rows:
    name = r['line'].split(':')[0].strip()
    data.setdefault(int(r['round']), {}).setdefault(r['side'], {})[name] = float(r['ns'])
gm = lambda xs: math.exp(sum(math.log(x) for x in xs) / len(xs))
out = {"rounds": {}}
for rd, sides in sorted(data.items()):
    A, B = sides['A'], sides['B']
    names = sorted(set(A) & set(B))
    others = [n for n in names if not n.startswith('bignum_normalize')]
    ratios = [A[n] / B[n] for n in others]
    out["rounds"][rd] = {
        "functions": len(names),
        "geomean_ns_A_all": gm([A[n] for n in names]),
        "geomean_ns_B_all": gm([B[n] for n in names]),
        "geomean_ratio_all": gm([A[n] for n in names]) / gm([B[n] for n in names]),
        "geomean_ratio_unchanged_functions": gm(ratios),
        "unchanged_functions_ratio_p05_p95": [sorted(ratios)[int(0.05 * len(ratios))],
                                              sorted(ratios)[int(0.95 * len(ratios))]],
        "bignum_normalize": {"A_ns": A["bignum_normalize (32 -> 32)"],
                             "B_ns": B["bignum_normalize (32 -> 32)"],
                             "ratio": A["bignum_normalize (32 -> 32)"] / B["bignum_normalize (32 -> 32)"]}}
print(json.dumps(out, indent=2))
