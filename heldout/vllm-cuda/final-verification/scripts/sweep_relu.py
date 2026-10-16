"""Every CTA of every default config of benchmark_relu_squared.py (bf16 default, and the fp32 `--dtype float`
config), baseline vs candidate, with volta-final.

Official task (vllm/benchmarks/kernels/benchmark_relu_squared.py): x = randn(T, d), out = empty_like(x),
`torch.ops._C.relu_squared(out, x)`, T = batch*seq for batch in {1,16,128}, seq in {1,16,64,1024},
d in {3072, 9728, 12288} (36 configs per dtype). H100 (cc 9.0), so the 256-bit path is never taken.
Host dispatch (candidate patch): vec = 16 / sizeof(T); the flat path runs iff d/vec > 1024 and T <= 256
(and T*d <= INT_MAX; and dtype == float for the fp32-only patch), with grid G = min(ceil(T*d/vec/128),
8 * 132 SMs), block 128, params (out, x, numel). Otherwise the candidate launches the UNCHANGED baseline
kernel activation_kernel<T, relu2, true, false> with the unchanged launch (grid T, block min(d/vec, 1024)).

  * Not dispatched: the candidate .so launches the same PTX entry with the same launch config. Checked here:
    the entry's PTX text in the candidate module is byte-identical to the baseline's after alpha-renaming
    the function-local basic-block labels ($L__BB<f>_<n> -> $L__BB_<n>; nvcc numbers <f> module-wide).
  * Dispatched: the two kernels map CTAs to elements differently (baseline: CTA a = row a; candidate:
    grid-stride over 128-vector chunks). For every (baseline CTA a, candidate CTA c) whose footprints
    intersect, one `volta compare --cta a --cta2 c --restrict out=lo:hi` over exactly the intersection
    [lo, hi]. A window passes iff exit 0, EQUIVALENT over hi-lo+1 elements, RESTRICT ref_n = opt_n =
    hi-lo+1, SYNTACTIC n/n, both kernels' FULL per-CTA footprints (FOOTPRINT-RANGES) equal the footprints
    predicted from the launch, and neither kernel writes x (x is declared inout and checked: n=0).
    The summary then checks that the windows partition [0, T*d) and that every CTA of both grids occurred
    (so every observed footprint matched), and that the predicted per-CTA footprints of each kernel are
    pairwise disjoint and cover [0, T*d).
usage: sweep_relu.py {fp32|bf16} [--cand PTX] [--out DIR] [--only REGEX] [--summarize]
"""
import argparse, hashlib, json, re
from pathlib import Path
import sweeplib as sl

H = sl.H
OLD = H / 'ptx/baseline/activation_kernels.ptx'
CAND = {'fp32': H / 'ptx/cand-relu/activation_kernels.ptx', 'bf16': H / 'ptx/cand-relu16/activation_kernels.ptx'}
SYM = {
    'fp32': ('_ZN4vllm17activation_kernelIfXadL_ZNS_19relu_squared_kernelIfEET_RKS2_EELb1ELb0EEEvPS2_PS3_i',
             '_ZN4vllm26activation_flat_vec_kernelIfXadL_ZNS_19relu_squared_kernelIfEET_RKS2_EEEEvPS2_PS3_i'),
    'bf16': ('_ZN4vllm17activation_kernelIN3c108BFloat16EXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EELb1ELb0EEEvPS4_PS5_i',
             '_ZN4vllm26activation_flat_vec_kernelIN3c108BFloat16EXadL_ZNS_19relu_squared_kernelIS2_EET_RKS4_EEEEvPS4_PS5_i'),
}
EW = {'fp32': 4, 'bf16': 2}
SMS = 132
CONFIGS = [(b, s, d) for b in (1, 16, 128) for s in (1, 16, 64, 1024) for d in (3072, 9728, 12288)]
XB, OB = 0x1000_0000, 0x4000_0000


def name(dt, c):
    return f'relu-{dt}-{c[0]}x{c[1]}x{c[2]}'


