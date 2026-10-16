"""[VOLTA-EXT-DEPENDENT] Volta checks for the 16-bit relu_squared flat path:
baseline activation_kernel<T, relu², use_vec=true, use_256b=false> (128-bit loads,
whose PTX unpacks 32-bit words with `mov.b32 {lo,hi}` and repacks with
`mov.b32 r, {lo,hi}`) vs candidate activation_flat_vec_kernel<T, relu²>.
Upstream Volta rejects both PTX kernels; this uses the extended copy
volta-ext/ (patch: volta-ext.patch, Pack16/Unpack16 only).
Scope as verify_relu.py: num_tokens = 1, both kernels launched as one CTA."""
import hashlib, json, re, shutil
from pathlib import Path
from record import run

ROOT = Path(__file__).resolve().parent.parent
VOLTA = ROOT / 'volta-ext/target/release/volta'
OLD = ROOT / 'ptx/baseline/activation_kernels.ptx'
NEW = ROOT / 'ptx/cand-relu16/activation_kernels.ptx'
OUT = ROOT / 'volta/relu16-ext'
SYM = {
    'bf16': ('_ZN4vllm17activation_kernelIN3c108BFloat16EXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EELb1ELb0EEEvPS4_PS5_i',
             '_ZN4vllm26activation_flat_vec_kernelIN3c108BFloat16EXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EEEEvPS4_PS5_i'),
    'fp16': ('_ZN4vllm17activation_kernelIN3c104HalfEXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EELb1ELb0EEEvPS4_PS5_i',
             '_ZN4vllm26activation_flat_vec_kernelIN3c104HalfEXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EEEEvPS4_PS5_i'),
}


def accepted(log, count):
    return (log.strip().splitlines()[-1:] == ['EQUIVALENT']
            and re.search(rf'^VC check: .* elements: {count}$', log, re.M) is not None)


def cfg_for(d, inplace):
    arrays = [f'x:0x100000:2:{d}:inout'] if inplace else [f'in:0x100000:2:{d}:in', f'out:0x200000:2:{d}:out']
    outname = 'x' if inplace else 'out'
    params = [f'ptr:{outname}', 'ptr:x' if inplace else 'ptr:in', f'int:{d}']
    cfg = ['-g', '1', '--dyn-shared', '16']
    for a in arrays:
        cfg += ['--array', a]
    for p in params:
        cfg += ['--param', p]
    return cfg, outname, arrays, params


def main():
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)
    results = []
    for dt in ['bf16', 'fp16']:
        for d, inplace in [(9728, False), (12288, False), (9728, True), (12288, True), (16384, False)]:
            name = f'relu-{dt}-d{d}' + ('-inplace' if inplace else '')
            b1 = min(d // 8, 1024)
            cfg, outname, arrays, params = cfg_for(d, inplace)
            K1, K2 = SYM[dt]
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
            results.append(dict(name=name, dtype=dt, d=d, inplace=inplace, baseline_block=b1, candidate_block=128,
                                grid=1, dispatched_in_production=(d // 8 > 1024), arrays=arrays, params=params,
                                equivalent=ok, safety=safety,
                                safety_ok=all(s['returncode'] == 0 and s['race_free'] and s['written'] for s in safety.values())))
            print(name, ok, results[-1]['safety_ok'], flush=True)
    summary = dict(depends_on_volta_extension=True, all_equivalent=all(r['equivalent'] for r in results),
                   all_safe=all(r['safety_ok'] for r in results),
                   volta_binary=str(VOLTA), volta_binary_sha256=hashlib.sha256(VOLTA.read_bytes()).hexdigest(),
                   volta_ext_patch_sha256=hashlib.sha256((ROOT / 'volta-ext.patch').read_bytes()).hexdigest(),
                   ptx_sha256={f'{p.parent.name}/{p.name}': hashlib.sha256(p.read_bytes()).hexdigest() for p in (OLD, NEW)},
                   instances=results)
    (OUT / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print('ALL EQUIVALENT' if summary['all_equivalent'] else 'FAILURES', summary['all_safe'])


if __name__ == '__main__':
    main()
