#!/usr/bin/env python3
"""Stage A: per commit, list changed files and function-level diff. Output gh/work/<repo>/<c8>/triage.json"""
import json, os, subprocess, sys, re
ROOT="/srv/home/hantaolou/code/veriop/history-eq"
BIN=f"{ROOT}/tools/gh/gobra/gofd.bin"
def triage(repo, c):
    d=f"{ROOT}/gh/work/{repo}/{c[:8]}"
    meta=json.load(open(d+"/meta.json"))
    files=[]
    for ch in meta["changed"]:
        st=ch["status"][0]; ps=ch["paths"]
        files.append({"status":st,"paths":ps})
    res={"commit":c,"files":files,"go":[], "asm":[], "other":[], "tests":[]}
    gofiles=[]
    for f in files:
        p=f["paths"][-1] if f["status"] in "RC" else f["paths"][0]
        if f["status"] in "RC":  # treat as delete+add
            gofiles += [x for x in f["paths"] if x.endswith(".go") and not x.endswith("_test.go") and "testdata" not in x]
            continue
        if p.endswith("_test.go") or "/testdata/" in p or p.startswith("testdata/"): res["tests"].append(p)
        elif p.endswith(".s"): res["asm"].append(p)
        elif p.endswith(".go"): gofiles.append(p)
        else: res["other"].append(p)
    res["gofiles"]=gofiles
    if gofiles:
        r=subprocess.run([BIN,d+"/old",d+"/new"]+gofiles,capture_output=True,text=True)
        try: res["gofd"]=json.loads(r.stdout)
        except Exception as e: res["gofd_err"]=r.stderr[-500:]
    json.dump(res,open(d+"/triage.json","w"),indent=1)
    return res
if __name__=="__main__":
    repo=sys.argv[1]
    for c in open(f"{ROOT}/tools/gh/gobra/{repo}.commits").read().split():
        triage(repo,c)
