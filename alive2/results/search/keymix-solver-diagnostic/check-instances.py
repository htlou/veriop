"""Add valid universal instances without deleting the original quantified query."""
from collections import defaultdict
from pathlib import Path
import argparse
import hashlib
import json
import time
import z3

p = argparse.ArgumentParser()
p.add_argument('--split', action='store_true')
p.add_argument('--case', choices=['reverse', 'wrong-rotate', 'wrong-defined', 'hash-forward', 'hash-reverse'])
a = p.parse_args()
out = Path(__file__).resolve().parent
if a.case:
    out = out / a.case
result_name = 'split-instances.json' if a.split else 'instances.json'
assert not (out/result_name).exists(), 'Preserve completed diagnostics.'
dump = json.loads((out/'dump.json').read_text())
report = dict(scope='Individual SMT query diagnostics only; not complete hash acceptance.',
              rule='Replace forall x.P(x) with (forall x.P(x)) AND P(t). All t are free constants of matching sorts.',
              checks=[])
report['case'] = a.case or 'forward'
report['script_sha256'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()

def add_instances(expr, records):
    if z3.is_quantifier(expr):
        if not expr.is_forall():
            return expr
        bound, free = defaultdict(set), defaultdict(set)
        constants = {}
        nested = False
        def walk(term):
            nonlocal nested
            if z3.is_quantifier(term):
                nested = True
                return
            if z3.is_app(term) and term.decl().kind() == z3.Z3_OP_EXTRACT:
                arg = term.arg(0)
                signature = tuple(term.params())
                if z3.is_var(arg):
                    bound[z3.get_var_index(arg)].add(signature)
                elif z3.is_const(arg) and str(arg).startswith('undef!'):
                    free[str(arg)].add(signature)
                    constants[str(arg)] = arg
            for child in term.children():
                walk(child)
        walk(expr.body())
        if nested or len(bound) != expr.num_vars():
            return expr
        unused = set(free)
        replacements = []
        for index in range(expr.num_vars()):
            sort = expr.var_sort(expr.num_vars()-1-index)
            names = sorted(n for n in unused if free[n] == bound[index] and constants[n].sort() == sort)
            if not names:
                return expr
            name = names[0]
            replacements.append(constants[name])
            unused.remove(name)
        instance = z3.substitute_vars(expr.body(), *replacements)
        records.append({str(expr.var_name(expr.num_vars()-1-i)):str(v) for i,v in enumerate(replacements)})
        return z3.And(expr, instance)
    if z3.is_app(expr) and expr.num_args():
        return expr.decl()(*[add_instances(c, records) for c in expr.children()])
    return expr

for path in sorted((out/'queries').glob('*.smt2')):
    assert hashlib.sha256(path.read_bytes()).hexdigest() == dump['queries'][path.name]
    original = z3.And(*z3.parse_smt2_file(str(path)))
    instances = []
    if a.split:
        goal = z3.Goal()
        goal.add(original)
        split = z3.Then('simplify', z3.Repeat(z3.OrElse(z3.Then('split-clause', 'propagate-values', 'simplify'), 'skip')))
        subgoals = z3.TryFor(split, 5000)(goal)
        assert all(g.prec() == z3.Z3_GOAL_PRECISE for g in subgoals)
        expanded = z3.Or(*[add_instances(z3.And(*g), instances) for g in subgoals])
    else:
        expanded = add_instances(original, instances)
    solver = z3.Solver()
    solver.set(timeout=5000)
    solver.add(expanded)
    suffix = '-split-instances.smt2' if a.split else '-instances.smt2'
    (out/(path.stem+suffix)).write_text(solver.to_smt2())
    start = time.monotonic()
    status = solver.check()
    record = dict(query=path.name, status=str(status), seconds=time.monotonic()-start,
                  instances=instances, reason=solver.reason_unknown() if status == z3.unknown else '')
    report['checks'].append(record)
    (out/result_name).write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps(record), flush=True)
