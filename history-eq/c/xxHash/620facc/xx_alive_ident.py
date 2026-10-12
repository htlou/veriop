#!/usr/bin/env python3
"""Variant of c/xxHash/_work2020/xx_alive.py (E1 worker, 620facc): identical, except that EMPTY inline-asm
optimization barriers (XXH_COMPILER_GUARD/_W: `%r = call T asm "", "=w,0"(T %v)`) are rewritten to the exact
identity `%r = bitcast T %v to T` instead of `freeze T %v`.
Also accepts a global/constant operand (`ptr nonnull @XXH3_kSecret`, used by the kSecretPtr guard in
XXH3_initCustomSecret on aarch64), which the shared ASM_RE does not rewrite.  Modeling assumption: an empty asm with a tied
in/out register operand returns its input unchanged (same assumption as the freeze rewrite, minus the
poison-laundering that freeze adds; inputs here are never poison: noundef args copied into fresh buffers).
Reason: with freeze in the *source* program (bwd direction), Alive2 times out on the vector code."""
import sys, re, os, tempfile, importlib.util
from pathlib import Path
spec = importlib.util.spec_from_file_location('xx_alive', '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/xx_alive.py')
xa = importlib.util.module_from_spec(spec); spec.loader.exec_module(xa)
ac = xa.ac
# Same pattern as xx_alive.ASM_RE but confined to ONE line: the shared ASM_RE's `[^@]*?` / `[^()]*?` can span
# newlines, so a real asm (e.g. `call <2 x i64> asm "umlal ..."`, no '@') followed later by an empty guard asm gets
# matched as one span and the lines in between are deleted (observed on e701df3: "use of undefined value").
ASM_RE1 = re.compile(r'(%[\w.]+) = (?:tail |notail |musttail )?call ([^@\n]*?) asm (?:sideeffect )?(?:alignstack )?(?:inteldialect )?"", "=[^,"\n]+,0[^"\n]*"\(([^()\n]*?) ([%@][\w.]+)\)(?: #[0-9]+)?')
_base = xa._orig
def normalize(text):
    text = _base(text)
    n = 0
    def rep(m):
        nonlocal n; n += 1
        t = re.sub(r'\b(nonnull|noundef)\b', '', m.group(3)).strip()
        return f'{m.group(1)} = bitcast {t} {m.group(4)} to {t}'
    text = ASM_RE1.sub(rep, text)
    text = re.sub(r'^\s*(tail )?call void @llvm\.experimental\.noalias\.scope\.decl\(metadata ![0-9]+\)\s*\n', '', text, flags=re.M)
    text = re.sub(r', !(alias\.scope|noalias) ![0-9]+', '', text)
    xa.STATS.setdefault('asm_guard_rewrites', []).append(n)
    passes = os.environ.get('XX_REOPT')
    if passes:
        # Optional (env XX_REOPT=<opt pass pipeline>): re-run LLVM's own simplification on the guard-modeled IR,
        # identically on both sides (used so that loads from the 192-byte XXH3_kSecret through the formerly
        # asm-laundered pointer fold to constants; otherwise Alive2 drops the >128-byte initializer and only
        # reports "Large constant initializer removed"). Trust assumption: LLVM opt is correct on this IR.
        with tempfile.TemporaryDirectory() as td:
            Path(td, 'in.ll').write_text(text)
            r = ac.sh(['opt', '-S', f'-passes={passes}', str(Path(td, 'in.ll')), '-o', str(Path(td, 'out.ll'))])
            if r.returncode != 0:
                raise SystemExit('XX_REOPT opt failed: ' + r.stderr[:2000])
            text = _base(Path(td, 'out.ll').read_text())
        xa.STATS.setdefault('reopt', []).append(passes)
    return text
ac.normalize = normalize
if __name__ == '__main__':
    sys.argv[0] = 'xx_alive_ident.py'
    exec(compile(open('/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/xx_alive.py').read().split("if __name__ == '__main__':",1)[1].replace('\n    ', '\n'), 'main', 'exec'), {**xa.__dict__, 'ac': ac})
