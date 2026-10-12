#!/usr/bin/env python3
"""Freeze the three built C1 policies before confirmation evaluation."""
import hashlib,json,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
record=dict(protocol='C1-C2.md',
    development='Embench and test/c only. All three policies frozen before this round of MiBench collection.',
    evaluation='Previously observed MiBench confirmation set; not a fresh unseen holdout.',
    primary_policy='c1-global (selected using Embench)',
    stop_rule='One confirmation evaluation; no post-MiBench tuning of this family. Continue to C2 even if gains remain modest.',
    variants=[])
for name in ['c1-greedy','c1-global','c1-weighted']:
    repo=root/'repos'/name;patch='patches/'+name+'.patch'
    assert subprocess.check_output(['git','-C',str(repo),'diff','HEAD','--',
        'backend/Linearizeaux.ml','backend/LayoutSearch.ml'])==(root/patch).read_bytes()
    record['variants'].append(dict(variant=name,patch=patch,patch_sha256=sha(root/patch),
        sources={p:sha(repo/p) for p in ['backend/Linearizeaux.ml','backend/LayoutSearch.ml']},
        compiler_sha256=sha(repo/'ccomp')))
path=root/'results/frozen/c1-candidates.json'
if path.exists():assert json.loads(path.read_text())==record
else:path.write_text(json.dumps(record,indent=2)+'\n')
print('PASS: three C1 source, patch and compiler hashes frozen')
