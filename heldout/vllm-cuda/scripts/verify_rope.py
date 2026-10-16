"""Volta equivalence + safety checks: baseline rotary_embedding_kernel<T,T,true>
vs candidate rotary_embedding_neox_vec4_kernel<T> (vLLM v0.31.0 + patch).

Every instance runs `volta compare` over the complete written footprint of the
query and key arrays (--sample 0), plus a separate `volta analyze` safety run
for each side. Launch shapes mirror the host dispatch code exactly:
  baseline block  = min(num_heads * rot_dim / 2, 512)
  candidate block = min(roundup32((num_heads + num_kv_heads_if_key) * rot_dim / 8), 256)
Positions are a Volta `index` array (positions[t] = t), so CTA 0 (token 0)
reads cos_sin_cache row 0; Volta symbolically executes CTA 0 only.
"""
import hashlib
import json
import re
import shutil
from pathlib import Path

from record import run

ROOT = Path(__file__).resolve().parent.parent
import os
VOLTA = Path(os.environ.get('VOLTA', '/srv/home/hantaolou/code/veriop/cuda/repos/volta/target/release/volta'))
OLD = ROOT / 'ptx/baseline/pos_encoding_kernels.ptx'
NEW = ROOT / 'ptx/candidate/pos_encoding_kernels.ptx'
OUT = ROOT / os.environ.get('VOLTA_OUT', 'volta/rope')
SYM = {
    'bf16': ('_ZN4vllm23rotary_embedding_kernelIN3c108BFloat16ES2_Lb1EEEvPKlPT_S6_PKT0_illliiilb',
             '_ZN4vllm33rotary_embedding_neox_vec4_kernelIN3c108BFloat16EEEvPKlPT_S6_PKS5_illliiilb'),
    'fp16': ('_ZN4vllm23rotary_embedding_kernelIN3c104HalfES2_Lb1EEEvPKlPT_S6_PKT0_illliiilb',
             '_ZN4vllm33rotary_embedding_neox_vec4_kernelIN3c104HalfEEEvPKlPT_S6_PKS5_illliiilb'),
}


def accepted(log, count):
    return (log.strip().splitlines()[-1:] == ['EQUIVALENT']
            and re.search(rf'^VC check: .* elements: {count}$', log, re.M) is not None)


