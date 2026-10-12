#!/usr/bin/env python3
import json, subprocess, sys
from pathlib import Path
ROOT = Path('/srv/home/hantaolou/code/veriop/history-eq')
W = ROOT/'c/xxHash/_work2020'
R = ROOT/'repos/xxHash'
def git(*a): return subprocess.run(['git','-C',str(R),*a],capture_output=True,text=True).stdout.strip()
perf = [l.split() for l in (W/'perf.txt').read_text().split('\n') if l.strip()]
rej = [l.split('\t') for l in (W/'rejected.tsv').read_text().split('\n') if l.strip()]
commits, missing = [], []
for sha, sel in perf:
    p = ROOT/'c/xxHash'/sha/'entry.json'
    if not p.exists(): missing.append(sha); continue
    e = json.loads(p.read_text())
    e['selected_by'] = 'keyword' if sel == 'K' else 'manual-scan'
    commits.append(e)
commits.sort(key=lambda e: git('log','-1','--format=%ct',e['commit']), reverse=True)
if missing:
    raise SystemExit(f'{len(missing)} xxHash entries missing: {", ".join(missing)}')
out = {'repo':'xxHash','tool':'Alive2','part':'commits with committer date >= 2020-01-01 (git log --since=2020-01-01)',
  'funnel':{'commits_touching_scope':396,'keyword_candidates':106,'manual_scan_additions':sum(1 for _,s in perf if s=='M'),'perf_commits':len(perf)},
  'rejected':[{'commit':c,'subject':git('log','-1','--format=%s',c),'reason':r,'selected_by':s} for c,s,r in rej],
  'commits':commits}
(ROOT/'results/xxHash-2020on.json').write_text(json.dumps(out, indent=1))
print('missing', missing)
from collections import Counter
print(Counter(e['commit_verdict'] for e in commits))
