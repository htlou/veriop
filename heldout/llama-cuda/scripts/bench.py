"""Paired, alternating-order (ABBA) runs of the official benchmark `test-backend-ops perf -b CUDA0 -o CONV_2D_DW`.

usage: bench.py <label> <A-side> <B-side> <pairs>     (sides: baseline | candidate)
Pair i runs A then B when i is even, B then A when i is odd; both runs of a pair use the same GPU, which is
checked idle (no compute process, ~0 MiB used) before every run; its state is recorded before/after each run.
A pair whose GPU became busy is discarded and retried. Per case: median of per-pair ratios A_time/B_time
(>1 means B faster), min/max, and geomean over the 6 official cases.
"""
import json, os, re, statistics, sys, math
from pathlib import Path
from record import run
from gpu import pick, state

ROOT = Path(__file__).resolve().parents[1]
label, A, B, npairs = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
OUT = ROOT / 'bench' / label
OUT.mkdir(parents=True, exist_ok=False)
LINE = re.compile(r'^\s*(CONV_2D_DW\(.*?\)):\s+(\d+) runs -\s+([0-9.]+) us/run -\s+([0-9.]+) kB/run -.*?([0-9.]+) GB/s')


def one(side, tag, gpu):
    before = state(gpu)
    if not before['idle']:
        return None
    os.environ['CUDA_VISIBLE_DEVICES'] = str(gpu)
    prefix = OUT / tag
    rc = run(prefix, [ROOT / side / 'build-cuda/bin/test-backend-ops', 'perf', '-b', 'CUDA0', '-o', 'CONV_2D_DW'])
    after = state(gpu)
    cases = {}
    for l in prefix.with_suffix('.log').read_text().splitlines():
        m = LINE.match(l)
        if m:
            cases[m.group(1)] = dict(runs=int(m.group(2)), us=float(m.group(3)), kB=float(m.group(4)), GBps=float(m.group(5)))
    assert rc == 0 and len(cases) == 6, (tag, rc, len(cases))
    return dict(side=side, tag=tag, gpu=gpu, gpu_before=before, gpu_after=after, cases=cases)


pairs, attempt = [], 0
while len(pairs) < npairs:
    i = len(pairs)
    gpu, _ = pick()
    order = [('A', A), ('B', B)] if i % 2 == 0 else [('B', B), ('A', A)]
    res = {}
    for role, side in order:
        r = one(side, f'pair{i:02d}-try{attempt:02d}-{role}-{side}', gpu)
        if r is None:
            break
        res[role] = r
    attempt += 1
    if len(res) == 2 and res['A']['gpu_after']['compute_apps_on_gpu'] == [] and res['B']['gpu_after']['compute_apps_on_gpu'] == []:
        pairs.append(dict(index=i, order=[o[0] for o in order], gpu=gpu, A=res['A'], B=res['B']))
        print(f'pair {i} gpu{gpu} order={"".join(o[0] for o in order)} done', flush=True)
    else:
        print(f'pair {i} discarded (GPU {gpu} not idle)', flush=True)

cases = list(pairs[0]['A']['cases'])
per_case = {}
for c in cases:
    ratios = [p['A']['cases'][c]['us'] / p['B']['cases'][c]['us'] for p in pairs]
    per_case[c] = dict(A_us_median=statistics.median(p['A']['cases'][c]['us'] for p in pairs),
                       B_us_median=statistics.median(p['B']['cases'][c]['us'] for p in pairs),
                       A_GBps_median=statistics.median(p['A']['cases'][c]['GBps'] for p in pairs),
                       B_GBps_median=statistics.median(p['B']['cases'][c]['GBps'] for p in pairs),
                       speedup_median=statistics.median(ratios), speedup_min=min(ratios), speedup_max=max(ratios),
                       ratios=ratios)
geo_pair = [math.exp(statistics.fmean(math.log(p['A']['cases'][c]['us'] / p['B']['cases'][c]['us']) for c in cases)) for p in pairs]
summary = dict(label=label, A=A, B=B, pairs=len(pairs), attempts=attempt, gpus=sorted({p['gpu'] for p in pairs}),
               geomean_of_case_median_speedups=math.exp(statistics.fmean(math.log(v['speedup_median']) for v in per_case.values())),
               per_pair_geomean_speedup=dict(median=statistics.median(geo_pair), min=min(geo_pair), max=max(geo_pair), values=geo_pair),
               per_case=per_case, raw_pairs=pairs)
(OUT / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
for c, v in per_case.items():
    print(f"{v['A_us_median']:9.2f} {v['B_us_median']:9.2f}  x{v['speedup_median']:.3f} [{v['speedup_min']:.3f},{v['speedup_max']:.3f}]  {c}")
print('geomean (of case medians):', round(summary['geomean_of_case_median_speedups'], 4),
      ' per-pair geomean median/min/max:', [round(summary['per_pair_geomean_speedup'][k], 4) for k in ('median', 'min', 'max')])
