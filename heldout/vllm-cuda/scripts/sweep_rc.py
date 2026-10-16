"""[VOLTA-EXT: volta-cta-ix = llama-cuda volta-cta.patch (--cta, --syntactic) + --index-values]
Every-CTA Volta comparison of baseline reshape_and_cache_kernel<__nv_bfloat16, kAuto>
vs candidate reshape_and_cache_coalesced_value_kernel<__nv_bfloat16> for all 16
default shapes of benchmark_reshape_and_cache.py (num_tokens 2..65536; 128 heads,
head 128, block 16, x 8, 16384 blocks, bf16, kv_cache_dtype auto). slot_mapping is
an `index` array whose contents are the benchmark's exact slots
(random.Random(42).sample(range(262144), T), see make_slots in this file); key and
value are fully symbolic. One `volta compare --cta t` per token t.

usage: sweep_rc.py OUT_DIR [PTX_NEW] [T,...]"""
import hashlib, json, multiprocessing as mp, os, random, re, subprocess, sys, time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
VOLTA = ROOT / 'volta-cta-ix/target/release/volta'
OLD = ROOT / 'ptx/baseline/cache_kernels.ptx'
K1 = '_ZN4vllm24reshape_and_cache_kernelI13__nv_bfloat16S1_LNS_18Fp8KVCacheDataTypeE0EEEvPKT_S5_PT0_S7_PKliiiiiiPKfSB_'
K2 = '_ZN4vllm40reshape_and_cache_coalesced_value_kernelI13__nv_bfloat16EEvPKT_S4_PS2_S5_PKliiiiiiPKfS9_'
NH, HS, BS, X, NB = 128, 128, 16, 8, 16384


def make_slots(T, path):
    if not path.exists():
        path.write_text(' '.join(map(str, random.Random(42).sample(range(BS * NB), T))) + '\n')
    return path


def cmd(new, T, t, slots):
    ne, nc = T * NH * HS, NB * NH * HS * BS
    return [str(VOLTA), '--no-log-file', 'compare', str(OLD), str(new), '--kernel1', K1, '--kernel2', K2,
            '-b', str(min(NH * HS // X, 512)), '-g', str(T), '--cta', str(t),
            '--array', f'key:0x10000000000:2:{ne}:in', '--array', f'value:0x20000000000:2:{ne}:in',
            '--array', f'kc:0x30000000000:2:{nc}:out', '--array', f'vc:0x40000000000:2:{nc}:out',
            '--array', f'slot:0x50000000000:8:{T}:index', '--array', 'ks:0x60000000000:4:1:in',
            '--array', 'vs:0x60000001000:4:1:in', '--index-values', f'slot={slots}',
            '--param', 'ptr:key', '--param', 'ptr:value', '--param', 'ptr:kc', '--param', 'ptr:vc',
            '--param', 'ptr:slot', '--param', f'int:{NH * HS}', '--param', f'int:{NH * HS}',
            '--param', f'int:{NH}', '--param', f'int:{HS}', '--param', f'int:{BS}', '--param', f'int:{X}',
            '--param', 'ptr:ks', '--param', 'ptr:vs', '--check-array', 'kc', '--check-array', 'vc',
            '--sample', '0', '--syntactic', '--no-profile']


def one(args):
    new, T, t, slots = args
    p = subprocess.run(cmd(new, T, t, slots), capture_output=True, text=True)
    out = p.stdout + p.stderr
    m = re.search(r'SYNTACTIC: (\d+)/(\d+)', out)
    el = re.search(r'elements: (\d+)', out)
    ok = p.returncode == 0 and out.strip().splitlines()[-1:] == ['EQUIVALENT']
    return dict(T=T, cta=t, rc=p.returncode, equivalent=ok, elements=int(el.group(1)) if el else None,
                syntactic=[int(m.group(1)), int(m.group(2))] if m else None,
                footprint=re.findall(r'FOOTPRINT: (\w+) n=(\d+)', out),
                tail=None if ok else out[-2000:])


def main():
    out = Path(sys.argv[1]); out.mkdir(parents=True, exist_ok=True)
    new = Path(sys.argv[2]) if len(sys.argv) > 2 else ROOT / 'ptx/cand-rc/cache_kernels.ptx'
    Ts = [int(x) for x in sys.argv[3].split(',')] if len(sys.argv) > 3 else [2 ** e for e in range(1, 17)]
    summary = dict(volta=str(VOLTA), volta_sha256=hashlib.sha256(VOLTA.read_bytes()).hexdigest(),
                   old=str(OLD), old_sha256=hashlib.sha256(OLD.read_bytes()).hexdigest(),
                   new=str(new), new_sha256=hashlib.sha256(new.read_bytes()).hexdigest(),
                   baseline_kernel=K1, candidate_kernel=K2, example_command=None, shapes={})
    for T in Ts:
        slots = make_slots(T, out / f'slots-{T}.txt')
        summary['example_command'] = cmd(new, T, 0, slots)
        t0 = time.time()
        with mp.Pool(int(os.environ.get('JOBS', '32'))) as pool:
            res = pool.map(one, [(new, T, t, slots) for t in range(T)], chunksize=16)
        with open(out / f'ctas-{T}.jsonl', 'w') as f:
            for r in res:
                f.write(json.dumps(r) + '\n')
        eq = sum(r['equivalent'] for r in res)
        syn = sum(r['syntactic'][0] for r in res if r['syntactic']); tot = sum(r['syntactic'][1] for r in res if r['syntactic'])
        summary['shapes'][T] = dict(ctas=T, equivalent=eq, not_equivalent=T - eq, outputs=tot, syntactically_identical=syn,
                                    slots_sha256=hashlib.sha256(slots.read_bytes()).hexdigest(), seconds=round(time.time() - t0, 1))
        print(T, summary['shapes'][T], flush=True)
        (out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    tot = summary['shapes'].values()
    summary['all_ctas_equivalent'] = all(s['not_equivalent'] == 0 for s in tot)
    summary['all_outputs_syntactically_identical'] = all(s['outputs'] == s['syntactically_identical'] for s in tot)
    (out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print('ALL CTAs EQUIVALENT' if summary['all_ctas_equivalent'] else 'FAILURES',
          '| all syntactic' if summary['all_outputs_syntactically_identical'] else '| not all syntactic')


if __name__ == '__main__':
    main()
