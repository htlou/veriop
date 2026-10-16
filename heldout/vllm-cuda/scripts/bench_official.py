"""Paired ABBA runs of vLLM's unmodified official benchmark script.

usage: bench_official.py OUT_DIR --pairs 5 [--aa 1]

Variant A = baseline build, B = candidate build; both run the identical script
file (vllm/benchmarks/kernels/benchmark_rope.py at the pinned commit) and the
identical Python sources; only the `vllm/_C_stable_libtorch.abi3.so` symlinked
into the PYTHONPATH tree differs (pkg/baseline vs pkg/cand-rope).

Before every run: GPU 6 must have no compute process and 0% utilization / 0 MiB
(checked twice, 2 s apart); otherwise fall back to GPU 5, then GPU 4. GPU state
(util, memory, clocks, temperature, power, compute apps) is recorded before and
after each run.
"""
import argparse
import hashlib
import json
import math
import os
import re
import statistics
import subprocess
import threading
import time
from pathlib import Path

from record import run

ROOT = Path(__file__).resolve().parent.parent
SCRIPT_DIR = ROOT / 'vllm/benchmarks/kernels'
PY = ROOT / 'venv/bin/python'
BENCHES = {
    # official script, extra CLI args, candidate tree, parsed column, n shapes
    'rope': dict(script='benchmark_rope.py', args=[], cand='pkg/cand-rope', n=32,
                 metric='benchmark_rope.py "vLLM (us)" column (triton do_bench median, us)'),
    'relu-bf16': dict(script='benchmark_relu_squared.py', args=[], cand='pkg/cand-relu16', n=36,
                      metric='benchmark_relu_squared.py (default bf16) "Custom Kernel (ms)" column '
                             '(triton do_bench_cudagraph median, ms)'),
    'relu-fp32': dict(script='benchmark_relu_squared.py', args=['--dtype', 'float'], cand='pkg/cand-relu', n=36,
                      metric='benchmark_relu_squared.py --dtype float "Custom Kernel (ms)" column '
                             '(triton do_bench_cudagraph median, ms)'),
}
BENCH = None  # set in main()
SCRIPT = None
VARIANTS = None
GPU_ORDER = [7, 6, 5, 4]  # coordinator update: highest idle id among 7..4; never 0-3


def smi(args):
    return subprocess.run(['nvidia-smi', *args], capture_output=True, text=True).stdout.strip()


def gpu_state(idx):
    q = smi(['-i', str(idx), '--query-gpu=index,uuid,utilization.gpu,memory.used,clocks.sm,clocks.mem,'
             'temperature.gpu,power.draw,pstate', '--format=csv,noheader'])
    apps = smi(['--query-compute-apps=gpu_uuid,pid', '--format=csv,noheader'])
    fields = [f.strip() for f in q.split(',')]
    uuid = fields[1]
    mine = [a for a in apps.splitlines() if a.split(',')[0].strip() == uuid]
    return dict(time=time.time(), query=q, uuid=uuid, util=fields[2], mem=fields[3],
                apps_on_gpu=mine, all_apps=apps.splitlines())


def idle(idx):
    s = gpu_state(idx)
    return (not s['apps_on_gpu'] and s['util'].startswith('0 ') and s['mem'].startswith('0 ')), s


def pick_gpu(prefer=None):
    waited = 0
    if prefer is not None:  # second run of a pair: wait up to ~5 min for the same GPU
        for _ in range(30):
            ok1, s1 = idle(prefer)
            time.sleep(2)
            ok2, s2 = idle(prefer)
            if ok1 and ok2:
                return prefer, [s1, s2]
            time.sleep(8)
    while True:
        for idx in GPU_ORDER:
            ok1, s1 = idle(idx)
            time.sleep(2)
            ok2, s2 = idle(idx)
            if ok1 and ok2:
                if waited:
                    print(f'  (waited {waited} s for an idle GPU)', flush=True)
                return idx, [s1, s2]
        time.sleep(300)  # poll every ~5 min while all candidate GPUs are busy
        waited += 308


