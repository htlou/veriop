#!/usr/bin/env python3
"""Replay the observer on scaled Embench inputs and match native object bytes."""
import hashlib,json,os,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c1-performance'
builds=json.loads((out/'embench-builds.json').read_text());rows=[]
dst=out/'scaled-layout';assert not dst.exists();dst.mkdir()
for build in builds:
    variant=build['variant'];observed='measured-c1-baseline' if variant=='baseline' else 'measured-c1-global'
    d=dst/variant/build['program'];d.mkdir(parents=True)
    records=[]
    for i,compiled in enumerate(build['compilation']):
        cmd=list(compiled['command']);native=Path(cmd[cmd.index('-o')+1]);obj=d/f'{i}.o';metrics=d/f'{i}.linear.json'
        cmd[0]=str(root/'repos'/observed/'ccomp');cmd[cmd.index('-stdlib')+1]=str(root/'repos'/observed/'runtime');cmd[cmd.index('-o')+1]=str(obj)
        result=subprocess.run(cmd,stdout=subprocess.PIPE,stderr=subprocess.PIPE,env=os.environ|{'COMPCERT_LAYOUT_METRICS':str(metrics),'SOURCE_DATE_EPOCH':'0'})
        (d/f'{i}.stderr').write_bytes(result.stderr);assert result.returncode==0
        assert obj.read_bytes()==native.read_bytes(),(variant,build['program'],i)
        fs=[json.loads(line) for line in metrics.read_text().splitlines()]
        assert all(f['validator_pass'] and f['Lgoto_count']==sum(e[0]=='goto' for e in f['linear_events']) for f in fs)
        records.extend(fs)
    rows.append(dict(variant=variant,program=build['program'],Lgoto=sum(r['Lgoto_count'] for r in records),
        observed_objects_identical=True,translation_units=len(build['compilation'])))
(dst/'summary.json').write_text(json.dumps(rows,indent=2)+'\n')
print('PASS: scaled Embench actual Linear counts and all native/observed object bytes')
print({v:sum(r['Lgoto'] for r in rows if r['variant']==v) for v in ['baseline','c1-global']})
