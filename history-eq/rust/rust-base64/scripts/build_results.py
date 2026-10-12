#!/usr/bin/env python3
"""Compose results/rust-base64.json from scripts/meta.py + work/<short>/units.json (proof sub-tasks)."""
import json, subprocess, sys
from pathlib import Path

H = Path('/srv/home/hantaolou/code/veriop/history-eq')
R = H / 'rust/rust-base64'
sys.path.insert(0, str(R / 'scripts'))
import meta  # noqa

ORDER = {"EQUIV": 0, "EQUIV_BOUNDED": 1, "EQUIV_UNDER_PRECOND": 2, "REFINES": 3}
EXTRA = getattr(meta, 'COMMIT_EXTRA', {})


def git(*a):
    return subprocess.check_output(['git', '-C', str(H / 'repos/rust-base64'), *a], text=True).strip()


def commit_verdict(units):
    prim = [u for u in units if u.get('primary', True)]
    vs = [u['verdict'] for u in prim]
    if 'NOT_EQUIV' in vs:
        return 'NOT_EQUIV'
    if vs and all(v in ORDER for v in vs):
        return max(vs, key=lambda v: ORDER[v])
    if 'UNKNOWN' in vs and 'UNSUPPORTED' not in vs:
        return 'UNKNOWN'
    return 'UNSUPPORTED'


def main():
    commits = []
    for c, m in meta.COMMITS.items():
        f = R / 'work' / c / 'units.json'
        units = []
        if f.exists():
            units += json.loads(f.read_text())
        elif c in ('9687b03', 'd021c39', 'ce2281b', 'eeb9f5c', 'fa6a11f', 'f977b8e'):
            units.append({'name': 'proof sub-task units', 'level': 'api', 'verdict': 'UNKNOWN', 'bounded': False,
                          'unroll': 0, 'precondition': None, 'unsupported_reason': None, 'not_equiv_kind': None,
                          'artifact_dir': f'rust/rust-base64/lean/C{c}', 'provisional': True,
                          'evidence': meta.PENDING.format(c=c)})
        units += meta.SCREEN_UNITS.get(c, [])
        units += EXTRA.get(c, {}).get('units', [])
        if not units:
            print('WARNING: no units for', c, file=sys.stderr)
        date, subject = git('log', '-1', '--format=%ad|%s', '--date=short', c).split('|', 1)
        ex = EXTRA.get(c, {})
        cv = ex.get('commit_verdict') or commit_verdict(units)
        raw = [u['verdict'] for u in units if u['level'] == 'raw']
        reasons = sorted({u.get('unsupported_reason') for u in units if u.get('unsupported_reason')})
        kinds = sorted({u.get('not_equiv_kind') for u in units if u.get('not_equiv_kind') and u['verdict'] == 'NOT_EQUIV'})
        commits.append({
            'commit': c, 'date': date, 'subject': subject, 'selected_by': m['sel'],
            'perf_evidence': m['ev'], 'change_summary': m['summary'], 'units': units,
            'commit_verdict': cv,
            'raw_verdict': ex.get('raw_verdict', raw[0] if raw else None),
            'coverage': ex.get('coverage', 'partial'),
            'unsupported_reason': ex.get('unsupported_reason', reasons[0] if cv == 'UNSUPPORTED' and reasons else None),
            'not_equiv_kind': ex.get('not_equiv_kind', kinds[0] if cv == 'NOT_EQUIV' and kinds else None),
            'notes': (ex.get('notes', '') + (' ' + meta.PENDING.format(c=c) if any(u.get('provisional') for u in units) else '')).strip(),
        })
    out = {
        'repo': 'rust-base64', 'tool': 'Aeneas',
        'toolchain': 'Charon 0.1.279 (c8f15d7) + patched Aeneas 557eff8 build (../aeneas/repos/aeneas/src/_build/default/main.exe, includes ../aeneas/patches/aeneas-*.patch) + Lean 4.31.0',
        'funnel': meta.FUNNEL,
        'rejected': [{'commit': c, 'subject': s, 'stage': st, 'reason': r} for c, s, st, r in meta.REJECTED],
        'commits': commits,
    }
    (H / 'results').mkdir(exist_ok=True)
    (H / 'results/rust-base64.json').write_text(json.dumps(out, indent=2) + '\n')
    from collections import Counter
    print(Counter(x['commit_verdict'] for x in commits))


if __name__ == '__main__':
    main()
