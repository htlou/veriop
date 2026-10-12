#!/usr/bin/env python3
"""Compare checked Linear constructor counts and executable text sizes."""
import argparse,json,statistics
from pathlib import Path
from acceptance import functional_required
from c1.weighted_metrics import metrics as weighted_metrics
root=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('suite');p.add_argument('--variant',default='measured-candidate');p.add_argument('--baseline',default='measured-baseline');p.add_argument('--diagnostic',action='store_true',help='Preserve failed runtime gates in a clearly marked diagnostic report');a=p.parse_args()
base=root/'results'/a.baseline/a.suite;opt=root/'results'/a.variant/a.suite
b=json.loads((base/'summary.json').read_text());c=json.loads((opt/'summary.json').read_text())
assert [x['name'] for x in b['programs']]==[x['name'] for x in c['programs']]

def functions(d):
    out={}
    for f in sorted(d.glob('*.linear.json')):
        for line in f.read_text().splitlines():
            row=json.loads(line);assert row['validator_pass']
            if 'cfg' in row:row.update(weighted_metrics(row))
            key=f.name+':'+row['function'];assert key not in out,key
            assert row['Lgoto_count']==sum(e[0]=='goto' for e in row['linear_events'])
            assert row['nodes']==sum(e[0]=='label' for e in row['linear_events'])
            out[key]=row
    assert out,d
    return out

rows=[];function_rows=[]
for before,after in zip(b['programs'],c['programs']):
    assert before['compiled'] and after['compiled']
    required=functional_required(a.suite,before['name'])
    if not a.diagnostic and required:assert before['functional_pass'] and after['functional_pass']
    name=before['name'];bf=functions(base/name);cf=functions(opt/name);assert bf.keys()==cf.keys()
    for key in bf:
        x,y=bf[key],cf[key]
        for field in ['nodes','eligible_edges','fallthrough_slots','conditional_branches','jumptable_edges']:assert x[field]==y[field],(name,key,field)
        if 'cfg' in x and 'cfg' in y:assert sorted(x['cfg'])==sorted(y['cfg']),(name,key,'CFG changed')
        measurements=[]
        for record in [x,y]:
            values={k:v for k,v in record.items() if k not in ['linear_events','cfg']}
            values['fallthrough_rate']=record['fallthrough_edges']/record['eligible_edges'] if record['eligible_edges'] else None
            measurements.append(values)
        function_rows.append({'program':name,'function':key,'baseline':measurements[0],'optimized':measurements[1]})
    eb=sum(x['eligible_edges'] for x in bf.values());fb=sum(x['fallthrough_edges'] for x in bf.values());fc=sum(x['fallthrough_edges'] for x in cf.values())
    jb=sum(x['Lgoto_count'] for x in bf.values());jc=sum(x['Lgoto_count'] for x in cf.values())
    sb=before['text_bytes'];sc=after['text_bytes']
    rows.append(dict(program=name,eligible_edges=eb,baseline_fallthrough_edges=fb,optimized_fallthrough_edges=fc,baseline_fallthrough_rate=fb/eb if eb else None,optimized_fallthrough_rate=fc/eb if eb else None,baseline_Lgoto_count=jb,optimized_Lgoto_count=jc,jump_relative_change=(jc-jb)/jb if jb else None,R_jump=(1+jb)/(1+jc),baseline_text_bytes=sb,optimized_text_bytes=sc,optimized_text_ratio=sc/sb,R_size=sb/sc,functional_pass=before['functional_pass'] and after['functional_pass']))
    if all('cfg' in f for f in [*bf.values(),*cf.values()]):
        for side,functions_by_name in [('baseline',bf),('optimized',cf)]:
            for field in ['loop_weighted_eligible','loop_weighted_fallthrough']:
                rows[-1][side+'_'+field]=sum(f[field] for f in functions_by_name.values())
aggregate={'R_jump_geomean':statistics.geometric_mean(r['R_jump'] for r in rows),'R_size_geomean':statistics.geometric_mean(r['R_size'] for r in rows)}
for key in ['baseline_Lgoto_count','optimized_Lgoto_count','baseline_fallthrough_edges','optimized_fallthrough_edges','eligible_edges']:
    aggregate[key]=sum(r[key] for r in rows)
for side in ['baseline','optimized']:aggregate[side+'_fallthrough_rate']=aggregate[side+'_fallthrough_edges']/aggregate['eligible_edges']
aggregate['function_jump_regressions']=sum(r['optimized']['Lgoto_count']>r['baseline']['Lgoto_count'] for r in function_rows)
if all('baseline_loop_weighted_eligible' in r for r in rows):
    for side in ['baseline','optimized']:
        for field in ['loop_weighted_eligible','loop_weighted_fallthrough']:
            aggregate[side+'_'+field]=sum(r[side+'_'+field] for r in rows)
        aggregate[side+'_loop_weighted_fallthrough_rate']=aggregate[side+'_loop_weighted_fallthrough']/aggregate[side+'_loop_weighted_eligible']
report=dict(suite=a.suite,variant=a.variant,baseline_variant=a.baseline,diagnostic_only=a.diagnostic,correctness_gate_pass=all(r['functional_pass'] for r in rows if functional_required(a.suite,r['program'])),functional_required=[r['program'] for r in rows if functional_required(a.suite,r['program'])],diagnostic_invalid=[r['program'] for r in rows if not functional_required(a.suite,r['program'])],programs=rows,aggregate=aggregate,functions=function_rows)
path=root/'results'/a.variant/(a.suite+('-diagnostic' if a.diagnostic else '-comparison')+'.json');path.write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(aggregate,indent=2))
for r in rows:print(r['program'],f"jumps {r['baseline_Lgoto_count']} -> {r['optimized_Lgoto_count']}",f"text ratio {r['optimized_text_ratio']:.4f}")
