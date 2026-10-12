#!/usr/bin/env python3
"""xxHash-2020on wrapper around tools/alive_check.py (does NOT modify the shared tool).

Extra IR normalization, applied identically to old.ll and new.ll (recorded in xx_notes.json):
  1. Empty inline-asm optimization barriers (XXH_COMPILER_GUARD & friends), i.e.
       %r = call T asm [sideeffect] "", "=<c>,0,..."(T %v)
     are replaced by  %r = freeze T %v  (an opaque identity: semantically what an empty
     asm with an in/out register operand does).  Only *empty* asm strings are rewritten;
     real asm instructions (e.g. umaddl, vmulouw) are left in place and Alive2 rejects/approximates them.
  2. llvm.experimental.noalias.scope.decl calls and !alias.scope/!noalias attachments are dropped
     (only removes assumptions; same on both sides).
After the run, every target_* function is scanned for residual calls to non-intrinsic functions
(= harness not fully inlined, verdict would be meaningless) and residual inline asm, and old/new
target bodies are compared textually (identical / differs).
Usage: identical to alive_check.py.
"""
import sys, re, json, importlib.util
from pathlib import Path
spec = importlib.util.spec_from_file_location('alive_check', '/srv/home/hantaolou/code/veriop/history-eq/tools/alive_check.py')
ac = importlib.util.module_from_spec(spec); spec.loader.exec_module(ac)
_orig = ac.normalize
STATS = {}
ASM_RE = re.compile(r'(%[\w.]+) = (?:tail |notail |musttail )?call ([^@]*?) asm (?:sideeffect )?(?:alignstack )?(?:inteldialect )?"", "=[^,"]+,0[^"]*"\(([^()]*?) (%[\w.]+)\)(?: #[0-9]+)?')
def normalize(text):
    text = _orig(text)
    n = 0
    def rep(m):
        nonlocal n; n += 1
        return f'{m.group(1)} = freeze {m.group(2).strip()} {m.group(4)}'
    text = ASM_RE.sub(rep, text)
    text = re.sub(r'^\s*(tail )?call void @llvm\.experimental\.noalias\.scope\.decl\(metadata ![0-9]+\)\s*\n', '', text, flags=re.M)
    text = re.sub(r', !(alias\.scope|noalias) ![0-9]+', '', text)
    STATS.setdefault('asm_guard_rewrites', []).append(n)
    return text
ac.normalize = normalize

def funcs(text):
    out = {}; cur = None; buf = []
    for line in text.splitlines():
        m = re.match(r'^define .*?@([\w.$]+)\(', line)
        if m: cur = m.group(1); buf = [line]; continue
        if cur is not None:
            buf.append(line)
            if line.startswith('}'): out[cur] = buf; cur = None
    return out
def norm(lines):
    s = '\n'.join(lines)
    s = re.sub(r', ![\w.]+ ![0-9]+', '', s); s = re.sub(r'#[0-9]+', '#A', s); s = re.sub(r'!([0-9]+)', '!M', s)
    return s

if __name__ == '__main__':
    out = None
    for i, a in enumerate(sys.argv):
        if a == '--out': out = Path(sys.argv[i+1])
    try:
        ac.main()
    finally:
        notes = {'asm_guard_rewrites(old,new)': STATS.get('asm_guard_rewrites')}
        if out and (out/'old.ll').exists() and (out/'new.ll').exists():
            o = funcs((out/'old.ll').read_text()); n = funcs((out/'new.ll').read_text())
            tg = {}
            for k in sorted(set(o) | set(n)):
                if not k.startswith('target_'): continue
                e = {}
                if k in o and k in n: e['ir'] = 'identical' if norm(o[k]) == norm(n[k]) else 'differs'
                for side, fs in (('old', o), ('new', n)):
                    if k not in fs: e[side] = 'missing'; continue
                    body = '\n'.join(fs[k][1:])
                    calls = sorted(set(re.findall(r'call [^@]*@([\w.$]+)\(', body)))
                    bad = [c for c in calls if not c.startswith('llvm.') and c not in ('memcpy','memset','memcmp','memmove')]
                    if bad: e[side+'_residual_calls'] = bad
                    if ' asm ' in body: e[side+'_residual_asm'] = True
                tg[k] = e
            notes['targets'] = tg
            (out/'xx_notes.json').write_text(json.dumps(notes, indent=1))
            print('XXNOTES', json.dumps(notes))
