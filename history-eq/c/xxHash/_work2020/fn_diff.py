#!/usr/bin/env python3
"""fn_diff.py RESULT_DIR : per target_* function, report whether old.ll/new.ll bodies are identical
(after stripping metadata attachments / attribute-group numbers)."""
import re, sys, json
from pathlib import Path
def funcs(text):
    out = {}; cur = None; buf = []
    for line in text.splitlines():
        m = re.match(r'^define .*?@([\w.$]+)\(', line)
        if m: cur = m.group(1); buf = [line]; continue
        if cur is not None:
            buf.append(line)
            if line.startswith('}'):
                out[cur] = buf; cur = None
    return out
def norm(lines):
    s = '\n'.join(lines)
    s = re.sub(r', ![\w.]+ ![0-9]+', '', s)
    s = re.sub(r'#[0-9]+', '#A', s)
    s = re.sub(r'!([0-9]+)', '!M', s)
    return s
d = Path(sys.argv[1])
o = funcs((d/'old.ll').read_text()); n = funcs((d/'new.ll').read_text())
res = {}
for k in sorted(set(o) | set(n)):
    if not k.startswith('target_'): continue
    if k not in o or k not in n: res[k] = 'missing'; continue
    res[k] = 'identical' if norm(o[k]) == norm(n[k]) else 'differs'
print(json.dumps(res))
(d/'ir_diff.json').write_text(json.dumps(res, indent=1))
