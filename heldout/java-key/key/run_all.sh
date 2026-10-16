#!/bin/bash
# Regenerate the KeY model from wt/base and wt/cand, run every proof obligation, record results.
# Each PO runs in its own JVM (pinned to CPUs 100-107), auto mode, settings from rank/settings.key.txt.
set -u
K=$(dirname $(readlink -f $0)); cd $K/rank
python3 gen_key.py && python3 mk_key.py
rm -f *.proof drv_*.txt
for t in cc old0 old1 new0 new1; do (KEY_TIMEOUT=600 ../tool/keyrun.sh po_$t.key 3 > drv_$t.txt 2>&1 &); done
cd $K/rank-negative; python3 make_mutant.py; rm -f *.proof drv_*.txt
(KEY_TIMEOUT=600 ../tool/keyrun.sh po_new0.key 3 > drv_new0.txt 2>&1 &)
cd $K; timeout 700 bash -c 'until [ $(command grep -l -E "^closed=|Load failed" rank/drv_*.txt rank-negative/drv_*.txt 2>/dev/null | wc -l) -ge 6 ]; do sleep 5; done'
python3 - <<'PY'
import json, re, glob, hashlib
res = {}
for f in sorted(glob.glob("rank/drv_*.txt") + glob.glob("rank-negative/drv_*.txt")):
    t = open(f).read()
    m = re.search(r"^PROOF (.*)$", t, re.M); c = re.search(r"^closed=(\w+) openGoals=(\d+) nodes=(\d+) branches=(\d+) autoMs=(\d+)", t, re.M)
    res[f] = {"po": m.group(1) if m else None,
              "closed": c.group(1) == "true" if c else False,
              "open_goals": int(c.group(2)) if c else None, "nodes": int(c.group(3)) if c else None,
              "branches": int(c.group(4)) if c else None, "auto_ms": int(c.group(5)) if c else None}
srcs = {p: hashlib.sha256(open(p, "rb").read()).hexdigest() for p in
        ["rank/BitmapRank.java", "rank/PopCount.java", "rank/settings.key.txt", "rank-negative/BitmapRank.java"]}
json.dump({"results": res, "inputs_sha256": srcs}, open("result.json", "w"), indent=2)
for k, v in res.items(): print(k, v)
PY
