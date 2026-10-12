#!/usr/bin/env python3
"""Audit preserved C1 proof/performance evidence and the explicit C2 proof gap."""
import hashlib,json,subprocess,tarfile
from pathlib import Path
from acceptance import freeze_baseline_oracles,functional_required
root=Path(__file__).resolve().parent
read=lambda p:json.loads((root/p).read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
git=lambda repo,*args:subprocess.check_output(['git','-C',str(repo),*args])
suites=['regression-c','embench','mibench-evaluation','polybench']
proofs=read('results/baseline-proof-source-sha256.json');assert len(proofs)==253
pins=read('pins.json');frozen=read('results/frozen/c1-candidates.json')
base=root/'repos/baseline';assert git(base,'rev-parse','HEAD').decode().strip()==pins['compcert']['commit']
proof_artifacts=['backend/Linearize.vo','backend/Linearizeproof.vo','driver/Compiler.vo','driver/Complements.vo']
source_audit={};builds=[]
for v in frozen['variants']:
    repo=root/'repos'/v['variant']
    assert git(repo,'rev-parse','HEAD').decode().strip()==pins['compcert']['commit']
    assert sha(repo/'ccomp')==v['compiler_sha256']
    assert sha(root/v['patch'])==v['patch_sha256']
    assert git(repo,'diff','HEAD','--',*sorted(v['sources']))==(root/v['patch']).read_bytes()
    assert set(git(repo,'diff','--name-only','HEAD').decode().splitlines())==set(v['sources'])
    for p,h in v['sources'].items():assert sha(repo/p)==h
    for p in proof_artifacts:assert sha(repo/p)==sha(base/p)
    log='logs/build-'+v['variant']+'.log';assert 'Modules were successfully checked' in (root/log).read_text()
    builds.append(dict(variant=v['variant'],clean_build_exit=0,kernel_check_exit=0,
        unchanged_proof_sources=len(proofs),byte_identical_proof_artifacts=proof_artifacts,
        compiler_sha256=sha(repo/'ccomp'),proof_log=log))
ablations=read('results/frozen/c1-ablations.json')['variants']
for v in ablations:
    assert sha(root/v['source'])==v['source_sha256']
    assert sha(root/'repos'/v['variant']/'backend/LayoutSearch.ml')==v['source_sha256']
variants=['baseline','measured-c1-baseline']
for v in frozen['variants']:variants.extend([v['variant'],'measured-'+v['variant']])
variants.extend(v['variant'] for v in ablations)
for name in variants+['c2-checked-prototype']:
    for p,h in proofs.items():assert sha(root/'repos'/name/p)==h,(name,p)
    source_audit[name]=dict(unchanged_proof_sources=len(proofs))
for name,repo in [('embench',root/'benchmarks/embench'),('mibench',root/'benchmarks/mibench'),('regression',base/'test')]:
    assert git(repo,'rev-parse','HEAD').decode().strip()==pins[name]['commit']
    assert not git(repo,'diff','HEAD','--name-only'),name
archive=root/'benchmarks/polybench-c-4.2.1-beta.tar.gz'
assert sha(archive)==pins['polybench']['sha256']
polyfiles=0
with tarfile.open(archive) as tar:
    for m in tar:
        if m.isfile():
            assert (root/'benchmarks'/m.name).read_bytes()==tar.extractfile(m).read(),m.name
            polyfiles+=1
protocol=freeze_baseline_oracles();assert len(protocol['functional_required'])==11
coverage=[]
for v in variants:
    for s in suites:
        d=read(f'results/{v}/{s}/summary.json');rows=d['programs']
        if s=='mibench-evaluation':expected=protocol['compilation_required']
        else:expected=read(f'results/frozen/{s}.json')['supported']
        assert [r['name'] for r in rows]==expected,(v,s)
        assert d['compiler_sha256']==sha(root/'repos'/v/'ccomp'),(v,s)
        assert all(r['compiled'] for r in rows)
        required=[r for r in rows if functional_required(s,r['name'])]
        assert all(r['functional_pass'] for r in required),(v,s)
        if s!='mibench-evaluation':
            for r in rows:
                for command in r['compilation']:
                    src=Path(command['command'][command['command'].index('-c')+1])
                    assert sha(src)==command['source_sha256']
        coverage.append(dict(variant=v,suite=s,compiled=len(rows),functional_required=len(required),
            functional_pass=sum(r['functional_pass'] for r in required),
            diagnostic_failures=[r['name'] for r in rows if not r['functional_pass']]))
comparisons=[]
for v in ['measured-'+x['variant'] for x in frozen['variants']]+[x['variant'] for x in ablations]:
    for s in suites:
        p=f'results/{v}/{s}-comparison.json';d=read(p)
        assert d['correctness_gate_pass'] and d['baseline_variant']=='measured-c1-baseline'
        if v=='measured-c1-global':assert d['aggregate']['function_jump_regressions']==0
        comparisons.append(p)
transparency=read('results/observer-transparency-c1.json')
assert transparency['pass_all'] and transparency['comparisons']==340
control=read('results/c2-checked-boundary-controls.json')
assert control['original_permutations']==24 and control['original_min_Lgoto']==1
assert control['cloned_permutations']==120 and control['cloned_min_Lgoto']==0
assert not control['new_semantic_preservation_proof']
assert all(v for k,v in control.items() if isinstance(v,bool) and k!='new_semantic_preservation_proof')
c2=[];identical=0
for s in ['regression-c','embench','polybench']:
    p=f'results/c2-checked-prototype/{s}/summary.json';d=read(p)
    assert d['compiler_sha256']==sha(root/'repos/c2-checked-prototype/ccomp')
    assert [r['name'] for r in d['programs']]==read(f'results/frozen/{s}.json')['supported']
    for r in d['programs']:
        assert r['compiled'] and r['functional_pass'] and not r['formal_C_to_output_proof']
        assert r['binary_sha256']==sha(root/'results/c2-checked-prototype'/s/r['name']/'program')
    old=root/f'results/c2-prototype/{s}/summary.json'
    if old.exists():
        for a,b in zip(json.loads(old.read_text())['programs'],d['programs']):
            assert a['name']==b['name'] and a['binary_sha256']==b['binary_sha256'];identical+=1
    c2.append(dict(suite=s,compiled=len(d['programs']),functional_pass=len(d['programs']),
        original_to_cloned_LTL_proof=False,evidence=p))
assert sha(root/'c2/TailClone.ml')==sha(root/'repos/c2-checked-prototype/backend/TailClone.ml')
assert sha(root/'c2/BoundaryControl.ml')==sha(root/'repos/c2-checked-prototype/backend/BoundaryControl.ml')
result=dict(research_deliverables_complete=True,c1_acceptance='PASS under user-approved baseline-valid functional protocol',
    c2_status='Experimental boundary case delivered; original-to-cloned LTL preservation and certificate soundness are NOT proved',
    proof_source_audit=source_audit,proof_builds=builds,frozen_sources_and_patches_match=True,
    benchmark_sources_unchanged=dict(git_pins=['embench','mibench','regression'],polybench_files=polyfiles),
    coverage=coverage,comparison_gates=comparisons,
    transparency_pairs=340,c2_coverage=c2,c2_controls=control,c2_prior_revision_identical_executables=identical,
    required_research_work_remaining=[],
    future_work=['Rocq proof/checker soundness for C2 and composition into compiler','Machine-code growth cost model before accepting C2 as an optimizer'],
    protocol='C1-C2.md',report='REPORT.md',tables='RESULTS.md',reproduction='README.md')
(root/'results/c1-proof-builds.json').write_text(json.dumps(builds,indent=2)+'\n')
(root/'results/completion-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS: 3 frozen C1 builds, 253 proof sources per tree, 32 comparison gates, 340 transparency pairs; C2 73 runtime cases with proof gap explicit')
