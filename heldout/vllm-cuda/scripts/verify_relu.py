"""Volta checks (secondary result): baseline activation_kernel<float, relu_squared,
use_vec=true, use_256b=false> vs candidate activation_flat_vec_kernel<float,
relu_squared>, for the hidden sizes whose fp32 rows take the flat path
(d / 4 > 1024): d = 9728 and 12288, plus controls.

Scope: num_tokens = 1, both kernels launched with ONE CTA (baseline block
min(d/4, 1024) as dispatched; candidate block 128 as dispatched, grid 1 instead
of the production min(ceil(d/4/128), 8*SMs) CTAs). Volta executes CTA 0 only,
so this covers the per-element computation over a whole row; the production
multi-CTA partition of the flat index space is not formally covered.
"""
import hashlib, json, re, shutil
from pathlib import Path
from record import run

ROOT = Path(__file__).resolve().parent.parent
VOLTA = Path('/srv/home/hantaolou/code/veriop/cuda/repos/volta/target/release/volta')
OLD = ROOT / 'ptx/baseline/activation_kernels.ptx'
NEW = ROOT / 'ptx/cand-relu/activation_kernels.ptx'
OUT = ROOT / 'volta/relu'
K1 = '_ZN4vllm17activation_kernelIfXadL_ZNS_19relu_squared_kernelIfEET_RKS2_EELb1ELb0EEEvPS2_PS3_i'
K2 = '_ZN4vllm26activation_flat_vec_kernelIfXadL_ZNS_19relu_squared_kernelIfEET_RKS2_EEEEvPS2_PS3_i'


def accepted(log, count):
    return (log.strip().splitlines()[-1:] == ['EQUIVALENT']
            and re.search(rf'^VC check: .* elements: {count}$', log, re.M) is not None)


def main():
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)
    results = []
    for d, inplace in [(9728, False), (12288, False), (9728, True), (12288, True), (16384, False)]:
        name = f'relu-fp32-d{d}' + ('-inplace' if inplace else '')
        b1 = min(d // 4, 1024)
        arrays = [f'x:0x100000:4:{d}:inout'] if inplace else [f'in:0x100000:4:{d}:in', f'out:0x200000:4:{d}:out']
        outname = 'x' if inplace else 'out'
        params = [f'ptr:{outname}', 'ptr:x' if inplace else 'ptr:in', f'int:{d}']
        cfg = ['-g', '1', '--dyn-shared', '16']
        for a in arrays:
            cfg += ['--array', a]
        for p in params:
            cfg += ['--param', p]
        cmd = [VOLTA, '--no-log-file', 'compare', OLD, NEW, '--kernel1', K1, '--kernel2', K2,
               '-b', str(b1), '--block2', '128', *cfg, '--check-array', outname, '--sample', '0', '--no-profile']
        rc = run(OUT / name, cmd)
        ok = rc == 0 and accepted((OUT / f'{name}.log').read_text(), d)
        safety = {}
        for label, ptx, k, b in [('baseline', OLD, K1, b1), ('candidate', NEW, K2, 128)]:
            prefix = OUT / f'{name}-{label}-safety'
            rc2 = run(prefix, [VOLTA, '--no-log-file', 'analyze', ptx, '-k', k, '-b', str(b), *cfg,
                               '--print-outputs', '0', '--no-profile'])
            slog = prefix.with_suffix('.log').read_text()
            safety[label] = dict(returncode=rc2, race_free='no data races or deadlocks detected' in slog,
                                 written=f"output '{outname}': {d} element(s) written" in slog)
        results.append(dict(name=name, d=d, inplace=inplace, baseline_block=b1, candidate_block=128, grid=1,
                            dispatched_in_production=(d // 4 > 1024), arrays=arrays, params=params,
                            equivalent=ok, safety=safety,
                            safety_ok=all(s['returncode'] == 0 and s['race_free'] and s['written'] for s in safety.values())))
        print(name, ok, results[-1]['safety_ok'], flush=True)
    summary = dict(all_equivalent=all(r['equivalent'] for r in results), all_safe=all(r['safety_ok'] for r in results),
                   volta_binary_sha256=hashlib.sha256(VOLTA.read_bytes()).hexdigest(),
                   ptx_sha256={p.name + ':' + p.parent.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in (OLD, NEW)},
                   kernels=dict(baseline=K1, candidate=K2), instances=results)
    (OUT / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print('ALL EQUIVALENT' if summary['all_equivalent'] else 'FAILURES', summary['all_safe'])


if __name__ == '__main__':
    main()
