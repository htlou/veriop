#!/usr/bin/env python3
"""Prepare one frozen C3 candidate for the existing clean proof build."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

root = Path(__file__).resolve().parents[1]
base = root / 'repos/baseline'
repo = root / 'repos/c3-pgo'
assert not repo.exists()
subprocess.run(['git', 'clone', '--shared', str(base), str(repo)], check=True)
original = (base / 'backend/Linearizeaux.ml').read_text()
(repo / 'backend/Linearizeaux.ml').write_text(
    original[:original.rindex('let enumerate_aux f reach =')] +
    (root / 'c3/enumerate.ml').read_text())
for source in ['c1/LayoutSearch.ml', 'c3/PgoLayout.ml']:
    shutil.copy2(root / source, repo / 'backend' / Path(source).name)
subprocess.run(['git', 'add', '-N', 'backend/LayoutSearch.ml', 'backend/PgoLayout.ml'],
               cwd=repo, check=True)
paths = ['c3/PgoLayout.ml', 'c3/enumerate.ml', 'c3/PROTOCOL.md', 'c1/LayoutSearch.ml',
         'results/c3-profiling/embench.profile']
freeze = {name: hashlib.sha256((root / name).read_bytes()).hexdigest() for name in paths}
(root / 'results/frozen/c3-pgo.json').write_text(json.dumps(freeze, indent=2) + '\n')
(root / 'patches/c3-pgo.patch').write_bytes(subprocess.check_output(['git', 'diff', 'HEAD'], cwd=repo))
print('Frozen C3 sources, objective, profile; no C3 score measured yet.')
