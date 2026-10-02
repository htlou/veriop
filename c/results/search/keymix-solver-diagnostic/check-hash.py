"""Apply the diagnostic to exact full-helper queries, without accepting a trial."""
from pathlib import Path
import hashlib
import json
import subprocess
import sys

out = Path(__file__).resolve().parent
root = out.parents[2]
checker = root/'build/alive2/alive-tv'
trial = root/'results/search/xxhash_keymix'
record = json.loads((trial/'trial.json').read_text())
for name in ['old.ll', 'new.ll']:
    assert hashlib.sha256((trial/name).read_bytes()).hexdigest() == record['sha256'][name]
for name, files in [('hash-forward', ['old.ll', 'new.ll']), ('hash-reverse', ['new.ll', 'old.ll'])]:
    directory = out/name
    directory.mkdir(exist_ok=True)
    assert not (directory/'dump.json').exists(), 'Preserve completed diagnostics.'
    (directory/'queries').mkdir(exist_ok=True)
    cmd = [str(checker), '--always-verify', '--fail-src-ub', '--func=target_4to8',
           '--smt-to=1000', '--smt-bench='+str(directory/'queries'),
           *[str(trial/f) for f in files]]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    (directory/'original.log').write_text(proc.stdout+proc.stderr)
    report = dict(command=cmd, returncode=proc.returncode,
                  inputs={f:hashlib.sha256((trial/f).read_bytes()).hexdigest() for f in files},
                  checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest(),
                  queries={p.name:hashlib.sha256(p.read_bytes()).hexdigest()
                           for p in (directory/'queries').iterdir()})
    (directory/'dump.json').write_text(json.dumps(report, indent=2)+'\n')
    try:
        result = subprocess.run([sys.executable, str(out/'check-instances.py'), '--split', '--case', name], timeout=60)
        report['diagnostic_returncode'] = result.returncode
    except subprocess.TimeoutExpired:
        report['diagnostic_wall_timeout'] = True
    (directory/'run.json').write_text(json.dumps(report, indent=2)+'\n')
    print(name, 'diagnostic completed; no native emission', flush=True)
