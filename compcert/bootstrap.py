#!/usr/bin/env python3
"""Fetch the exact source/tool inputs for this x86-64 Linux experiment."""
import hashlib,json,os,subprocess
from pathlib import Path
root=Path(__file__).resolve().parent
pins=json.loads((root/'pins.json').read_text())

def download(url,path,digest):
    path.parent.mkdir(parents=True,exist_ok=True)
    if not path.exists():subprocess.run(['curl','-fL','--retry','2',url,'-o',str(path)],check=True)
    assert hashlib.sha256(path.read_bytes()).hexdigest()==digest,path

def checkout(path,pin):
    if not (path/'.git').exists():
        path.mkdir(parents=True,exist_ok=True)
        for args in [['init'],['remote','add','origin',pin['url']],['fetch','--depth=1','origin',pin['commit']],['checkout','--detach','FETCH_HEAD']]:
            subprocess.run(['git','-C',str(path),*args],check=True)
    assert subprocess.check_output(['git','-C',str(path),'rev-parse','HEAD'],text=True).strip()==pin['commit']

opam=root/'env/bin/opam'
download('https://github.com/ocaml/opam/releases/download/2.6.0/opam-2.6.0-x86_64-linux',opam,'a59184447f881005dae70b2ae455c3a7e9549834a41c635c49a5a28235eca758');opam.chmod(0o755)
gmp=root/'env/downloads/libgmp-dev.deb'
download('https://archive.ubuntu.com/ubuntu/pool/main/g/gmp/libgmp-dev_6.2.1+dfsg-3ubuntu1_amd64.deb',gmp,'e4ce547c5c5e4efd98854d06559349b3a03272eb343f1bd8e4ccac7b783229a3')
if not (root/'env/gmp/usr/include/x86_64-linux-gnu/gmp.h').exists():
    subprocess.run(['dpkg-deb','-x',str(gmp),str(root/'env/gmp')],check=True)
checkout(root/'repos/baseline',pins['compcert'])
subprocess.run(['git','-C',str(root/'repos/baseline'),'submodule','update','--init','--depth','1'],check=True)
assert subprocess.check_output(['git','-C',str(root/'repos/baseline/test'),'rev-parse','HEAD'],text=True).strip()==pins['regression']['commit']
for name in ['embench','mibench']:checkout(root/'benchmarks'/name,pins[name])
archive=root/'benchmarks/polybench-c-4.2.1-beta.tar.gz';download(pins['polybench']['url'],archive,pins['polybench']['sha256'])
if not (root/'benchmarks/polybench-c-4.2.1-beta').exists():subprocess.run(['tar','-xzf',str(archive),'-C',str(root/'benchmarks')],check=True)
(root/'logs').mkdir(exist_ok=True);(root/'results').mkdir(exist_ok=True)
files=subprocess.check_output(['git','-C',str(root/'repos/baseline'),'ls-files','*.v'],text=True).splitlines()
proofs={s:hashlib.sha256((root/'repos/baseline'/s).read_bytes()).hexdigest() for s in files}
manifest=root/'results/baseline-proof-source-sha256.json'
if manifest.exists():assert json.loads(manifest.read_text())==proofs
else:manifest.write_text(json.dumps(proofs,indent=2)+'\n')
print('PASS: pinned sources and bootstrap tool hashes')
