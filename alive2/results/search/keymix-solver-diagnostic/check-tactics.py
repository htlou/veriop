"""Try sound Z3 strategies on unchanged dumped queries; no candidate acceptance."""
from pathlib import Path
import argparse
import hashlib
import json
import time
import z3

out = Path(__file__).resolve().parent
p = argparse.ArgumentParser()
p.add_argument('--split', action='store_true')
p.add_argument('--slices', action='store_true')
a = p.parse_args()
assert not (a.split and a.slices)
result_path = out / ('slice-tactics.json' if a.slices else 'split-tactics.json' if a.split else 'tactics.json')
assert not result_path.exists(), 'Preserve completed diagnostics.'
dump = json.loads((out/'dump.json').read_text())
report = dict(z3_version=z3.get_version_string(),
              scope='Individual forward scalar-prefix queries, not complete bidirectional hash verification.',
              documentation='https://microsoft.github.io/z3guide/docs/strategies/summary/',
              checks=[])
strategies = {
    'qe': lambda: z3.Then('simplify', 'qe', 'smt'),
    'qe2': lambda: z3.Then('simplify', 'qe2', 'smt'),
    'quantified-bitblast': lambda: z3.Then('simplify', z3.With('bit-blast', blast_quant=True), 'qe-light', 'smt'),
    'quantified-bitblast-qe': lambda: z3.Then('simplify', z3.With('bit-blast', blast_quant=True), 'qe', 'sat'),
}
def split():
    return z3.Repeat(z3.OrElse(z3.Then('split-clause', 'propagate-values', 'simplify'), 'skip'))
if a.split:
    strategies = {
        'split-qe2': lambda: z3.Then('simplify', split(), 'qe2', 'smt'),
        'split-bitblast': lambda: z3.Then('simplify', split(), z3.With('bit-blast', blast_quant=True), 'qe-light', 'smt'),
    }
if a.slices:
    strategies = {
        'slice-qe2': lambda: z3.Then('simplify', split(), 'bv-slice', 'qe2', 'smt'),
        'split-qsat': lambda: z3.Then('simplify', split(), 'qsat'),
    }
report['script_sha256'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
report['split_clauses'] = a.split
report['slice_strategies'] = a.slices
for path in sorted((out/'queries').glob('*.smt2')):
    assert hashlib.sha256(path.read_bytes()).hexdigest() == dump['queries'][path.name]
    goal = z3.Goal()
    goal.add(z3.parse_smt2_file(str(path)))
    for name, make in strategies.items():
        start = time.monotonic()
        try:
            result = z3.TryFor(make(), 5000)(goal)
            solved = all(len(g) == 1 and z3.is_false(g[0]) for g in result)
            empty = len(result) == 1 and len(result[0]) == 0
            status = 'unsat' if solved else 'sat' if empty else 'unresolved'
            detail = '' if status != 'unresolved' else result.sexpr()[:1000]
        except z3.Z3Exception as e:
            status, detail = 'unknown', str(e)
        record = dict(query=path.name, strategy=name, status=status,
                      seconds=time.monotonic()-start, detail=detail)
        report['checks'].append(record)
        result_path.write_text(json.dumps(report, indent=2)+'\n')
        print(json.dumps(record), flush=True)
