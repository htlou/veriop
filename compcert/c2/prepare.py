#!/usr/bin/env python3
"""Build an explicitly experimental clone observer beside the verified compiler."""
import argparse,hashlib,json,re,shutil,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('--variant',default='c2-checked-prototype');args=p.parse_args()
assert re.fullmatch('c2-[a-z-]+',args.variant)
dst=root/'repos'/args.variant;assert not dst.exists()
shutil.copytree(root/'repos/c1-global',dst,ignore=shutil.ignore_patterns('.git','test'),symlinks=True)
shutil.copy2(root/'c2/TailClone.ml',dst/'backend/TailClone.ml')
shutil.copy2(root/'measurement/PrintLayout.ml',dst/'backend/PrintLayout.ml')
p=dst/'backend/PrintLTL.ml';p.write_text(p.read_text()+'\nlet print_if prog = print_if prog; TailClone.observe prog\n')
for p,h in json.loads((root/'results/baseline-proof-source-sha256.json').read_text()).items():assert hashlib.sha256((dst/p).read_bytes()).hexdigest()==h
with (root/'logs'/(args.variant+'-build.log')).open('w') as log:
    for cmd in [['make','-f','Makefile.extr','depend'],['make','ccomp']]:subprocess.run(cmd,cwd=dst,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Built experimental C2 observer. No C-to-cloned-CFG proof is claimed.')
