"""Volta equivalence checks: original conv2d_dw_kernel<T,Layout> vs candidate conv2d_dw_kernel_fixed<T,cwhn,K,K>.

For every instance x {f32,f16 weights} x {whcn,cwhn}: one `volta compare` (all checked elements, --sample 0),
and one `volta analyze` per side (race/deadlock safety + output footprint). Instances use the real launch
configuration (block 256, grid = ceil(total/256)); Volta symbolically executes CTA 0 only, so for instances
with total <= 256 outputs the complete output is checked, otherwise the first 256 outputs (CTA 0).
Also runs negative controls that must NOT be accepted. Evidence is never overwritten (record.py).
"""
import hashlib, json, re, sys
from pathlib import Path
from record import run as record_run

SUMMARIZE_ONLY = '--summarize-only' in sys.argv  # re-derive summary.json from existing evidence, run nothing


def run(prefix, cmd):
    if SUMMARIZE_ONLY:
        meta = json.loads(Path(prefix).with_suffix('.json').read_text())
        assert meta['command'] == list(map(str, cmd)), prefix
        return meta['returncode']
    return record_run(prefix, cmd)

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'volta'
VOLTA = Path('/srv/home/hantaolou/code/veriop/cuda/repos/volta/target/release/volta')
OLD = ROOT / 'ptx/conv2d-dw-baseline.ptx'
NEW = ROOT / 'ptx/conv2d-dw-candidate.ptx'
SIG = 'EvPKfPKT_Pfiiiiiiiiiiiiii'

INSTANCES = [  # name, W, H, C, N, K, stride, pad, dilation
    ('perf-512x512x256-k3s1p1', 512, 512, 256, 1, 3, 1, 1, 1),
    ('perf-112x112x32-k3s1p1', 112, 112, 32, 1, 3, 1, 1, 1),
    ('perf-56x56x128-k5s2p2', 56, 56, 128, 1, 5, 2, 2, 1),
    ('eval-17x34x9-k3s1p0', 17, 34, 9, 1, 3, 1, 0, 1),
    ('eval-32x8x64-k3s2p1', 32, 8, 64, 1, 3, 2, 1, 1),
    ('full-8x8x2x2-k3s1p1', 8, 8, 2, 2, 3, 1, 1, 1),
    ('full-11x11x3x2-k5s2p2', 11, 11, 3, 2, 5, 2, 2, 1),
    ('full-9x7x4-k3s1p2d2', 9, 7, 4, 1, 3, 1, 2, 2),
    ('full-12x10x2-k5s1p4d2', 12, 10, 2, 1, 5, 1, 4, 2),
    ('full-13x13x3x2-k5s3p1', 13, 13, 3, 2, 5, 3, 1, 1),
    ('full-7x5x3x3-k3s2p0', 7, 5, 3, 3, 3, 2, 0, 1),
]


def old_sym(t, cwhn):
    return f'_Z16conv2d_dw_kernelI{t}11{"cwhn" if cwhn else "whcn"}_layout{SIG}'


def new_sym(t, cwhn, k):
    return f'_Z22conv2d_dw_kernel_fixedI{t}Lb{int(cwhn)}ELi{k}ELi{k}E{SIG}'


def config(W, H, C, N, K, s, p, d, wbytes):
    OW = (W + 2 * p - d * (K - 1) - 1) // s + 1
    OH = (H + 2 * p - d * (K - 1) - 1) // s + 1
    total = N * C * OH * OW
    grid = (total + 255) // 256
    arrays = [f'in:0x10000000:4:{N*C*H*W}:in', f'w:0x1000:{wbytes}:{C*K*K}:in', f'out:0x40000000:4:{total}:out']
    params = ['ptr:in', 'ptr:w', 'ptr:out'] + [f'int:{v}' for v in (W, H, OW, OH, K, K, s, s, p, p, d, d, C, N)]
    args = ['-b', '256', '-g', str(grid)]
    for a in arrays:
        args += ['--array', a]
    for q in params:
        args += ['--param', q]
    return dict(OW=OW, OH=OH, total=total, grid=grid, arrays=arrays, params=params,
                checked=min(total, 256)), args


def accepted(log, count):
    return (log.strip().splitlines()[-1:] == ['EQUIVALENT']
            and re.search(rf'^VC check: .* elements: {count}$', log, re.M) is not None)


