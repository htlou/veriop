#!/usr/bin/env python3
"""bc.py WORKDIR TU [TU...] --inc rel --def X --arch compute_80 : build old/new PTX per TU (parallel), compare per function."""
import argparse, json, os, sys
from concurrent.futures import ThreadPoolExecutor
sys.path.insert(0, os.path.dirname(__file__))
from ptxlib import *
ap = argparse.ArgumentParser()
ap.add_argument("work"); ap.add_argument("tus", nargs="*"); ap.add_argument("--auto", default=""); ap.add_argument("--auto-prefix", default="ggml/src/ggml-cuda/")
ap.add_argument("--inc", action="append", default=[]); ap.add_argument("--def", dest="defs", action="append", default=[])
ap.add_argument("--arch", default="compute_80"); ap.add_argument("--std", default="c++17")
ap.add_argument("--extra", action="append", default=[]); ap.add_argument("--tag", default="")
ap.add_argument("--jobs", type=int, default=8)
a = ap.parse_args()
W = a.work
if a.auto:
    ch = [a.auto_prefix + x if "/" not in x else x for x in a.auto.split(",")]
    s = set()
    for side in ("old", "new"):
        if os.path.isdir(f"{W}/{side}"):
            s |= set(affected_tus(f"{W}/{side}", ch))
    a.tus = sorted(set(a.tus) | s)
def one(args):
    side, tu = args
    out = f"{W}/ptx/{side}-{tu.replace('/', '_')}{a.tag}.ptx"
    os.makedirs(f"{W}/ptx", exist_ok=True)
    incs = [f"{W}/{side}/{i}" for i in a.inc]
    if not os.path.exists(f"{W}/{side}/{tu}"): return side, tu, out, "missing"
    if os.path.exists(out) and os.path.getsize(out) > 0 and os.path.exists(out + ".log") and "rc=0" in open(out + ".log").read(80):
        return side, tu, out, 0
    r = nvcc_ptx(f"{W}/{side}/{tu}", out, incs, a.defs, a.arch, a.std, a.extra, log=out + ".log")
    return side, tu, out, r["rc"]
jobs = [(s, t) for t in a.tus for s in ("old", "new")]
with ThreadPoolExecutor(a.jobs) as ex: res = list(ex.map(one, jobs))
summary = {}
for tu in a.tus:
    o = [r for r in res if r[0] == "old" and r[1] == tu][0]; n = [r for r in res if r[0] == "new" and r[1] == tu][0]
    ent = dict(old_rc=o[3], new_rc=n[3], old_ptx=o[2], new_ptx=n[2])
    if "missing" in (o[3], n[3]):
        ent["one_sided"] = "old-only" if n[3] == "missing" else "new-only"
        summary[tu] = ent; print(tu, ent["one_sided"]); continue
    if o[3] == 0 and n[3] == 0:
        c = compare_ptx_files(o[2], n[2])
        ent.update(n_old=c["n_old"], n_new=c["n_new"], n_identical=len(c["identical"]), changed=c["changed"], line_only=c["line_only"], removed=c["removed"], added=c["added"], whole_file_identical=c["whole_file_identical"])
        ent["old_sha"] = sha(o[2]); ent["new_sha"] = sha(n[2])
    summary[tu] = ent
    print(tu, {k: (v if not isinstance(v, list) else len(v)) for k, v in ent.items() if k not in ("old_ptx", "new_ptx", "old_sha", "new_sha")})
json.dump(summary, open(f"{W}/ptx/summary{a.tag}.json", "w"), indent=1)
