#!/usr/bin/env python3
# mkresult2.py DIR "description" : summarize manual alive-tv runs DIR/<func>.{fwd,bwd}.log into DIR/result.json and concatenated DIR/fwd.log, DIR/bwd.log
import sys, json, re
from pathlib import Path
d = Path(sys.argv[1]); desc = sys.argv[2]
def st(t):
    if re.search(r'^\s*1 correct transformations', t, re.M): return 'correct'
    if re.search(r'^\s*1 incorrect transformations', t, re.M): return 'incorrect'
    m = re.search(r'ERROR: (Timeout|.*)', t)
    if re.search(r'^\s*1 failed-to-prove', t, re.M): return 'failed:' + (m.group(0) if m else '')
    return 'error-or-unfinished:' + (m.group(0) if m else '')
funcs = {}; cat = {'fwd': '', 'bwd': ''}; cmds = {}
for f in sorted(d.glob('*.fwd.log')):
    fn = f.name[:-len('.fwd.log')]; r = {}
    for dirn in ('fwd', 'bwd'):
        p = d / f'{fn}.{dirn}.log'; t = p.read_text() if p.exists() else ''
        r[dirn] = st(t); cat[dirn] += f'==== {fn} ====\n' + t + '\n'; cmds[f'{fn}.{dirn}'] = t.splitlines()[0] if t else None
    fw, bw = r['fwd'], r['bwd']
    r['verdict'] = 'EQUIV' if fw == bw == 'correct' else ('NOT_EQUIV' if 'incorrect' in (fw, bw) else ('REFINES' if fw == 'correct' and bw.startswith('failed') and False else ('UNKNOWN' if fw.startswith('failed') or bw.startswith('failed') else 'UNSUPPORTED')))
    funcs[fn] = r
vs = [r['verdict'] for r in funcs.values()]
overall = 'NOT_EQUIV' if 'NOT_EQUIV' in vs else ('EQUIV' if all(v == 'EQUIV' for v in vs) else ('UNKNOWN' if 'UNKNOWN' in vs else 'UNSUPPORTED'))
(d/'fwd.log').write_text(cat['fwd']); (d/'bwd.log').write_text(cat['bwd'])
res = {'description': desc, 'cmds': cmds, 'bounded': False, 'unroll': 0, 'functions': funcs, 'verdict': overall}
(d/'result.json').write_text(json.dumps(res, indent=2)); print(json.dumps(funcs), overall)
