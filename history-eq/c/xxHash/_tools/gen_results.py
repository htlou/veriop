#!/usr/bin/env python3
"""Build results/xxHash-pre2020.json from the Alive2 runs under c/xxHash/<commit>/<unit>/.
Each logical unit below aggregates one or more runs (usually one run per fixed input length);
group verdicts are computed from units.json (produced by collect.py), then commit verdicts are
set by the rules of METHOD.md section 3, with the manual decisions written out explicitly."""
import json, fnmatch, os, re, subprocess
B = '/srv/home/hantaolou/code/veriop/history-eq'
CX = f'{B}/c/xxHash'
U = json.load(open(f'{CX}/_tools/units.json'))
SUFFIX_PREF = ['_nw', '_long', '_u20', '_u16', '_u8', '_u4', '_na']
DEFINITE = ('EQUIV', 'NOT_EQUIV', 'REFINES')


def rows_for(commit):
    rs = {r['unit']: r for r in U if r['commit'] == commit}
    # superseding reruns: X_nw (C object-model precondition) always replaces X;
    # other suffixes replace X unless the rerun is inconclusive and X was definite.
    out = dict(rs)
    for u, r in rs.items():
        for s in SUFFIX_PREF:
            if u.endswith(s) and u[:-len(s)] in out:
                base = out[u[:-len(s)]]
                if s == '_nw' or r['verdict'] in DEFINITE or base['verdict'] not in DEFINITE:
                    out.pop(u[:-len(s)], None)
                else:
                    out.pop(u, None)
    return out


def example(commit, unit, d='fwd'):
    p = f'{CX}/{commit}/{unit}/{d}.log'
    if not os.path.exists(p):
        return ''
    t = open(p).read()
    i = t.find("Transformation doesn't verify")
    if i < 0:
        return ''
    seg = t[i:i + 3000].splitlines()
    err = [l for l in seg if l.startswith('ERROR')][:1]
    ex, take = [], False
    for l in seg:
        if l.startswith('Example:'):
            take = True
            continue
        if take:
            if not l.strip():
                break
            ex.append(re.sub(r'\s+', ' ', l.strip()))
    return (err[0] if err else '') + ' | ' + '; '.join(ex[:4])


def group(commit, pats, exclude=()):
    rs = rows_for(commit)
    sel = sorted([r for u, r in rs.items() if any(fnmatch.fnmatch(u, p) for p in pats)
                  and not any(fnmatch.fnmatch(u, e) for e in exclude)
                  and r['verdict'] != 'NEEDS_UNROLL'], key=lambda r: r['unit'])   # loop-not-unrolled setup failures are not results
    by = {}
    for r in sel:
        by.setdefault(r['verdict'], []).append(r['unit'])
    return sel, by


def auto_verdict(commit, g):
    """Verdict of a logical unit from its runs."""
    sel, by = group(commit, g['runs'], g.get('exclude', ()))
    if not sel:
        raise SystemExit(f'no runs for {commit} {g["name"]} {g["runs"]}')
    n = len(sel)
    ident = sum(1 for r in sel if r.get('ir') == 'IDENTICAL_IR')
    loops = any(r.get('target_loops') for r in sel)
    unroll = max((r.get('unroll') or 0) for r in sel)
    v = None
    ev = ''
    if 'NOT_EQUIV' in by:
        v = 'NOT_EQUIV'
        u0 = by['NOT_EQUIV'][0]
        ev = f"{len(by['NOT_EQUIV'])}/{n} runs give a counterexample, e.g. {u0}: {example(commit, u0)}"
    elif g.get('force'):
        v = g['force']
    elif set(by) <= {'EQUIV'} and ident == n:
        v = 'EQUIV'
        ev = f"all {n} runs EQUIV with byte-identical old/new IR (change has no effect on clang's IR in these configurations)"
    elif set(by) <= {'EQUIV'}:
        v = 'EQUIV_BOUNDED' if g.get('bounded', True) or loops else 'EQUIV'
        ev = f"all {n} runs EQUIV (fwd+bwd correct)"
    elif set(by) <= {'EQUIV', 'REFINES'}:
        v = 'REFINES'
        ev = f"{len(by.get('REFINES', []))}/{n} runs REFINES (new more defined), rest EQUIV"
    elif 'UNKNOWN' in by and set(by) <= {'EQUIV', 'UNKNOWN', 'REFINES'}:
        v = 'UNKNOWN'
        ev = (f"{len(by.get('EQUIV', []))}/{n} runs EQUIV; UNKNOWN (SMT timeout/Z3 failure) for "
              f"{', '.join(by['UNKNOWN'])}" + (f"; REFINES for {', '.join(by['REFINES'])}" if 'REFINES' in by else ''))
    elif set(by) <= {'UNKNOWN'}:
        v = 'UNKNOWN'
        ev = f"all {n} runs inconclusive (SMT timeout / Z3 'tactic failed' / memory)"
    else:
        v = 'MIXED:' + ','.join(sorted(by))
        ev = json.dumps(by)
    if ident:
        ev += f"; IR identical old/new in {ident}/{n} runs"
    return v, ev, sel, loops, unroll


