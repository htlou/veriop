"""Require positive proofs and explicit value/poison/undef counterexamples."""
from pathlib import Path
import argparse
import hashlib
import json
import subprocess
import sys

out = Path(__file__).resolve().parent
root = out.parents[2]
sys.path.insert(0, str(root))
from check import accepted, verify_artifacts
verify_artifacts()
p = argparse.ArgumentParser()
p.add_argument('--label', default='controls')
a = p.parse_args()
assert a.label.replace('-', '').isalnum()
result_path = out/(a.label+'.json')
assert not result_path.exists(), 'Preserve completed controls.'
checker = out/'alive-tv'
base = root/'results/search'
cases = [
    ('valid-libdivide', 2, '', [base/'libdivide_poisoncount/old.ll', base/'libdivide_poisoncount/new.ll']),
    ('valid-linear', 1, '', [base/'keymix-linear-control/defined.ll']),
    ('wrong-rotation', 0, 'Value mismatch', [base/'keymix-linear-control/defined-wrong-rotate.ll']),
    ('wrong-poison-domain', 0, 'poison', [base/'libdivide_poisoncount/old.ll', base/'libdivide_poisoncount/wrong-domain.ll']),
    ('missing-undef-fallback', 0, 'undef', [base/'vector-lowering-control/control.ll']),
]
records = []
for name, count, diagnostic, files in cases:
    cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub', '--smt-to=10000', *map(str, files)]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    log = proc.stdout+proc.stderr
    log_path = out/f'{a.label}-{name}.log'
    log_path.write_text(log)
    confirmations = log.count('These functions seem to be equivalent!')
    if count:
        # Single-file src/tgt mode emits equivalence confirmations without a summary.
        complete = accepted(log, count) if len(files) == 2 else 'ERROR:' not in log
        passed = proc.returncode == 0 and complete and confirmations == count
    else:
        passed = confirmations == 0 and 'ERROR:' in log and 'ERROR: Timeout' not in log and diagnostic.lower() in log.lower()
    record = dict(name=name, passed=passed, command=cmd, returncode=proc.returncode,
                  equivalence_confirmations=confirmations,
                  inputs={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in files})
    records.append(record)
    (result_path).write_text(json.dumps(records, indent=2)+'\n')
    print(name, 'PASS' if passed else 'FAIL', flush=True)
    assert passed, log_path
verify_artifacts()
build = json.loads((out/'build.json').read_text())
assert hashlib.sha256((root/'build/alive2/alive-tv').read_bytes()).hexdigest() == build['base_checker_sha256']
