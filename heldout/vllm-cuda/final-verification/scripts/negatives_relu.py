"""Negative controls for the relu² sweeps (same driver and acceptance criteria, mutant as candidate).

  fp32-cta700    fp32 flat kernel, CTA 700 only: out = 2*relu(x) instead of relu(x)^2 for lane 0 of each
                 vector; config 16x16x9728 (T=256, G=1056, every candidate CTA has several chunks)
                 -> exactly the windows of candidate CTA 700 may fail
  bf16-cta1055   bf16 flat kernel, same mutation, last CTA (1055); config 16x16x12288
                 -> exactly the windows of candidate CTA 1055 may fail
  fp32-stride    fp32 flat kernel with grid stride (nctaid-1)*ntid instead of nctaid*ntid (real-valued
                 outputs unchanged per element, but CTAs overlap and the footprint differs); 16x16x9728
                 -> exactly the windows of candidate CTAs whose footprint changes must fail (footprint check)
"""
import json, subprocess, sys
from pathlib import Path
import sweep_relu as sr

H = sr.H
OUT = H / 'final-verification/negatives/relu'


def body_of(ptx, k):
    src = Path(ptx).read_text()
    start = src.index('.entry ' + k + '(')
    end = src.index('\n}\n', start)
    return src, start, end


def mutant(dt, edits, decl):
    src, start, end = body_of(sr.CAND[dt], sr.SYM[dt][1])
    b = src[start:end]
    assert b.count(decl) == 1
    b = b.replace(decl, decl + '\t.reg .pred \t%pmut;\n')
    for old, new in edits:
        assert b.count(old) == 1, old
        b = b.replace(old, new)
    return src[:start] + b + src[end:]


CTAID = '\tmov.u32 \t%r8, %ctaid.x;\n'
MUTANTS = {
    'fp32-cta700': ('fp32', [(CTAID, CTAID + '\tsetp.eq.s32 \t%pmut, %r8, 700;\n'),
                             ('\tmul.f32 \t%f12, %f2, %f2;\n', '\tmul.f32 \t%f12, %f2, %f2;\n\t@%pmut add.f32 \t%f12, %f2, %f2;\n')],
                    '\t.reg .b64 \t%rd<7>;\n', 'relu-fp32-16x16x9728$', ('cand', 700)),
    'bf16-cta1055': ('bf16', [(CTAID, CTAID + '\tsetp.eq.s32 \t%pmut, %r8, 1055;\n'),
                              ('\tmul.f32 \t%f2, %f17, %f17;\n', '\tmul.f32 \t%f2, %f17, %f17;\n\t@%pmut add.f32 \t%f2, %f17, %f17;\n')],
                     '\t.reg .b64 \t%rd<7>;\n', 'relu-bf16-16x16x12288$', ('cand', 1055)),
    'fp32-stride': ('fp32', [('\tmul.lo.s32 \t%r4, %r13, %r1;\n', '\tadd.s32 \t%r13, %r13, -1;\n\tmul.lo.s32 \t%r4, %r13, %r1;\n')],
                    '\t.reg .b64 \t%rd<7>;\n', 'relu-fp32-16x16x9728$', ('multichunk', None)),
}


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    res = {}
    for name in sys.argv[1:] or list(MUTANTS):
        dt, edits, decl, cfg, expect = MUTANTS[name]
        d = OUT / name
        d.mkdir(exist_ok=True)
        ptx = d / f'{name}.ptx'
        ptx.write_text(mutant(dt, edits, decl))
        subprocess.run([sys.executable, str(Path(__file__).parent / 'sweep_relu.py'), dt, '--cand', str(ptx),
                        '--out', str(d), '--only', cfg], check=False, capture_output=True)
        summ = json.loads((d / 'summary.json').read_text())
        (cname, c), = summ['configs'].items()
        rows = sr.sl.read_tsv(d / f'{cname}.tsv')[1]
        failing = {int(k) for k, r in rows.items() if r['pass'] != '1'}
        L = c['launch']
        _, cand = sr.model(L)
        if expect[0] == 'cand':
            want = {int(k) for k, r in rows.items() if int(r['cta_cand']) == expect[1]}
        else:
            # CTAs whose footprint under the mutant stride (G-1)*128 differs from the true one
            nv, G, vec = L['numel'] // L['vec'], L['G'], L['vec']

            def fp(c, step):
                runs, st = [], c * 128
                while st < nv:
                    runs.append((st * vec, min(st + 128, nv) * vec))
                    st += step * 128
                return sr.merge(runs)
            want = {int(k) for k, r in rows.items() if fp(int(r['cta_cand']), G) != fp(int(r['cta_cand']), G - 1)}
        example = ''
        if failing:
            lg = d / 'logs' / f'{cname}-{min(failing)}.log'
            if lg.exists():
                ls = [l for l in lg.read_text().splitlines() if l.strip()]
                pick = [l for l in ls if 'NOT EQUIVALENT' in l or 'error' in l]
                example = (pick or [l for l in ls if l.startswith('FOOTPRINT-RANGES: opt out')] or ls)[0][:240]
        res[name] = dict(config=cname, windows=c['windows'], windows_failing=len(failing), verdicts=c['verdicts'],
                         expected_failing_windows=len(want), rejected_exactly_as_expected=failing == want,
                         config_verdict_all_pass=c['all_pass'], example_failure=example)
        print(name, res[name], flush=True)
    prev = json.loads((OUT / 'summary.json').read_text()) if (OUT / 'summary.json').exists() else {}
    prev.update(res)
    (OUT / 'summary.json').write_text(json.dumps(prev, indent=1) + '\n')


if __name__ == '__main__':
    main()
