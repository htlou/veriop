#!/usr/bin/env python3
"""Restore nested upstream Git metadata without changing archived source files."""
import hashlib,json,subprocess,sys
from pathlib import Path
root=Path(__file__).resolve().parents[2]
for item in json.loads((Path(__file__).with_name('upstreams.json')).read_text()):
    if len(sys.argv)>1 and Path(item['path']).name not in sys.argv[1:]: continue
    repo=root/item['path']
    def git(*args): return subprocess.check_output(['git','-C',str(repo),*args])
    if not (repo/'.git').exists():
        git('init','--quiet')
        git('remote','add','origin',item['url'])
        git('fetch','--depth=1','origin',item['commit'])
        git('update-ref','HEAD',item['commit'])
        git('read-tree',item['commit'])
    assert git('rev-parse','HEAD').decode().strip()==item['commit'],repo
    assert hashlib.sha256(git('diff','--binary','HEAD')).hexdigest()==item['patch_sha256'],repo
    print('PASS',item['path'],item['commit'])