def launch(dt, c):
    b, s, d = c
    T = b * s
    vec = 16 // EW[dt]
    numel = T * d
    flat = d // vec > 1024 and T <= 256 and numel <= 2**31 - 1
    G = min((numel // vec + 127) // 128, 8 * SMS)
    return dict(T=T, d=d, vec=vec, numel=numel, flat=flat, G=G, b1=min(d // vec, 1024))


def ranges_str(runs):
    return ','.join(f'{a}-{b - 1}' for a, b in runs) if runs else '-'


def merge(runs):
    out = []
    for a, b in sorted(runs):
        if out and out[-1][1] == a:
            out[-1] = (out[-1][0], b)
        else:
            out.append((a, b))
    return out


def model(L):
    """Predicted written element runs [a, b) of every CTA of each kernel."""
    T, d, vec, numel, G = L['T'], L['d'], L['vec'], L['numel'], L['G']
    base = {a: [(a * d, (a + 1) * d)] for a in range(T)}
    nv = numel // vec
    cand = {}
    for c in range(G):
        runs = []
        start = c * 128
        while start < nv:
            runs.append((start * vec, min(start + 128, nv) * vec))
            start += G * 128
        cand[c] = merge(runs)
    return base, cand


def windows(L, base, cand):
    d = L['d']
    out = []
    for c, runs in cand.items():
        for (s, e) in runs:
            a = s // d
            while a * d < e:
                lo, hi = max(s, a * d), min(e, (a + 1) * d)
                out.append((a, c, lo, hi))
                a += 1
    return sorted(out, key=lambda w: w[2])


def cmd(dt, cand_ptx, L, a, c, lo, hi):
    T, d, numel, G = L['T'], L['d'], L['numel'], L['G']
    k1, k2 = SYM[dt]
    return ['compare', OLD, cand_ptx, '--kernel1', k1, '--kernel2', k2, '-b', L['b1'], '-g', T,
            '--block2', 128, '--grid2', G, '--cta', a, '--cta2', c, '--dyn-shared', 16,
            '--array', f'x:{XB}:{EW[dt]}:{numel}:inout', '--array', f'out:{OB}:{EW[dt]}:{numel}:out',
            '--param', 'ptr:out', '--param', 'ptr:x', '--param', f'int:{d}',
            '--param2', 'ptr:out', '--param2', 'ptr:x', '--param2', f'int:{numel}',
            '--check-array', 'out', '--check-array', 'x', '--restrict', f'out={lo}:{hi - 1}',
            '--sample', 0, '--no-profile', '--syntactic']


HEADER = ['window', 'cta_base', 'cta_cand', 'lo', 'hi', 'rc', 'verdict', 'elements', 'syn_same', 'syn_total',
          'fp_ref_ok', 'fp_opt_ok', 'x_unwritten', 'pass']


def parse(out, rc, n, want_ref, want_opt):
    lines = out.strip().splitlines()
    last = lines[-1] if lines else ''
    verdict = 'EQUIVALENT' if last == 'EQUIVALENT' else ('NOT_EQUIVALENT' if 'NOT EQUIVALENT' in out else 'ERROR')
    m = re.search(r'^VC check: .* elements: (\d+)$', out, re.M)
    elems = int(m.group(1)) if m else -1
    sy = re.search(r'^SYNTACTIC: (\d+)/(\d+) elements identical$', out, re.M)
    ss, st = (int(sy.group(1)), int(sy.group(2))) if sy else (-1, -1)
    fr = dict((f'{a} {b}', r) for a, b, r in re.findall(r'^FOOTPRINT-RANGES: (ref|opt) (\w+) (\S+)$', out, re.M))
    rs = re.search(r'^RESTRICT: out \[\d+, \d+\] ref_n=Some\((\d+)\) opt_n=Some\((\d+)\)$', out, re.M)
    rn = (int(rs.group(1)), int(rs.group(2))) if rs else (-1, -1)
    fp_ref_ok = fr.get('ref out') == want_ref
    fp_opt_ok = fr.get('opt out') == want_opt
    x_ok = fr.get('ref x') == '-' and fr.get('opt x') == '-' and re.search(r'^FOOTPRINT: x n=0$', out, re.M) is not None
    ok = (rc == 0 and verdict == 'EQUIVALENT' and elems == n and ss == st == n and rn == (n, n)
          and fp_ref_ok and fp_opt_ok and x_ok)
    return [rc, verdict, elems, ss, st, int(fp_ref_ok), int(fp_opt_ok), int(x_ok)], ok


def entry_text(ptx, k):
    """The entry's PTX text with its basic-block labels alpha-renamed: nvcc numbers labels
    $L__BB<function#>_<block#> module-wide, so adding a kernel renumbers the <function#> of later
    entries. Labels are function-local, so this consistent renaming changes nothing else."""
    s = Path(ptx).read_text()
    i = s.index('.entry ' + k + '(')
    body = s[i:s.index('\n}\n', i) + 3]
    prefixes = set(re.findall(r'\$L__BB(\d+)_\d+', body))
    assert len(prefixes) <= 1, prefixes
    return re.sub(r'\$L__BB\d+_(\d+)', r'$L__BB_\1', body)


def run_config(dt, cand_ptx, c, out_dir):
    L = launch(dt, c)
    if not L['flat']:
        return
    base, cand = model(L)
    W = windows(L, base, cand)
    tsv = out_dir / f'{name(dt, c)}.tsv'
    (out_dir / f'{name(dt, c)}.cmd.json').write_text(json.dumps(dict(
        config=name(dt, c), launch=L, windows=len(W),
        template=[str(x) for x in cmd(dt, cand_ptx, L, *W[0])]), indent=1) + '\n')

    def work(i):
        a, cc, lo, hi = W[i]
        rc, out = sl.run_volta(cmd(dt, cand_ptx, L, a, cc, lo, hi))
        fields, ok = parse(out, rc, hi - lo, ranges_str(base[a]), ranges_str(cand[cc]))
        return [a, cc, lo, hi, *fields], ok, out

    new, failed, secs = sl.sweep(tsv, HEADER, list(range(len(W))), work,
                                 keep_log=lambda i: i in (0, len(W) - 1), log_dir=out_dir / 'logs')
    print(f'{name(dt, c)}: T={L["T"]} G={L["G"]} windows={len(W)} new={new} newly_failed={failed} {secs:.0f}s', flush=True)


def summarize(dt, cand_ptx, out_dir, configs):
    k1, k2 = SYM[dt]
    res = {}
    for c in configs:
        L = launch(dt, c)
        nm = name(dt, c)
        if not L['flat']:
            same = entry_text(OLD, k1) == entry_text(cand_ptx, k1)
            res[nm] = dict(path='unchanged baseline kernel', launch=L, baseline_ctas=L['T'],
                           ptx_entry_identical_up_to_label_renaming=same, all_pass=same)
            continue
        base, cand = model(L)
        W = windows(L, base, cand)
        tsv = out_dir / f'{nm}.tsv'
        rows = sl.read_tsv(tsv)[1] if tsv.exists() else {}
        npass = sum(r['pass'] == '1' for r in rows.values())
        verdicts = {}
        for r in rows.values():
            verdicts[r['verdict']] = verdicts.get(r['verdict'], 0) + 1
        failing = sorted(int(k) for k, r in rows.items() if r['pass'] != '1')
        # coverage / tiling checks on the recorded windows
        recorded = [(int(r['lo']), int(r['hi'])) for r in rows.values()]
        win_partition = merge(sorted(recorded)) == [(0, L['numel'])] and sum(h - l for l, h in recorded) == L['numel']
        seen_a = {int(r['cta_base']) for r in rows.values()}
        seen_c = {int(r['cta_cand']) for r in rows.values()}

        def tiles(fp):
            allr = sorted(x for runs in fp.values() for x in runs)
            return all(allr[i][1] <= allr[i + 1][0] for i in range(len(allr) - 1)) and \
                sum(b - a for a, b in allr) == L['numel'] and merge(allr) == [(0, L['numel'])]
        res[nm] = dict(path='flat kernel', launch=L, baseline_ctas=L['T'], candidate_ctas=L['G'], windows=len(W),
                       windows_recorded=len(rows), verdicts=verdicts, windows_passing=npass, n_failing=len(failing),
                       failing_windows=[[int(rows[str(i)][k]) for k in ('cta_base', 'cta_cand', 'lo', 'hi')]
                                        for i in failing[:20]],
                       windows_partition_output=win_partition,
                       every_baseline_cta_checked=seen_a == set(range(L['T'])),
                       every_candidate_cta_checked=seen_c == set(range(L['G'])),
                       predicted_baseline_footprints_tile=tiles(base), predicted_candidate_footprints_tile=tiles(cand),
                       outputs_equivalent_and_identical=sum(int(r['syn_same']) for r in rows.values() if r['pass'] == '1'))
        v = res[nm]
        v['all_pass'] = (npass == len(W) == len(rows) and win_partition and v['every_baseline_cta_checked']
                         and v['every_candidate_cta_checked'] and v['predicted_baseline_footprints_tile']
                         and v['predicted_candidate_footprints_tile'] and v['outputs_equivalent_and_identical'] == L['numel'])
    summary = dict(dtype=dt, all_configs_pass=all(v['all_pass'] for v in res.values()),
                   flat_configs=sum(v['path'] == 'flat kernel' for v in res.values()),
                   unchanged_configs=sum(v['path'] != 'flat kernel' for v in res.values()),
                   flat_windows=sum(v.get('windows', 0) for v in res.values()),
                   flat_windows_passing=sum(v.get('windows_passing', 0) for v in res.values()),
                   volta_final_sha256=hashlib.sha256(sl.VOLTA.read_bytes()).hexdigest(),
                   ptx_sha256={str(Path(p).relative_to(H)): hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in (OLD, cand_ptx)},
                   kernels=dict(baseline=k1, candidate=k2), sms=SMS, configs=res)
    (out_dir / 'summary.json').write_text(json.dumps(summary, indent=1) + '\n')
    for k, v in res.items():
        print(k, {x: v.get(x) for x in ('path', 'windows', 'windows_passing', 'n_failing', 'ptx_entry_identical_up_to_label_renaming', 'all_pass')})
    print('ALL PASS' if summary['all_configs_pass'] else 'NOT ALL PASS')
    return summary


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('dtype', choices=['fp32', 'bf16'])
    ap.add_argument('--cand')
    ap.add_argument('--out')
    ap.add_argument('--only', default='.')
    ap.add_argument('--summarize', action='store_true')
    a = ap.parse_args()
    sl.pin()
    cand_ptx = Path(a.cand) if a.cand else CAND[a.dtype]
    out_dir = Path(a.out) if a.out else H / f'final-verification/sweep-relu-{a.dtype}'
    out_dir.mkdir(parents=True, exist_ok=True)
    configs = [c for c in CONFIGS if re.search(a.only, name(a.dtype, c))]
    if not a.summarize:
        for c in configs:
            run_config(a.dtype, cand_ptx, c, out_dir)
    summarize(a.dtype, cand_ptx, out_dir, configs)
