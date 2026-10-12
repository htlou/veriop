#!/usr/bin/env python3
"""Run upstream small inputs and available self-tests; preserve every failure."""
import argparse,hashlib,json,os,re,subprocess,time
from pathlib import Path
from acceptance import functional_required,freeze_baseline_oracles

root=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('variant');a=p.parse_args()
out=root/'results'/a.variant/'mibench-evaluation'
report=json.loads((out/'build-summary.json').read_text());work=Path(report['work'])
assert not (out/'summary.json').exists(),'Preserve completed checks'
reference=None
if a.variant!='measured-baseline':
    reference=json.loads((root/'results/measured-baseline/mibench-evaluation/summary.json').read_text())
sha=lambda data:hashlib.sha256(data).hexdigest()
for row in report['programs']:
    binary=root/row['binary'];cwd=work/row['project'];d=out/row['name']/'runtime';d.mkdir()
    name=Path(row['program']).name;commands=[];outputs={};checks=[]
    def run(args=(),label='small',exe=binary,product=None,expected=None):
        cmd=[str(exe),*map(str,args)];start=time.monotonic()
        try:
            r=subprocess.run(cmd,cwd=cwd,env=os.environ|{'LC_ALL':'C','TZ':'UTC'},stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=120)
            code=r.returncode;stdout=r.stdout;stderr=r.stderr
        except subprocess.TimeoutExpired as e:code=None;stdout=e.stdout or b'';stderr=e.stderr or b''
        (d/(label+'.stdout')).write_bytes(stdout);(d/(label+'.stderr')).write_bytes(stderr)
        commands.append(dict(command=cmd,cwd=str(cwd),returncode=code,seconds=time.monotonic()-start,stdout_sha256=sha(stdout),stderr_sha256=sha(stderr)))
        checks.append(code==0)
        data=product.read_bytes() if product and product.exists() else stdout
        if product:checks.append(product.is_file())
        if expected is not None:checks.append(data==expected.read_bytes())
        if name=='bitcnts':
            # Timing and best/worst rankings are diagnostics, not functional output.
            counts=re.findall(rb'^(.+)> Time:.*?Bits: (\d+)$',data,re.M)
            checks.append(len(counts)==7)
            data=json.dumps([(x.decode().strip(),int(y)) for x,y in counts]).encode()
        if name=='lout':data=re.sub(rb'^%%CreationDate:.*$',b'%%CreationDate: <wall clock>',data,flags=re.M)
        outputs[label]=sha(data)
        return data
    if name=='basicmath_small':run()
    elif name=='bitcnts':run(['75000'])
    elif name=='qsort_small':run(['input_small.dat'])
    elif name=='cjpeg':
        path=d/'small.jpg';run(['-dct','int','-progressive','-opt','-outfile',path,'input_small.ppm'],product=path)
        for suffix,flags,expected in [('sequential',[],'testimg.jpg'),('progressive',['-progressive','-opt'],'testimgp.jpg')]:
            path=d/(suffix+'.jpg');run(['-dct','int',*flags,'-outfile',path,'jpeg-6a/testimg.ppm'],label=suffix,product=path,expected=cwd/'jpeg-6a'/expected)
    elif name=='djpeg':
        path=d/'small.ppm';run(['-dct','int','-ppm','-outfile',path,'input_small.jpg'],product=path)
        for label,fmt,source,expected in [('ppm','ppm','testorig.jpg','testimg.ppm'),('gif','gif','testorig.jpg','testimg.gif'),('progressive','ppm','testprog.jpg','testimg.ppm')]:
            path=d/(label+'.image');run(['-dct','int','-'+fmt,'-outfile',path,'jpeg-6a/'+source],label=label,product=path,expected=cwd/'jpeg-6a'/expected)
    elif name=='lame':
        path=d/'small.mp3';run(['small.wav',path],product=path)
    elif name=='lout':run(['-I','lout-3.24/include','-D','lout-3.24/data','-F','lout-3.24/font','-C','lout-3.24/maps','-H','lout-3.24/hyph','small.lout'])
    elif name=='bf':
        key='1234567890abcdeffedcba0987654321'
        enc=d/'small.enc';dec=d/'small.dec'
        run(['e','input_small.asc',enc,key],label='encrypt',product=enc)
        run(['d',enc,dec,key],label='decrypt',product=dec,expected=cwd/'input_small.asc')
        row['source_limitation']='Official bf driver passes uninitialized ivec and num, writes 16 key bytes into ukey[8], and exits 1 even on its nominal completion path. These runs cannot establish well-defined deterministic source behavior. No source modification or exclusion was made.'
        checks.append(False)
    elif name=='bftest':run(label='upstream-self-test')
    elif name=='sha':run(['input_small.asc'])
    elif name=='fft':
        run(['4','4096']);run(['4','8192','-i'],label='inverse')
    elif name=='toast':
        run(['-fps','-c','data/small.au'],label='encode',expected=cwd/'data/correct_small.au.gsm')
        run(['-fps','-c','data/small.au.run.gsm'],label='decode',exe=cwd/'bin/untoast',expected=cwd/'data/correct_small.au.run')
    else:raise AssertionError(name)
    row.update(functional_pass=all(checks),checks=checks,runs=commands,output_sha256=outputs)
    if reference is not None:
        ref=next(r for r in reference['programs'] if r['name']==row['name'])
        row['matches_baseline_outputs']=outputs==ref['output_sha256']
        row['functional_pass'] &= row['matches_baseline_outputs']
    (d/'checks.json').write_text(json.dumps(row,indent=2)+'\n')
    print(row['name'],'functional',row['functional_pass'],'exits',[c['returncode'] for c in commands],flush=True)
report['functional_scope']='Official small inputs; JPEG and GSM expected fixture comparisons and Blowfish self-tests. Other outputs compare with baseline; timing-only bitcount fields and the Lout CreationDate header are excluded explicitly. Raw outputs retained. Source-level undefined behavior is not certified by runtime agreement.'
(out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
if a.variant=='measured-baseline':freeze_baseline_oracles()
assert all(r['functional_pass'] for r in report['programs'] if functional_required('mibench-evaluation',r['name'])),'Baseline-valid functional gate failed; inspect preserved checks'
