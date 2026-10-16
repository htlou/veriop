"""Static PTX audit for the bit-exactness argument.

Claim: if (a) for every output element Volta's symbolic expressions of the two kernels are syntactically
identical (sweep: SYNTACTIC n/n) and (b) in both kernels every instruction that produces a floating-point
value is one of: an exact load (ld.global.nc.f32, or ld.global.nc.u16 of an f16 bit pattern), the exact
conversion cvt.f32.f16, the constant move `mov.f32 %f, 0f00000000` (+0.0), or `fma.rn.ftz.f32`, then the two
kernels compute every output with the same sequence of IEEE fma.rn.ftz.f32 operations on the same operands,
hence bit-identical results for ALL input bit patterns (incl. NaN/Inf/subnormals).
Why (a)+(b) suffice: Volta's arena simplifies only constant-zero multiplicands (fma(0,b,c)->c), constant
folding of all-constant operands, and x+0 / x*1 forms; with (b) the only constant is the +0.0 accumulator
seed in the addend position, and both multiplicands are always loaded (symbolic) values, so no rule can fire:
each Fma node is exactly one executed fma.rn.ftz.f32 with the recorded operand order. This script checks (b).
"""
import json, re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ALLOWED = {'ld.global.nc.f32', 'ld.global.nc.u16', 'cvt.f32.f16', 'mov.f32', 'fma.rn.ftz.f32'}
res = {}
for side in ('baseline', 'candidate'):
    text = (ROOT / f'ptx/conv2d-dw-{side}.ptx').read_text()
    for m in re.finditer(r'\.visible \.entry (\w+)\((.*?)\n}\n', text, re.S):
        ops, mov_srcs, other_f = Counter(), Counter(), []
        for raw in m.group(0).splitlines():
            l = raw.strip().strip('{}').strip()
            if l.startswith('@'):
                l = l.split(None, 1)[1]
            d = re.match(r'([a-z][\w.]*)\s+(%(?:f|rs|fd|h)\d+)\s*,\s*(.*?);', l)
            if d:
                ops[d.group(1)] += 1
                if d.group(1).startswith('mov'):
                    mov_srcs[d.group(3)] += 1
            # any other instruction mentioning a float type is listed for inspection
            elif re.match(r'[a-z][\w.]*\.(f16|f32|f64|bf16)\b', l) and not l.startswith(('st.global.f32', 'ld.param')):
                other_f.append(l)
        producers = set(ops)
        ok = producers <= ALLOWED and set(mov_srcs) <= {'0f00000000'} and not other_f
        res[f'{side}:{m.group(1)}'] = dict(float_producing_ops=dict(ops), mov_sources=dict(mov_srcs),
                                           other_float_instrs=other_f, conforms=ok)
summary = dict(all_conform=all(v['conforms'] for v in res.values()), allowed=sorted(ALLOWED), kernels=res)
(ROOT / 'volta-cta-evidence/ieee-ptx-audit.json').write_text(json.dumps(summary, indent=2) + '\n')
print('kernels', len(res), 'all conform:', summary['all_conform'])
