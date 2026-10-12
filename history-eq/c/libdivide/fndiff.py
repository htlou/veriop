#!/usr/bin/env python3
"""fndiff.py DIR: per-function comparison of DIR/old.ll vs DIR/new.ll bodies (identical or not)."""
import re, sys
def funcs(p):
    out = {}; cur = None; buf = []
    for line in open(p):
        m = re.match(r'^define .*?@([\w.$]+)\(', line)
        if m: cur = m.group(1); buf = [re.sub(r'#\d+', '', line)]; continue
        if cur is not None:
            buf.append(re.sub(r'!\d+', '', line))
            if line.startswith('}'): out[cur] = ''.join(buf); cur = None
    return out
for d in sys.argv[1:]:
    o, n = funcs(d + '/old.ll'), funcs(d + '/new.ll')
    names = sorted(set(o) | set(n))
    print(d + ': ' + ' '.join(f"{k}={'same' if o.get(k)==n.get(k) else ('only-old' if k not in n else ('only-new' if k not in o else 'DIFF'))}" for k in names))
