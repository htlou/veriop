#!/usr/bin/env python3
"""Negative controls: the original checker rejects omissions and duplicates."""
import hashlib,json,shutil,subprocess
from pathlib import Path

root=Path(__file__).resolve().parent
repo=root/'repos/validator-negative-control';assert not repo.exists()
shutil.copytree(root/'repos/candidate-v2',repo,ignore=shutil.ignore_patterns('.git','test'),symlinks=True)
out=root/'results/validator-negative-control';out.mkdir()
source=out/'main.c';source.write_text('int main(void) { return 0; }\n')
layout=repo/'backend/Linearizeaux.ml'
# The first occurrence is inside the original commented-out trivial enumerator.
text=layout.read_text();start=text.rindex('let enumerate_aux f reach =')
rows=[]
for name,body in [('omitted','[]'),('duplicate','[f.fn_entrypoint; f.fn_entrypoint]')]:
    layout.write_text(text[:start]+'let enumerate_aux f reach = '+body+'\n')
    with (out/(name+'-build.log')).open('w') as log:
        subprocess.run(['make','ccomp'],cwd=repo,stdout=log,stderr=subprocess.STDOUT,check=True)
    cmd=[str(repo/'ccomp'),'-stdlib',str(repo/'runtime'),'-c',str(source),'-o',str(out/(name+'.o'))]
    p=subprocess.run(cmd,capture_output=True,text=True)
    (out/(name+'.stdout')).write_text(p.stdout);(out/(name+'.stderr')).write_text(p.stderr)
    assert p.returncode!=0 and 'enumeration' in p.stderr.lower(),p.stderr
    rows.append(dict(case=name,command=cmd,returncode=p.returncode,diagnostic=p.stderr))
for name,h in json.loads((root/'results/baseline-proof-source-sha256.json').read_text()).items():
    assert hashlib.sha256((repo/name).read_bytes()).hexdigest()==h
cmd=[str(root/'repos/candidate-v2/ccomp'),'-stdlib',str(root/'repos/candidate-v2/runtime'),'-c',str(source),'-o',str(out/'positive.o')]
subprocess.run(cmd,check=True)
(out/'summary.json').write_text(json.dumps(dict(unchanged_checker=True,positive_control_pass=True,negative_controls=rows),indent=2)+'\n')
print('PASS: unchanged validator rejects omitted and duplicate nodes; final candidate passes')
