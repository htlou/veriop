#!/usr/bin/env python3
"""Complete the runner's empty-asm -> freeze rewrite (same modeling assumption as xx_alive.py) for cases its regex
misses: operand is a constant expression (e.g. `ptr nonnull readonly getelementptr (...)`) or carries param attributes.
   %r = [tail] call T asm [sideeffect] "", "=r,0"(T [attrs] V) [#n]   ->   %r = freeze T V
usage: asmfix.py in.ll out.ll"""
import re, sys
t = open(sys.argv[1]).read(); n = 0
pat = re.compile(r'^(\s*%[\w.]+) = (?:tail )?call (\S+) asm (?:sideeffect )?"", "=r,0"\((\S+) ((?:(?:nonnull|readonly|noundef) )*)(.*?)\)(?: #\d+)?$', re.M)
def rep(m):
    global n; n += 1
    assert m.group(2) == m.group(3)
    return f'{m.group(1)} = freeze {m.group(2)} {m.group(5)}'
t = pat.sub(rep, t); open(sys.argv[2], 'w').write(t)
print(sys.argv[1], 'asm rewritten:', n, 'remaining asm:', len(re.findall(r' asm ', t)))
