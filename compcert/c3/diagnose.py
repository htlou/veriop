#!/usr/bin/env python3
"""Frozen C1 regression diagnosis using explicit software cache/branch models."""
import hashlib,json,os,subprocess,time
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c3-diagnosis';assert not out.exists();out.mkdir()
plan=json.loads((root/'results/c1-performance/plan.json').read_text())
names=['picojpeg','sglib-combined','consumer-jpeg-cjpeg','nettle-sha256','edn','aes']
selected=[c for c in plan['cases'] if c['name'] in names];assert len(selected)==6
frozen=dict(names=names,reason='Three measured regressions plus three near-flat runtime controls selected before proxy collection',valgrind=subprocess.check_output(['valgrind','--version'],text=True).strip(),
    cache_model={'I1':'32768,8,64','D1':'32768,8,64','LL':'8388608,16,64'},scope='Exact executables and workloads used in prior wall-clock evaluation; proxies are not Zen4 hardware events',cases=selected)
(out/'plan.json').write_text(json.dumps(frozen,indent=2)+'\n')
rows=[]
for c in selected:
 for v in ['baseline','c1-global']:
  d=out/c['name']/v;d.mkdir(parents=True)
  binary=Path(c['commands'][v][0]);assert hashlib.sha256(binary.read_bytes()).hexdigest()==c['binary_sha256'][v]
  cmd=['valgrind','--tool=callgrind','--collect-jumps=yes','--dump-instr=yes','--dump-line=no','--branch-sim=yes','--cache-sim=yes','--I1=32768,8,64','--D1=32768,8,64','--LL=8388608,16,64','--callgrind-out-file='+str(d/'callgrind.out'),'--log-file='+str(d/'valgrind.log'),*[str(d/'product') if a=='@OUTPUT@' else a for a in c['commands'][v]]]
  start=time.monotonic()
  with (d/'stdout').open('wb') as stdout,(d/'stderr').open('wb') as stderr:
   p=subprocess.run(cmd,cwd=c['cwd'],env=os.environ|{'LC_ALL':'C','TZ':'UTC'},stdout=stdout,stderr=stderr)
  assert p.returncode==0,(c['name'],v)
  lines=(d/'callgrind.out').read_text().splitlines()
  events=next(l.split()[1:] for l in lines if l.startswith('events:'))
  totals=[l.split()[1:] for l in lines if l.startswith('totals:')]
  values=totals[-1] if totals else next(l.split()[1:] for l in lines if l.startswith('summary:'))
  record=dict(program=c['name'],variant=v,command=cmd,seconds=time.monotonic()-start,returncode=p.returncode,binary_sha256=c['binary_sha256'][v],events=dict(zip(events,map(int,values))),profile=str((d/'callgrind.out').relative_to(root)))
  rows.append(record);(out/'progress.json').write_text(json.dumps(rows,indent=2)+'\n')
  print(c['name'],v,record['events'],flush=True)
(out/'summary.json').write_text(json.dumps(rows,indent=2)+'\n')
