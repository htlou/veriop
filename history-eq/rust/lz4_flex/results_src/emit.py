import json, sys, subprocess
from collections import Counter
sys.path.insert(0, '.')
from common import ENTRIES, META, R
import e2020, e2021, e2023, patches
from rejected import REJ, MANUAL_CONSIDERED
H = R.parent.parent
def subj(c):
    return subprocess.run(['git','-C',str(H/'repos/lz4_flex'),'log','-1','--format=%s',c],capture_output=True,text=True).stdout.strip()
order = sorted(ENTRIES.values(), key=lambda e: (e['date'], e['commit']))
rejected = [dict(commit=c, subject=subj(c), reason=r) for c, r in REJ.items()] + \
           [dict(commit=c, subject=subj(c), reason=r) for c, r in MANUAL_CONSIDERED.items()]
out = dict(repo='lz4_flex', tool='Aeneas',
  toolchain=dict(charon='/srv/home/hantaolou/code/veriop/aeneas/env/charon/charon (pin c8f15d7, nightly-2026-09-17)',
                 aeneas='/srv/home/hantaolou/code/veriop/aeneas/repos/aeneas/src/_build/default/main.exe (patched build of 557eff8 with the sibling experiment\'s local fixes; used for ALL runs)',
                 lean='leanprover/lean4:v4.31.0 + Aeneas Lean backend (shared prebuilt)'),
  funnel=dict(commits_touching_scope=320, keyword_candidates=91, manual_scan_additions=13, perf_commits=75),
  rejected=rejected, commits=order)
(H/'results').mkdir(exist_ok=True)
(H/'results/lz4_flex.json').write_text(json.dumps(out, indent=1))
cv = Counter(e['commit_verdict'] for e in order)
rv = Counter(e['raw_verdict'] for e in order)
ur = Counter(e['unsupported_reason'] for e in order if e['commit_verdict']=='UNSUPPORTED')
print('commit', dict(cv)); print('raw', dict(rv)); print('reasons', dict(ur))

# ---------------- markdown ----------------
L = []
L += ['# lz4_flex — historical performance commits vs. Charon → Aeneas → Lean 4', '',
      'Full data: `results/lz4_flex.json`. Artifacts: `rust/lz4_flex/` (`work/<sha>/` LLBC + charon/aeneas/lean logs and printed/normalised LLBC diffs, `lean/C<sha>/` generated models, merged `*Both.lean` and `Proof*.lean`, `scripts/` pipeline).', '',
      '## Funnel', '',
      '| step | count |', '|---|---|',
      '| non-merge commits touching `src/` (excl. tests, bin, test_bins, main.rs) | 320 |',
      '| keyword candidates | 91 |', '| rejected after reading message+diff | 29 |',
      '| manual-scan additions | 13 |', '| **performance commits** | **75** |', '',
      '## Verdicts (primary = api level where needed)', '',
      '| verdict | commits |', '|---|---|']
for k in ['EQUIV','EQUIV_BOUNDED','EQUIV_UNDER_PRECOND','REFINES','NOT_EQUIV','UNKNOWN','UNSUPPORTED']:
    L.append(f'| {k} | {cv.get(k,0)} |')
L += ['', 'Raw-level verdicts: ' + ', '.join(f'{k} {v}' for k, v in sorted(rv.items())), '',
      'UNSUPPORTED reasons: ' + ', '.join(f'{k} {v}' for k, v in sorted(ur.items(), key=lambda x: -x[1])), '']
structural = [(e['commit'], u) for e in order for u in e['units']
              if u.get('evidence_type') == 'identical-llbc' and u['verdict'] == 'UNSUPPORTED']
L += [f'Structurally identical LLBC excluded from Aeneas proof counts: {len(structural)} units in '
      f'{len({c for c, _ in structural})} commits.', '']
L += ['## Per-commit table', '', '| commit | date | subject | commit verdict | raw | reason/kind |', '|---|---|---|---|---|---|']
for e in order:
    rk = e['unsupported_reason'] or e['not_equiv_kind'] or ''
    s = e['subject'].replace('|', '/')[:70]
    L.append(f"| {e['commit']} | {e['date']} | {s} | {e['commit_verdict']} | {e['raw_verdict']} | {rk} |")
(H/'results/lz4_flex.md').write_text('\n'.join(L) + '\n' + open(R/'results_src/md_tail.md').read())
