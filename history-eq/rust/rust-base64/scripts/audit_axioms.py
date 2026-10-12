#!/usr/bin/env python3
"""Audit `#print axioms` output in work/<short>/proof*.log.
Allowed: propext, Classical.choice, Quot.sound, and `axiom` declarations that Aeneas generated
(external/opaque Rust items) in lean/C<short>/**/<Gen>.lean. Also flags errors / sorry in the logs.
Writes work/axiom-audit.txt and exits non-zero on any violation."""
import re, sys
from pathlib import Path

R = Path('/srv/home/hantaolou/code/veriop/history-eq/rust/rust-base64')
STD = {'propext', 'Classical.choice', 'Quot.sound'}
# pre-existing opaque declarations of the Aeneas Lean library itself
AENEAS_LIB = {'core.fmt.Formatter'}
bad = False
out = []
for log in sorted(R.glob('work/*/proof*.log')):
    short = log.parent.name
    gen = set()
    for f in (R / 'lean' / f'C{short}').glob('*/*.lean'):
        ns = None
        for line in f.read_text().splitlines():
            m = re.match(r'namespace (\S+)', line)
            if m:
                ns = m.group(1)
            m = re.match(r'axiom (\S+)', line)
            if m and ns:
                gen.add(f'{ns}.{m.group(1)}')
    text = log.read_text()
    errs = [l for l in text.splitlines() if re.search(r': error|sorryAx|declaration uses .sorry', l)]
    for m in re.finditer(r"'([^']+)' depends on axioms: \[([^\]]*)\]", text, re.S):
        thm, axs = m.group(1), [a.strip() for a in m.group(2).split(',') if a.strip()]
        extra = [a for a in axs if a not in STD and a not in gen and a not in AENEAS_LIB]
        status = 'OK' if not extra else 'VIOLATION ' + ', '.join(extra)
        bad |= bool(extra)
        out.append(f'{short} {thm}: {status} ({len(axs)} axioms: {", ".join(a for a in axs if a not in STD) or "std only"})')
    for m in re.finditer(r"'([^']+)' does not depend on any axioms", text):
        out.append(f'{short} {m.group(1)}: OK (no axioms)')
    if errs:
        bad = True
        out.append(f'{short} {log.name}: ERRORS/SORRY: {errs[:3]}')
for pf in sorted(R.glob('lean/C*/Proof*.lean')):
    src = re.sub(r'--.*', '', pf.read_text())
    src = re.sub(r'/-.*?-/', '', src, flags=re.S)
    hits = re.findall(r'\b(sorry|admit|axiom|native_decide|bv_decide|implemented_by)\b', src)
    out.append(f'{pf.relative_to(R)} source scan: ' + ('clean' if not hits else 'FORBIDDEN ' + ','.join(sorted(set(hits)))))
    bad |= bool(hits)
(R / 'work/axiom-audit.txt').write_text('\n'.join(out) + '\n')
print('\n'.join(out))
sys.exit(1 if bad else 0)
