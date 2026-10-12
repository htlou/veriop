#!/usr/bin/env python3
"""[group D] Source-level CPUID model for xxh_x86dispatch.c (applied IDENTICALLY to old and new).
Copies <side>/xxh_x86dispatch.c to <side>_model/xxh_x86dispatch_model.c and replaces ONLY the bodies of
XXH_cpuid() and XXH_xgetbv() (the only x86_64 inline asm in the file: `cpuid`, `xgetbv`) with calls to
xxm_cpuid(leaf, subleaf, reg) / xxm_xgetbv(), which the wrapper defines either as uninterpreted pure
(`__attribute__((const))`) external functions (symbolic CPU) or as a fixed CPU table.
Everything else in the file is untouched.  usage: mk_model.py <commit_dir>"""
import re, sys
from pathlib import Path
d = Path(sys.argv[1])
CPUID = '''static void XXH_cpuid(xxh_u32 eax, xxh_u32 ecx, xxh_u32* abcd)
{   /* [MODEL] inline-asm `cpuid` replaced by the wrapper's xxm_cpuid() */
    abcd[0] = xxm_cpuid(eax, ecx, 0);
    abcd[1] = xxm_cpuid(eax, ecx, 1);
    abcd[2] = xxm_cpuid(eax, ecx, 2);
    abcd[3] = xxm_cpuid(eax, ecx, 3);
}'''
XGETBV = '''static xxh_u64 XXH_xgetbv(void)
{   /* [MODEL] inline-asm `xgetbv` replaced by the wrapper's xxm_xgetbv() */
    return xxm_xgetbv();
}'''
def repl(src, head_re, body):
    m = re.search(head_re, src, re.M)
    assert m, head_re
    end = src.index('\n}\n', m.start()) + 2
    return src[:m.start()] + body + src[end:]
for side in ('old', 'new'):
    f = d / side / 'xxh_x86dispatch.c'
    if not f.exists():
        continue
    s = f.read_text()
    s = repl(s, r'^static void XXH_cpuid\(xxh_u32 eax, xxh_u32 ecx, xxh_u32\* abcd\)\n\{', CPUID)
    s = repl(s, r'^static xxh_u64 XXH_xgetbv\(void\)\n\{', XGETBV)
    out = d / (side + '_model'); out.mkdir(exist_ok=True)
    (out / 'xxh_x86dispatch_model.c').write_text(s)
    print(side, 'ok', s.count('__asm__'), 'asm left (i386-only cpuid_supported block expected)')
