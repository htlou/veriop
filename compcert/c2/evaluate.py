#!/usr/bin/env python3
"""Evaluate emitted C2 assembly; keep the missing proof boundary explicit."""
import argparse,hashlib,importlib.util,json,os,re,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('direct',root/'evaluate-direct.py')
direct=importlib.util.module_from_spec(spec);spec.loader.exec_module(direct)
p=argparse.ArgumentParser();p.add_argument('suite',choices=['embench','regression-c','polybench']);p.add_argument('--variant',default='c2-checked-prototype');a=p.parse_args()
assert re.fullmatch('c2-[a-z-]+',a.variant)
out=root/'results'/a.variant/a.suite;assert not out.exists();out.mkdir(parents=True)
compiler=root/'repos'/a.variant/'ccomp'
reference=json.loads((root/'results/baseline'/a.suite/'summary.json').read_text())
frozen=json.loads((root/'results/frozen'/(a.suite+'.json')).read_text())
rows=[]
for case in direct.catalog(a.suite):
    if case['name'] not in frozen['supported']:continue
    d=out/case['name'];d.mkdir();objects=[];commands=[]
    for i,source in enumerate(case['sources']):
        prefix=d/f'{i:03d}';obj=d/f'{i:03d}.o'
        env=os.environ|{'COMPCERT_C2_OUTPUT':str(prefix),'SOURCE_DATE_EPOCH':'0'}
        cmd=[str(compiler),'-stdlib',str(compiler.parent/'runtime'),'-O','-fall',*case['flags'],'-c',str(source),'-o',str(d/f'{i:03d}.original.o')]
        result=direct.command(cmd,d,d/f'compile-{i}',env,timeout=600);commands.append(result)
        assert result['returncode']==0,case['name']
        assemble=direct.command(['gcc','-c',str(prefix.with_suffix('.s')),'-o',str(obj)],d,d/f'assemble-{i}')
        assert assemble['returncode']==0
        objects.append(str(obj))
    result=direct.command([str(compiler),'-stdlib',str(compiler.parent/'runtime'),*objects,'-lm','-o',str(d/'program')],d,d/'link')
    assert result['returncode']==0
    run=direct.command([str(d/'program')],case['sources'][0].parent,d/'run')
    ref=next(x for x in reference['programs'] if x['name']==case['name'])
    valid=run['returncode']==0 and all(run[k]==ref['run'][k] for k in ['stdout_sha256','stderr_sha256'])
    if case['expected'] is not None:valid &= (d/'run.stdout').read_bytes()==case['expected'].read_bytes()
    size=subprocess.check_output(['size','-A',str(d/'program')],text=True);(d/'size.txt').write_text(size)
    before=[];after=[];certificates=[]
    for path in sorted(d.glob('*.before.json')):before.extend(json.loads(l) for l in path.read_text().splitlines())
    for path in sorted(d.glob('*.after.json')):after.extend(json.loads(l) for l in path.read_text().splitlines())
    for path in sorted(d.glob('*.certificate.json')):certificates.extend(json.loads(l) for l in path.read_text().splitlines())
    assert len(before)==len(after)==len(certificates)
    assert all(r['validator_pass'] for r in before+after)
    assert all(r['proposed_certificate_pass'] and not r['certificate_proved_in_Rocq'] for r in certificates)
    for r in before+after:assert r['Lgoto_count']==sum(e[0]=='goto' for e in r['linear_events'])
    c1=json.loads((root/'results/measured-c1-global'/a.suite/'summary.json').read_text())
    base=next(x for x in c1['programs'] if x['name']==case['name'])
    rows.append(dict(name=case['name'],compiled=True,functional_pass=bool(valid),formal_C_to_output_proof=False,
        baseline_policy='c1-global',before_Lgoto=sum(r['Lgoto_count'] for r in before),after_Lgoto=sum(r['Lgoto_count'] for r in after),
        clones=sum(len(c['clones']) for c in certificates),copied_LTL_instructions=sum(x['copied_LTL_instructions'] for c in certificates for x in c['clones']),
        baseline_text_bytes=base['text_bytes'],text_bytes=int(re.search(r'^\.text\s+(\d+)',size,re.M)[1]),
        binary_sha256=hashlib.sha256((d/'program').read_bytes()).hexdigest(),run=run,compilation=commands))
    (out/'progress.json').write_text(json.dumps(rows,indent=2)+'\n')
    print(case['name'],'jumps',rows[-1]['before_Lgoto'],'->',rows[-1]['after_Lgoto'],'clones',rows[-1]['clones'],'functional',valid,flush=True)
    assert valid,case['name']
(out/'summary.json').write_text(json.dumps(dict(suite=a.suite,variant=a.variant,compiler_sha256=hashlib.sha256(compiler.read_bytes()).hexdigest(),status='Experimental: original-to-cloned LTL preservation is NOT proved; runtime tests and the proposed native certificate checker do not close this proof gap.',programs=rows),indent=2)+'\n')
