#!/usr/bin/env python3
"""onlytargets.py SRC DST name1 [name2..]: copy wrapper SRC to DST keeping only the single-line
target_* definitions whose names are listed (all other lines unchanged)."""
import re, sys
src, dst, names = sys.argv[1], sys.argv[2], set(sys.argv[3:])
out = ['// retry wrapper generated from %s: only %s (definitions identical)' % (src.split('/')[-1], ', '.join(sorted(names)))]
for l in open(src).read().split('\n'):
    m = re.search(r'\b(target_\w+)\s*\(', l)
    if m and '{' in l and not l.lstrip().startswith(('//', '#')) and '##' not in l:
        if m.group(1) not in names: continue
    out.append(l)
open(dst, 'w').write('\n'.join(out))