def main():
    OUT.mkdir(exist_ok=True)
    checks = []
    for (name, W, H, C, N, K, s, p, d) in INSTANCES:
        for t, wbytes in (('f', 4), ('6__half', 2)):
            for cwhn in (False, True):
                inst, args = config(W, H, C, N, K, s, p, d, wbytes)
                tag = f'{name}-{"f16" if wbytes == 2 else "f32"}-{"cwhn" if cwhn else "whcn"}'
                k1, k2 = old_sym(t, cwhn), new_sym(t, cwhn, K)
                cmd = [VOLTA, '--no-log-file', 'compare', OLD, NEW, '--kernel1', k1, '--kernel2', k2, *args,
                       '--check-array', 'out', '--sample', '0']
                rc = run(OUT / tag, cmd)
                ok = rc == 0 and accepted((OUT / f'{tag}.log').read_text(), inst['checked'])
                safety = {}
                for label, ptx, k in (('reference', OLD, k1), ('candidate', NEW, k2)):
                    pre = OUT / f'{tag}-{label}-safety'
                    rc2 = run(pre, [VOLTA, '--no-log-file', 'analyze', ptx, '-k', k, *args,
                                    '--print-outputs', '0', '--no-profile'])
                    log = pre.with_suffix('.log').read_text()
                    safety[label] = (rc2 == 0 and 'no data races or deadlocks detected' in log
                                     and f"output 'out': {inst['checked']} element(s) written" in log)
                inst.update(name=tag, W=W, H=H, C=C, N=N, K=K, stride=s, pad=p, dilation=d,
                            weights='f16' if wbytes == 2 else 'f32', layout='cwhn' if cwhn else 'whcn',
                            original_kernel=k1, candidate_kernel=k2, equivalent=ok,
                            complete_output=inst['total'] <= 256, safety=safety)
                checks.append(inst)
                print(tag, 'EQUIVALENT' if ok else 'FAILED', safety, flush=True)
    # negative controls. `expect` is the outcome the CTA-0 model predicts:
    #  - layout swap: different semantics in every element -> NOT EQUIVALENT;
    #  - off-by-one mutant on a full-output instance: reads one element past the right image edge -> rejected
    #    (Volta reports the out-of-bounds read, or NOT EQUIVALENT);
    #  - same mutant on the 512x512 instance: the bug only touches output column x=511, outside CTA 0's
    #    256 outputs, so a CTA-0-only check is EXPECTED to accept it. This documents the scope limit.
    # A Volta configuration error (e.g. wrong element width) is never counted as a rejection.
    mutant = OUT / 'mutant/conv2d-dw-mutant-offbyone.ptx'  # candidate with `in_x_idx <= in_w`
    negatives = []
    for tag, k1, k2, inst, ptx2, expect in [
        ('neg-layout-swap', old_sym('f', False), new_sym('f', True, 3), INSTANCES[5], NEW, 'rejected'),
        ('neg-mutant-offbyone-full', old_sym('f', False), new_sym('f', False, 3), INSTANCES[5], mutant, 'rejected'),
        ('neg-mutant-offbyone-perf512', old_sym('f', False), new_sym('f', False, 3), INSTANCES[0], mutant, 'accepted'),
    ]:
        inst_cfg, args = config(*inst[1:], 4)
        rc = run(OUT / tag, [VOLTA, '--no-log-file', 'compare', OLD, ptx2, '--kernel1', k1, '--kernel2', k2, *args,
                             '--check-array', 'out', '--sample', '0'])
        log = (OUT / f'{tag}.log').read_text()
        if rc == 0 and accepted(log, inst_cfg['checked']):
            outcome = 'accepted'
        elif rc != 0 and ('NOT EQUIVALENT' in log or 'out-of-bounds Global access' in log):
            outcome = 'rejected'
        else:
            outcome = 'error'
        reason = [l for l in log.splitlines() if l.startswith(('NOT EQUIVALENT', 'error:', 'EQUIVALENT'))]
        negatives.append(dict(name=tag, kernel1=k1, kernel2=str(k2), ptx2=str(ptx2), instance=inst[0],
                              returncode=rc, outcome=outcome, expected=expect, as_expected=outcome == expect,
                              verdict_line=reason[-1] if reason else None))
        print(tag, outcome, '(expected)' if outcome == expect else f'(UNEXPECTED, wanted {expect})', flush=True)
    summary = dict(
        all_equivalent=all(c['equivalent'] for c in checks),
        all_safe=all(all(c['safety'].values()) for c in checks),
        negatives_as_expected=all(n['as_expected'] for n in negatives),
        model='Volta: PTX symbolic execution of CTA 0; floats as reals (not IEEE); concrete shapes/params',
        volta_binary_sha256=hashlib.sha256(VOLTA.read_bytes()).hexdigest(),
        ptx_sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in (OLD, NEW)},
        n_comparisons=len(checks), checks=checks, negative_controls=negatives)
    (OUT / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print({k: summary[k] for k in ('all_equivalent', 'all_safe', 'negatives_as_expected', 'n_comparisons')})
    return 0 if summary['all_equivalent'] and summary['all_safe'] and summary['negatives_as_expected'] else 1


if __name__ == '__main__':
    sys.exit(main())
