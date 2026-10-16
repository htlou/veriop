#!/usr/bin/env python3
"""Collect verdicts into summary.json / summary.md.

Reads results.jsonl (an accepted record per case name wins, else the latest) and the V3 / partition
logs.  A V2 case <c> of cases.py is accepted iff
  record <c> is accepted, or it is covered by accepted format-bit splits:
  (<c>_w0 or both <c>_f0, <c>_f1)  and  (<c>_w1 or both <c>_f2, <c>_f3)
(w0/w1 fix skip_white_space to 0/1; f0..f3 fix both parser-read format bits;
 f0,f1 have skip_white_space = 0 and f2,f3 have it = 1, so each disjunct covers
 exactly the same fmt values).
"""
import hashlib, json
from pathlib import Path
import cases as C
HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()

recs = {}
for line in (HERE / 'results.jsonl').read_text().splitlines():
    r = json.loads(line)
    # an accepted run is a proof and is kept even if a later duplicate run of the
    # same case was killed (killed duplicates are recorded as rc=-15 failures)
    if r['case'] in recs and recs[r['case']]['accepted'] and not r['accepted']:
        continue
    recs[r['case']] = r
import runall


def logs_ok(n):
    # both direction logs of run n exist on disk and pass the acceptance test
    u = recs[n]['unroll']
    for d in ('fwd', 'rev'):
        lp = HERE / 'logs' / f'{n}_u{u}_{d}.log'
        txt = lp.read_text() if lp.exists() else ''
        if '\n\n' not in txt or not runall.accept(txt.split('\n\n', 1)[1], 0):
            return False
    return True


acc = lambda n: n in recs and recs[n]['accepted'] and logs_ok(n)
t = lambda n: recs[n]['seconds'] if n in recs else 0


def v2_status(c, sfx=''):
    if acc(c + sfx):
        return 'PASS', [c + sfx], t(c + sfx)
    half = []
    for w, fs in (('w0', ('f0', 'f1')), ('w1', ('f2', 'f3'))):
        if acc(f'{c}_{w}{sfx}'):
            half.append([f'{c}_{w}{sfx}'])
        elif all(acc(f'{c}_{f}{sfx}') for f in fs):
            half.append([f'{c}_{f}{sfx}' for f in fs])
        else:
            return ('FAIL' if c + sfx in recs else 'MISSING'), [], t(c + sfx)
    used = half[0] + half[1]
    return 'PASS', used, sum(t(n) for n in used)


def log_ok(name, needles):
    p = HERE / 'logs' / name
    return p.exists() and all(n in p.read_text() for n in needles)


rows = []
for c in ('v1a', 'v1b'):
    r = recs.get(c)
    rows.append(dict(check=c, family='V1', unroll=0, verdict='PASS' if r and r['accepted'] else 'FAIL',
                     seconds=r['seconds'] if r else None, runs=[c]))
rows.append(dict(check='v3', family='V3', verdict='PASS' if log_ok('v3.log', [
    'Transformation seems to be correct! (syntactically equal)', 'These functions seem to be equivalent!',
    '0 incorrect transformations', '0 Alive2 errors']) else 'FAIL', runs=['v3']))
# single-file src/tgt mode prints no summary block; require both verdict lines and no ERROR
rows.append(dict(check='partition', family='P', verdict='PASS' if log_ok('partition.log', [
    'Transformation seems to be correct!', 'These functions seem to be equivalent!'])
    and 'ERROR' not in (HERE / 'logs/partition.log').read_text() else 'FAIL', runs=['partition']))
for fam, sfx in (('V2', ''), ('V2G', '_h')):
    for c, u in C.cases():
        v, used, secs = v2_status(c, sfx)
        rows.append(dict(check=c + sfx, family=fam, unroll=u, verdict=v, seconds=round(secs, 1), runs=used,
                         abandoned_unsplit=(c + sfx in recs and not recs[c + sfx]['accepted'] and v == 'PASS')))

neg = {}
p = HERE / 'negative_controls.jsonl'
if p.exists():
    for line in p.read_text().splitlines():
        r = json.loads(line); neg[r['case']] = dict(rejected=not r['accepted'], reason=r['reason'], seconds=r['seconds'])

# accepted records whose logs were later overwritten by a killed duplicate run (not used)
bad_logs = sorted(n for n in recs if recs[n]['accepted'] and not logs_ok(n))
all_pass = all(r['verdict'] == 'PASS' for r in rows)
summary = dict(
    all_subchecks_pass=all_pass,
    inputs={v: sha(ROOT / f'build/ir/{v}/u16_impl.ll') for v in ('stock', 'cand')},
    alive_tv_sha256=sha(HERE / 'alive2-sinkcheck/build/alive-tv'),
    alive2_patch_sha256=sha(HERE / 'alive2-sinkcheck.patch'),
    counts={f: {v: sum(1 for r in rows if r['family'] == f and r['verdict'] == v) for v in ('PASS', 'FAIL', 'MISSING')}
            for f in ('V1', 'V3', 'P', 'V2', 'V2G')},
    v2_split_cases=[r['check'] for r in rows if r['family'] in ('V2', 'V2G') and r['verdict'] == 'PASS' and r['runs'] != [r['check']]],
    negative_controls=neg,
    bad_logs=bad_logs,
    rows=rows)
(HERE / 'summary.json').write_text(json.dumps(summary, indent=1) + '\n')

md = ['# Final verification sub-check summary', '', f"All sub-checks pass: **{all_pass}**", '',
      '| family | PASS | FAIL | MISSING | per-case Alive2 time (old=>new + new=>old, summed over fmt splits) |',
      '|---|---|---|---|---|']
for fam, cnt in summary['counts'].items():
    secs = sorted(r['seconds'] for r in rows if r['family'] == fam and r['verdict'] == 'PASS' and r.get('seconds') is not None)
    tm = (f"min {secs[0]:.0f} s, median {secs[len(secs)//2]:.0f} s, max {secs[-1]:.0f} s, total {sum(secs)/3600:.2f} CPU-h"
          if secs else '-')
    md.append(f"| {fam} | {cnt['PASS']} | {cnt['FAIL']} | {cnt['MISSING']} | {tm} |")
md += ['', f"Cases closed through fmt-bit splits (the unsplit run was abandoned or timed out): {', '.join(summary['v2_split_cases'])}",
       '', '| check | unroll | verdict | seconds | runs (fmt splits) |', '|---|---|---|---|---|']
for r in rows:
    md.append(f"| {r['check']} | {r.get('unroll', '-')} | {r['verdict']} | {r.get('seconds', '-')} | {' '.join(r['runs'])} |")
if neg:
    md += ['', '## Negative controls (must be rejected)', '', '| control | rejected | reason |', '|---|---|---|']
    for k, v in neg.items():
        md.append(f"| {k} | {v['rejected']} | {v['reason']} |")
(HERE / 'summary.md').write_text('\n'.join(md) + '\n')
print('all_subchecks_pass', all_pass, json.dumps(summary['counts']), 'splits', summary['v2_split_cases'])