def parse(log):
    """Rows of the official perf_report table; 'vllm' = the timed vLLM CUDA kernel column."""
    rows = {}
    for line in log.splitlines():
        m = re.match(r'\s*\d+\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s*$', line)
        if m:
            b, s, h = (int(float(m.group(i))) for i in (1, 2, 3))
            c = [float(m.group(i)) for i in (4, 5, 6)]
            if BENCH['script'] == 'benchmark_rope.py':  # PyTorch, FlashInfer, vLLM
                rows[f'{b}x{s}x{h}'] = dict(torch=c[0], flashinfer=c[1], vllm=c[2])
            else:  # Custom Kernel, Native (torch.compile), Native (eager)
                rows[f'{b}x{s}x{h}'] = dict(vllm=c[0], native_compiled=c[1], native_eager=c[2])
    assert len(rows) == BENCH['n'], f"expected {BENCH['n']} shapes, parsed {len(rows)}"
    return rows


def one_run(out, tag, variant, prefer=None):
    done = out / f'{tag}-parsed.json'
    if done.exists():  # --resume: keep a completed run (evidence is never overwritten)
        rec = json.loads(done.read_text())
        assert rec['variant'] == variant
        print(f'{tag}: reused completed run (gpu{rec["gpu"]})', flush=True)
        return rec
    for stale in (out / f'{tag}.json', out / f'{tag}.log'):
        if stale.exists():  # an interrupted run: keep it aside, do not count it
            stale.rename(stale.with_name(stale.name + f'.interrupted-{int(time.time())}'))
    gpu, pre = pick_gpu(prefer)
    save = out / f'{tag}-save'
    save.mkdir(parents=True, exist_ok=True)
    env_cmd = ['env', f'CUDA_VISIBLE_DEVICES={gpu}', f'PYTHONPATH={VARIANTS[variant]}',
               str(PY), SCRIPT, *BENCH['args']] + (['--save-path', str(save)] if SCRIPT == 'benchmark_rope.py' else [])
    # Sample the GPU's compute processes every ~1 s during the run; any process
    # that is not this benchmark's own child marks the run contaminated.
    foreign, stop = set(), threading.Event()
    me = os.getpid()

    def monitor():
        uuid = pre[-1]['uuid']
        while not stop.wait(1.0):
            for line in smi(['--query-compute-apps=gpu_uuid,pid', '--format=csv,noheader']).splitlines():
                u, pid = (x.strip() for x in line.split(','))
                if u != uuid:
                    continue
                ppid = subprocess.run(['ps', '-o', 'ppid=', '-p', pid], capture_output=True, text=True).stdout.strip()
                gp = subprocess.run(['ps', '-o', 'ppid=', '-p', ppid], capture_output=True, text=True).stdout.strip() if ppid else ''
                if me not in {int(x) for x in (ppid, gp) if x.isdigit()}:
                    foreign.add(pid)

    th = threading.Thread(target=monitor, daemon=True)
    th.start()
    cwd = os.getcwd()
    os.chdir(SCRIPT_DIR)
    try:
        rc = run(out / tag, env_cmd)
    finally:
        os.chdir(cwd)
        stop.set()
        th.join()
    post = gpu_state(gpu)
    assert rc == 0, f'{tag} failed'
    rows = parse((out / f'{tag}.log').read_text())
    so = os.path.realpath(VARIANTS[variant] / 'vllm/_C_stable_libtorch.abi3.so')
    contaminated = bool(foreign) or bool(post['apps_on_gpu'])
    rec = dict(tag=tag, variant=variant, gpu=gpu, gpu_before=pre, gpu_after=post,
               foreign_pids_during_run=sorted(foreign), contaminated=contaminated, ext_so=so,
               ext_sha256=hashlib.sha256(open(so, 'rb').read()).hexdigest(), rows=rows)
    (out / f'{tag}-parsed.json').write_text(json.dumps(rec, indent=2) + '\n')
    print(f'{tag}: gpu{gpu} geomean vllm us = '
          f"{math.exp(statistics.fmean(math.log(r['vllm']) for r in rows.values())):.3f}"
          + (f' CONTAMINATED by {sorted(foreign) or post["apps_on_gpu"]}' if contaminated else ''), flush=True)
    return rec


def exclude(out, tag, why):
    for f in list(out.glob(f'{tag}.*')) + list(out.glob(f'{tag}-parsed.json')):
        f.rename(f.with_name(f.name + f'.excluded-{why}-{int(time.time())}'))


