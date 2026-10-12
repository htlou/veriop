#!/usr/bin/env python3
"""Rebuild the complete frozen MiBench subset with observational link maps."""
import argparse,hashlib,importlib.util,json,os,re,shutil,subprocess
from pathlib import Path

root=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('variant');a=p.parse_args()
compiler=root/'repos'/a.variant/'ccomp';assert compiler.is_file()
if a.variant in ['candidate-v2','measured-candidate-v2'] or a.variant.startswith('ablation-'):
    freeze=json.loads((root/'results/frozen/final-candidate.json').read_text())
    assert hashlib.sha256((root/'repos/candidate-v2/backend/Linearizeaux.ml').read_bytes()).hexdigest()==freeze['candidate_source_sha256']
if a.variant.startswith('c1-ablation-'):
    frozen=json.loads((root/'results/frozen/c1-ablations.json').read_text())
    variant=next(v for v in frozen['variants'] if v['variant']==a.variant)
    assert hashlib.sha256((compiler.parent/'backend/LayoutSearch.ml').read_bytes()).hexdigest()==variant['source_sha256']
elif 'c1-' in a.variant and a.variant!='measured-c1-baseline':
    name=a.variant.removeprefix('measured-')
    frozen=json.loads((root/'results/frozen/c1-candidates.json').read_text())
    variant=next(v for v in frozen['variants'] if v['variant']==name)
    for path,digest in variant['sources'].items():assert hashlib.sha256((compiler.parent/path).read_bytes()).hexdigest()==digest
support=json.loads((root/'results/frozen/mibench.json').read_text())
for f,h in support['harness_sha256'].items():assert hashlib.sha256((root/f).read_bytes()).hexdigest()==h
spec=importlib.util.spec_from_file_location('discovery',root/'discover-mibench.py')
discovery=importlib.util.module_from_spec(spec);spec.loader.exec_module(discovery)
out=root/'results'/a.variant/'mibench-evaluation';assert not out.exists();out.mkdir(parents=True)
work=root/'build'/('mibench-'+a.variant+'-evaluation-fixed-clock');assert not work.exists()
# Preserve the baseline's configured headers, but rebuild every benchmark object.
shutil.copytree(root/'build/mibench-baseline-v2',work,ignore=shutil.ignore_patterns('.git','*.o','*.a','*.so','*.ltl'),symlinks=True)
wrapper=root/'harness/cc-mibench-measure.py'
bindir=out/'compiler-bin';bindir.mkdir()
for name in ['gcc','cc']:(bindir/name).symlink_to(wrapper)
env=os.environ|{'LAYOUT_CCOMP':str(compiler),'LAYOUT_REAL_PATH':os.environ['PATH'],'PATH':str(bindir)+os.pathsep+os.environ['PATH'],'CC':str(wrapper),'CXX':'false','SOURCE_DATE_EPOCH':'0'}
rows=[]
for project,subdir,targets,programs,configure in discovery.RECIPES:
    accepted=[r for r in support['supported'] if r['project']==project]
    if not accepted:continue
    cwd=work/project/subdir;d=out/project.replace('/','-');d.mkdir()
    for record in accepted:(cwd/record['program']).unlink(missing_ok=True)
    env.update(LAYOUT_CC_LOG=str(d/'compiler-calls'),LAYOUT_OBSERVATION=str(d/'observation'))
    cmd=['make','-k','-j8','CC='+str(wrapper),'GCC='+str(wrapper),*targets]
    with (d/'build.log').open('wb') as log:
        run=subprocess.run(['timeout','--kill-after=5','600',*cmd],cwd=cwd,env=env,stdin=subprocess.DEVNULL,stdout=log,stderr=subprocess.STDOUT)
    observed=[]
    for path in sorted((d/'observation').glob('*.json')):
        if path.name.endswith('.linear.json'):continue
        record=json.loads(path.read_text());record['record']=str(path.relative_to(root));observed.append(record)
    # Every compiled source must be exactly the source accepted during discovery.
    original={}
    for path in (root/'results/baseline/mibench'/project.replace('/','-')/'compiler-calls').glob('*.json'):
        for name,h in json.loads(path.read_text())['sources_sha256'].items():
            original[str(Path(name).relative_to(root/'build/mibench-baseline-v2'))]=h
    for record in observed:
        for name,h in record['sources_sha256'].items():assert original[str(Path(name).relative_to(work))]==h,name
    for record in accepted:
        binary=cwd/record['program'];name=project.replace('/','-')+'-'+Path(record['program']).name
        row=dict(name=name,project=project,program=record['program'],binary=str(binary.relative_to(root)),compiled=binary.is_file(),build_returncode=run.returncode)
        if row['compiled']:
            row['binary_sha256']=hashlib.sha256(binary.read_bytes()).hexdigest()
            row['discovery_binary_identical']=row['binary_sha256']==record['binary_sha256']
            size=subprocess.check_output(['size','-A',str(binary)],text=True)
            row['text_bytes']=int(re.search(r'^\.text\s+(\d+)',size,re.M)[1])
            pd=out/name;pd.mkdir(exist_ok=True);(pd/'size.txt').write_text(size)
        rows.append(row)
    (d/'build.json').write_text(json.dumps(dict(command=cmd,returncode=run.returncode,cwd=str(cwd),observations=observed),indent=2)+'\n')
    print(project,'compiled',sum(r['compiled'] for r in rows if r['project']==project),'build exit',run.returncode,flush=True)
report=dict(variant=a.variant,compiler_sha256=hashlib.sha256(compiler.read_bytes()).hexdigest(),work=str(work),environment={'SOURCE_DATE_EPOCH':'0'},programs=rows)
(out/'build-summary.json').write_text(json.dumps(report,indent=2)+'\n')
assert len(rows)==len(support['supported']) and all(r['compiled'] and r['build_returncode']==0 for r in rows)
