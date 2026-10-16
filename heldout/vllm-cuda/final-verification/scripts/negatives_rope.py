"""Negative controls for the rope sweep (same driver, same acceptance criteria, mutant as candidate).

Mutants of the candidate bf16 kernel rotary_embedding_neox_vec4_kernel<bf16> (inverse=0 path):
  cta37         CTA 37 only: x' = cos*x + sin*y instead of cos*x - sin*y          -> only CTA 37 may fail
  cta31000      same, CTA 31000 only (run on the largest config, 32768 CTAs)        -> only CTA 31000 may fail
  row-plus-1    reads cache row pos+1 (in range except for pos = 8191)              -> every CTA fails
  row-stride16  reads cache[16*pos + j] instead of cache[32*pos + j] (always in range) -> every CTA fails
  pos-branch    branches on pos == 1234 (skips all work for that one position)      -> every CTA fails
  pos-in-data   adds float(pos) to an output                                         -> every CTA fails
  pos-narrow    round-trips pos through a 16-bit register (harmless for pos < 8192,
                but outside the extension's exact-arithmetic fragment)               -> every CTA fails
  pos-float-add address arithmetic through add.f64 on pos's bit pattern               -> every CTA fails
  cache-write   stores into the cos/sin cache row it reads                          -> every CTA fails
  cache-write-concrete stores into cache row 0 at a concrete address               -> every CTA fails
  pos-other-token reads positions[t+1] instead of positions[t]                       -> every CTA fails
  ieee-unfused  y' = fma(sin, x, cos*y) replaced by sin*x + cos*y (real-equal,
                IEEE-different): EQUIVALENT but not SYNTACTIC                        -> every CTA fails
"""
import json, subprocess, sys
from pathlib import Path
import sweep_rope as sr

H = sr.H
OUT = H / 'final-verification/negatives/rope'
src = sr.NEW.read_text()
start = src.index('.entry ' + sr.K2)
end = src.index('\n}\n', start)
body = src[start:end]
DECL = '\t.reg .b64 \t%rd<41>;\n'
assert DECL in body
EXTRA = '\t.reg .pred \t%pmut;\n\t.reg .f32 \t%fmut;\n\t.reg .b16 \t%rsmut;\n\t.reg .f64 \t%fdm;\n'
LD_POS = '\tld.global.nc.u64 \t%rd21, [%rd20];\n'
SUB_X = '\tsub.f32 \t%f41, %f61, %f62;\n'      # inverse=0 path, x' of lane 0
FMA_Y = '\tfma.rn.f32 \t%f42, %f4, %f39, %f63;\n'  # inverse=0 path, y' of lane 0
CTAID = '\tmov.u32 \t%r16, %ctaid.x;\n'
MUL_ROW = '\tmul.lo.s64 \t%rd4, %rd21, %rd24;\n'
for s in (LD_POS, SUB_X, FMA_Y, CTAID, MUL_ROW):
    assert body.count(s) == 1, s


def mutant(edits):
    b = body.replace(DECL, DECL + EXTRA)
    for old, new in edits:
        assert b.count(old) == 1, old
        b = b.replace(old, new)
    return src[:start] + b + src[end:]


def cta_mut(k):
    return [(CTAID, CTAID + f'\tsetp.eq.s32 \t%pmut, %r16, {k};\n'),
            (SUB_X, SUB_X + '\t@%pmut add.f32 \t%f41, %f61, %f62;\n')]


