#!/usr/bin/env python3
"""Discover pristine-CompCert applicability, without computing holdout metrics."""
import hashlib,json,os,shutil,subprocess,time
from pathlib import Path
ROOT=Path(__file__).resolve().parent
# Recipes follow each upstream COMPILE file. Programs use the official small inputs.
RECIPES=[
 ('automotive/basicmath','',['basicmath_small'],['basicmath_small'],[]),
 ('automotive/bitcount','',['bitcnts'],['bitcnts'],[]),
 ('automotive/qsort','',['qsort_small'],['qsort_small'],[]),
 ('automotive/susan','',['susan'],['susan'],[]),
 ('consumer/jpeg','jpeg-6a',['cjpeg','djpeg'],['cjpeg','djpeg'],[]),
 ('consumer/lame','lame3.70',['lame'],['lame'],[]),
 ('consumer/mad','mad-0.14.2b',['all'],['madplay'],[['./configure','--disable-shared']]),
 ('consumer/tiff-v3.5.4','',['all'],['tools/tiff2bw','tools/tiff2rgba','tools/tiffdither','tools/tiffmedian'],[['./configure','--noninteractive']]),
 ('consumer/typeset','lout-3.24',['lout'],['lout'],[]),
 ('network/dijkstra','',['dijkstra_small'],['dijkstra_small'],[]),
 ('network/patricia','',['patricia'],['patricia'],[]),
 ('office/ghostscript','src',['gs'],['gs'],[]),
 ('office/ispell','',['ispell'],['ispell'],[]),
 ('office/rsynth','',['all'],['say'],[['./configure']]),
 ('office/sphinx','',['all'],['src/examples/.libs/sphinx2-batch','src/examples/sphinx2-batch'],[['./configure','--disable-shared']]),
 ('office/stringsearch','',['search_small'],['search_small'],[]),
 ('security/blowfish','',['bf','bftest'],['bf','bftest'],[]),
 ('security/pgp','src',['linux'],['pgp'],[]),
 ('security/rijndael','',['rijndael'],['rijndael'],[]),
 ('security/sha','',['sha'],['sha'],[]),
 ('telecomm/CRC32','',['crc'],['crc'],[]),
 ('telecomm/FFT','',['fft'],['fft'],[]),
 ('telecomm/adpcm','src',['all'],['rawcaudio','rawdaudio'],[]),
 ('telecomm/gsm','',['all'],['bin/toast'],[]),
]

def main():
    out=ROOT/'results/baseline/mibench';out.mkdir(parents=True,exist_ok=True)
    assert not (out/'summary.json').exists(),'Do not overwrite completed holdout discovery'
    work=ROOT/'build/mibench-baseline-v2'
    assert not work.exists(),'Discovery uses a clean benchmark copy'
    shutil.copytree(ROOT/'benchmarks/mibench',work,ignore=shutil.ignore_patterns('.git','*.o','*.a','*.so'))
    wrapper=ROOT/'harness/cc-mibench.py';bindir=ROOT/'harness/mibench-bin';bindir.mkdir(exist_ok=True)
    for name in ['gcc','cc']:
        p=bindir/name
        if not p.exists():p.symlink_to(wrapper)
    env=os.environ|{'LAYOUT_CCOMP':str(ROOT/'repos/baseline/ccomp'),'LAYOUT_REAL_PATH':os.environ['PATH'],'CC':str(wrapper),'CXX':'false','PATH':str(bindir)+os.pathsep+os.environ['PATH']}
    rows=[]
    for project,subdir,targets,programs,configure in RECIPES:
        d=out/project.replace('/','-');d.mkdir(exist_ok=True);cwd=work/project/subdir
        env['LAYOUT_CC_LOG']=str(d/'compiler-calls');commands=[]
        for name in programs:
            binary=cwd/name
            if binary.is_file():binary.unlink()
        start=time.time()
        for index,cmd in enumerate(configure+[['make','-k','-j8','CC='+str(wrapper),'GCC='+str(wrapper),*targets]]):
            with (d/f'build-{index}.log').open('wb') as log:
                runenv=env if index>=len(configure) else (env|{'CC':'/usr/bin/gcc','PATH':env['LAYOUT_REAL_PATH']})
                p=subprocess.run(['timeout','--kill-after=5','300',*cmd],cwd=cwd,env=runenv,stdin=subprocess.DEVNULL,stdout=log,stderr=subprocess.STDOUT)
            commands.append({'command':cmd,'returncode':p.returncode})
            if p.returncode and index<len(configure):break
        accepted=[]
        for name in programs:
            binary=cwd/name
            if binary.is_file() and binary.stat().st_mtime>=start and binary.read_bytes()[:4]==b'\x7fELF':
                accepted.append({'program':name,'path':str(binary.relative_to(ROOT)),'binary_sha256':hashlib.sha256(binary.read_bytes()).hexdigest()})
        calls=list((d/'compiler-calls').glob('*.json'))
        if accepted:assert any(json.loads(p.read_text())['sources_sha256'] for p in calls)
        rows.append({'project':project,'directory':subdir,'targets':targets,'programs':programs,'commands':commands,'accepted':accepted,'compiler_calls':len(calls)})
        (out/'progress.json').write_text(json.dumps(rows,indent=2)+'\n')
        print(project,'accepted',len(accepted),'of',len(programs),'build status',[x['returncode'] for x in commands],flush=True)
    report={'scope':'Baseline compile applicability only; no holdout structural results inspected.','recipes':RECIPES,'projects':rows,'harness_sha256':{str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),wrapper]}}
    (out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
    frozen=ROOT/'results/frozen/mibench.json';assert not frozen.exists()
    frozen.write_text(json.dumps({'supported':[{**a,'project':r['project']} for r in rows for a in r['accepted']],'baseline_summary_sha256':hashlib.sha256((out/'summary.json').read_bytes()).hexdigest(),'harness_sha256':report['harness_sha256'],'supersedes':'mibench-discovery-v1.json (forced rebuild/configure harness defects; no candidate existed)', 'note':'Compile support only. Functional tests, reason classification, and final holdout evaluation are still required.'},indent=2)+'\n')
if __name__=='__main__':main()
