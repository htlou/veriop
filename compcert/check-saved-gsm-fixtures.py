#!/usr/bin/env python3
"""Check saved GSM runs against upstream references without replacing run logs."""
import hashlib,json
from pathlib import Path

root=Path(__file__).resolve().parent
fixtures=root/'benchmarks/mibench/telecomm/gsm/data'
rows=[]
for summary in sorted((root/'results').glob('*/mibench-evaluation/summary.json')):
    run=summary.parent/'telecomm-gsm-toast/runtime'
    for label,reference in [('encode','correct_small.au.gsm'),('decode','correct_small.au.run')]:
        actual=run/(label+'.stdout');expected=fixtures/reference
        a,b=actual.read_bytes(),expected.read_bytes()
        rows.append(dict(variant=summary.parent.parent.name,operation=label,
            actual=str(actual.relative_to(root)),expected=str(expected.relative_to(root)),
            actual_sha256=hashlib.sha256(a).hexdigest(),expected_sha256=hashlib.sha256(b).hexdigest(),
            bytes=len(a),pass_check=a==b))
assert rows
report=dict(scope='Independent upstream expected outputs, supplementing the original baseline/candidate comparisons. Original runtime logs unchanged.',checks=rows,pass_all=all(r['pass_check'] for r in rows))
(root/'results/gsm-upstream-fixtures.json').write_text(json.dumps(report,indent=2)+'\n')
assert report['pass_all'],'GSM fixture mismatch'
print('PASS:',len(rows),'GSM upstream fixture comparisons')
