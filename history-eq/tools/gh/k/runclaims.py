#!/usr/bin/env python3
"""usage: runclaims.py CLAIMS_JSON SIDE KDIR EVMDIR [--timeout S] [--par N]
Runs kprove for each claim of SIDE ('old'/'new') against KDIR/kompiled (KDIR contains verification.k).
For each rule id, 'eq' is tried first, then 'rw'. Writes KDIR/../rd/results-SIDE.json next to claims.json."""
import json, subprocess, sys, os, time
from concurrent.futures import ThreadPoolExecutor
ROOT="/srv/home/hantaolou/code/veriop"
claims_json, side, kdir, evmdir = sys.argv[1:5]
timeout = int(sys.argv[sys.argv.index('--timeout')+1]) if '--timeout' in sys.argv else 600
par = int(sys.argv[sys.argv.index('--par')+1]) if '--par' in sys.argv else 8
kdir=os.path.abspath(kdir); evmdir=os.path.abspath(evmdir)
PLUGIN=open(kdir+'/plugin_dir').read().strip()
if not os.environ.get('KVER'):
    _k=open(kdir+'/kver').read().strip()
    if _k!='7.1.337': os.environ['KVER']=_k
claims=[c for c in json.load(open(claims_json)) if c['side']==side]
byid={}
for c in claims: byid.setdefault(c['id'],{})[c['kind']]=c
def run(c):
    log=c['file'].replace('-spec.k','.log')
    t=time.time()
    kv=os.environ.get("KVER")
    kp=f"export PATH={ROOT}/benchmarks/tools/kframework-{kv}/usr/bin:$PATH; export LD_LIBRARY_PATH={ROOT}/benchmarks/tools/kframework-{kv}/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH; " if kv else ""
    cmd=f"source {ROOT}/benchmarks/env.sh; {kp}timeout {timeout} kprove --definition {kdir}/kompiled --spec-module {c['module']} -I {kdir} -I {evmdir} -I {PLUGIN} -I {kdir}/inc {c['file']} > {log} 2>&1; echo $? > {log}.exit"
    subprocess.run(['bash','-c',cmd])
    out=open(log,errors='replace').read()
    rc=int(open(log+'.exit').read().strip())
    status='PROVED' if rc==0 and out.rstrip().endswith('#Top') or (rc==0 and '#Top' in out.splitlines()[-1:]+['']) else ('TIMEOUT' if rc==124 else ('ERROR' if '[Error]' in out else 'FAILED'))
    return c['id'],c['kind'],status,round(time.time()-t,1)
def job(item):
    rid,ks=item
    res={}
    for kind in ('eq','rw','cell'):
        if kind not in ks: continue
        _,_,st,dt=run(ks[kind])
        res[kind]={'status':st,'secs':dt,'log':ks[kind]['file'].replace('-spec.k','.log')}
        if st=='PROVED': break
    return rid,res
with ThreadPoolExecutor(par) as ex:
    results=dict(ex.map(job,byid.items()))
out=os.path.join(os.path.dirname(claims_json),f'results-{side}.json')
json.dump(results,open(out,'w'),indent=1)
for k,v in sorted(results.items()): print(k,{a:b['status'] for a,b in v.items()})
