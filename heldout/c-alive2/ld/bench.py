#!/usr/bin/env python3
"""Paired alternating-order runs of libdivide's official test/benchmark_branchfree.cpp
(args: s32 s64 branchfull) on CPU 176. Usage: bench.py <label> <rounds> name=old:new ...
Ratio = old seconds / new seconds (>1 = new faster)."""
import hashlib, json, re, statistics, subprocess, sys, time
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
label, rounds = sys.argv[1], int(sys.argv[2])
pairs = [(n, *p.split(':')) for n, p in (a.split('=', 1) for a in sys.argv[3:])]
out = ROOT / 'results/bench' / label; out.mkdir(parents=True, exist_ok=True)
sha = lambda p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest()
ARGS = ['s32', 's64', 'branchfull']
def run(b):
    p = subprocess.run(['taskset', '-c', '176', str(ROOT / b), *ARGS], capture_output=True, text=True, timeout=600)
    assert p.returncode == 0, p.stdout + p.stderr
    secs = [float(x) for x in re.findall(r'branchfull: ([\d.e+-]+) seconds', p.stdout)]
    assert len(secs) == 2, p.stdout
    return p.stdout, {'s32_branchfull': secs[0], 's64_branchfull': secs[1]}
raw = dict(label=label, args=ARGS, start_uptime=subprocess.check_output(['uptime'], text=True).strip(),
           binaries={n: {'old': [o, sha(o)], 'new': [w, sha(w)]} for n, o, w in pairs}, rounds=[])
for r in range(rounds):
    rec = {}
    for n, o, w in pairs:
        order = [('old', o), ('new', w)] if r % 2 == 0 else [('new', w), ('old', o)]
        res = {'order': [s for s, _ in order]}
        for side, b in order:
            txt, v = run(b); res[side] = dict(stdout=txt, sec=v, t=time.time())
        rec[n] = res
    raw['rounds'].append(rec)
    print(f'round {r}', {n: {k: round(rec[n]['old']['sec'][k] / rec[n]['new']['sec'][k], 3) for k in rec[n]['old']['sec']} for n, _, _ in pairs}, flush=True)
raw['end_uptime'] = subprocess.check_output(['uptime'], text=True).strip()
(out / 'raw.json').write_text(json.dumps(raw, indent=1) + '\n')
summ = dict(label=label, rounds=rounds, start_uptime=raw['start_uptime'], end_uptime=raw['end_uptime'], workloads={})
for n, _, _ in pairs:
    for k in ('s32_branchfull', 's64_branchfull'):
        ratios = [rd[n]['old']['sec'][k] / rd[n]['new']['sec'][k] for rd in raw['rounds']]
        summ['workloads'][f'{n}/{k}'] = dict(median_ratio=round(statistics.median(ratios), 4), min_ratio=round(min(ratios), 4),
            max_ratio=round(max(ratios), 4), old_median_s=statistics.median(rd[n]['old']['sec'][k] for rd in raw['rounds']),
            new_median_s=statistics.median(rd[n]['new']['sec'][k] for rd in raw['rounds']), ratios=[round(x, 4) for x in ratios])
    a, b = (summ['workloads'][f'{n}/{k}']['median_ratio'] for k in ('s32_branchfull', 's64_branchfull'))
    summ['workloads'][f'{n}/geomean'] = round((a * b) ** 0.5, 4)
(out / 'summary.json').write_text(json.dumps(summ, indent=2) + '\n')
for k, v in summ['workloads'].items():
    print(k, v if not isinstance(v, dict) else f"median {v['median_ratio']:.3f}x [{v['min_ratio']:.3f},{v['max_ratio']:.3f}] old {v['old_median_s']:.3f}s new {v['new_median_s']:.3f}s")
print(summ['start_uptime']); print(summ['end_uptime'])
