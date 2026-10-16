#!/usr/bin/env python3
"""Per-round ratios (base score / variant score; avgt -> >1 means variant faster), median/min/max, geomeans."""
import json, glob, math, statistics, sys, re
from pathlib import Path
d = Path(sys.argv[1])
def load(p):
    out = {}
    for r in json.load(open(p)):
        key = r["benchmark"].split(".")[-1] + "[" + ",".join(f"{k}={v}" for k, v in sorted(r.get("params", {}).items())) + "]"
        out[key] = (r["primaryMetric"]["score"], r["primaryMetric"]["scoreUnit"], r["mode"])
    return out
rounds = sorted({int(re.match(r"r(\d+)-", p.name).group(1)) for p in d.glob("r*-*.json")})
data = {r: {v: load(d / f"r{r}-{v}.json") for v in ("base", "cand", "aa")} for r in rounds}
keys = sorted(data[rounds[0]]["base"])
def ratio(b, x, mode):  # speedup of x over b
    return b / x if mode == "avgt" else x / b
rows = []
print(f"{'benchmark':58s} {'base(med)':>10s} {'cand(med)':>10s}  speedup med [min,max]   A/A med [min,max]")
for k in keys:
    unit, mode = data[rounds[0]]["base"][k][1], data[rounds[0]]["base"][k][2]
    sp = [ratio(data[r]["base"][k][0], data[r]["cand"][k][0], mode) for r in rounds]
    aa = [ratio(data[r]["base"][k][0], data[r]["aa"][k][0], mode) for r in rounds]
    bm = statistics.median(data[r]["base"][k][0] for r in rounds); cm = statistics.median(data[r]["cand"][k][0] for r in rounds)
    rows.append((k, statistics.median(sp), statistics.median(aa)))
    print(f"{k:58s} {bm:10.2f} {cm:10.2f}  {statistics.median(sp):.3f} [{min(sp):.3f},{max(sp):.3f}]   {statistics.median(aa):.3f} [{min(aa):.3f},{max(aa):.3f}]  {unit}")
def gm(xs): return math.exp(sum(map(math.log, xs)) / len(xs))
sel = [r for r in rows if re.search(r"size=(100000|1000000)\]", r[0])]
print(f"\ngeomean speedup, all {len(rows)} configs: {gm([r[1] for r in rows]):.3f}   (A/A {gm([r[2] for r in rows]):.3f})")
print(f"geomean speedup, {len(sel)} configs with upper-half bitmap-container lookups (size 1e5, 1e6): {gm([r[1] for r in sel]):.3f}   (A/A {gm([r[2] for r in sel]):.3f})")
