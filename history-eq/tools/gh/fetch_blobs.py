#!/usr/bin/env python3
"""Fetch (from GitHub, via the partial-clone promisor) every changed blob of every
selected optimization commit, for all 25 pinned repos. Records before/after availability."""
import glob, json, os, subprocess, sys
from concurrent.futures import ThreadPoolExecutor
ROOT = "/srv/home/hantaolou/code/veriop"
RES = f"{ROOT}/history-eq/results"
NAMEMAP = {"llama": "llama.cpp"}
NOFETCH = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def ledgers():
    for f in sorted(glob.glob(f"{RES}/*-optimization-sample.json")):
        d = json.load(open(f))
        yield d["repo"], [e["commit"] for e in d["entries"]]
    # SymCrypt has a partial file
    d = json.load(open(f"{RES}/SymCrypt-partial.json"))
    ents = d.get("entries") or d.get("commits") or []
    yield "SymCrypt", [e["commit"] for e in ents if "commit" in e]

def changed_blobs(repo, commit):
    out = subprocess.run(["git", "-C", repo, "diff-tree", "-r", "--raw", "--no-abbrev", "-m",
                          "--first-parent", commit], capture_output=True, text=True, env=NOFETCH).stdout
    ids = set()
    for line in out.splitlines():
        if line.startswith(":"):
            p = line[1:].split()
            for mode, oid in ((p[0], p[2]), (p[1], p[3])):
                if set(oid) != {"0"} and mode != "160000": ids.add(oid)
    return ids

def missing(repo, ids):
    if not ids: return set()
    r = subprocess.run(["git", "-C", repo, "cat-file", "--batch-check"], input="\n".join(ids) + "\n",
                       capture_output=True, text=True, env=NOFETCH)
    return {l.split()[0] for l in r.stdout.splitlines() if l.endswith(" missing")}

def run(name, commits):
    repo = f"{ROOT}/benchmarks/repos/{name}"
    ids = set()
    for c in commits: ids |= changed_blobs(repo, c)
    miss = missing(repo, ids)
    fetched_err = ""
    lst = sorted(miss)
    for i in range(0, len(lst), 2000):
        r = subprocess.run(["git", "-C", repo, "-c", "fetch.negotiationAlgorithm=noop", "fetch", "origin",
                            "--no-tags", "--no-write-fetch-head", "--recurse-submodules=no",
                            "--filter=blob:none", "--stdin"], input="\n".join(lst[i:i+2000]) + "\n",
                           capture_output=True, text=True)
        if r.returncode: fetched_err += r.stderr[-500:]
    still = missing(repo, ids)
    return {"repo": name, "commits": len(commits), "changed_blobs": len(ids),
            "missing_before": len(miss), "missing_after": len(still), "fetch_errors": fetched_err}

jobs = [(NAMEMAP.get(n, n), c) for n, c in ledgers()]
with ThreadPoolExecutor(26) as ex:
    res = list(ex.map(lambda a: run(*a), jobs))
for r in res: print(json.dumps(r))
json.dump(res, open(f"{RES}/github-blob-fetch.json", "w"), indent=1)
