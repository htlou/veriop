#!/usr/bin/env python3
"""Verify frozen policy, matched compiler inputs, complete samples and checks."""
import collections,hashlib,json,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c1-performance'
read=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
plan=read(out/'plan.json');freeze=read(out/'pre-timing-freeze.json');checks=[]
for name,digest in freeze.items():
    p=out/name if name in ['plan.json','check-before/summary.json'] else root/'performance'/name
    assert sha(p)==digest,name
primary=next(r for r in read(root/'results/frozen/c1-candidates.json')['variants'] if r['variant']=='c1-global')
for p,digest in primary['sources'].items():assert sha(root/'repos/c1-global'/p)==digest
assert sha(root/'repos/c1-global/ccomp')==primary['compiler_sha256']
proofs=read(root/'results/baseline-proof-source-sha256.json')
for v in ['baseline','c1-global']:
    for p,digest in proofs.items():assert sha(root/'repos'/v/p)==digest
assert len(plan['cases'])==33 and all('c2-' not in str(c) for c in plan['cases'])
assert collections.Counter(c['suite'] for c in plan['cases'])=={'embench':19,'mibench':11,'regression-sanity':2,'control':1}
assert {c['name'] for c in plan['cases'] if c['suite']=='mibench'}==set(read(root/'results/frozen/mibench-functional-oracles.json')['functional_required'])
for c in plan['cases']:
    for v,command in c['commands'].items():assert sha(Path(command[0]))==c['binary_sha256'][v]
    assert c['commands']['baseline'][1:]==c['commands']['c1-global'][1:]
builds=read(out/'embench-builds.json')
for name in {r['program'] for r in builds}:
    b,c=[next(r for r in builds if r['program']==name and r['variant']==v) for v in ['baseline','c1-global']]
    assert b['flags']==c['flags'] and '-DCPU_MHZ=1000' in b['flags']
    for x,y in zip(b['compilation'],c['compilation']):
        assert x['source_sha256']==y['source_sha256']
        bx=x['command'];cy=y['command'];source=Path(bx[bx.index('-c')+1])
        assert sha(source)==x['source_sha256']
        # Exact ordered compiler arguments except compiler/runtime/output paths.
        norm=lambda cmd:[t.replace('/repos/baseline/','/repos/VARIANT/').replace('/repos/c1-global/','/repos/VARIANT/').replace('/build/baseline/','/build/VARIANT/').replace('/build/c1-global/','/build/VARIANT/') for t in cmd]
        assert norm(bx)==norm(cy)
    assert norm(b['link']['command'])==norm(c['link']['command'])
# Native MiBench observations cover actual compile AND link driver arguments.
projects=sorted({r['project'] for r in read(root/'results/baseline/mibench-evaluation/summary.json')['programs']})
for project in projects:
    normalized=[]
    for v in ['baseline','c1-global']:
        d=read(root/'results'/v/'mibench-evaluation'/project.replace('/','-')/'build.json')
        work=root/'build'/('mibench-'+v+'-evaluation-fixed-clock')
        records=[]
        for r in d['observations']:
            assert r['returncode']==0
            sources={str(Path(p).relative_to(work)):h for p,h in r['sources_sha256'].items()}
            for p,h in r['sources_sha256'].items():assert sha(Path(p))==h
            args=[a.replace(str(work),'WORK') for a in r['args']]
            records.append(json.dumps(dict(cwd=str(Path(r['cwd']).relative_to(work)),args=args,link=r['link'],sources=sources),sort_keys=True))
        normalized.append(collections.Counter(records))
    assert normalized[0]==normalized[1],project
for label in ['check-before','check-after']:
    check=read(out/label/'summary.json');assert len(check)==33 and all(r['pass_both'] for r in check)
before=read(out/'check-before/summary.json');after=read(out/'check-after/summary.json')
assert [(r['suite'],r['name'],r['output_sha256']) for r in before]==[(r['suite'],r['name'],r['output_sha256']) for r in after]
scaled=read(out/'scaled-layout/summary.json')
assert len(scaled)==38 and all(r['observed_objects_identical'] for r in scaled)
assert {v:sum(r['Lgoto'] for r in scaled if r['variant']==v) for v in ['baseline','c1-global']}=={'baseline':672,'c1-global':654}
raw=[json.loads(l) for l in (out/'samples.jsonl').read_text().splitlines()];assert len(raw)==5280
schedule=read(out/'schedule.json');assert len(schedule)==40
assert sum(s[0]=='baseline' for s in schedule)==20
for c in plan['cases']:
    rows=[r for r in raw if (r['suite'],r['name'])==(c['suite'],c['name'])];assert len(rows)==160
    assert collections.Counter(r['variant'] for r in rows)=={'baseline':80,'c1-global':80}
    for i,order in enumerate(schedule):
        block=sorted((r for r in rows if r['block']==i),key=lambda r:r['index'])
        assert [r['variant'] for r in block]==order
        assert all(r['returncode']==0 and r['wall_ns']>0 for r in block)
finished=read(out/'finished.json');assert sha(out/'samples.jsonl')==finished['samples_sha256'] and sha(out/'blocks.jsonl')==finished['blocks_sha256']
env=read(out/'environment.json');assert env['affinity']==[plan['cpu']] and env['runner_sha256']==sha(root/'performance/run.py')
summary=read(out/'summary.json');assert summary['samples']==5280 and len(summary['programs'])==33
report=dict(frozen_policy_and_measurement_source=True,unchanged_proof_sources_per_compiler=len(proofs),
    matching_embench_source_flags_and_link_commands=True,matching_native_mibench_compile_and_link_observations=True,
    workload_counts=dict(collections.Counter(c['suite'] for c in plan['cases'])),functional_checks_before_after='33/33 each',
    measured_invocations=5280,samples_per_variant_per_case=80,no_outlier_removal=True,cpu=plan['cpu'],
    scaled_embench_Lgoto=dict(baseline=672,candidate=654),
    scaled_native_observed_objects=sum(r['translation_units'] for r in scaled),
    wall_clock_evaluation_complete=True,current_user_approved_stage_complete=True,
    scope_update='User explicitly approved wall-clock first after the PMU permission failure; counters deferred',
    requested_hardware_counters_complete=False,
    counter_status='UNAVAILABLE: seven direct perf_event_open probes returned EACCES; PMU-enabled host required for outstanding counters',
    c2_included=False,summary_sha256=sha(out/'summary.json'))
(out/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print('PASS: frozen sources, matching build inputs, 5280 balanced measurements and 66 functional checks')
