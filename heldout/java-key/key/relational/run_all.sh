#!/bin/bash
# Regenerate the relational KeY bundle from wt/base + wt/cand, prove every PO (auto mode, pinned to
# CPUs 100-107), then REPLAY every saved closed .proof headlessly (no auto mode) and write result.json.
set -u
H=$(dirname $(readlink -f $0)); cd $H
rm -f drv_*.txt replay_*.txt *.proof
python3 gen_rel.py
POS="cc old0 old1 new0 new1 samemax validate nm_cc nm_old0 nm_new0 nm_same"
for t in $POS; do (KEY_TIMEOUT=600 ../tool/keyrun.sh $H/po_$t.key 3 > drv_$t.txt 2>&1 &); done
timeout 700 bash -c "until [ \$(command grep -l -E '^closed=|Load failed' drv_*.txt 2>/dev/null | wc -l) -ge $(echo $POS | wc -w) ]; do sleep 5; done"
for t in $POS; do
  if [ -f po_$t.closed.proof ]; then (KEY_TIMEOUT=600 ../tool/keyrun.sh $H/po_$t.closed.proof 1 --replay > replay_$t.txt 2>&1 &); fi
done
timeout 700 bash -c "until [ \$(command grep -l -E '^REPLAY|Load failed|Exception in thread' replay_*.txt 2>/dev/null | wc -l) -ge \$(ls po_*.closed.proof | wc -l) ]; do sleep 5; done"
python3 - <<'PY'
import json, re, glob, hashlib
res = {}
for f in sorted(glob.glob("drv_*.txt")):
    t = open(f).read(); tag = f[4:-4]
    m = re.search(r"^PROOF (.*)$", t, re.M)
    c = re.search(r"^closed=(\w+) openGoals=(\d+) nodes=(\d+) branches=(\d+) autoMs=(\d+)", t, re.M)
    rp = open(f"replay_{tag}.txt").read() if glob.glob(f"replay_{tag}.txt") else ""
    r = re.search(r"^REPLAY \S+ closed=(\w+)", rp, re.M)
    res[tag] = {"po": m.group(1) if m else None, "closed": bool(c and c.group(1) == "true"),
                "open_goals": int(c.group(2)) if c else None, "nodes": int(c.group(3)) if c else None,
                "branches": int(c.group(4)) if c else None, "auto_ms": int(c.group(5)) if c else None,
                "replayed_closed": bool(r and r.group(1) == "true")}
ins = {p: hashlib.sha256(open(p, "rb").read()).hexdigest() for p in
       sorted(glob.glob("rel/*.java") + glob.glob("relnm/*.java") + ["settings.key.txt"])}
json.dump({"results": res, "inputs_sha256": ins, "all_closed_and_replayed": all(v["closed"] and v["replayed_closed"] for v in res.values())},
          open("result.json", "w"), indent=2)
for k, v in res.items(): print(k, v)
print("ALL CLOSED AND REPLAYED:", all(v["closed"] and v["replayed_closed"] for v in res.values()))
PY