UNSUP_REASON = {'inline-asm', 'non-x86-target-intrinsics', 'x86-intrinsic-unsupported-by-alive2',
                'interface-or-state-layout-change', 'global-state-or-dispatch', 'compile-time-or-build-only',
                'alive2-crash-or-parse-error', 'other'}

exec(open(f'{CX}/_tools/spec.py').read())   # defines COMMITS (list of dicts) and FUNNEL

ORDER = ['EQUIV', 'EQUIV_BOUNDED', 'EQUIV_UNDER_PRECOND', 'REFINES']


def git(c, fmt):
    return subprocess.run(['git', '-C', f'{B}/repos/xxHash', 'log', '-1', f'--format={fmt}', '--date=short', c],
                          capture_output=True, text=True).stdout.strip()


out_commits = []
for C in COMMITS:
    c = C['commit']
    units = []
    for g in C['units']:
        if 'verdict' in g:          # manual verdict (with evidence on disk named in g['runs'])
            sel, by = group(c, g['runs'], g.get('exclude', ()))
            v, ev, loops, unroll = g['verdict'], g['evidence'], any(r.get('target_loops') for r in sel), max([(r.get('unroll') or 0) for r in sel] or [0])
            if not sel:
                raise SystemExit(f'no runs for manual unit {c} {g["name"]}')
        else:
            v, ev, sel, loops, unroll = auto_verdict(c, g)
        if g.get('evidence_extra'):
            ev += '; ' + g['evidence_extra']
        bounded = v in ('EQUIV_BOUNDED',) or (v in ('REFINES', 'NOT_EQUIV', 'UNKNOWN') and (loops or g.get('bounded', True)))
        u = {'name': g['name'], 'level': g['level'], 'verdict': v,
             'bounded': bool(bounded), 'unroll': unroll,
             'length_bound': g.get('lengths'),
             'precondition': g.get('precondition'),
             'unsupported_reason': g.get('unsupported_reason'),
             'not_equiv_kind': g.get('kind') if v == 'NOT_EQUIV' else None,
             'config': g.get('config'),
             'artifact_dir': f"c/xxHash/{c}/" + (sel[0]['unit'] if len(sel) == 1 else '{' + ','.join(r['unit'] for r in sel) + '}'),
             'runs': [{'unit': r['unit'], 'verdict': r['verdict'], 'ir': r.get('ir'), 'fwd': r.get('fwd'), 'bwd': r.get('bwd'),
                       'unroll': r.get('unroll'), 'target': r.get('target')} for r in sel],
             'evidence': ev}
        if v == 'UNSUPPORTED':
            assert g.get('unsupported_reason') in UNSUP_REASON, (c, g['name'])
        if v.startswith('MIXED') and os.environ.get('PREVIEW'):
            print('PREVIEW mixed', c, g['name'], ev[:200])
        elif v.startswith('MIXED'):
            raise SystemExit(f'unresolved mixed verdict {c} {g["name"]}: {ev}')
        units.append(u)
    rec = {'commit': c, 'date': git(c, '%ad'), 'subject': git(c, '%s'),
           'selected_by': C['selected_by'], 'perf_evidence': C['perf_evidence'],
           'change_summary': C['change_summary'], 'units': units,
           'commit_verdict': C['commit_verdict'], 'raw_verdict': C.get('raw_verdict'),
           'coverage': C['coverage'], 'unsupported_reason': C.get('unsupported_reason'),
           'not_equiv_kind': C.get('not_equiv_kind'), 'notes': C.get('notes', '')}
    # consistency checks against METHOD.md rule
    prim = [u for u in units if u['level'] in C.get('primary_levels', ('api',)) and not u['name'].startswith('(info)')]
    vs = [u['verdict'] for u in prim]
    if 'NOT_EQUIV' in vs:
        exp = 'NOT_EQUIV'
    elif vs and all(v in ORDER for v in vs):
        exp = max(vs, key=ORDER.index)
    elif 'UNKNOWN' in vs and 'UNSUPPORTED' not in vs:
        exp = 'UNKNOWN'
    else:
        exp = 'UNSUPPORTED'
    if exp != C['commit_verdict']:
        msg = f'{c}: rule-derived {exp} vs chosen {C["commit_verdict"]} (primary units: {vs})'
        if os.environ.get('PREVIEW'):
            print('PREVIEW', msg)
        else:
            raise SystemExit(msg)
    out_commits.append(rec)

