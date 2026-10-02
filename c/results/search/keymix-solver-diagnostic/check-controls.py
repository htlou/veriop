"""Check reverse-prefix queries and retain deliberate wrong-rotation controls."""
from pathlib import Path
import hashlib
import json
import subprocess
import sys

out = Path(__file__).resolve().parent
root = out.parents[2]
checker = root/'build/alive2/alive-tv'
for name, source, extra in [
    ('reverse', 'good.ll', ['--src-fn=tgt', '--tgt-fn=src']),
    ('wrong-rotate', 'wrong-rotate.ll', []),
    ('wrong-defined', 'defined-wrong-rotate.ll', []),
]:
    directory = out/name
    directory.mkdir(exist_ok=True)
    assert not (directory/'dump.json').exists(), 'Preserve completed controls.'
    (directory/'queries').mkdir(exist_ok=True)
    source = root/'results/search/keymix-linear-control'/source
    cmd = [str(checker), '--always-verify', '--fail-src-ub', '--smt-to=1000',
           '--smt-bench='+str(directory/'queries'), *extra, str(source)]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    (directory/'original.log').write_text(proc.stdout+proc.stderr)
    record = dict(command=cmd, returncode=proc.returncode,
                  source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
                  checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest(),
                  queries={p.name:hashlib.sha256(p.read_bytes()).hexdigest()
                           for p in (directory/'queries').iterdir()})
    (directory/'dump.json').write_text(json.dumps(record, indent=2)+'\n')
    subprocess.run([sys.executable, str(out/'check-instances.py'), '--split', '--case', name], check=True)
    report = json.loads((directory/'split-instances.json').read_text())
    states = [r['status'] for r in report['checks']]
    if name == 'reverse':
        assert states and all(s == 'unsat' for s in states), states
    else:
        assert any(r['query'].startswith('value_') and r['status'] == 'sat'
                   for r in report['checks']), states
        assert 'ERROR: Value mismatch' in (directory/'original.log').read_text()
    print(name, 'PASS', states, flush=True)
