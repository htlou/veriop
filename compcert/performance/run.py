#!/usr/bin/env python3
"""Check and time frozen binaries; balanced sequential execution on one CPU."""
import argparse,hashlib,json,math,os,random,re,resource,subprocess,time
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c1-performance'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
plan=json.loads((out/'plan.json').read_text());cpu=plan['cpu'];os.sched_setaffinity(0,{cpu})
assert os.sched_getaffinity(0)=={cpu}
p=argparse.ArgumentParser();p.add_argument('mode',choices=['check-before','run','check-after']);args=p.parse_args()
variants=['baseline','c1-global'];env=os.environ|{'LC_ALL':'C','TZ':'UTC','SOURCE_DATE_EPOCH':'0'}

def read(path):
    try:return Path(path).read_text().strip()
    except OSError as e:return f'Unavailable: errno {e.errno}: {e.strerror}'

def freq():return read(f'/sys/devices/system/cpu/cpu{cpu}/cpufreq/scaling_cur_freq')

def cpu_stats():
    return {int(a[0][3:]):list(map(int,a[1:9])) for a in map(str.split,Path('/proc/stat').read_text().splitlines()) if a and a[0] in ['cpu'+str(n) for n in plan['siblings']]}

def command(case,v,output='/dev/null'):
    return [output if arg=='@OUTPUT@' else arg for arg in case['commands'][v]]

def normalize(case,data):
    if case['name']=='automotive-bitcount-bitcnts':
        counts=re.findall(rb'^(.+)> Time:.*?Bits: (\d+)$',data,re.M);assert len(counts)==7
        return json.dumps([(x.decode().strip(),int(y)) for x,y in counts]).encode()
    if case['name']=='consumer-typeset-lout':return re.sub(rb'^%%CreationDate:.*$',b'%%CreationDate: <wall clock>',data,flags=re.M)
    return data

def check(label):
    dest=out/label;assert not dest.exists();dest.mkdir();records=[]
    for case in plan['cases']:
        d=dest/case['suite']/case['name'];d.mkdir(parents=True);outputs={};durations={}
        for v in variants:
            product=d/(v+'.product');cmd=command(case,v,str(product))
            start=time.perf_counter_ns()
            with (d/(v+'.stdout')).open('wb') as stdout,(d/(v+'.stderr')).open('wb') as stderr:
                r=subprocess.run(cmd,cwd=case['cwd'],env=env,stdout=stdout,stderr=stderr,stdin=subprocess.DEVNULL,timeout=120)
            durations[v]=(time.perf_counter_ns()-start)/1e9;assert r.returncode==0,(case['name'],v,r.returncode)
            data=product.read_bytes() if '@OUTPUT@' in case['commands'][v] else (d/(v+'.stdout')).read_bytes()
            if case['name']=='telecomm-gsm-toast':assert data==(Path(case['cwd'])/'data/correct_large.au.gsm').read_bytes()
            outputs[v]=hashlib.sha256(normalize(case,data)).hexdigest()
            if case['suite']=='regression-sanity':assert data==(root/'repos/baseline/test/c/Results'/case['name']).read_bytes()
        assert outputs['baseline']==outputs['c1-global'],case['name']
        records.append(dict(suite=case['suite'],name=case['name'],pass_both=True,output_sha256=outputs,seconds=durations))
        print(label,case['suite'],case['name'],durations,flush=True)
    (dest/'summary.json').write_text(json.dumps(records,indent=2)+'\n')

for case in plan['cases']:
    for v in variants:assert sha(Path(case['commands'][v][0]))==case['binary_sha256'][v]
