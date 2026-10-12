#!/usr/bin/env python3
"""Build unchanged Tier 0, Embench 1.0 and PolyBench 4.2.1 sources.

The compiler and flags are recorded per translation unit. Baseline support is
frozen separately from runtime success; a failing runtime test is never used
to remove an accepted program from candidate evaluation.
"""
import argparse,hashlib,json,os,re,subprocess,time
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def digest(path): return hashlib.sha256(path.read_bytes()).hexdigest()

def catalog(suite):
    cases=[]
    if suite=='regression-c':
        src=ROOT/'repos/baseline/test/c'
        make=(src/'Makefile').read_text().replace('\\\n',' ')
        names=re.search(r'^PROGS=(.*)$',make,re.M)[1].split()
        for name in names:
            cases.append(dict(name=name,sources=[src/(name+'.c')],flags=[],expected=src/'Results'/name))
    elif suite=='embench':
        src=ROOT/'benchmarks/embench';board=src/'config/native/boards/default'
        common=[board/'boardsupport.c',src/'support/main.c',src/'support/beebsc.c']
        flags=['-I'+str(src/'support'),'-I'+str(board),'-DCPU_MHZ=1','-DWARMUP_HEAT=1']
        for d in sorted((src/'src').iterdir()):
            if d.is_dir():cases.append(dict(name=d.name,sources=sorted(d.glob('*.c'))+common,flags=flags,expected=None))
    elif suite=='polybench':
        src=ROOT/'benchmarks/polybench-c-4.2.1-beta'
        for line in (src/'utilities/benchmark_list').read_text().splitlines():
            p=src/line
            cases.append(dict(name=p.stem,sources=[p,src/'utilities/polybench.c'],flags=['-I'+str(src/'utilities'),'-DMINI_DATASET','-DPOLYBENCH_DUMP_ARRAYS'],expected=None))
    return cases

def command(argv,cwd,log,env=None,timeout=300):
    start=time.monotonic()
    try:
        p=subprocess.run(argv,cwd=cwd,env=env,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=timeout)
        result=dict(command=argv,returncode=p.returncode,seconds=time.monotonic()-start)
        stdout,stderr=p.stdout,p.stderr
    except subprocess.TimeoutExpired as e:
        result=dict(command=argv,returncode=None,timed_out=True,seconds=time.monotonic()-start)
        stdout,stderr=e.stdout or b'',e.stderr or b''
    log.with_suffix('.stdout').write_bytes(stdout);log.with_suffix('.stderr').write_bytes(stderr)
    result.update(stdout_sha256=hashlib.sha256(stdout).hexdigest(),stderr_sha256=hashlib.sha256(stderr).hexdigest())
    log.with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
    return result

def main():
    p=argparse.ArgumentParser();p.add_argument('suite',choices=['regression-c','embench','polybench']);p.add_argument('--variant',default='baseline');p.add_argument('--freeze',action='store_true');a=p.parse_args()
    compiler=ROOT/'repos'/a.variant/'ccomp';assert compiler.is_file(),compiler
    out=ROOT/'results'/a.variant/a.suite
    assert not (out/'summary.json').exists(),'Preserve completed results; use another variant/output label.'
    out.mkdir(parents=True,exist_ok=True)
    cases=catalog(a.suite);results=[]
    frozen_path=ROOT/'results/frozen'/f'{a.suite}.json'
    if a.variant!='baseline':
        frozen=json.loads(frozen_path.read_text());assert frozen['catalog']==[c['name'] for c in cases]
        cases=[c for c in cases if c['name'] in frozen['supported']]
    for case in cases:
        d=out/case['name'];d.mkdir(exist_ok=True);objects=[];build=[]
        for n,source in enumerate(case['sources']):
            obj=d/f'{n}-{source.stem}.o'
            env=os.environ|{'COMPCERT_LAYOUT_METRICS':str(d/f'{n}-{source.stem}.linear.json')}
            cmd=[str(compiler),'-stdlib',str(compiler.parent/'runtime'),'-O','-fall',*case['flags'],'-dltl','-c',str(source),'-o',str(obj)]
            r=command(cmd,d,d/f'compile-{n}',env);r['source_sha256']=digest(source);build.append(r);objects.append(str(obj))
        link=None
        if all(r['returncode']==0 for r in build):
            link=command([str(compiler),'-stdlib',str(compiler.parent/'runtime'),*objects,'-lm','-o',str(d/'program')],d,d/'link')
        accepted=link is not None and link['returncode']==0
        row=dict(name=case['name'],compiled=accepted,compilation=build,link=link)
        if accepted:
            row['binary_sha256']=digest(d/'program')
            size=subprocess.check_output(['size','-A',str(d/'program')],text=True)
            (d/'size.txt').write_text(size)
            row['text_bytes']=int(re.search(r'^\.text\s+(\d+)',size,re.M)[1])
            run=command([str(d/'program')],case['sources'][0].parent,d/'run',timeout=300)
            row['run']=run;row['functional_pass']=run['returncode']==0
            if case['expected'] is not None:
                row['expected_sha256']=digest(case['expected'])
                row['functional_pass'] &= run['stdout_sha256']==row['expected_sha256']
                row['functional_check']='upstream expected stdout and zero exit status'
            elif a.suite=='embench':
                row['functional_check']='upstream verify_benchmark via unchanged support/main.c'
            else:
                row['functional_check']='zero exit status and complete live-out dump; candidate must match baseline'
            if a.variant!='baseline':
                previous=json.loads((ROOT/'results/baseline'/a.suite/'summary.json').read_text())
                ref=next(x for x in previous['programs'] if x['name']==case['name'])
                row['functional_pass'] &= all(run[k]==ref['run'][k] for k in ['returncode','stdout_sha256','stderr_sha256'])
        results.append(row)
        (out/'progress.json').write_text(json.dumps(results,indent=2)+'\n')
        print(case['name'], 'compiled' if accepted else 'COMPILE FAILURE',row.get('functional_pass'),flush=True)
    report=dict(suite=a.suite,variant=a.variant,compiler_sha256=digest(compiler),programs=results)
    (out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
    if a.freeze:
        assert a.variant=='baseline'
        assert not frozen_path.exists(),'Do not overwrite a frozen support set'
        frozen_path.parent.mkdir(exist_ok=True)
        frozen_path.write_text(json.dumps(dict(catalog=[c['name'] for c in cases],supported=[r['name'] for r in results if r['compiled']],excluded=[r['name'] for r in results if not r['compiled']],baseline_summary_sha256=digest(out/'summary.json'),harness_sha256=digest(Path(__file__))),indent=2)+'\n')
    if a.variant!='baseline':
        assert all(r['compiled'] and r['functional_pass'] for r in results),'Candidate applicability or functional gate failed'

if __name__=='__main__':main()
