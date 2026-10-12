#!/usr/bin/env python3
"""Dependency-ordered F* build with a private .checked cache.

usage: fsbuild.py --root DIR --inc d1,d2,.. --cache CACHEDIR [--admit] [--exe F*] [--z3 Z3] [--jobs N]
                  [--flags "..."] [--admit-deps] TARGET.fst ...
  --admit-deps : modules other than TARGETS are checked with --admit_smt_queries true (fast, trusts the
                 historical repo's own proofs); the TARGET files are fully verified.
  --admit      : every module admitted.
Prints per-file status lines; exit 0 iff all targets verified.
"""
import argparse,subprocess,os,re,sys,time,threading
from concurrent.futures import ThreadPoolExecutor
EXE="/srv/home/hantaolou/code/veriop/aeneas/env/opam/5.3.0/bin/fstar.exe"
Z3="/srv/home/hantaolou/code/veriop/benchmarks/tools/everparse-2026.10.06/everparse/lib/fstar/z3-4.13.3/bin/z3"
def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--root",required=True);ap.add_argument("--inc",default="");ap.add_argument("--cache",required=True)
    ap.add_argument("--exe",default=EXE);ap.add_argument("--z3",default=Z3);ap.add_argument("--jobs",type=int,default=8)
    ap.add_argument("--flags",default="");ap.add_argument("--admit",action="store_true");ap.add_argument("--admit-deps",action="store_true")
    ap.add_argument("--timeout",type=int,default=900);ap.add_argument("--log",default=None)
    ap.add_argument("targets",nargs="+")
    a=ap.parse_args()
    root=os.path.abspath(a.root);os.makedirs(a.cache,exist_ok=True);cache=os.path.abspath(a.cache)
    inc=[x for x in a.inc.split(",") if x]
    base=[a.exe,"--smt",a.z3,*sum([["--include",i] for i in inc],[]),"--cache_dir",cache,*a.flags.split()]
    dep=subprocess.run([*base,"--dep","full",*a.targets],cwd=root,capture_output=True,text=True)
    txt=dep.stdout.replace("\\\n"," ")
    rules={}
    for line in txt.splitlines():
        if line.startswith("#") or ":" not in line: continue
        t,d=line.split(":",1)
        t=t.strip()
        if not t.endswith(".checked"): continue
        rules[t]=d.split()
    # keep only repo files (not ulib / install dir)
    def local(p): return "/ulib.checked/" not in p and "/lib/fstar/" not in p
    nodes={}
    for t,d in rules.items():
        if not local(t): continue
        src=[x for x in d if not x.endswith(".checked")]
        src=src[0] if src else None
        nodes[t]=dict(src=src,deps=[x for x in d if x.endswith(".checked") and x in rules and local(x)])
    tgt_src={os.path.abspath(os.path.join(root,x)) for x in a.targets}
    done={};lock=threading.Lock();results={}
    # nodes ordering via threads waiting on events
    ev={t:threading.Event() for t in nodes}
    fail=set()
    def run(t):
        n=nodes[t]
        for d in n["deps"]:
            ev[d].wait()
        src=n["src"]
        if any(d in fail for d in n["deps"]):
            with lock: fail.add(t);results[t]=("SKIP-dep-failed",0)
            ev[t].set();return
        is_t=os.path.abspath(src) in tgt_src or os.path.abspath(os.path.join(root,src)) in tgt_src
        flags=["--cache_checked_modules"]
        if a.admit or (a.admit_deps and not is_t): flags+=["--admit_smt_queries","true"]
        t0=time.time()
        try:
            p=subprocess.run([*base,*flags,src],cwd=root,capture_output=True,text=True,timeout=a.timeout)
            ok=p.returncode==0;out=p.stdout+p.stderr
        except subprocess.TimeoutExpired:
            ok=False;out="TIMEOUT"
        if a.log:
            with lock: open(a.log,"a").write(f"=== {src} ({'target' if is_t else 'dep'}) ok={ok}\n{out[-3000:]}\n")
        with lock:
            results[t]=("OK" if ok else "FAIL",time.time()-t0)
            if not ok: fail.add(t)
        ev[t].set()
    with ThreadPoolExecutor(a.jobs*8 if False else max(a.jobs,len(nodes))) as ex:
        sem=threading.Semaphore(a.jobs)
        def guarded(t):
            # wait for deps first (without holding sem), then take sem
            for d in nodes[t]["deps"]: ev[d].wait()
            with sem: run(t)
        list(ex.map(guarded,list(nodes)))
    bad=0
    for t,(s,dt) in sorted(results.items()):
        src=nodes[t]["src"]
        is_t=any(src.endswith(x) or os.path.abspath(os.path.join(root,src)) in tgt_src for x in [os.path.basename(x) for x in a.targets])
        if s!="OK": bad+=1
        if s!="OK" or is_t: print(f"{s:16s} {dt:7.1f}s {src}")
    print(f"modules={len(nodes)} failed_or_skipped={bad}")
    sys.exit(0 if all(results.get(t,("",0))[0]=="OK" for t in nodes) else 1)
main()
