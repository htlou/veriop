#!/usr/bin/env python3
"""Full official benchmark suites, stock vs patched (default upstream CMake builds), CPU 176 only.
A/A first (stock vs stock), then alternating-order stock/patched rounds.
Entries:
  libdivide test/benchmark_branchfree (default args: all types x system/branchfull/branchfree), seconds
  libdivide test/benchmark (default args = u64; plus s32 and s64), first N divisors per type, all columns
     (the program never terminates by design; it is stopped after N rows). NOTE: upstream timer.hpp
     scales tv_usec by 1e6, so the absolute unit is wrong, but it is the same for both builds;
     ratios are meaningful (values are quantized to ~0.3%).
  fast_float benchmarks bench_uint16, bench_ip (ns/ip), realbenchmark default (canada+mesh, MB/s)
Usage: full_suite.py <aa_rounds> <rounds>"""
import hashlib, json, math, re, statistics, subprocess, sys, time
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent; FS = ROOT / 'full-suite'
OUT = ROOT / 'results/full-suite'; OUT.mkdir(parents=True, exist_ok=True)
LD = lambda v: FS / f'build-libdivide-{v}'; FF = lambda v: FS / f'build-ff-{v}/benchmarks'
NROWS = 100

def run_cmd(cmd, rows=None):
    if rows is None:
        p = subprocess.run(['taskset', '-c', '176', *map(str, cmd)], capture_output=True, text=True, timeout=900)
        assert p.returncode == 0, p.stdout + p.stderr
        return p.stdout
    # libdivide benchmark: stop after `rows` data rows
    p = subprocess.Popen(['taskset', '-c', '176', *map(str, cmd)], stdout=subprocess.PIPE, text=True)
    out, n = [], 0
    for line in p.stdout:
        out.append(line)
        if re.match(r'^\s*-?\d+\s+[\d.-]+\s', line):
            n += 1
            if n >= rows: break
    p.kill(); p.wait()
    return ''.join(out)

def p_branchfree(t):
    res, typ = {}, None
    for line in t.splitlines():
        m = re.match(r'-+ (\w+) -+', line)
        if m: typ = m.group(1)
        m = re.match(r'\s*(system|branchfull|branchfree): ([\d.e+-]+) seconds', line)
        if m: res[f'{typ}/{m.group(1)}'] = float(m.group(2))
    assert 'All tests passed successfully!' in t
    return res, False   # lower is better

def p_bench(t):
    res, typ = {}, None; cols = ['system', 'scalar', 'scl_bf', 'vector', 'vec_bf', 'gener']
    for line in t.splitlines():
        m = re.search(r'=== libdivide (\w+) benchmark ===', line)
        if m: typ = m.group(1)
        m = re.match(r'^\s*(-?\d+)\s+([\d.-]+)\s+([\d.-]+)\s+([\d.-]+)\s+([\d.-]+)\s+([\d.-]+)\s+([\d.-]+)\s+(\d+)', line)
        if m:
            for c, v in zip(cols, m.groups()[1:7]):
                if float(v) > 0: res[f'{typ}/{c}/d={m.group(1)}'] = float(v)
    return res, False

def p_ff_ns(t):
    return {m.group(1): float(m.group(2)) for m in re.finditer(r'^(\S+)\s*:.*?([\d.]+) ns/ip', t, re.M)}, False

def p_real(t):
    res, f, enc = {}, None, None
    for line in t.splitlines():
        m = re.search(r'reading .*/(\w+)\.txt', line)
        if m: f = m.group(1)
        m = re.match(r'(ASCII|UTF-16) volume', line)
        if m: enc = m.group(1)
        m = re.match(r'(fastfloat \((?:32|64)\))\s*:\s*([\d.]+) MB/s', line)
        if m: res[f'{f}/{enc}/{m.group(1)}'] = float(m.group(2))
    return res, True   # higher is better

SUITES = [
    ('libdivide/benchmark_branchfree(default)', lambda v: [LD(v) / 'benchmark_branchfree'], None, p_branchfree),
    ('libdivide/benchmark(default=u64)', lambda v: [LD(v) / 'benchmark'], NROWS, p_bench),
    ('libdivide/benchmark(s32)', lambda v: [LD(v) / 'benchmark', 's32'], NROWS, p_bench),
    ('libdivide/benchmark(s64)', lambda v: [LD(v) / 'benchmark', 's64'], NROWS, p_bench),
    ('fast_float/bench_uint16', lambda v: [FF(v) / 'bench_uint16'], None, p_ff_ns),
    ('fast_float/bench_ip', lambda v: [FF(v) / 'bench_ip'], None, p_ff_ns),
    ('fast_float/realbenchmark(default)', lambda v: [FF(v) / 'realbenchmark'], None, p_real),
]
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()

