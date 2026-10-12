"""User-approved baseline-only functional protocol; source text stays unchanged."""
import hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def freeze_baseline_oracles():
    source=ROOT/'results/measured-baseline/mibench-evaluation/summary.json'
    baseline=json.loads(source.read_text())
    record={
        'basis':'Baseline only; user authorized this protocol after reviewing the inherited bf defect. Compilation coverage remains unchanged.',
        'baseline_summary_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
        'compilation_required':[r['name'] for r in baseline['programs']],
        'functional_required':[r['name'] for r in baseline['programs'] if r['functional_pass']],
        'diagnostic_invalid':[{'name':r['name'],'reason':r.get('source_limitation','Baseline functional gate failed')} for r in baseline['programs'] if not r['functional_pass']],
    }
    path=ROOT/'results/frozen/mibench-functional-oracles.json'
    if path.exists():assert json.loads(path.read_text())==record
    else:path.write_text(json.dumps(record,indent=2)+'\n')
    return record

def functional_required(suite,name):
    if suite!='mibench-evaluation':return True
    record=json.loads((ROOT/'results/frozen/mibench-functional-oracles.json').read_text())
    assert name in record['compilation_required'],name
    return name in record['functional_required']

if __name__=='__main__':
    record=freeze_baseline_oracles()
    print('Frozen:',len(record['compilation_required']),'compilation cases;',len(record['functional_required']),'baseline-valid functional cases;',len(record['diagnostic_invalid']),'invalid diagnostic case')
