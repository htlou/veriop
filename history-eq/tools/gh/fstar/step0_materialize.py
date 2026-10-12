#!/usr/bin/env python3
"""Materialize changed paths (old/new) of all pending hacl-star/everparse entries (4-way parallel)."""
import json,subprocess,sys,os
from concurrent.futures import ThreadPoolExecutor
ROOT="/srv/home/hantaolou/code/veriop"
H=f"{ROOT}/history-eq"
env={**os.environ,"GIT_NO_LAZY_FETCH":"1"}
def pend(r):
    d=json.load(open(f"{H}/results/{r}-optimization-sample.json"))
    return [(r,e["commit"]) for e in d["entries"] if e.get("checker_status")!="checked"]
def job(a):
    r,c=a
    dest=f"{H}/gh/work/{r}/{c[:8]}"
    if os.path.exists(dest+"/.done"): return (r,c,"cached")
    out=subprocess.run(["git","-C",f"{ROOT}/benchmarks/repos/{r}","diff-tree","-r","--no-commit-id","--name-only","-M",f"{c}^1",c],capture_output=True,text=True,env=env).stdout.splitlines()
    # also old names for renames: use --name-status
    ns=subprocess.run(["git","-C",f"{ROOT}/benchmarks/repos/{r}","diff-tree","-r","--no-commit-id","--name-only","--no-renames",f"{c}^1",c],capture_output=True,text=True,env=env).stdout.splitlines()
    def exists(rev,path):
        return subprocess.run(["git","-C",f"{ROOT}/benchmarks/repos/{r}","cat-file","-e",f"{rev}:{path}"],capture_output=True,env=env).returncode==0
    paths=set()
    for q in ns:
        if exists(c+'^1',q) and exists(c,q): paths.add(q)
        else:
            d=os.path.dirname(q)
            while d and not (exists(c+'^1',d) and exists(c,d)): d=os.path.dirname(d)
            if d: paths.add(d)
    paths=sorted(paths)
    # submodule (gitlink) paths can't be archived -> skip nothing, git archive handles
    p=subprocess.run(["python3",f"{H}/tools/gh/materialize.py",r,c,dest,"--",*paths] if False else ["python3",f"{H}/tools/gh/materialize.py",r,c,dest,*paths],capture_output=True,text=True)
    return (r,c,"ok" if p.returncode==0 else "FAIL "+p.stderr[-300:])
if __name__=="__main__":
    jobs=[j for r in sys.argv[1:] for j in pend(r)]
    with ThreadPoolExecutor(8) as ex:
        for res in ex.map(job,jobs): print(*res,flush=True)