def clean_pair(out, tags_variants):
    """Run a pair; if either run saw another process on its GPU (or the pair
    was split across GPUs), set both aside (kept, renamed) and redo the pair."""
    for attempt in range(20):
        recs = []
        for t, v in tags_variants:
            recs.append(one_run(out, t, v, prefer=recs[0]['gpu'] if recs else None))
        if not any(r.get('contaminated', bool(r['gpu_after']['apps_on_gpu'])) for r in recs) \
                and len({r['gpu'] for r in recs}) == 1:
            return recs
        for t, _ in tags_variants:
            exclude(out, t, 'contaminated-pair')
        print(f'  pair {[t for t, _ in tags_variants]} excluded; redoing', flush=True)
    raise RuntimeError('could not obtain a clean pair')


def summarize(pairs, label):
    shapes = list(pairs[0][0]['rows'])
    per_shape = {}
    for s in shapes:
        ratios = [a['rows'][s]['vllm'] / b['rows'][s]['vllm'] for a, b in pairs]
        per_shape[s] = dict(A_us=[a['rows'][s]['vllm'] for a, _ in pairs],
                            B_us=[b['rows'][s]['vllm'] for _, b in pairs],
                            A_median_us=statistics.median(a['rows'][s]['vllm'] for a, _ in pairs),
                            B_median_us=statistics.median(b['rows'][s]['vllm'] for _, b in pairs),
                            ratios=ratios, median_ratio=statistics.median(ratios),
                            min_ratio=min(ratios), max_ratio=max(ratios))
    pair_geo = [math.exp(statistics.fmean(math.log(a['rows'][s]['vllm'] / b['rows'][s]['vllm'])
                                          for s in shapes)) for a, b in pairs]
    geo_of_medians = math.exp(statistics.fmean(math.log(v['median_ratio']) for v in per_shape.values()))
    return dict(label=label, n_pairs=len(pairs), per_shape=per_shape, per_pair_geomean=pair_geo,
                median_per_pair_geomean=statistics.median(pair_geo), min_per_pair_geomean=min(pair_geo),
                max_per_pair_geomean=max(pair_geo), geomean_of_per_shape_median_ratios=geo_of_medians)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('out')
    ap.add_argument('--pairs', type=int, default=5)
    ap.add_argument('--aa', type=int, default=1)
    ap.add_argument('--resume', action='store_true')
    ap.add_argument('--bench', choices=list(BENCHES), default='rope')
    a = ap.parse_args()
    global BENCH, SCRIPT, VARIANTS
    BENCH = BENCHES[a.bench]
    SCRIPT = BENCH['script']
    VARIANTS = {'A': ROOT / 'pkg/baseline', 'B': ROOT / BENCH['cand']}
    out = Path(a.out).resolve()
    out.mkdir(parents=True, exist_ok=a.resume)
    aa = []
    for i in range(a.aa):
        aa.append(tuple(clean_pair(out, [(f'aa{i}-A1', 'A'), (f'aa{i}-A2', 'A')])))
    ab = []
    for i in range(a.pairs):
        order = ['A', 'B'] if i % 2 == 0 else ['B', 'A']
        recs = clean_pair(out, [(f'p{i}-{k}{v}', v) for k, v in enumerate(order)])
        r = {rec['variant']: rec for rec in recs}
        ab.append((r['A'], r['B']))
    summary = dict(script=str(SCRIPT_DIR / SCRIPT),
                   script_sha256=hashlib.sha256((SCRIPT_DIR / SCRIPT).read_bytes()).hexdigest(),
                   args=BENCH['args'], metric=BENCH['metric'],
                   ab=summarize(ab, 'A=baseline / B=candidate (ABBA order)'),
                   aa=summarize(aa, 'A/A: baseline / baseline') if aa else None)
    (out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    s = summary['ab']
    print(f"AB median per-pair geomean {s['median_per_pair_geomean']:.4f} "
          f"[{s['min_per_pair_geomean']:.4f}, {s['max_per_pair_geomean']:.4f}]; "
          f"geomean of per-shape medians {s['geomean_of_per_shape_median_ratios']:.4f}")
    if aa:
        t = summary['aa']
        print(f"AA geomean {t['median_per_pair_geomean']:.4f}; per-shape A/A ratio range "
              f"[{min(v['min_ratio'] for v in t['per_shape'].values()):.3f}, "
              f"{max(v['max_ratio'] for v in t['per_shape'].values()):.3f}]")


if __name__ == '__main__':
    main()
