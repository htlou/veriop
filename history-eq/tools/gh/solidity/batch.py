#!/usr/bin/env python3
"""batch.py REPO [--workers N] [--force] [commit-prefix ...]: run every non-checked ledger entry."""
import json, sys, os, subprocess
from concurrent.futures import ThreadPoolExecutor
ROOT="/srv/home/hantaolou/code/veriop"
repo=sys.argv[1]; args=sys.argv[2:]
w=4
if "--workers" in args:
    i=args.index("--workers"); w=int(args[i+1]); del args[i:i+2]
force="--force" in args; args=[a for a in args if a!="--force"]
ent=json.load(open(f"{ROOT}/history-eq/results/{repo}-optimization-sample.json"))["entries"]
cs=[e["commit"] for e in ent if e.get("checker_status")!="checked"]
if args: cs=[c for c in cs if any(c.startswith(a) for a in args)]
def go(c):
    if not force and os.path.exists(f"{ROOT}/history-eq/gh/results/{repo}/{c}.json"): return c,"skip"
    p=subprocess.run([sys.executable,f"{ROOT}/history-eq/tools/gh/solidity/run_case.py",repo,c]+(["--force"] if force else []),capture_output=True,text=True,timeout=3600)
    return c,(p.stdout.splitlines() or [p.stderr[-200:]])[0]
with ThreadPoolExecutor(w) as ex:
    for c,r in ex.map(go,cs): print(c[:8],r,flush=True)