def instance(name, dtype, nh, nkv, hs, rd, key=True, offset=0, inverse=0, grid=1, benchmark=False):
    ed = rd // 2
    b1 = min(nh * ed, 512)
    items = (nh + (nkv if key else 0)) * (ed // 4)
    b2 = min((items + 31) // 32 * 32, 256)
    qs, ks = nh * hs, nkv * hs
    arrays = ['pos:0x100000:8:1:index', f'q:0x200000:2:{qs}:inout', f'cache:0x600000:2:{rd}:in']
    if key:
        arrays.insert(2, f'k:0x400000:2:{ks}:inout')
    params = ['ptr:pos', 'ptr:q', 'ptr:k' if key else 'int:0', 'ptr:cache', f'int:{rd}',
              f'int:{qs}', f'int:{ks if key else 0}', f'int:{hs}', f'int:{nh}', f'int:{nkv}',
              f'int:{hs}', f'int:{offset}', f'int:{inverse}']
    checks = ['q', 'k'] if key else ['q']
    count = (nh + (nkv if key else 0)) * rd
    return dict(name=name, dtype=dtype, used_by_official_benchmark=benchmark, num_heads=nh,
                num_kv_heads=nkv, head_size=hs, rot_dim=rd, key=key, rope_dim_offset=offset,
                inverse=inverse, grid=grid, baseline_block=b1, candidate_block=b2,
                arrays=arrays, params=params, check_arrays=checks, expected_elements=count,
                baseline_kernel=SYM[dtype][0], candidate_kernel=SYM[dtype][1])


INSTANCES = [
    # Exactly the specialization/launch used by benchmark_rope.py defaults
    # (bf16 query/key/cache, NeoX, head 128, rotary_dim 32, key present).
    instance('bench-bf16-h32', 'bf16', 32, 32, 128, 32, benchmark=True),
    instance('bench-bf16-h48', 'bf16', 48, 48, 128, 32, benchmark=True),
    instance('bench-bf16-h48-grid4', 'bf16', 48, 48, 128, 32, grid=4, benchmark=True),
    # Rest of the new dispatch envelope (not timed by the official benchmark).
    instance('fp16-h32', 'fp16', 32, 32, 128, 32),
    instance('fp16-h48', 'fp16', 48, 48, 128, 32),
    instance('bf16-gqa-32-8', 'bf16', 32, 8, 128, 32),
    instance('fp16-gqa-32-8', 'fp16', 32, 8, 128, 32),
    instance('bf16-fullrot-8-1', 'bf16', 8, 1, 128, 128),
    instance('fp16-fullrot-8-1', 'fp16', 8, 1, 128, 128),
    instance('bf16-nokey-32', 'bf16', 32, 32, 128, 32, key=False),
    instance('bf16-inverse-32', 'bf16', 32, 32, 128, 32, inverse=1),
    instance('fp16-inverse-32', 'fp16', 32, 32, 128, 32, inverse=1),
    instance('bf16-offset16-32', 'bf16', 32, 32, 128, 32, offset=16),
    instance('bf16-hs64-rd64-16-4', 'bf16', 16, 4, 64, 64),
    instance('bf16-h64-rd64-128-128', 'bf16', 64, 64, 128, 64),
]


def config_args(inst):
    args = ['-g', str(inst['grid'])]
    for a in inst['arrays']:
        args += ['--array', a]
    for p in inst['params']:
        args += ['--param', p]
    return args


def main():
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)
    digests = {f'{p.parent.name}/{p.name}': hashlib.sha256(p.read_bytes()).hexdigest() for p in (OLD, NEW)}
    results = []
    for inst in INSTANCES:
        cfg = config_args(inst)
        cmd = [VOLTA, '--no-log-file', 'compare', OLD, NEW, '--kernel1', inst['baseline_kernel'],
               '--kernel2', inst['candidate_kernel'], '-b', str(inst['baseline_block']),
               '--block2', str(inst['candidate_block']), *cfg, '--sample', '0', '--no-profile']
        for c in inst['check_arrays']:
            cmd += ['--check-array', c]
        rc = run(OUT / inst['name'], cmd)
        log = (OUT / f"{inst['name']}.log").read_text()
        ok = rc == 0 and accepted(log, inst['expected_elements'])
        safety = {}
        for label, ptx, k, b in [('baseline', OLD, inst['baseline_kernel'], inst['baseline_block']),
                                 ('candidate', NEW, inst['candidate_kernel'], inst['candidate_block'])]:
            prefix = OUT / f"{inst['name']}-{label}-safety"
            rc2 = run(prefix, [VOLTA, '--no-log-file', 'analyze', ptx, '-k', k, '-b', str(b), *cfg,
                               '--print-outputs', '0', '--no-profile'])
            slog = prefix.with_suffix('.log').read_text()
            per = inst['expected_elements'] // len(inst['check_arrays']) if len(inst['check_arrays']) == 1 else None
            written = {a: int(m) for a, m in re.findall(r"output '(\w+)': (\d+) element", slog)}
            safety[label] = dict(returncode=rc2, race_free='no data races or deadlocks detected' in slog,
                                 written=written)
        exp_written = {'q': inst['num_heads'] * inst['rot_dim']}
        if inst['key']:
            exp_written['k'] = inst['num_kv_heads'] * inst['rot_dim']
        safe_ok = all(s['returncode'] == 0 and s['race_free'] and s['written'] == exp_written
                      for s in safety.values())
        results.append(dict(inst, equivalent=ok, safety=safety, safety_ok=safe_ok))
        print(f"{inst['name']:28s} equivalent={ok} safety={safe_ok}", flush=True)
    summary = dict(all_equivalent=all(r['equivalent'] for r in results),
                   all_safe=all(r['safety_ok'] for r in results),
                   model='Volta PTX symbolic execution of CTA 0, real-valued semantics (rounding not modeled)',
                   volta_binary_sha256=hashlib.sha256(VOLTA.read_bytes()).hexdigest(),
                   ptx_sha256=digests, instances=results)
    (OUT / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print('ALL EQUIVALENT' if summary['all_equivalent'] else 'FAILURES', '| ALL SAFE' if summary['all_safe'] else '| SAFETY FAILURES')


if __name__ == '__main__':
    assert accepted('VC check: 0.1s (decision procedure 0.1s)  elements: 64\nEQUIVALENT\n', 64)
    assert not accepted('VC check: 0.1s  elements: 64\nNOT EQUIVALENT\n', 64)
    main()
