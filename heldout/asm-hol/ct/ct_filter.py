#!/usr/bin/env python3
"""Keep only lackey trace records produced by instructions inside [lo,hi)."""
import sys
lo, hi = int(sys.argv[1], 16), int(sys.argv[2], 16)
inside = False
for line in sys.stdin:
    if line.startswith('I '):
        a = int(line[2:].split(',')[0].strip(), 16)
        inside = lo <= a < hi
        if inside: sys.stdout.write(line)
    elif line[:1] == ' ' and line[1:2] in 'LSM' and inside:
        sys.stdout.write(line)
