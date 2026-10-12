#!/usr/bin/env python3
"""List non-intrinsic calls inside target_* functions of an .ll file (sanity: the
checked code must be fully inlined, otherwise Alive2 treats callees as uninterpreted)."""
import re, sys
for path in sys.argv[1:]:
    cur = None; out = {}
    for line in open(path):
        m = re.match(r'^define .*?@([\w.$]+)\(', line)
        if m: cur = m.group(1); continue
        if line.startswith('}'): cur = None; continue
        if cur and cur.startswith('target_'):
            for c in re.findall(r'\b(?:call|invoke)\b[^@]*@([\w.$]+)', line):
                if not c.startswith('llvm.'):
                    out.setdefault(cur, set()).add(c)
    print(path, {k: sorted(v) for k, v in out.items()} or 'no-calls')
