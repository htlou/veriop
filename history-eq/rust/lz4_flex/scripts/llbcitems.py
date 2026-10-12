#!/usr/bin/env python3
"""llbcitems.py <short> <tag>: per-item comparison of normalised printed LLBC (run llbcdiff.sh first).
Prints items that differ / only on one side (crate-local items only)."""
import re, sys
W = f'/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/work/{sys.argv[1]}'
Tag = sys.argv[2][0].upper() + sys.argv[2][1:]
def items(side):
    t = open(f'{W}/{Tag}{side}.llbc.norm.txt').read()
    t = '\n'.join(l.rstrip() for l in t.splitlines())
    res = {}
    for blk in re.split(r'\n\n(?=\S)', t):
        lines = [l for l in blk.splitlines() if not l.startswith('#[')]
        if not lines: continue
        head = lines[0]
        m = re.search(r'(lz4_flex::[^\s(<]*(?:<[^>]*>)?[^\s(<]*)', head)
        if not m: continue
        key = re.sub(r"'\w+", "'", m.group(1))
        res[key] = res.get(key, '') + blk
    return res
o, n = items('Old'), items('New')
diff = sorted(k for k in o.keys() & n.keys() if o[k] != n[k])
print('differ:', diff)
print('old-only:', sorted(o.keys() - n.keys()))
print('new-only:', sorted(n.keys() - o.keys()))
print('identical:', len([k for k in o.keys() & n.keys() if o[k] == n[k]]))
