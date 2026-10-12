#!/usr/bin/env python3
import json,sys,os
ROOT="/srv/home/hantaolou/code/veriop/history-eq"
def choose(tri):
    gf=tri.get('gofd') or []
    best=None;bn=-1
    for cfg in ['amd64','amd64-purego','arm64']:
        n=sum(1 for x in gf if x['Built'].get(cfg))
        if n>bn: best,bn=cfg,n
    return best
def targets(tri,cfg):
    ts=[];skipped=[]
    for x in tri.get('gofd') or []:
        if not x['Built'].get(cfg): 
            skipped.append(x['File']); continue
        d=os.path.dirname(x['File']) or '.'
        for fn in x['Funcs'] or []:
            ts.append({'dir':d,'key':fn['Key'],'status':fn['Status'],'file':x['File']})
    return ts,skipped
if __name__=="__main__":
    repo,c=sys.argv[1:3]
    d=f"{ROOT}/gh/work/{repo}/{c[:8]}"
    tri=json.load(open(d+"/triage.json"))
    cfg=choose(tri); ts,sk=targets(tri,cfg)
    os.makedirs(d+"/gobra",exist_ok=True)
    json.dump(ts,open(d+"/gobra/targets.json","w"),indent=1)
    print(cfg,len(ts),sk)
