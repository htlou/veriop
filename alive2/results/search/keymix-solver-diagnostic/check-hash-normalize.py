"""Try bit-vector normalization on exact quantifier-free full-helper queries."""
from pathlib import Path
import hashlib
import json
import time
import z3

out = Path(__file__).resolve().parent
assert not (out/'hash-normalize.json').exists(), 'Preserve completed diagnostics.'
report = dict(scope='Exact full-helper value queries only; no native acceptance.', checks=[])
strategies = {
    'xor-normalize': lambda: z3.Then(z3.With('simplify', bv_sort_ac=True, bv_extract_prop=True), 'smt'),
    'array-xor-normalize': lambda: z3.Then(z3.With('simplify', bv_sort_ac=True, bv_extract_prop=True,
                                                blast_select_store=True, push_ite_bv=True), 'qfaufbv'),
}
for case in ['hash-forward', 'hash-reverse']:
    manifest = json.loads((out/case/'dump.json').read_text())
    for path in sorted((out/case/'queries').glob('value_*.smt2')):
        assert hashlib.sha256(path.read_bytes()).hexdigest() == manifest['queries'][path.name]
        assert '(forall ' not in path.read_text()
        goal = z3.Goal()
        goal.add(z3.parse_smt2_file(str(path)))
        for name, make in strategies.items():
            start = time.monotonic()
            try:
                result = z3.TryFor(make(), 5000)(goal)
                status = 'unsat' if len(result) and all(len(g)==1 and z3.is_false(g[0]) for g in result) else 'unresolved'
                detail = ''
            except z3.Z3Exception as e:
                status, detail = 'unknown', str(e)
            record = dict(case=case, query=path.name, strategy=name, status=status,
                          seconds=time.monotonic()-start, detail=detail)
            report['checks'].append(record)
            (out/'hash-normalize.json').write_text(json.dumps(report, indent=2)+'\n')
            print(json.dumps(record), flush=True)
