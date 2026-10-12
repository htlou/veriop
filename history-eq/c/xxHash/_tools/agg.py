"""Group aggregation helpers for gen_results.py."""
import json, fnmatch, re, os
B='/srv/home/hantaolou/code/veriop/history-eq/c/xxHash'
U=json.load(open(f'{B}/_tools/units.json'))
def runs(commit, pats):
    if isinstance(pats,str): pats=[pats]
    return [r for r in U if r['commit']==commit and any(fnmatch.fnmatch(r['unit'],p) for p in pats)]
def example(commit, unit, d='fwd'):
    p=f'{B}/{commit}/{unit}/{d}.log'
    if not os.path.exists(p): return ''
    t=open(p).read()
    i=t.find("Transformation doesn't verify")
    if i<0: return ''
    seg=t[i:i+1500].splitlines()
    err=[l for l in seg if l.startswith('ERROR')][:1]
    ex=[]; take=False
    for l in seg:
        if l.startswith('Example:'): take=True; continue
        if take:
            if not l.strip(): break
            ex.append(l.strip())
    return (err[0] if err else '')+' | example: '+'; '.join(ex[:5])
def summarize(commit, pats):
    rs=runs(commit,pats)
    by={}
    for r in rs: by.setdefault(r['verdict'],[]).append(r['unit'])
    return rs, by
