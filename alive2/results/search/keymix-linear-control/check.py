"""Isolate the linear identity; these controls do not prove complete hashes."""
from pathlib import Path
import hashlib, json, subprocess
p = Path(__file__).resolve().parent
checker = p.parents[2] / 'build/alive2/alive-tv'
results = {}
for name in ['good', 'defined', 'defined-wrong-rotate']:
    cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub', '--smt-to=5000', str(p / (name + '.ll'))]
    result = subprocess.run(cmd, capture_output=True, text=True)
    log = result.stdout + result.stderr
    (p / (name + '.log')).write_text(log)
    equivalent = result.returncode == 0 and log.count('These functions seem to be equivalent!') == 1 and 'ERROR:' not in log
    if name == 'defined':
        assert equivalent, log
    elif name == 'defined-wrong-rotate':
        assert not equivalent and 'Value mismatch' in log, log
    results[name] = dict(command=cmd, returncode=result.returncode, equivalent=equivalent, timeout='ERROR: Timeout' in log)
results['scope'] = 'Linear stage only. Defined-input success does not establish equivalence of the full LLVM hash functions or justify restricting their domain.'
results['checker_sha256'] = hashlib.sha256(checker.read_bytes()).hexdigest()
results['sha256'] = {q.name: hashlib.sha256(q.read_bytes()).hexdigest() for q in p.iterdir() if q.suffix in ['.ll', '.log']}
(p / 'summary.json').write_text(json.dumps(results, indent=2) + '\n')
print(json.dumps(results, indent=2))
