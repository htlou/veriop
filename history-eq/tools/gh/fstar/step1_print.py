#!/usr/bin/env python3
"""Run F* --print (parser+pretty printer) on every changed .fst/.fsti of old/new for each pending case.
Output: <dest>/print/{old,new}/<path with / -> __>.fst.txt  and print.json (status per file)."""
import json,subprocess,sys,os,glob
from concurrent.futures import ThreadPoolExecutor
H="/srv/home/hantaolou/code/veriop/history-eq"
F="/srv/home/hantaolou/code/veriop/aeneas/env/opam/5.3.0/bin/fstar.exe"
def one(a):
    dest,side,path=a
    src=f"{dest}/{side}/{path}"
    out=f"{dest}/print/{side}/{path.replace('/','__')}.txt"
    os.makedirs(os.path.dirname(out),exist_ok=True)
    if not os.path.exists(src): return (dest,side,path,"missing")
    try:
        p=subprocess.run([F,"--print",src],capture_output=True,text=True,timeout=120)
    except subprocess.TimeoutExpired:
        return (dest,side,path,"timeout")
    open(out,"w").write(p.stdout)
    open(out+".err","w").write(p.stderr)
    return (dest,side,path,"ok" if p.returncode==0 else "parse-fail")
def main():
    jobs=[]
    for r in sys.argv[1:]:
        for dest in sorted(glob.glob(f"{H}/gh/work/{r}/*")):
            m=json.load(open(dest+"/meta.json"))
            for ch in m["changed"]:
                for path in ch["paths"]:
                    if path.endswith((".fst",".fsti")):
                        for side in("old","new"): jobs.append((dest,side,path))
    res={}
    with ThreadPoolExecutor(24) as ex:
        for d,s,p,st in ex.map(one,jobs):
            res.setdefault(d,{})[f"{s}:{p}"]=st
    for d,v in res.items(): json.dump(v,open(d+"/print.json","w"),indent=1)
    import collections
    print(collections.Counter(st for v in res.values() for st in v.values()))
main()
