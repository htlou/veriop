#!/usr/bin/env python3
"""Freeze mechanical component removals; never tune them from confirmation scores."""
import hashlib,json,shutil,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
source=(root/'c1/LayoutSearch.ml').read_text()
changes={
 'no-neutral': [('gain = 0 && !allow_neutral','false && gain = 0 && !allow_neutral')],
 'no-swap': [('        swap x prev.(y);','        ();'),('      if !allow_neutral then swap x (Random.State.int random n)','      ()')],
 'no-subsequence': [('          move x y !tail;','          ();')],
 'no-reversal': [('          reverse_after x y','          ()')],
 'baseline-seeds': [('[baseline; trace; List.rev baseline]','[baseline; baseline; baseline]')],
}
frozen=root/'results/frozen/c1-ablations.json';assert not frozen.exists()
variants=[]
for component,replacements in changes.items():
    text=source
    for old,new in replacements:assert text.count(old)==1;(None)
    for old,new in replacements:text=text.replace(old,new)
    name='c1-ablation-'+component
    path=root/'c1'/(name+'.ml');path.write_text(text)
    variants.append(dict(variant=name,source=str(path.relative_to(root)),source_sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
frozen.write_text(json.dumps(dict(primary='c1-global',selection='Mechanical one-component removals, declared before inspecting this round of MiBench comparison numbers. No C1 main policy is changed.',variants=variants),indent=2)+'\n')
for record in variants:
    repo=root/'repos'/record['variant'];assert not repo.exists()
    shutil.copytree(root/'repos/measured-c1-global',repo,ignore=shutil.ignore_patterns('.git','test'),symlinks=True)
    shutil.copy2(root/record['source'],repo/'backend/LayoutSearch.ml')
    with (root/'logs'/('build-'+record['variant']+'.log')).open('w') as log:
        subprocess.run(['make','ccomp'],cwd=repo,stdout=log,stderr=subprocess.STDOUT,check=True)
    print('Built',record['variant'],flush=True)
