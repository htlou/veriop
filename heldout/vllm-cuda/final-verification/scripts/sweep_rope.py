"""Every CTA of every default config of benchmark_rope.py, baseline vs candidate, with volta-final.

Official task (vllm/benchmarks/kernels/benchmark_rope.py, defaults): bf16 query/key/cos_sin_cache, NeoX,
head_size 128, rotary_dim 32, max_position 8192 (cache [8192, 32]), positions int64 in [0, 8192) of shape
[B, S], query/key [B, S, nh*128]; configs B in {1,4,16,64} x S in {64,128,256,512} x nh in {32,48}.
Launch (host code): grid = B*S tokens; baseline rotary_embedding_kernel<bf16,bf16,true> block
min(nh*16, 512) = 512; candidate rotary_embedding_neox_vec4_kernel<bf16> block
min(roundup32(2*nh*4), 256) = 256; query_stride = key_stride = nh*128, head_stride = 128,
rope_dim_offset 0, inverse 0.

One `volta compare --cta t` per token t:
  * positions: the whole [B*S] int64 array, declared `in` with `--index-range pos=0:8192`, so pos[t] is a
    symbolic integer covering every valid position; cache rows are read through the ranged-address
    extension (cache contents symbolic).
  * q and k: only token t's row [t*nh*128, (t+1)*nh*128) is declared (the kernel pointer params are the
    real tensor bases). Any access by CTA t outside its own row is an out-of-bounds error, so a passing
    run also proves that CTA t touches only its own row (CTAs are independent).
A CTA passes iff exit 0, verdict EQUIVALENT over all n = 2*nh*32 written elements, SYNTACTIC n/n, and
FOOTPRINT q and k each n=nh*32 within [0, (nh-1)*128+31].
usage: sweep_rope.py [--cand PTX] [--out DIR] [--only REGEX] [--summarize]
"""
import argparse, hashlib, json, re
from pathlib import Path
import sweeplib as sl

H = sl.H
OLD = H / 'ptx/baseline/pos_encoding_kernels.ptx'
NEW = H / 'ptx/candidate/pos_encoding_kernels.ptx'
K1 = '_ZN4vllm23rotary_embedding_kernelIN3c108BFloat16ES2_Lb1EEEvPKlPT_S6_PKT0_illliiilb'
K2 = '_ZN4vllm33rotary_embedding_neox_vec4_kernelIN3c108BFloat16EEEvPKlPT_S6_PKS5_illliiilb'
MAXPOS, ROT, HS = 8192, 32, 128
QB, KB = 0x1_0000_0000, 0x2_0000_0000
CONFIGS = [(b, s, nh) for b in (1, 4, 16, 64) for s in (64, 128, 256, 512) for nh in (32, 48)]


def name(c):
    return f'rope-{c[0]}x{c[1]}x{c[2]}'


