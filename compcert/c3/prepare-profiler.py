#!/usr/bin/env python3
import hashlib,json,shutil,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1];dst=root/'repos/c3-profiler';assert not dst.exists()
shutil.copytree(root/'repos/baseline',dst,ignore=shutil.ignore_patterns('.git','test'),symlinks=True)
shutil.copy2(root/'c3/EdgeProfile.ml',dst/'backend/EdgeProfile.ml')
p=dst/'backend/PrintLTL.ml';p.write_text(p.read_text()+'\nlet print_if prog = print_if prog; EdgeProfile.observe prog\n')
for p,h in json.loads((root/'results/baseline-proof-source-sha256.json').read_text()).items():assert hashlib.sha256((dst/p).read_bytes()).hexdigest()==h
with (root/'logs/c3-profiler-build.log').open('w') as log:
 for cmd in [['make','-f','Makefile.extr','depend'],['make','ccomp']]:subprocess.run(cmd,cwd=dst,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Profiling-only compiler built; production compilers unchanged')
