#!/usr/bin/env python3
# mkresult.py DIR FUNC "description"  -> DIR/result.json summarizing DIR/fwd.log, DIR/bwd.log (manual alive-tv runs)
import sys, json, re
from pathlib import Path
d = Path(sys.argv[1]); f = sys.argv[2]; desc = sys.argv[3]
def st(log):
    t = (d/log).read_text()
    if re.search(r'^\s*1 correct transformations', t, re.M): return 'correct'
    if re.search(r'^\s*1 incorrect transformations', t, re.M): return 'incorrect'
    if re.search(r'^\s*1 failed-to-prove', t, re.M): return 'failed'
    return 'error'
fw, bw = st('fwd.log'), st('bwd.log')
v = 'EQUIV' if fw == bw == 'correct' else ('NOT_EQUIV' if 'incorrect' in (fw, bw) else ('UNKNOWN' if 'failed' in (fw, bw) else 'UNSUPPORTED'))
r = {'description': desc, 'fwd_cmd': (d/'fwd.log').read_text().splitlines()[0], 'bwd_cmd': (d/'bwd.log').read_text().splitlines()[0],
     'bounded': False, 'unroll': 0, 'functions': {f: {'verdict': v, 'fwd': fw, 'bwd': bw}}, 'verdict': v}
(d/'result.json').write_text(json.dumps(r, indent=2)); print(json.dumps(r['functions']))