rejected = json.load(open(f'{CX}/_tools/rejected.json'))
res = {'repo': 'xxHash', 'tool': 'Alive2', 'slice': 'commits dated before 2020-01-01',
       'funnel': FUNNEL, 'rejected': rejected, 'commits': out_commits}
if os.environ.get('PREVIEW'):
    print('PREVIEW only: reports left unchanged')
    raise SystemExit(0)
json.dump(res, open(f'{B}/results/xxHash-pre2020.json', 'w'), indent=1)
from collections import Counter
print('commit verdicts:', Counter(r['commit_verdict'] for r in out_commits))
print('n commits', len(out_commits))

# ------------------------------------------------------------------ markdown
md = []
md.append('# xxHash performance commits before 2020-01-01 vs Alive2\n')
md.append('Slice: `git log --no-merges --before=2020-01-01` over `xxhash.h xxhash.c xxh3.h xxh_x86dispatch.c xxh_x86dispatch.h` '
          '(the dispatch files do not exist yet). Full data: `results/xxHash-pre2020.json`; every run lives in '
          '`c/xxHash/<commit>/<unit>/` (wrapper.c, cmd.txt, old.ll, new.ll, fwd.log, bwd.log, result.json, calls.txt, ir_diff.txt).\n')
md.append('## Funnel\n')
md.append('| step | count |\n|---|---|')
for k in ('commits_touching_scope', 'keyword_candidates', 'keyword_rejected', 'manual_scan_additions', 'perf_commits'):
    md.append(f'| {k} | {FUNNEL[k]} |')
md.append('')
md.append(FUNNEL['note'] + '\n')
md.append('## Commit verdicts\n')
cv = Counter(r['commit_verdict'] for r in out_commits)
md.append('| verdict | commits |\n|---|---|')
for k in ['EQUIV', 'EQUIV_BOUNDED', 'EQUIV_UNDER_PRECOND', 'REFINES', 'NOT_EQUIV', 'UNKNOWN', 'UNSUPPORTED']:
    if cv.get(k):
        extra = ''
        if k == 'NOT_EQUIV':
            extra = ' (' + ', '.join(f'{a}: {b}' for a, b in Counter(r['not_equiv_kind'] for r in out_commits if r['commit_verdict'] == k).items()) + ')'
        if k == 'UNSUPPORTED':
            extra = ' (' + ', '.join(f'{a}: {b}' for a, b in Counter(r['unsupported_reason'] for r in out_commits if r['commit_verdict'] == k).items()) + ')'
        md.append(f'| {k} | {cv[k]}{extra} |')
md.append('')
md.append('## Per commit\n')
md.append('| commit | date | subject | sel | verdict | kind/reason | coverage | units (verdict) |\n|---|---|---|---|---|---|---|---|')
for r in sorted(out_commits, key=lambda r: r['date']):
    us = '; '.join(f"{u['name'][:60]}: **{u['verdict']}**" for u in r['units'])
    kr = r['not_equiv_kind'] or r['unsupported_reason'] or ''
    md.append(f"| {r['commit']} | {r['date']} | {r['subject'][:60].replace('|', '/')} | {r['selected_by']} | **{r['commit_verdict']}** | {kr} | {r['coverage']} | {us.replace('|', '/')} |")
md.append('')
md.append(open(f'{CX}/_tools/md_tail.md').read())
open(f'{B}/results/xxHash-pre2020.md', 'w').write('\n'.join(md))
print('wrote md')
