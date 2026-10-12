#!/usr/bin/env python3
"""Prepare unchanged-source workloads for frozen baseline/C1 CPU evaluation."""
import hashlib,importlib.util,json,os,shutil,subprocess,time
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c1-performance'
assert not out.exists();out.mkdir()
read=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
core=read(root/'performance/core-selection.json');os.sched_setaffinity(0,{core['cpu']})
freeze=read(root/'results/frozen/c1-candidates.json')
primary=next(x for x in freeze['variants'] if x['variant']=='c1-global')
assert sha(root/'repos/c1-global/ccomp')==primary['compiler_sha256']
for p,h in primary['sources'].items():assert sha(root/'repos/c1-global'/p)==h
baseline=read(root/'results/baseline/embench/summary.json')
assert sha(root/'repos/baseline/ccomp')==baseline['compiler_sha256']
spec=importlib.util.spec_from_file_location('direct',root/'evaluate-direct.py')
direct=importlib.util.module_from_spec(spec);spec.loader.exec_module(direct)
cases=[];builds=[]
for case in direct.catalog('embench'):
    commands={};bins={}
    for variant in ['baseline','c1-global']:
        compiler=root/'repos'/variant/'ccomp';d=out/'build'/variant/case['name'];d.mkdir(parents=True)
        flags=[f.replace('-DCPU_MHZ=1','-DCPU_MHZ=1000') for f in case['flags']]
        objects=[];records=[]
        for i,source in enumerate(case['sources']):
            obj=d/f'{i}.o';cmd=[str(compiler),'-stdlib',str(compiler.parent/'runtime'),'-O','-fall',*flags,'-c',str(source),'-o',str(obj)]
            result=direct.command(cmd,d,d/f'compile-{i}',os.environ|{'SOURCE_DATE_EPOCH':'0'});assert result['returncode']==0
            result['source_sha256']=sha(source);records.append(result);objects.append(str(obj))
        cmd=[str(compiler),'-stdlib',str(compiler.parent/'runtime'),*objects,'-lm','-o',str(d/'program')]
        result=direct.command(cmd,d,d/'link',os.environ|{'SOURCE_DATE_EPOCH':'0'});assert result['returncode']==0
        builds.append(dict(program=case['name'],variant=variant,flags=['-O','-fall',*flags],compilation=records,link=result,binary_sha256=sha(d/'program'),compiler_sha256=sha(compiler)))
        commands[variant]=[str(d/'program')];bins[variant]=sha(d/'program')
    cases.append(dict(suite='embench',name=case['name'],cwd=str(out),commands=commands,binary_sha256=bins,workload='Upstream CPU_MHZ=1000, WARMUP_HEAT=1; source unchanged'))
    print('built',case['name'],flush=True)
(out/'embench-builds.json').write_text(json.dumps(builds,indent=2)+'\n')
# Keep supported MiBench executables, enlarge only through their upstream CLI/input files.
manifest=read(root/'results/frozen/mibench-functional-oracles.json')
reference={v:read(root/'results'/v/'mibench-evaluation/summary.json') for v in ['baseline','c1-global']}
for row in reference['baseline']['programs']:
    if row['name'] not in manifest['functional_required']:continue
    name=row['name'];project=row['project'];work=out/'work'/project
    if not work.exists():shutil.copytree(root/'build/mibench-baseline-evaluation-fixed-clock'/project,work,ignore=shutil.ignore_patterns('*.o','*.a','*.ltl'),symlinks=True)
    commands={};bins={}
    for v in reference:
        r=next(x for x in reference[v]['programs'] if x['name']==name);assert r['functional_pass']
        binary=root/r['binary'];assert sha(binary)==r['binary_sha256']
        command=list(r['runs'][0]['command']);command[0]=str(binary)
        # Output files go to a fresh path during correctness checks and /dev/null in timing.
        command=['@OUTPUT@' if '/runtime/' in arg else arg for arg in command]
        for old,new in [('input_small.ppm','input_large.ppm'),('input_small.jpg','input_large.jpg'),('small.wav','large.wav'),('small.lout','large.lout'),('input_small.asc','input_large.asc'),('data/small.au','data/large.au')]:
            command=[new if arg==old else arg for arg in command]
        if name=='automotive-bitcount-bitcnts':command=[str(binary),'1125000']
        if name=='telecomm-FFT-fft':command=[str(binary),'8','32768']
        commands[v]=command;bins[v]=sha(binary)
    cases.append(dict(suite='mibench',name=name,cwd=str(work),commands=commands,binary_sha256=bins,
        workload='Upstream large input/CLI on frozen executable; basicmath_small, qsort_small and bftest retain original input/self-test'))
for name in ['aes','fft']:
    commands={v:[str(root/'results'/v/'regression-c'/name/'program')] for v in ['baseline','c1-global']}
    cases.append(dict(suite='regression-sanity',name=name,cwd=str(out),commands=commands,
        binary_sha256={v:sha(Path(c[0])) for v,c in commands.items()},workload='Unchanged upstream test/c executable'))
cases.append(dict(suite='control',name='launch-floor',cwd=str(out),commands={v:['/usr/bin/true'] for v in ['baseline','c1-global']},binary_sha256={v:sha(Path('/usr/bin/true')) for v in ['baseline','c1-global']},workload='Identical executable negative control; launch floor, no subtraction'))
plan=dict(cpu=core['cpu'],siblings=core['siblings'],warmups_per_variant=3,blocks=40,
    order='20 ABBA and 20 BAAB blocks, shuffled with fixed seed; every block includes two runs of each variant',
    bootstrap='10000 paired-block resamples; median block log(B/C); two-sided percentile 95% CI; p5/p95 of raw invocation times',
    primary='Elapsed CLOCK_MONOTONIC wall time around spawn/wait; includes process startup, output redirected to /dev/null',
    policy='Frozen C1-global; no layout tuning; no C2 measurements',
    counters=(root/'performance/perf-probe.tsv').read_text(),core_selection=core,cases=cases)
(out/'plan.json').write_text(json.dumps(plan,indent=2)+'\n')
print('Prepared',len(cases),'cases on CPU',core['cpu'])
