#!/usr/bin/env python3
"""[group-D copy of c/xxHash/_work2020/xx_alive.py; changes: (1) parameter attributes such as
`nonnull`/`noundef`/`align N`/`dereferenceable(N)` on the asm operand are dropped when the empty asm
guard is rewritten to `freeze` (the original produced `freeze ptr nonnull %x`, which does not parse); (2) the parameter attribute `initializes((a,b))` is stripped (only weakens assumptions; this Alive2 pin crashes on it with a Z3 sort error); (3) noalias.scope.decl calls are removed again after metadata stripping (calls carrying !noalias attachments were missed); (4) `memory(...)` is removed from attribute groups of defined functions (Alive2 otherwise treats reads of constant globals such as XXH3_kSecret as UB under memory(argmem/inaccessiblemem) -> vacuous proofs); (5) optional env XX_ALIVE_EXTRA = extra alive-tv flags (used for --func=<target>).]
xxHash-2020on wrapper around tools/alive_check.py (does NOT modify the shared tool).

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
        ty = re.sub(r'\s+(nonnull|noundef|align \d+|dereferenceable(_or_null)?\(\d+\)|signext|zeroext)\b', '', ' ' + m.group(3).strip()).strip()
        return f'{m.group(1)} = freeze {ty} {m.group(4)}'
    text = ASM_RE.sub(rep, text)
    text = re.sub(r'^\s*(tail )?call void @llvm\.experimental\.noalias\.scope\.decl\(metadata ![0-9]+\)\s*\n', '', text, flags=re.M)
    text = re.sub(r', !(alias\.scope|noalias) ![0-9]+', '', text)
    # [group-D] drop the `initializes((a, b))` parameter attribute (LLVM 19+): it only adds an assumption,
    # and this Alive2 pin crashes on it ("Severe Z3 error ... bvudiv sort mismatch").
    text = re.sub(r' initializes\(\([0-9, ()]*\)\)', '', text)
    # [group-D] decl calls that carried !noalias/!alias.scope attachments only match after those are stripped
    text = re.sub(r'^\s*(tail )?call void @llvm\.experimental\.noalias\.scope\.decl\(metadata ![0-9]+\)\s*\n', '', text, flags=re.M)
    # [group-D] drop `memory(...)` from the attribute groups of DEFINED functions: Alive2 treats a load from
    # a constant global (e.g. XXH3_kSecret) inside a function annotated memory(argmem/inaccessiblemem...)
    # as UB, which can make verification vacuous ("source is always UB"). Removing the attribute only
    # weakens assumptions (both sides); declarations (intrinsics, xxm_* models) keep theirs.
    gids = set()
    for line in re.findall(r'^define [^\n]*$', text, re.M):
        gids.update(re.findall(r'#(\d+)', line.split(')')[-1]))
    def _strip_mem(m):
        return m.group(0) if m.group(1) not in gids else re.sub(r' memory\([^)]*\)', '', m.group(0))
    text = re.sub(r'^attributes #(\d+) = \{.*\}$', _strip_mem, text, flags=re.M)
    text = re.sub(r'^(define [^\n]*?) memory\([^)]*\)', r'\1', text, flags=re.M)
    STATS.setdefault('asm_guard_rewrites', []).append(n)
    return text
ac.normalize = normalize
# [group-D addition] extra alive-tv flags from env XX_ALIVE_EXTRA (e.g. "--func=target_x" to verify only
# the target function pair; otherwise alive-tv also compares every other non-static function in the TU).
import os as _os
_orig_sh = ac.sh
def _sh(cmd, **kw):
    if cmd and str(cmd[0]).endswith('alive-tv') and _os.environ.get('XX_ALIVE_EXTRA'):
        cmd = [cmd[0]] + _os.environ['XX_ALIVE_EXTRA'].split() + list(cmd[1:])
    return _orig_sh(cmd, **kw)
ac.sh = _sh

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