MUTANTS = {
    'cta37': (cta_mut(37), 'rope-1x64x32$', [37]),
    'cta31000': (cta_mut(31000), 'rope-64x512x48$', [31000]),
    'row-plus-1': ([(LD_POS, LD_POS + '\tadd.s64 \t%rd21, %rd21, 1;\n')], 'rope-1x64x32$', 'all'),
    'row-stride16': ([(MUL_ROW, '\tshl.b64 \t%rd4, %rd21, 4;\n')], 'rope-1x64x32$', 'all'),
    'pos-branch': ([(LD_POS, LD_POS + '\tsetp.eq.s64 \t%pmut, %rd21, 1234;\n\t@%pmut bra \t$L__BB1_6;\n')],
                   'rope-1x64x32$', 'all'),
    'pos-in-data': ([(LD_POS, LD_POS + '\tcvt.rn.f32.s64 \t%fmut, %rd21;\n'),
                     (SUB_X, SUB_X + '\tadd.f32 \t%f41, %f41, %fmut;\n')], 'rope-1x64x32$', 'all'),
    'pos-narrow': ([(LD_POS, LD_POS + '\tcvt.u16.u64 \t%rsmut, %rd21;\n\tcvt.u64.u16 \t%rd21, %rsmut;\n')],
                   'rope-1x64x32$', 'all'),
    'pos-float-add': ([(LD_POS, LD_POS + '\tmov.b64 \t%fdm, %rd21;\n\tadd.f64 \t%fdm, %fdm, 0d0000000000000000;\n'
                                          '\tmov.b64 \t%rd21, %fdm;\n')], 'rope-1x64x32$', 'all'),
    'cache-write': ([(LD_POS, LD_POS + '\tmov.u16 \t%rsmut, 0;\n'),
                     ('\tld.global.nc.v4.u16 {%rs44,%rs45,%rs46,%rs47}, [%rd26];\n',
                      '\tld.global.nc.v4.u16 {%rs44,%rs45,%rs46,%rs47}, [%rd26];\n\tst.global.u16 \t[%rd26], %rsmut;\n')],
                    'rope-1x64x32$', 'all'),
    'cache-write-concrete': ([(LD_POS, LD_POS + '\tmov.u16 \t%rsmut, 0;\n\tst.global.u16 \t[%rd12], %rsmut;\n')],
                             'rope-1x64x32$', 'all'),
    'pos-other-token': ([('\tadd.s64 \t%rd20, %rd18, %rd19;\n', '\tadd.s64 \t%rd20, %rd18, %rd19;\n\tadd.s64 \t%rd20, %rd20, 8;\n')],
                        'rope-1x64x32$', 'all'),
    'ieee-unfused': ([(FMA_Y, '\tmul.f32 \t%fmut, %f4, %f39;\n\tadd.f32 \t%f42, %fmut, %f63;\n')],
                     'rope-1x64x32$', 'all'),
}


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    only = sys.argv[1:] or list(MUTANTS)
    res = {}
    for name in only:
        edits, cfg, expect = MUTANTS[name]
        d = OUT / name
        d.mkdir(exist_ok=True)
        ptx = d / f'{name}.ptx'
        ptx.write_text(mutant(edits))
        subprocess.run([sys.executable, str(Path(__file__).parent / 'sweep_rope.py'), '--cand', str(ptx),
                        '--out', str(d), '--only', cfg], check=True, capture_output=True)
        summ = json.loads((d / 'summary.json').read_text())
        (cname, c), = summ['configs'].items()
        _, rows = sr.sl.read_tsv(d / f'{cname}.tsv')
        failing = sorted(int(k) for k, r in rows.items() if r['pass'] != '1')
        want = list(range(c['grid'])) if expect == 'all' else expect
        verdicts = c['verdicts']
        example = next(iter(sorted((d / 'logs').glob('*.log'))), None) if (d / 'logs').exists() else None
        last = ''
        if failing:
            lg = d / 'logs' / f'{cname}-{failing[0]}.log'
            if lg.exists():
                ls = [l for l in lg.read_text().splitlines() if l.strip()]
                pick = [l for l in ls if 'NOT EQUIVALENT' in l or 'error' in l]
                pick = pick or [l for l in ls if l.startswith('SYNTACTIC')]
                last = (pick or ls)[0][:240]
        res[name] = dict(config=cname, grid=c['grid'], verdicts=verdicts, n_failing=len(failing),
                         failing_ctas=failing if len(failing) <= 10 else f'{len(failing)} CTAs',
                         expected_failing=expect if expect != 'all' else 'all',
                         rejected_exactly_as_expected=failing == want, example_failure=last)
        print(name, res[name], flush=True)
    prev = json.loads((OUT / 'summary.json').read_text()) if (OUT / 'summary.json').exists() else {}
    prev.update(res)
    (OUT / 'summary.json').write_text(json.dumps(prev, indent=1) + '\n')


if __name__ == '__main__':
    main()
