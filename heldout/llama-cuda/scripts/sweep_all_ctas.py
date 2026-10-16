"""Check EVERY CTA of every official CONV_2D_DW test/perf configuration with volta-cta:
`volta compare <baseline.ptx> <candidate.ptx> ... --cta i --sample 0 --syntactic` (block 256, real grid).

Configs: official perf shapes (f32 weights, both layouts) and official eval shapes (f32 and f16 weights, both
layouts). Per CTA one process; verdicts appended to sweep/<config>.tsv (resumable: done CTAs are skipped).
A CTA passes iff exit 0, last line EQUIVALENT, elements == its expected output count n, SYNTACTIC n/n, and
FOOTPRINT exactly [256*cta, 256*cta+n-1] (so the CTAs tile the output disjointly). Full output is kept for any non-passing CTA and for the first/last CTA of each config.
Resource policy: <= WORKERS concurrent processes, CPU affinity outside 160-191 and 352-383, pause while the
1-minute load average exceeds LOAD_MAX. No GPU is used.
usage: sweep_all_ctas.py [config-name-regex]
"""
import json, os, re, subprocess, sys, threading, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
VOLTA = ROOT / 'volta-cta/target/release/volta'
OLD, NEW = ROOT / 'ptx/conv2d-dw-baseline.ptx', ROOT / 'ptx/conv2d-dw-candidate.ptx'
OUT = ROOT / 'sweep'
WORKERS, LOAD_MAX = 96, 300.0
CPUS = set(range(0, 160)) | set(range(192, 352))
SIG = 'EvPKfPKT_Pfiiiiiiiiiiiiii'
CONFIGS = []  # name, W, H, C, N, K, stride, pad, dil, weight types
for (name, W, H, C, N, K, s, p, d, wts) in [
    ('perf-512x512x256-k3s1p1', 512, 512, 256, 1, 3, 1, 1, 1, ('f32',)),
    ('perf-112x112x32-k3s1p1', 112, 112, 32, 1, 3, 1, 1, 1, ('f32',)),
    ('perf-56x56x128-k5s2p2', 56, 56, 128, 1, 5, 2, 2, 1, ('f32',)),
    ('eval-17x34x9-k3s1p0', 17, 34, 9, 1, 3, 1, 0, 1, ('f32', 'f16')),
    ('eval-32x8x64-k3s2p1', 32, 8, 64, 1, 3, 2, 1, 1, ('f32', 'f16')),
]:
    for wt in wts:
        for cwhn in (False, True):
            CONFIGS.append((f'{name}-{wt}-{"cwhn" if cwhn else "whcn"}', W, H, C, N, K, s, p, d, wt, cwhn))


def base_cmd(W, H, C, N, K, s, p, d, wt, cwhn):
    t, wb = ('f', 4) if wt == 'f32' else ('6__half', 2)
    OW = (W + 2 * p - d * (K - 1) - 1) // s + 1
    OH = (H + 2 * p - d * (K - 1) - 1) // s + 1
    total = N * C * OH * OW
    grid = (total + 255) // 256
    k1 = f'_Z16conv2d_dw_kernelI{t}11{"cwhn" if cwhn else "whcn"}_layout{SIG}'
    k2 = f'_Z22conv2d_dw_kernel_fixedI{t}Lb{int(cwhn)}ELi{K}ELi{K}E{SIG}'
    cmd = [str(VOLTA), '--no-log-file', 'compare', str(OLD), str(NEW), '--kernel1', k1, '--kernel2', k2,
           '-b', '256', '-g', str(grid),
           '--array', f'in:0x10000000:4:{N*C*H*W}:in', '--array', f'w:0x1000:{wb}:{C*K*K}:in',
           '--array', f'out:0x40000000:4:{total}:out',
           '--param', 'ptr:in', '--param', 'ptr:w', '--param', 'ptr:out',
           *sum((['--param', f'int:{v}'] for v in (W, H, OW, OH, K, K, s, s, p, p, d, d, C, N)), []),
           '--check-array', 'out', '--sample', '0', '--no-profile', '--syntactic']
    return cmd, total, grid


def parse(out, rc, expected, cta):
    lines = out.strip().splitlines()
    last = lines[-1] if lines else ''
    m = re.search(r'^VC check: .* elements: (\d+)$', out, re.M)
    sy = re.search(r'^SYNTACTIC: (\d+)/(\d+) elements identical$', out, re.M)
    elems = int(m.group(1)) if m else -1
    ss, st = (int(sy.group(1)), int(sy.group(2))) if sy else (-1, -1)
    verdict = 'EQUIVALENT' if last == 'EQUIVALENT' else ('NOT_EQUIVALENT' if last.startswith('NOT EQUIVALENT') or 'NOT EQUIVALENT' in out else 'ERROR')
    fp = re.search(r'^FOOTPRINT: out n=(\d+) min=(\d+) max=(\d+)$', out, re.M)
    fp = tuple(map(int, fp.groups())) if fp else (-1, -1, -1)
    # n distinct indices with max-min+1 == n and min == 256*cta: the CTA writes exactly [256*cta, 256*cta+n-1]
    fp_ok = fp == (expected, 256 * cta, 256 * cta + expected - 1)
    ok = rc == 0 and verdict == 'EQUIVALENT' and elems == expected and ss == st == expected and fp_ok
    return ok, verdict, elems, ss, st, fp


