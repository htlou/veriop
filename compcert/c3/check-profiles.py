#!/usr/bin/env python3
"""Check measured CFG flow, preserve raw profiles, freeze merged C3 input."""
from collections import defaultdict
import hashlib
import json
from pathlib import Path
import sys

root = Path(__file__).resolve().parents[1]
out = root / 'results/c3-profiling'
suite = sys.argv[1] if len(sys.argv) > 1 else 'embench'
assert suite in ('embench', 'mibench')
merged = defaultdict(int)
rows = []
for case in json.loads((out / suite / 'summary.json').read_text()):
    path = root / case['profile']
    assert hashlib.sha256(path.read_bytes()).hexdigest() == (case.get('profile_sha256') or case['sha256'])
    graphs = {}
    for file in path.parent.glob('metadata/**/*.graphs.json'):
        for line in file.read_text().splitlines():
            g = json.loads(line)
            if g['key'] in graphs:
                assert graphs[g['key']]['nodes'] == g['nodes']
            graphs[g['key']] = g
    counts = defaultdict(int)
    for line in path.read_text().splitlines():
        key, u, v, count = line.split()
        u, v, count = int(u), int(v), int(count)
        assert count >= 0 and key in graphs
        counts[key, u, v] += count
    by_key = defaultdict(dict)
    for (key, u, v), count in counts.items():
        by_key[key][u, v] = count
    excluded = []
    for key, graph in graphs.items():
        nodes = {u: vs for u, size, vs in graph['nodes']}
        entry = graph['entry']
        allowed = {(u, v) for u, vs in nodes.items() for v in vs} | {(0, entry)}
        incoming = defaultdict(int)
        outgoing = defaultdict(int)
        for (u, v), count in by_key[key].items():
            assert (u, v) in allowed
            outgoing[u] += count
            incoming[v] += count
        deficits = {u: incoming[u] - outgoing[u] for u, vs in nodes.items()
                    if vs and incoming[u] != outgoing[u]}
        assert all(x > 0 for x in deficits.values()), (case['program'], key, deficits)
        assert (sum(incoming[u] for u, vs in nodes.items() if not vs) +
                sum(deficits.values())) == outgoing[0]
        if deficits:
            # A call to exit() can terminate inside an LTL block. Preserve the
            # raw observation, but do not use incomplete function profiles.
            excluded.append({'key': key, 'function': graph['function'],
                             'unobserved_outgoing_flow': deficits})
        else:
            for (u, v), count in by_key[key].items():
                merged[key, u, v] += count
    rows.append({'program': case['program'], 'functions': len(graphs),
                 'edge_records': len(counts), 'retained_flow_conservation': True,
                 'excluded_incomplete_functions': excluded})
    print(case['program'], 'flow PASS', len(graphs), flush=True)
target = out / (suite + '.profile')
with target.open('x') as f:
    for (key, u, v), count in sorted(merged.items()):
        f.write(f'{key} {u} {v} {count}\n')
(out / ('validation-' + suite + '.json')).write_text(json.dumps({'programs': rows,
    'profile_sha256': hashlib.sha256(target.read_bytes()).hexdigest()}, indent=2) + '\n')
