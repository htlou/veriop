#!/usr/bin/env python3
"""Analyze jmh/full-check: per-config speedup (base/cand for avgt, cand/base for thrpt) per round,
A/A ratio per round, global A/A noise band, regression flags, group geomeans."""
import json, math, re, statistics, sys
from pathlib import Path
d = Path(sys.argv[1])
def load(p):
    out = {}
    try:
        rows = json.load(open(p))
    except Exception:
        return out
    for r in rows:
        params = ",".join(f"{k}={v}" for k, v in sorted(r.get("params", {}).items()))
        key = r["benchmark"].replace("org.roaringbitmap.", "") + "[" + params + "]"
        out[key] = (r["primaryMetric"]["score"], r["mode"], r["primaryMetric"]["scoreUnit"])
    return out
rounds = sorted({int(re.match(r"r(\d+)-", p.name).group(1)) for p in d.glob("r*-*.json")})
data = {r: {v: load(d / f"r{r}-{v}.json") for v in ("base", "cand", "aa")} for r in rounds}
keys = sorted(set().union(*[set(data[r][v]) for r in rounds for v in data[r]]))
def sp(b, x, mode): return b / x if mode in ("avgt", "ss", "sample") else x / b
def group(k):
    if re.match(r"RankBenchmark\.(roaringBitmapRankLookupHit|fastRankLookupHit)\[distribution=DENSE,size=(100000|1000000)\]", k):
        return "A-affected"
    if re.match(r"RankBenchmark\.(roaringBitmapRank|fastRank)Lookup", k) or k.startswith("range.ContainsRange.containsViaRank"):
        return "B-rank-reaching(other)"
    if k.startswith("RankBenchmark.") or k.startswith("range.ContainsRange."):
        return "C-same-class-not-reaching"
    return "D-control"
rows, missing = [], []
for k in keys:
    ok = [r for r in rounds if all(k in data[r][v] for v in ("base", "cand", "aa"))]
    if len(ok) < len(rounds):
        missing.append(k); 
        if not ok: continue
    mode = data[ok[0]]["base"][k][1]
    s = [sp(data[r]["base"][k][0], data[r]["cand"][k][0], mode) for r in ok]
    a = [sp(data[r]["base"][k][0], data[r]["aa"][k][0], mode) for r in ok]
    rows.append(dict(k=k, g=group(k), s=s, a=a, mode=mode, unit=data[ok[0]]["base"][k][2],
                     base=statistics.median(data[r]["base"][k][0] for r in ok),
                     cand=statistics.median(data[r]["cand"][k][0] for r in ok)))
allaa = sorted(x for r in rows for x in r["a"])
def q(p): return allaa[min(len(allaa) - 1, max(0, int(round(p * (len(allaa) - 1)))))]
lo, hi = q(0.025), q(0.975)
print(f"rounds={rounds}  configs={len(rows)}  global A/A noise band (2.5..97.5 pct of {len(allaa)} per-round A/A ratios): [{lo:.3f}, {hi:.3f}]")
gm = lambda xs: math.exp(sum(map(math.log, xs)) / len(xs)) if xs else float('nan')
for g in sorted({r["g"] for r in rows}):
    print(f"\n== {g}")
    print(f"{'benchmark':92s} {'base':>10s} {'cand':>10s} {'speedup med [min,max]':>24s} {'A/A med [min,max]':>22s} flag")
    for r in [x for x in rows if x["g"] == g]:
        flag = ""
        if all(x < lo for x in r["s"]): flag = "REGRESSION(outside A/A band)"
        elif all(x > hi for x in r["s"]): flag = "faster(outside A/A band)"
        print(f"{r['k'][:92]:92s} {r['base']:10.3f} {r['cand']:10.3f}   {statistics.median(r['s']):.3f} [{min(r['s']):.3f},{max(r['s']):.3f}]   {statistics.median(r['a']):.3f} [{min(r['a']):.3f},{max(r['a']):.3f}] {r['unit']} {flag}")
print("\n== geomeans of per-config median speedup (A/A in parentheses)")
for name, sel in [("A affected (DENSE hit, size>=1e5)", lambda r: r["g"] == "A-affected"),
                  ("A+B all rank-reaching", lambda r: r["g"] in ("A-affected", "B-rank-reaching(other)")),
                  ("B rank-reaching, excluding A", lambda r: r["g"] == "B-rank-reaching(other)"),
                  ("C same class, not reaching BitmapContainer.rank", lambda r: r["g"] == "C-same-class-not-reaching"),
                  ("D controls", lambda r: r["g"] == "D-control"),
                  ("all", lambda r: True)]:
    xs = [r for r in rows if sel(r)]
    print(f"{name:52s} n={len(xs):3d}  speedup {gm([statistics.median(r['s']) for r in xs]):.3f}  (A/A {gm([statistics.median(r['a']) for r in xs]):.3f})")
print("\nflagged regressions:", [r["k"] for r in rows if all(x < lo for x in r["s"])])
print("configs without a score in every run (setup failure or incomplete):", missing)
