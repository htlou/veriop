#!/usr/bin/env python3
"""Paired, alternating-order runs of the official fast_float benchmarks on CPU 176.
Usage: bench.py <label> <rounds> <name>=<old_binary>:<new_binary> ...
Each round runs every pair, old/new order alternating by round. Records raw stdout,
binary SHA-256, uptime before/after. Ratio = old ns/ip / new ns/ip (>1 = new faster)."""
import hashlib, json, re, statistics, subprocess, sys, time, math
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
label, rounds, pairs = sys.argv[1], int(sys.argv[2]), [a.split('=', 1) for a in sys.argv[3:]]
pairs = [(n, *p.split(':')) for n, p in pairs]
out = ROOT / 'results/bench' / label; out.mkdir(parents=True, exist_ok=True)
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()
LINE = re.compile(r'^(\S+)\s*:.*?([\d.]+) ns/ip', re.M)
def run(binary):
    p = subprocess.run(['taskset', '-c', '176', str(ROOT / binary)], capture_output=True, text=True, timeout=600)
    assert p.returncode == 0 and 'Validation passed' in p.stdout or 'parse_ip' in p.stdout, p.stdout + p.stderr
    return p.stdout, {m.group(1): float(m.group(2)) for m in LINE.finditer(p.stdout)}
raw = dict(label=label, start_uptime=subprocess.check_output(['uptime'], text=True).strip(),
           binaries={n: {'old': [o, sha(ROOT / o)], 'new': [w, sha(ROOT / w)]} for n, o, w in pairs}, rounds=[])
for r in range(rounds):
    rec = {}
    for n, o, w in pairs:
        order = [('old', o), ('new', w)] if r % 2 == 0 else [('new', w), ('old', o)]
        res = {}
        for side, b in order:
            txt, vals = run(b); res[side] = dict(stdout=txt, ns=vals, t=time.time())
        res['order'] = [s for s, _ in order]
        rec[n] = res
    raw['rounds'].append(rec)
    print(f'round {r}', {n: {k: round(rec[n]["old"]["ns"][k] / rec[n]["new"]["ns"][k], 3) for k in rec[n]['old']['ns']} for n, _, _ in pairs}, flush=True)
raw['end_uptime'] = subprocess.check_output(['uptime'], text=True).strip()
(out / 'raw.json').write_text(json.dumps(raw, indent=1) + '\n')
summary = dict(label=label, rounds=rounds, start_uptime=raw['start_uptime'], end_uptime=raw['end_uptime'], workloads={})
for n, _, _ in pairs:
    for k in raw['rounds'][0][n]['old']['ns']:
        ratios = [rd[n]['old']['ns'][k] / rd[n]['new']['ns'][k] for rd in raw['rounds']]
        olds = [rd[n]['old']['ns'][k] for rd in raw['rounds']]; news = [rd[n]['new']['ns'][k] for rd in raw['rounds']]
        summary['workloads'][f'{n}/{k}'] = dict(median_ratio=round(statistics.median(ratios), 4),
            min_ratio=round(min(ratios), 4), max_ratio=round(max(ratios), 4),
            old_median_ns=statistics.median(olds), new_median_ns=statistics.median(news),
            old_min_ns=min(olds), new_min_ns=min(news), ratios=[round(x, 4) for x in ratios])
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
for k, v in summary['workloads'].items():
    print(f"{k:55s} median {v['median_ratio']:.3f}x  [{v['min_ratio']:.3f}, {v['max_ratio']:.3f}]  old {v['old_median_ns']:.2f} new {v['new_median_ns']:.2f} ns/ip")
print(summary['start_uptime']); print(summary['end_uptime'])
