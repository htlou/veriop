#!/usr/bin/env python3
"""Build a separate, identically instrumented compiler without changing proofs."""
import argparse,hashlib,json,re,shutil,subprocess
from pathlib import Path
root=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('variant');p.add_argument('--output');args=p.parse_args()
assert re.fullmatch('[a-z0-9-]+',args.variant)
output=args.output or 'measured-'+args.variant
assert re.fullmatch('[a-z0-9-]+',output)
src=root/'repos'/args.variant;dst=root/'repos'/output
assert not dst.exists(),'Preserve existing measured builds'
assert (src/'ccomp').is_file(),'Complete the clean compiler/proof build first'
shutil.copytree(src,dst,ignore=shutil.ignore_patterns('.git','test'),symlinks=True)
shutil.copy2(root/'measurement/PrintLayout.ml',dst/'backend/PrintLayout.ml')
printer=dst/'backend/PrintLTL.ml'
printer.write_text(printer.read_text()+'\n(* Observational replay; normal compilation is unchanged. *)\nlet print_if prog = print_if prog; PrintLayout.record prog\n')
for name,digest in json.loads((root/'results/baseline-proof-source-sha256.json').read_text()).items():
 assert hashlib.sha256((dst/name).read_bytes()).hexdigest()==digest,name
with (root/'logs'/('build-observer-'+output+'.log')).open('w') as log:
 for cmd in [['make','-f','Makefile.extr','depend'],['make','ccomp']]:subprocess.run(cmd,cwd=dst,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Built',dst/'ccomp')