def cmd(cand, c, t):
    b, s, nh = c
    T, qs = b * s, nh * HS
    b1 = min(nh * ROT // 2, 512)
    b2 = min(((nh + nh) * (ROT // 2 // 4) + 31) // 32 * 32, 256)
    return ['compare', OLD, cand, '--kernel1', K1, '--kernel2', K2, '-b', b1, '--block2', b2, '-g', T,
            '--cta', t, '--array', f'pos:0x10000:8:{T}:in', '--array', f'cache:0x100000:2:{MAXPOS * ROT}:in',
            '--array', f'q:{QB + t * qs * 2}:2:{qs}:inout', '--array', f'k:{KB + t * qs * 2}:2:{qs}:inout',
            '--index-range', f'pos=0:{MAXPOS}',
            '--param', 'ptr:pos', '--param', f'int:{QB}', '--param', f'int:{KB}', '--param', 'ptr:cache',
            '--param', f'int:{ROT}', '--param', f'int:{qs}', '--param', f'int:{qs}', '--param', f'int:{HS}',
            '--param', f'int:{nh}', '--param', f'int:{nh}', '--param', f'int:{HS}', '--param', 'int:0',
            '--param', 'int:0', '--check-array', 'q', '--check-array', 'k', '--sample', '0', '--no-profile',
            '--syntactic']


HEADER = ['cta', 'rc', 'verdict', 'elements', 'syn_same', 'syn_total', 'fp_q', 'fp_k', 'pass']


def parse(out, rc, nh):
    n = 2 * nh * ROT
    lines = out.strip().splitlines()
    last = lines[-1] if lines else ''
    verdict = 'EQUIVALENT' if last == 'EQUIVALENT' else ('NOT_EQUIVALENT' if 'NOT EQUIVALENT' in out else 'ERROR')
    m = re.search(r'^VC check: .* elements: (\d+)$', out, re.M)
    elems = int(m.group(1)) if m else -1
    sy = re.search(r'^SYNTACTIC: (\d+)/(\d+) elements identical$', out, re.M)
    ss, st = (int(sy.group(1)), int(sy.group(2))) if sy else (-1, -1)
    fps = dict(re.findall(r'^FOOTPRINT: (\w+) (n=\d+ min=\d+ max=\d+|n=0)$', out, re.M))
    want = f'n={nh * ROT} min=0 max={(nh - 1) * HS + ROT - 1}'
    ok = (rc == 0 and verdict == 'EQUIVALENT' and elems == n and ss == st == n
          and fps.get('q') == want and fps.get('k') == want)
    return [rc, verdict, elems, ss, st, fps.get('q', '-').replace(' ', ','), fps.get('k', '-').replace(' ', ',')], ok


def run_config(cand, c, out_dir):
    b, s, nh = c
    T = b * s

    def work(t):
        rc, out = sl.run_volta(cmd(cand, c, t))
        fields, ok = parse(out, rc, nh)
        return fields, ok, out

    tsv = out_dir / f'{name(c)}.tsv'
    (out_dir / f'{name(c)}.cmd.json').write_text(json.dumps(dict(
        config=name(c), grid=T, template=[str(x) for x in cmd(cand, c, 0)],
        note='shown for t=0; for token t: --cta t, q base QB + t*nh*128*2, k base KB + t*nh*128*2'), indent=1) + '\n')
    new, failed, secs = sl.sweep(tsv, HEADER, list(range(T)), work, keep_log=lambda t: t in (0, T - 1),
                                 log_dir=out_dir / 'logs')
    print(f'{name(c)}: grid={T} new={new} newly_failed={failed} {secs:.0f}s', flush=True)


def summarize(cand, out_dir, configs):
    res = {}
    for c in configs:
        T = c[0] * c[1]
        tsv = out_dir / f'{name(c)}.tsv'
        if not tsv.exists():
            res[name(c)] = dict(grid=T, ctas_recorded=0, complete=False, all_pass=False)
            continue
        _, rows = sl.read_tsv(tsv)
        verdicts = {}
        for r in rows.values():
            verdicts[r['verdict']] = verdicts.get(r['verdict'], 0) + 1
        npass = sum(r['pass'] == '1' for r in rows.values())
        failing = sorted(int(k) for k, r in rows.items() if r['pass'] != '1')
        res[name(c)] = dict(grid=T, ctas_recorded=len(rows), complete=sorted(map(int, rows)) == list(range(T)),
                            verdicts=verdicts, ctas_passing=npass, failing_ctas=failing[:50],
                            n_failing=len(failing),
                            outputs_equivalent_and_identical=sum(int(r['syn_same']) for r in rows.values() if r['pass'] == '1'),
                            all_pass=npass == T and len(rows) == T)
    summary = dict(all_configs_pass=all(v['all_pass'] for v in res.values()),
                   total_ctas=sum(v['grid'] for v in res.values()),
                   total_passing=sum(v.get('ctas_passing', 0) for v in res.values()),
                   volta_final_sha256=hashlib.sha256(sl.VOLTA.read_bytes()).hexdigest(),
                   ptx_sha256={str(p.relative_to(H)): hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in (OLD, Path(cand))},
                   configs=res)
    (out_dir / 'summary.json').write_text(json.dumps(summary, indent=1) + '\n')
    for k, v in res.items():
        print(k, {x: v.get(x) for x in ('grid', 'ctas_recorded', 'verdicts', 'ctas_passing', 'n_failing', 'all_pass')})
    print('ALL PASS' if summary['all_configs_pass'] else 'NOT ALL PASS', summary['total_passing'], '/', summary['total_ctas'])
    return summary


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--cand', default=str(NEW))
    ap.add_argument('--out', default=str(H / 'final-verification/sweep-rope'))
    ap.add_argument('--only', default='.')
    ap.add_argument('--summarize', action='store_true')
    a = ap.parse_args()
    sl.pin()
    out_dir = Path(a.out)
    out_dir.mkdir(parents=True, exist_ok=True)
    configs = [c for c in CONFIGS if re.search(a.only, name(c))]
    if not a.summarize:
        for c in sorted(configs, key=lambda c: c[0] * c[1]):
            run_config(a.cand, c, out_dir)
    summarize(a.cand, out_dir, configs)
