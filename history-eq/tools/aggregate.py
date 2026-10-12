#!/usr/bin/env python3
"""Aggregate results/*.json into results/SUMMARY.md and results/summary.json."""
import json
from collections import Counter, OrderedDict
from pathlib import Path

H = Path(__file__).resolve().parents[1]
R = H / 'results'
GROUPS = OrderedDict([
    ('libdivide', ['libdivide.json']),
    ('xxHash', ['xxHash-pre2020.json', 'xxHash-2020on.json']),
    ('rust-base64', ['rust-base64.json']),
    ('lz4_flex', ['lz4_flex.json']),
])
LANG = {'libdivide': 'C / Alive2', 'xxHash': 'C / Alive2',
        'rust-base64': 'Rust / Aeneas', 'lz4_flex': 'Rust / Aeneas'}
VERDICTS = ['EQUIV', 'EQUIV_BOUNDED', 'EQUIV_UNDER_PRECOND', 'EQUIV_PARTIAL', 'REFINES',
            'NOT_EQUIV', 'UNKNOWN', 'UNSUPPORTED']
BUCKET = {'EQUIV': 'checked', 'EQUIV_BOUNDED': 'checked', 'EQUIV_UNDER_PRECOND': 'checked',
          'EQUIV_PARTIAL': 'checked',
          'REFINES': 'checked', 'NOT_EQUIV': 'changed', 'UNKNOWN': 'inconclusive',
          'UNSUPPORTED': 'unsupported'}


def load(group):
    funnel, commits, missing = Counter(), [], []
    for f in GROUPS[group]:
        p = R / f
        if not p.exists():
            missing.append(f)
            continue
        d = json.loads(p.read_text())
        for k, v in d.get('funnel', {}).items():
            if isinstance(v, int):
                funnel[k] += v
        commits += d['commits']
    return funnel, commits, missing


def pending_runs(commits):
    return sum(run.get('verdict') in ('RUNNING/MISSING', 'NEEDS_UNROLL')
               for commit in commits for unit in commit.get('units', [])
               for run in unit.get('runs', []))


def pct(a, b):
    return f'{a} ({100 * a / b:.0f}%)' if b else '0'


