#!/usr/bin/env python3
"""Materialize three node-level policies against the unchanged release baseline."""
import hashlib,json,shutil,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
base=root/'repos/baseline'
source=(base/'backend/Linearizeaux.ml').read_text()
source=source[:source.rindex('let enumerate_aux f reach =')]
rows=[]
for mode,name in enumerate(['c1-greedy','c1-global','c1-weighted']):
    repo=root/'repos'/name;assert not repo.exists(),repo
    subprocess.run(['git','clone','--shared',str(base),str(repo)],check=True)
    (repo/'backend/Linearizeaux.ml').write_text(source+(root/'c1/enumerate.ml').read_text().replace('MODE',str(mode)))
    shutil.copy2(root/'c1/LayoutSearch.ml',repo/'backend/LayoutSearch.ml')
    subprocess.run(['git','-C',str(repo),'add','-N','backend/LayoutSearch.ml'],check=True)
    rows.append(dict(variant=name,mode=mode,sources={p:hashlib.sha256((repo/p).read_bytes()).hexdigest() for p in ['backend/Linearizeaux.ml','backend/LayoutSearch.ml']}))
(root/'results/c1-initial-sources.json').write_text(json.dumps(rows,indent=2)+'\n')
