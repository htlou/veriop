#!/usr/bin/env python3
"""Audit archived evidence and recompute timings; does not run new benchmarks/proofs."""
import functools,gzip,hashlib,json,math,statistics
from pathlib import Path
root=Path(__file__).resolve().parents[2]
def read(p):return json.loads(p.read_text())
@functools.lru_cache(None)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def checks(directory,items):
    for name,digest in items.items(): assert sha(directory/name)==digest,name
report={}
if Path(__file__).resolve().parents[1].name == 'aeneas':
    a=root/'aeneas';p=read(a/'results/base64-unroll8-public-proof-provenance.json')
    checks(a,p['files_sha256']);assert p['complete_candidate_equivalence']
    perf=read(a/'results/pairs-unroll8-exact/performance.json');count=0
    for row in perf['workloads']:
        for repo,key in [('rust-base64','baseline_round_ns'),('base64-pairs-unroll8-exact','candidate_round_ns')]:
            for n,recorded in enumerate(row[key],1):
                d=a/'results/pairs-unroll8-exact/criterion'/repo/row['workload']/f'round-{n}'
                s=read(d/'sample.json');median=statistics.median(t/i for t,i in zip(s['times'],s['iters'],strict=True))
                assert math.isclose(median,recorded,rel_tol=1e-12)
                assert math.isclose(median,read(d/'estimates.json')['median']['point_estimate'],rel_tol=1e-12)
                count+=1
        assert math.isclose(row['speedup'],statistics.median(row['baseline_round_ns'])/statistics.median(row['candidate_round_ns']),rel_tol=1e-12)
    aggregate=statistics.geometric_mean(row['speedup'] for row in perf['workloads'])
    assert math.isclose(aggregate,perf['encode_speedup'],rel_tol=1e-12)
    for exp in ['pairs-callchain','pairs-unroll8-exact']:
        for info in read(a/'results'/exp/'build.json').values():
            data=gzip.decompress((root/(info['binary']+'.gz')).read_bytes())
            assert hashlib.sha256(data).hexdigest()==info['binary_sha256']
    report={'proof_provenance_hashes_checked':len(p['files_sha256']),'raw_medians_recomputed':count,'base64_aggregate_speedup':aggregate,'recorded_benchmark_binaries_verified':3,'negative_control':(a/'logs/base64-unroll8-public-negative-control.log').read_text().strip()}
else:
    a=root/'c';proof_checks=0;records=0
    for candidate,sub,count in [('libdivide_hybrid','',2),('libdivide_poisoncount','',2),('xxhash_lookup_remap','length-proof',20)]:
        d=a/'results/search'/candidate/sub;p=read(d/('summary.json' if sub else 'trial.json'));assert p['accepted']
        checks(d,p['sha256'])
        if sub:
            for side,digest in p['input_sha256'].items():assert sha(d.parent/(side+'.ll'))==digest
        log=(d/'proof.log').read_text();assert log.count('These functions seem to be equivalent!')==count
        for marker in ['0 incorrect transformations','0 failed-to-prove transformations','0 Alive2 errors']:assert marker in log
        proof_checks+=count
    d=a/'results/search/libdivide_hybrid';p=read(d/'patch-proof.json');assert p['accepted']
    for name,digest in p['sha256'].items():assert sha(root/'c'/Path(name).relative_to('/srv/home/hantaolou/code/veriop/alive2'))==digest
    for candidate,benches in [('libdivide_hybrid',['bench','bench-fixed']),('libdivide_poisoncount',['bench','bench-fixed']),('xxhash_lookup_remap',['bench-inline','bench-cli','bench-cli-confirm'])]:
        for bench in benches:
            d=a/'results/search'/candidate/bench;raw=read(d/'raw.json');summary=read(d/'summary.json')
            for row in raw:
                binary=d/row['variant']
                if not binary.is_file():binary=root/'c'/Path(row['command'][0]).relative_to('/srv/home/hantaolou/code/veriop/alive2')
                assert sha(binary)==row['binary_sha256'];records+=1
            if bench.startswith('bench-cli'):
                for key,value in summary.items():
                    length,alignment=key.split('/');test='5' if alignment=='aligned' else '6'
                    rows={(r['pair'],r['variant']):r['hashes_per_second'][test] for r in raw if r['length']==int(length)}
                    ratio=statistics.median(rows[pair,'new']/rows[pair,'old'] for pair in sorted({p for p,v in rows}))
                    assert math.isclose(ratio,value['paired_speedup'],rel_tol=1e-12),(key,ratio)
            else:
                rows={(r['pair'],r['variant']):r['values'] for r in raw}
                for key,value in summary.items():
                    ratio=statistics.median(rows[pair,'old'][key]/rows[pair,'new'][key] for pair in sorted({p for p,v in rows}))
                    assert math.isclose(ratio,value['paired_speedup'],rel_tol=1e-12),(key,ratio)
    report={'recorded_alive2_equivalences_audited':proof_checks,'patched_header_provenance_verified':True,'benchmark_records_and_binaries_checked':records,'benchmark_summary_ratios_recomputed':True}
report['scope']='Archived evidence audit, not fresh proof or benchmark execution.'
print(json.dumps(report,indent=2))