def main():
    out = {}
    lines = ['# Historical performance commits — equivalence-checker statistics', '',
             'Alive2 checks for a counterexample: UNSAT proves a refinement direction, while '
             'SAT with a valid model refutes it. Unknown/timeout is inconclusive.', '']
    head = ('| Repo | Checker | Perf commits | ' + ' | '.join(VERDICTS) +
            ' | checked (≡/⊑) | checked/full coverage | checked/partial coverage | changed (≢) | inconclusive | unsupported |')
    lines += [head, '|' + '---|' * (head.count('|') - 1)]
    tot = Counter()
    per_reason, per_kind, raw_vs_api = {}, {}, {}
    for g in GROUPS:
        funnel, commits, missing = load(g)
        pending = pending_runs(commits)
        c = Counter(x['commit_verdict'] for x in commits)
        b = Counter(BUCKET.get(x['commit_verdict'], '?') for x in commits)
        checked_full = sum(BUCKET.get(x['commit_verdict']) == 'checked' and
                           x.get('coverage') == 'full' for x in commits)
        checked_partial = b['checked'] - checked_full
        n = len(commits)
        tot.update(c); tot['n'] += n
        tot['checked_full'] += checked_full
        tot['checked_partial'] += checked_partial
        for k in ('checked', 'changed', 'inconclusive', 'unsupported'):
            tot['b_' + k] += b[k]
        per_reason[g] = Counter(x.get('unsupported_reason') or '?' for x in commits
                                if x['commit_verdict'] == 'UNSUPPORTED')
        per_kind[g] = Counter(x.get('not_equiv_kind') or '?' for x in commits
                              if x['commit_verdict'] == 'NOT_EQUIV')
        raw_vs_api[g] = Counter((x.get('raw_verdict'), x['commit_verdict']) for x in commits
                                if x.get('raw_verdict') and x.get('raw_verdict') != x['commit_verdict'])
        out[g] = {'funnel': dict(funnel), 'n': n, 'verdicts': dict(c), 'buckets': dict(b),
                  'checked_full': checked_full, 'checked_partial': checked_partial,
                  'missing_files': missing, 'pending_runs': pending}
        lines.append(f'| {g}{" (incomplete)" if missing or pending else ""} | {LANG[g]} | {n} | ' +
                     ' | '.join(str(c[v]) for v in VERDICTS) + ' | ' +
                     ' | '.join([pct(b['checked'], n), pct(checked_full, n),
                                pct(checked_partial, n)] +
                               [pct(b[k], n) for k in ('changed', 'inconclusive', 'unsupported')]) + ' |')
    n = tot['n']
    lines.append(f'| **Total** | | **{n}** | ' + ' | '.join(f'**{tot[v]}**' for v in VERDICTS) + ' | ' +
                 ' | '.join(f'**{pct(value, n)}**' for value in
                            (tot['b_checked'], tot['checked_full'], tot['checked_partial'],
                             tot['b_changed'], tot['b_inconclusive'], tot['b_unsupported'])) + ' |')
    if any(out[g]['missing_files'] or out[g]['pending_runs'] for g in GROUPS):
        lines += ['', '**Incomplete rows are provisional.** Missing report files or pending per-unit runs: ' +
                  ', '.join(f'{g}: {len(out[g]["missing_files"])} files, {out[g]["pending_runs"]} runs'
                            for g in GROUPS if out[g]['missing_files'] or out[g]['pending_runs']) + '.']
    lines += ['', '## Selection funnel', '', '| Repo | commits touching library source | keyword candidates | manual-scan additions | perf commits |', '|---|---|---|---|---|']
    for g in GROUPS:
        f = out[g]['funnel']
        lines.append(f"| {g} | {f.get('commits_touching_scope', '?')} | {f.get('keyword_candidates', '?')} | "
                     f"{f.get('manual_scan_additions', '?')} | {f.get('perf_commits', out[g]['n'])} |")
    lines += ['', '## Unsupported reasons', '']
    for g in GROUPS:
        if per_reason[g]:
            lines.append(f'- **{g}**: ' + ', '.join(f'{k} {v}' for k, v in per_reason[g].most_common()))
    lines += ['', '## Kinds of verified semantic change (NOT_EQUIV)', '']
    for g in GROUPS:
        if per_kind[g]:
            lines.append(f'- **{g}**: ' + ', '.join(f'{k} {v}' for k, v in per_kind[g].most_common()))
    lines += ['', '## Partial evidence explicitly tagged in UNSUPPORTED / UNKNOWN commits', '',
              'These counts are lower bounds: they include proved or refuted report units, '
              'not additional cases described only in unit evidence.', '',
              '| Repo | commits with ≥1 unit proved (≡/⊑) | commits with ≥1 unit refuted (≢) |', '|---|---|---|']
    ok = {'EQUIV', 'EQUIV_BOUNDED', 'EQUIV_UNDER_PRECOND', 'REFINES'}
    for g in GROUPS:
        _, commits, _ = load(g)
        rest = [x for x in commits if x['commit_verdict'] in ('UNSUPPORTED', 'UNKNOWN')]
        a = sum(any(u.get('verdict') in ok for u in x.get('units', [])) for x in rest)
        r = sum(any(u.get('verdict') == 'NOT_EQUIV' for u in x.get('units', [])) for x in rest)
        out[g]['partial_proved'] = a; out[g]['partial_refuted'] = r
        lines.append(f'| {g} | {a} / {len(rest)} | {r} / {len(rest)} |')
    lines += ['', '## Raw-level vs API-level verdict differences', '']
    for g in GROUPS:
        if raw_vs_api[g]:
            lines.append(f'- **{g}**: ' + ', '.join(f'raw {a} → api {b}: {v}' for (a, b), v in raw_vs_api[g].most_common()))
    (R / 'SUMMARY.md').write_text('\n'.join(lines) + '\n')
    (R / 'summary.json').write_text(json.dumps(out, indent=2))
    print('\n'.join(lines))


if __name__ == '__main__':
    main()
