#!/usr/bin/env python3
"""Analyze complete balanced blocks without dropping samples or changing policy."""
import argparse,collections,hashlib,json,math,random,statistics
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=root/'results/c1-performance'
def quantile(values,q):
    a=sorted(values);index=q*(len(a)-1);lo=int(index);hi=min(lo+1,len(a)-1)
    return a[lo]+(a[hi]-a[lo])*(index-lo)
def interval(values,rng):
    n=len(values)
    estimates=[math.exp(statistics.median(rng.choices(values,k=n))) for _ in range(10000)]
    return [quantile(estimates,.025),quantile(estimates,.975)]
def paired(rows):
    groups=collections.defaultdict(dict)
    for r in rows:groups[r['block']].setdefault(r['variant'],[]).append(r['wall_ns'])
    assert len(groups)==40
    result=[]
    for block in range(40):
        b=groups[block]['baseline'];c=groups[block]['c1-global'];assert len(b)==len(c)==2
        result.append(sum(map(math.log,b))/2-sum(map(math.log,c))/2)
    return result
p=argparse.ArgumentParser();p.add_argument('--self-check',action='store_true');args=p.parse_args()
if args.self_check:
    rows=[dict(block=i,variant=v,wall_ns=(2 if v=='baseline' else 1)*t) for i in range(40) for v in ['baseline','c1-global'] for t in [100+i,120+i]]
    logs=paired(rows);assert all(abs(x-math.log(2))<1e-12 for x in logs)
    assert all(abs(x-2)<1e-12 for x in interval(logs,random.Random(1)))
    assert quantile([1,2,3,4],.5)==2.5
    equal=[dict(r,wall_ns=r['wall_ns']//2 if r['variant']=='baseline' else r['wall_ns']) for r in rows]
    assert all(abs(x)<1e-12 for x in paired(equal))
    print('PASS: paired-block effect, bootstrap, equal-binary null and quantiles');raise SystemExit
plan=json.loads((out/'plan.json').read_text());finished=json.loads((out/'finished.json').read_text())
assert hashlib.sha256((out/'samples.jsonl').read_bytes()).hexdigest()==finished['samples_sha256']
raw=[json.loads(l) for l in (out/'samples.jsonl').read_text().splitlines()]
blocks=[json.loads(l) for l in (out/'blocks.jsonl').read_text().splitlines()]
assert len(raw)==len(plan['cases'])*160
checks=[json.loads((out/label/'summary.json').read_text()) for label in ['check-before','check-after']]
assert all(len(check)==len(plan['cases']) and all(r['pass_both'] for r in check) for check in checks)
rng=random.Random(832901);rows=[];logs_by_case={}
for case in plan['cases']:
    samples=[r for r in raw if (r['suite'],r['name'])==(case['suite'],case['name'])];assert len(samples)==160
    assert all(r['returncode']==0 for r in samples)
    logs=paired(samples);logs_by_case[(case['suite'],case['name'])]=logs
    row=dict(suite=case['suite'],name=case['name'],paired_speedup=math.exp(statistics.median(logs)),ci95=interval(logs,rng),measurements_per_variant=80,variants={})
    order={b['block']:b['order'][0] for b in blocks if (b['suite'],b['name'])==(case['suite'],case['name'])}
    row['first_half_speedup']=math.exp(statistics.median(logs[:20]));row['second_half_speedup']=math.exp(statistics.median(logs[20:]))
    row['order_speedup']={v:math.exp(statistics.median([x for i,x in enumerate(logs) if order[i]==v])) for v in ['baseline','c1-global']}
    for v in ['baseline','c1-global']:
        selected=[r for r in samples if r['variant']==v];times=[r['wall_ns']/1e6 for r in selected]
        frequencies=[float(r[k]) for r in selected for k in ['frequency_khz_before','frequency_khz_after'] if r[k].isdigit()]
        row['variants'][v]=dict(median_ms=statistics.median(times),p5_ms=quantile(times,.05),p95_ms=quantile(times,.95),
            median_cpu_ms=statistics.median((r['user_s']+r['system_s'])*1000 for r in selected),
            frequency_khz_median=statistics.median(frequencies) if frequencies else None,
            frequency_khz_min=min(frequencies) if frequencies else None,frequency_khz_max=max(frequencies) if frequencies else None,
            total_involuntary_switches=sum(r['involuntary_switches'] for r in selected),total_major_faults=sum(r['major_faults'] for r in selected))
    row['raw_median_ratio']=row['variants']['baseline']['median_ms']/row['variants']['c1-global']['median_ms']
    sibling=[j for j in plan['siblings'] if j!=plan['cpu']][0]
    activity=[]
    for block in blocks:
        if (block['suite'],block['name'])==(case['suite'],case['name']):
            ticks=block['cpu_jiffy_delta'][str(sibling)];total=sum(ticks)
            if total:activity.append((total-ticks[3]-ticks[4])/total)
    row['sibling_busy_p95']=quantile(activity,.95) if activity else None
    row['pointwise_classification']='faster' if row['ci95'][0]>1 else 'slower' if row['ci95'][1]<1 else 'CI overlaps 1'
    rows.append(row)
suites=[]
for suite in ['embench','mibench','regression-sanity','control']:
    selected=[r for r in rows if r['suite']==suite]
    distributions=[logs_by_case[(suite,r['name'])] for r in selected]
    estimates=[]
    for _ in range(10000):
        estimates.append(math.exp(statistics.mean(statistics.median(rng.choices(logs,k=40)) for logs in distributions)))
    suites.append(dict(suite=suite,cases=len(selected),geomean_paired_speedup=statistics.geometric_mean(r['paired_speedup'] for r in selected),
        fixed_workloads_ci95=[quantile(estimates,.025),quantile(estimates,.975)],
        pointwise_counts=dict(collections.Counter(r['pointwise_classification'] for r in selected))))
report=dict(metric='Wall-clock including process launch, input processing and output to /dev/null',
    statistic='exp(median of 40 balanced-block log(B/C) ratios); 10000 paired-block bootstrap resamples',
    ci_scope='Pointwise 95% intervals conditional on these workloads and this host/session; not simultaneous or cross-machine inference',
    counters='Unavailable: all seven perf_event_open probes returned EACCES (13)',
    samples=len(raw),policy_unchanged=True,c2_included=False,suites=suites,programs=rows)
(out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
lines=['# Frozen C1 CPU measurements','',
    'Each variant has 80 pinned-core observations per workload after three warm-ups. Speedup is baseline/candidate; values above 1 favor C1. CI is a pointwise 95% paired-block bootstrap interval. All observations are retained. Raw timings include process launch.','',
    'Cycles, instructions, branches, branch misses, instruction-cache misses and frontend stalls are unavailable: kernel perf_event_open denied each request (errno 13). Static Lgoto counts are not substituted for those events.','',
    '| Suite | Cases | Geometric mean paired speedup | Fixed-workload bootstrap 95% CI | Faster / overlapping / slower pointwise CIs |',
    '|---|---:|---:|---|---|']
for s in suites:
    n=s['pointwise_counts'];lines.append(f"| {s['suite']} | {s['cases']} | {s['geomean_paired_speedup']:.5f} | [{s['fixed_workloads_ci95'][0]:.5f}, {s['fixed_workloads_ci95'][1]:.5f}] | {n.get('faster',0)} / {n.get('CI overlaps 1',0)} / {n.get('slower',0)} |")
for suite in ['embench','mibench','regression-sanity','control']:
    lines+=['','## '+suite,'','| Program | B median ms [p5,p95] | C1 median ms [p5,p95] | Paired speedup [95% CI] | First / second half | ABBA / BAAB |','|---|---|---|---|---|---|']
    for r in rows:
        if r['suite']!=suite:continue
        b=r['variants']['baseline'];c=r['variants']['c1-global'];o=r['order_speedup']
        lines.append(f"| {r['name']} | {b['median_ms']:.4f} [{b['p5_ms']:.4f}, {b['p95_ms']:.4f}] | {c['median_ms']:.4f} [{c['p5_ms']:.4f}, {c['p95_ms']:.4f}] | {r['paired_speedup']:.5f} [{r['ci95'][0]:.5f}, {r['ci95'][1]:.5f}] | {r['first_half_speedup']:.5f} / {r['second_half_speedup']:.5f} | {o['baseline']:.5f} / {o['c1-global']:.5f} |")
lines+=['','## Frequency and interference diagnostics','','Frequency is sampled sysfs scaling_cur_freq, not an integrated cycle count. Governor/boost remain host-controlled. All raw context switches, CPU times and faults are retained in samples.jsonl.','','| Program | B / C1 median MHz | Sampled MHz range | SMT sibling p95 busy |','|---|---|---|---|']
for r in rows:
    b=r['variants']['baseline'];c=r['variants']['c1-global'];freqs=[b['frequency_khz_min'],c['frequency_khz_min'],b['frequency_khz_max'],c['frequency_khz_max']]
    lines.append(f"| {r['suite']}/{r['name']} | {b['frequency_khz_median']/1000:.1f} / {c['frequency_khz_median']/1000:.1f} | {min(freqs)/1000:.1f}–{max(freqs)/1000:.1f} | {100*r['sibling_busy_p95']:.2f}% |")
(out/'RESULTS.md').write_text('\n'.join(lines)+'\n')
print(json.dumps(suites,indent=2))
