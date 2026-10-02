"""Five paired comparisons with the accepted hybrid, using identical drivers."""
import csv,hashlib,io,json,os,re,statistics,subprocess,sys
from pathlib import Path
trial=Path(__file__).resolve().parent
root=trial.parents[2]
sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial
parent=root/'results/search/libdivide_hybrid'
verify_artifacts();verify_trial(parent);verify_trial(trial)
cpu=int(os.environ.get('BENCH_CPU','24'))
os.sched_setaffinity(0,{cpu})
for bench in ['bench','bench-fixed']:
    assert (parent/bench/'harness.ll').read_bytes()==(trial/bench/'harness.ll').read_bytes()
    out=trial/(bench+'-vs-parent');out.mkdir(exist_ok=True)
    assert not (out/'raw.json').exists(), 'Preserve prior comparisons.'
    binaries={v:p/bench/'new' for v,p in [('parent',parent),('new',trial)]}
    hashes={v:hashlib.sha256(p.read_bytes()).hexdigest() for v,p in binaries.items()}
    args=['u32','u64','branchfull'] if bench=='bench' else []
    rows=[]
    for pair in range(5):
        for variant in (('parent','new') if pair%2==0 else ('new','parent')):
            binary=binaries[variant]
            assert hashlib.sha256(binary.read_bytes()).hexdigest()==hashes[variant]
            cmd=[str(binary),*args]
            proc=subprocess.run(cmd,check=True,capture_output=True,text=True)
            (out/f'{pair}-{variant}.txt').write_text(proc.stdout+proc.stderr)
            if bench=='bench':
                values={t:float(v) for t,v in re.findall(r'----- (u\d+) -----.*?branchfull: ([0-9.e+-]+) seconds',proc.stdout,re.S)}
                assert len(values)==2
            else:
                values={f"u{r['bits']}/{r['divisor']}":float(r['ns_per_divide']) for r in csv.DictReader(io.StringIO(proc.stdout))}
                assert len(values)==20
            rows.append(dict(pair=pair,variant=variant,command=cmd,cpu=cpu,binary_sha256=hashes[variant],values=values))
            (out/'raw.json').write_text(json.dumps(rows,indent=2)+'\n')
        print(bench,'pair',pair,'done',flush=True)
    old=[r['values'] for r in rows if r['variant']=='parent'];new=[r['values'] for r in rows if r['variant']=='new']
    summary={k:dict(paired_speedup=statistics.median(a[k]/b[k] for a,b in zip(old,new)),ratios=[a[k]/b[k] for a,b in zip(old,new)]) for k in old[0]}
    (out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    (out/'scope.json').write_text(json.dumps(dict(baseline=str(parent),candidate=str(trial),driver='Unchanged upstream varying-divisor benchmark' if bench=='bench' else 'Adapted fixed-divisor sweep',pairs=5,identical_harness_ir=True,binary_sha256=hashes),indent=2)+'\n')
    print(json.dumps(summary,indent=2),flush=True)