if args.mode!='run':check(args.mode);raise SystemExit
assert (out/'check-before/summary.json').exists()
assert all(r['pass_both'] for r in json.loads((out/'check-before/summary.json').read_text()))
assert not (out/'samples.jsonl').exists(),'Preserve prior runs'
cpudir=Path(f'/sys/devices/system/cpu/cpu{cpu}/cpufreq')
metadata=dict(start_utc=time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime()),pid=os.getpid(),cpu=cpu,affinity=sorted(os.sched_getaffinity(0)),
    uname=list(os.uname()),plan_sha256=sha(out/'plan.json'),runner_sha256=sha(Path(__file__)),
    cpuinfo=read('/proc/cpuinfo'),loadavg=read('/proc/loadavg'),cgroup=read('/proc/self/cgroup'),
    perf_event_paranoid=read('/proc/sys/kernel/perf_event_paranoid'),aslr=read('/proc/sys/kernel/randomize_va_space'),
    boost=read('/sys/devices/system/cpu/cpufreq/boost'),
    cpufreq={p.name:dict(value=read(p),writable=os.access(p,os.W_OK)) for p in [cpudir/f for f in ['scaling_driver','scaling_governor','scaling_cur_freq','scaling_min_freq','scaling_max_freq','cpuinfo_cur_freq','cpb']]},
    perf_probe_sha256=sha(root/'performance/perf-probe.c'))
(out/'environment.json').write_text(json.dumps(metadata,indent=2)+'\n')
schedule=[['baseline','c1-global','c1-global','baseline']]*20+[['c1-global','baseline','baseline','c1-global']]*20
random.Random(53017).shuffle(schedule)
(out/'schedule.json').write_text(json.dumps(schedule,indent=2)+'\n')
# Use identical policy-independent case order; highlighted sanity cases first.
priority=['sglib-combined','nettle-sha256','consumer-typeset-lout','consumer-jpeg-cjpeg','consumer-jpeg-djpeg','aes','fft','launch-floor']
cases=sorted(plan['cases'],key=lambda c:priority.index(c['name']) if c['name'] in priority else len(priority))
with (out/'samples.jsonl').open('w') as log,(out/'blocks.jsonl').open('w') as blocks,open(os.devnull,'wb') as null:
    for case in cases:
        for _ in range(plan['warmups_per_variant']):
            for v in variants:subprocess.run(command(case,v),cwd=case['cwd'],env=env,stdout=null,stderr=null,stdin=subprocess.DEVNULL,check=True,timeout=120)
        for block,order in enumerate(schedule):
            stats0=cpu_stats();start=time.time_ns()
            for index,v in enumerate(order):
                f0=freq();r0=resource.getrusage(resource.RUSAGE_CHILDREN);t0=time.perf_counter_ns()
                # Blocking wait avoids Python's timeout polling/backoff quantizing short runs.
                r=subprocess.run(command(case,v),cwd=case['cwd'],env=env,stdout=null,stderr=null,stdin=subprocess.DEVNULL)
                elapsed=time.perf_counter_ns()-t0;r1=resource.getrusage(resource.RUSAGE_CHILDREN);f1=freq()
                assert r.returncode==0,(case['name'],v,r.returncode)
                record=dict(suite=case['suite'],name=case['name'],block=block,index=index,variant=v,wall_ns=elapsed,
                    user_s=r1.ru_utime-r0.ru_utime,system_s=r1.ru_stime-r0.ru_stime,
                    voluntary_switches=r1.ru_nvcsw-r0.ru_nvcsw,involuntary_switches=r1.ru_nivcsw-r0.ru_nivcsw,
                    minor_faults=r1.ru_minflt-r0.ru_minflt,major_faults=r1.ru_majflt-r0.ru_majflt,
                    frequency_khz_before=f0,frequency_khz_after=f1,returncode=r.returncode)
                log.write(json.dumps(record)+'\n');log.flush()
            stats1=cpu_stats();delta={c:[b-a for a,b in zip(stats0[c],stats1[c])] for c in stats0}
            blocks.write(json.dumps(dict(suite=case['suite'],name=case['name'],block=block,order=order,start_unix_ns=start,end_unix_ns=time.time_ns(),cpu_jiffy_delta=delta))+'\n');blocks.flush()
            if block%10==9:print(case['suite'],case['name'],'blocks',block+1,'/',plan['blocks'],flush=True)
        (out/'progress.json').write_text(json.dumps(dict(last_completed=case['name'],completed_at=time.time()))+'\n')
(out/'finished.json').write_text(json.dumps(dict(end_utc=time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime()),cases=len(cases),measurements=len(cases)*160,samples_sha256=sha(out/'samples.jsonl'),blocks_sha256=sha(out/'blocks.jsonl')))+'\n')
print('All timing blocks completed',flush=True)