def campaign(label, old, new, rounds):
    raw = dict(label=label, old=old, new=new, start_uptime=subprocess.check_output(['uptime'], text=True).strip(),
               binaries={s: {old: sha(f(old)[0]), new: sha(f(new)[0])} for s, f, _, _ in SUITES}, rounds=[])
    for r in range(rounds):
        rec = {}
        for name, f, rows, parse in SUITES:
            order = [old, new] if r % 2 == 0 else [new, old]
            side = {}
            for i, v in enumerate(order):
                key = 'old' if (i == 0) == (r % 2 == 0) else 'new'
                txt = run_cmd(f(v), rows); vals, hib = parse(txt)
                side[key] = dict(variant=v, stdout=txt, vals=vals)
            side['higher_is_better'] = hib; side['order'] = ['old', 'new'] if r % 2 == 0 else ['new', 'old']
            rec[name] = side
        raw['rounds'].append(rec); print(label, 'round', r, 'done', flush=True)
    raw['end_uptime'] = subprocess.check_output(['uptime'], text=True).strip()
    (OUT / f'{label}.raw.json').write_text(json.dumps(raw, indent=1) + '\n')
    # per-entry speedup ratio (>1 = new faster), median over rounds
    ent = {}
    for name, *_ in SUITES:
        rds = [rd[name] for rd in raw['rounds']]
        keys = set(rds[0]['old']['vals'])
        for rd in rds: keys &= set(rd['old']['vals']) & set(rd['new']['vals'])
        for k in sorted(keys):
            rs = [(rd['new']['vals'][k] / rd['old']['vals'][k]) if rd['higher_is_better'] else (rd['old']['vals'][k] / rd['new']['vals'][k]) for rd in rds]
            ent[f'{name}::{k}'] = dict(median=statistics.median(rs), min=min(rs), max=max(rs), ratios=rs)
    return raw, ent

def gm(xs):
    xs = list(xs); return math.exp(sum(math.log(x) for x in xs) / len(xs)) if xs else float('nan')

if __name__ == '__main__':
    aa_rounds, rounds = int(sys.argv[1]), int(sys.argv[2])
    _, aa = campaign('aa', 'stock', 'stock', aa_rounds)
    _, ab = campaign('ab', 'stock', 'patched', rounds)
    # noise band per suite (and per libdivide-benchmark column): widest A/A median deviation
    def group(k):
        s, e = k.split('::'); return s + ('::' + e.split('/')[1] if s.startswith('libdivide/benchmark(') else '')
    band = {}
    for k, v in aa.items():
        g = group(k); band[g] = max(band.get(g, 0.0), abs(v['median'] - 1), abs(v['min'] - 1), abs(v['max'] - 1))
    flags, rows = [], []
    for k, v in ab.items():
        b = band.get(group(k), 0.0); tol = max(b, 0.01)
        status = 'regression' if v['median'] < 1 - tol else ('improvement' if v['median'] > 1 + tol else 'within A/A noise')
        aa_m = aa.get(k, {}).get('median')
        rows.append(dict(entry=k, median=round(v['median'], 4), min=round(v['min'], 4), max=round(v['max'], 4),
                         aa_median=None if aa_m is None else round(aa_m, 4), noise_band=round(tol, 4), status=status))
        if status == 'regression': flags.append(k)
    affected = [r['median'] for r in rows if 'benchmark_branchfree' in r['entry'] and re.search(r'::s(32|64)/branchfull$', r['entry'])]
    summary = dict(aa_rounds=aa_rounds, rounds=rounds, noise_bands=band,
                   geomean_affected_s32_s64_branchfull=gm(affected),
                   geomean_all_entries=gm(r['median'] for r in rows),
                   geomean_all_except_affected=gm(r['median'] for r in rows if not ('benchmark_branchfree' in r['entry'] and re.search(r'::s(32|64)/branchfull$', r['entry']))),
                   geomean_by_suite={s: gm(r['median'] for r in rows if r['entry'].startswith(s + '::')) for s, *_ in SUITES},
                   regressions=flags, entries=rows)
    (OUT / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print(json.dumps({k: v for k, v in summary.items() if k != 'entries'}, indent=2))