def run_config(cfg):
    name = cfg[0]
    cmd, total, grid = base_cmd(*cfg[1:])
    tsv = OUT / f'{name}.tsv'
    (OUT / f'{name}.cmd.json').write_text(json.dumps(dict(config=name, template=cmd + ['--cta', '<i>'], grid=grid,
                                                           total_outputs=total), indent=1) + '\n')
    done = set()
    if tsv.exists():
        for l in tsv.read_text().splitlines()[1:]:
            done.add(int(l.split('\t')[0]))
    else:
        tsv.write_text('cta\trc\tverdict\telements\tsyn_identical\tsyn_total\tfp_min\tfp_max\tpass\n')
    todo = [i for i in range(grid) if i not in done]
    lock = threading.Lock()
    fh = open(tsv, 'a')
    keep = {0, grid - 1}

    def work(i):
        while os.getloadavg()[0] > LOAD_MAX:
            time.sleep(5)
        expected = min(256, total - i * 256)
        p = subprocess.run(cmd + ['--cta', str(i)], capture_output=True, text=True)
        out = p.stdout + p.stderr
        ok, verdict, elems, ss, st, fp = parse(out, p.returncode, expected, i)
        if not ok or i in keep:
            (OUT / 'logs').mkdir(exist_ok=True)
            (OUT / 'logs' / f'{name}-cta{i}.log').write_text(out)
        with lock:
            fh.write(f'{i}\t{p.returncode}\t{verdict}\t{elems}\t{ss}\t{st}\t{fp[1]}\t{fp[2]}\t{int(ok)}\n')
            fh.flush()
        return ok

    t0 = time.time()
    with ThreadPoolExecutor(WORKERS) as ex:
        results = list(ex.map(work, todo, chunksize=64))
    fh.close()
    print(f'{name}: grid={grid} new={len(todo)} newly_failed={results.count(False)} {time.time()-t0:.0f}s load={os.getloadavg()[0]:.0f}', flush=True)


def summarize():
    summ = {}
    for cfg in CONFIGS:
        name = cfg[0]
        _, total, grid = base_cmd(*cfg[1:])
        rows = [l.split('\t') for l in (OUT / f'{name}.tsv').read_text().splitlines()[1:]]
        by = {}
        for r in rows:
            by[int(r[0])] = r  # last record wins (none expected to repeat)
        n_pass = sum(1 for r in by.values() if r[8] == '1')
        counts = {}
        for r in by.values():
            counts[r[2]] = counts.get(r[2], 0) + 1
        summ[name] = dict(grid=grid, total_outputs=total, ctas_recorded=len(by), complete=sorted(by) == list(range(grid)),
                          verdicts=counts, ctas_passing=n_pass,
                          outputs_equivalent=sum(int(r[3]) for r in by.values() if r[2] == 'EQUIVALENT'),
                          outputs_syntactically_identical=sum(int(r[4]) for r in by.values() if r[4] != '-1'),
                          tiles_output_disjointly=sorted((int(r[6]), int(r[7])) for r in by.values()) == [(256*i, 256*i+min(256, total-256*i)-1) for i in range(grid)],
                          all_pass=n_pass == grid and len(by) == grid)
    res = dict(all_configs_pass=all(v['all_pass'] and v['tiles_output_disjointly'] for v in summ.values()), configs=summ,
               volta_cta_sha256=__import__('hashlib').sha256(VOLTA.read_bytes()).hexdigest())
    (OUT / 'summary.json').write_text(json.dumps(res, indent=2) + '\n')
    for k, v in summ.items():
        print(f"{k}: grid {v['grid']} recorded {v['ctas_recorded']} verdicts {v['verdicts']} pass {v['ctas_passing']} "
              f"outputs eq {v['outputs_equivalent']}/{v['total_outputs']} syn {v['outputs_syntactically_identical']} tiles {v['tiles_output_disjointly']}")
    print('ALL PASS' if res['all_configs_pass'] else 'NOT ALL PASS')


if __name__ == '__main__':
    os.sched_setaffinity(0, CPUS)
    OUT.mkdir(exist_ok=True)
    pat = re.compile(sys.argv[1] if len(sys.argv) > 1 and sys.argv[1] != '--summarize' else '.')
    if '--summarize' not in sys.argv:
        for cfg in CONFIGS:
            if pat.search(cfg[0]):
                run_config(cfg)
    summarize() if all((OUT / f'{c[0]}.tsv').exists() for c in CONFIGS) else None
