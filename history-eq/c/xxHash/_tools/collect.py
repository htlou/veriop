#!/usr/bin/env python3
"""Collect every unit run under c/xxHash/<commit>/<unit>/ into units.json + a text table."""
import json, os, re, sys, glob
B='/srv/home/hantaolou/code/veriop/history-eq/c/xxHash'
COMMITS=sys.argv[1:] or sorted(d for d in os.listdir(B) if re.fullmatch(r'[0-9a-f]{7}', d))
rows=[]
for c in COMMITS:
    for ud in sorted(glob.glob(f'{B}/{c}/*/')):
        u=os.path.basename(ud.rstrip('/'))
        if u in ('old','new'): continue
        rj=ud+'result.json'
        if not os.path.exists(rj): rows.append(dict(commit=c,unit=u,verdict='RUNNING/MISSING')); continue
        try: r=json.load(open(rj))
        except Exception: rows.append(dict(commit=c,unit=u,verdict='BADJSON')); continue
        cmd=open(ud+'cmd.txt').read().strip() if os.path.exists(ud+'cmd.txt') else ''
        ident=open(ud+'ir_diff.txt').read().strip() if os.path.exists(ud+'ir_diff.txt') else '?'
        calls=open(ud+'calls.txt').read() if os.path.exists(ud+'calls.txt') else ''
        loops = 'target loops: {' in calls
        hascalls = "{'target" in calls.split('target loops')[0] if calls else False
        def tasm(path):
            if not os.path.exists(path): return False
            cur=None
            for line in open(path):
                m=re.match(r'^define .*?@([\w.$]+)\(', line)
                if m: cur=m.group(1); continue
                if line.startswith('}'): cur=None; continue
                if cur and cur.startswith('target_') and ' asm ' in line: return True
            return False
        asm = tasm(ud+'old.ll') or tasm(ud+'new.ll')
        fns=r.get('functions',{})
        v=r.get('verdict'); fwd=bwd=''
        if fns:
            k=sorted(fns)[0]; fwd,bwd=fns[k]['fwd'],fns[k]['bwd']
        reason=r.get('reason','')
        nv=v
        txt=fwd+' '+bwd
        if v=='UNSUPPORTED' and ('SMT Error' in txt or 'tactic failed' in txt): nv='UNKNOWN'
        if v=='UNSUPPORTED' and "doesn't reach a return" in txt: nv='NEEDS_UNROLL'
        if asm and v in ('NOT_EQUIV','UNKNOWN','REFINES'): nv='UNSUPPORTED(inline-asm)'
        if v=='UNSUPPORTED' and 'Unsupported metadata' in txt: nv='UNSUPPORTED(alive2-metadata)'
        if v=='UNSUPPORTED' and 'does not compile' in reason: nv='UNSUPPORTED(compile)'
        rows.append(dict(commit=c,unit=u,verdict=nv,raw_verdict=v,fwd=fwd[:90],bwd=bwd[:90],ir=ident,target=r.get('target'),
             unroll=r.get('unroll'),bounded_module=r.get('bounded'),target_loops=loops,calls_in_target=hascalls,asm=asm,
             cflags=r.get('cflags',''),cmd=cmd,reason=reason[:200]))
json.dump(rows,open(f'{B}/_tools/units.json','w'),indent=1)
for x in rows:
    print(f"{x['commit']} {x['unit']:45s} {x['verdict']:28s} {x.get('ir','')[:9]:9s} loops={int(bool(x.get('target_loops')))} calls={int(bool(x.get('calls_in_target')))} u={x.get('unroll')} {x.get('fwd','')[:40]} | {x.get('bwd','')[:40]}")
