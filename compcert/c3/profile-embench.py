#!/usr/bin/env python3
import hashlib,importlib.util,json,os,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c3-profiling/embench';assert not out.exists();out.mkdir()
spec=importlib.util.spec_from_file_location('direct',root/'evaluate-direct.py');direct=importlib.util.module_from_spec(spec);spec.loader.exec_module(direct)
compiler=root/'repos/c3-profile-run/ccomp';rows=[]
for case in direct.catalog('embench'):
 d=out/case['name'];d.mkdir();objects=[]
 env=os.environ|{'VERIOP_PROFILE_DIR':str(d/'metadata'),'VERIOP_EDGE_COUNTS':str(d/'counts.txt'),'SOURCE_DATE_EPOCH':'0'}
 commands=[]
 for i,src in enumerate(case['sources']):
  obj=d/f'{i}.o';cmd=[str(compiler),'-stdlib',str(compiler.parent/'runtime'),'-O','-fall',*case['flags'],'-c',str(src),'-o',str(obj)]
  r=direct.command(cmd,d,d/f'compile-{i}',env);assert r['returncode']==0,(case['name'],i);commands.append(r);objects.append(str(obj))
 r=direct.command([str(compiler),'-stdlib',str(compiler.parent/'runtime'),*objects,'-lm','-o',str(d/'program')],d,d/'link',env);assert r['returncode']==0
 run=direct.command([str(d/'program')],d,d/'run',env);assert run['returncode']==0
 baseline=json.loads((root/'results/baseline/embench/summary.json').read_text());b=next(r for r in baseline['programs'] if r['name']==case['name'])
 assert all(run[k]==b['run'][k] for k in ['stdout_sha256','stderr_sha256'])
 rows.append(dict(program=case['name'],input='CPU_MHZ=1, WARMUP_HEAT=1 (training)',functional_pass=True,profile=str((d/'counts.txt').relative_to(root)),profile_sha256=hashlib.sha256((d/'counts.txt').read_bytes()).hexdigest(),compilation=commands,run=run))
 (out/'progress.json').write_text(json.dumps(rows,indent=2)+'\n');print(case['name'],'profile and original oracle PASS',flush=True)
(out/'summary.json').write_text(json.dumps(rows,indent=2)+'\n')
