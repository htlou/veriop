#!/usr/bin/env python3
"""analyze_commit.py REPO COMMIT [extra-module ...]
Materialize changed modules' src/main/java (old/new) under history-eq/gh/work/<repo>/<c8>, and write analysis.json
with changed methods / fields / classes between old and new."""
import json, os, subprocess, sys
sys.path.insert(0, os.path.dirname(__file__))
from jlib import *

def main():
    repo, commit, *extra = sys.argv[1:]
    commit = sh(["git", "-C", repo_path(repo), "rev-parse", commit]).stdout.strip()
    dest = f"{HE}/gh/work/{repo}/{commit[:8]}"
    ch = changed_files(repo, commit)
    jch = [c for c in ch if c[2].endswith(".java") or c[1].endswith(".java")]
    mods = set()
    for st, a, b in jch:
        for p in (a, b):
            m = module_of(p)
            if m is not None: mods.add(m)
    mods |= {m for m in extra}
    paths = sorted(m + "src/main/java" for m in mods)
    summary = {"repo": repo, "commit": commit, "changed_files": len(ch), "changed_java": len(jch),
               "main_java": [c for c in jch if module_of(c[2]) is not None or module_of(c[1]) is not None]}
    os.makedirs(dest, exist_ok=True)
    if paths:
        r = sh(["python3", f"{HE}/tools/gh/materialize.py", repo, commit, dest, *paths])
        if r.returncode:
            summary["materialize_error"] = r.stderr[-800:]
            json.dump(summary, open(f"{dest}/analysis.json", "w"), indent=1); print("ERR", commit[:8], r.stderr[-200:]); return
    else:
        r = sh(["python3", f"{HE}/tools/gh/materialize.py", repo, commit, dest, ".gitignore"])
    ofiles, nfiles = [], []
    pairs = []
    for st, a, b in summary["main_java"]:
        po, pn = f"{dest}/old/{a}", f"{dest}/new/{b}"
        pairs.append((st, a, b))
        if st != "A" and os.path.exists(po): ofiles.append(po)
        if st != "D" and os.path.exists(pn): nfiles.append(pn)
    om = run_analyze(ofiles); nm = run_analyze(nfiles)
    def idx(ms, prefix):
        d = {}
        for m in ms:
            if m["kind"] in ("parse-error",): continue
            m["relfile"] = m["file"][len(prefix):] if "file" in m else ""
            k = (m["kind"], m.get("class", ""), m["name"], m.get("params", "") if m["kind"] in ("method", "ctor") else "")
            if m["kind"] in ("init", "static-init"):
                n = sum(1 for kk in d if kk[:3] == k[:3]); k = k + (str(n),)
            d[k] = m
        return d
    di, dn = idx(om, f"{dest}/old/"), idx(nm, f"{dest}/new/")
    res = {"changed": [], "added": [], "removed": [], "parse_errors": [m["name"] for m in om + nm if m["kind"] == "parse-error"]}
    for k, n in dn.items():
        if k in di:
            o = di[k]
            if k[0] in ("package", "import"): continue
            if norm(o["text"]) != norm(n["text"]):
                res["changed"].append({"key": list(k), "old": o, "new": n,
                    "sig_changed": norm(o["mods"]) != norm(n["mods"]) or norm(o["ret"]) != norm(n["ret"]) or o.get("throws") != n.get("throws") or o.get("pnames") != n.get("pnames"),
                    "body_changed": norm(o["body"]) != norm(n["body"])})
        else:
            if k[0] not in ("package", "import"): res["added"].append({"key": list(k), "new": n})
    for k, o in di.items():
        if k not in dn and k[0] not in ("package", "import"): res["removed"].append({"key": list(k), "old": o})
    summary["members"] = res
    summary["pairs"] = pairs
    json.dump(summary, open(f"{dest}/analysis.json", "w"), indent=1)
    print(commit[:8], "changed", len(res["changed"]), "added", len(res["added"]), "removed", len(res["removed"]))

main()
