#!/usr/bin/env python3
"""Merge reviewed libdivide entries only after all selected commits are present."""
import json
import runpy
from collections import Counter
from pathlib import Path

H = Path(__file__).resolve().parents[3]
SCREEN = Path(__file__).resolve().parent
BASE = SCREEN.parent
rows = [line.split('|', 2) for line in (SCREEN / 'perf_meta.txt').read_text().splitlines()]
selected = {row[0] for row in rows}
all_rows = [line.split(' ', 2) for line in (SCREEN / 'all.txt').read_text().splitlines()]
kw = {line.split()[0] for line in (SCREEN / 'kw.txt').read_text().splitlines()}
reasons = runpy.run_path(str(SCREEN / 'reasons.py'))['R']
assert len(rows) == len(selected) == 33
assert selected | set(reasons) == {row[0] for row in all_rows}
assert not selected & set(reasons)

missing = [c for c in selected if not (BASE / c / 'entry.json').exists()]
if missing:
    raise SystemExit(f'{len(missing)} libdivide entries missing: {", ".join(sorted(missing))}')

commits = [json.loads((BASE / c / 'entry.json').read_text()) for c in selected]
assert {item['commit'] for item in commits} == selected
commits.sort(key=lambda item: (item['date'], item['commit']), reverse=True)
rejected = [dict(commit=c, date=date, subject=subject, reason=reasons[c])
            for c, date, subject in all_rows if c in reasons]
report = {
    'repo': 'libdivide', 'tool': 'Alive2',
    'funnel': {'commits_touching_scope': len(all_rows), 'keyword_candidates': len(kw),
               'manual_scan_additions': len(selected - kw), 'keyword_rejected': len(kw - selected),
               'perf_commits': len(selected)},
    'rejected': rejected, 'commits': commits,
}
out = H / 'results'
(out / 'libdivide.json').write_text(json.dumps(report, indent=2) + '\n')
counts = Counter(item['commit_verdict'] for item in commits)
lines = ['# libdivide historical performance commits vs Alive2', '',
         f'Selected {len(selected)} of {len(all_rows)} source-touching commits; '
         f'{len(kw)} keyword candidates and {len(selected - kw)} manual additions.', '',
         '| Verdict | Commits |', '|---|---:|']
lines += [f'| {v} | {n} |' for v, n in sorted(counts.items())]
lines += ['', '| Commit | Date | Verdict | Coverage | Change |', '|---|---|---|---|---|']
lines += [f'| {item["commit"]} | {item["date"]} | {item["commit_verdict"]} | '
          f'{item["coverage"]} | {item["change_summary"].replace("|", "/")} |'
          for item in commits]
(out / 'libdivide.md').write_text('\n'.join(lines) + '\n')
print('libdivide:', len(commits), dict(counts))
