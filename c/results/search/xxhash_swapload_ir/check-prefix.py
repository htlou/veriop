"""Check only the swap/XOR identity; this does not authorize native emission."""
from pathlib import Path
import hashlib
import json
import subprocess
import sys

out = Path(__file__).resolve().parent / 'prefix-control'
root = out.parents[3]
sys.path.insert(0, str(root))
from check import accepted

out.mkdir(exist_ok=True)
assert not (out/'summary.json').exists(), 'Preserve completed checks.'
prefix = 'declare i64 @llvm.bswap.i64(i64)\ndefine i64 @prefix(i64 %data, i64 %key) {\n'
old = prefix + '''  %mixed = xor i64 %data, %key
  %result = call noundef i64 @llvm.bswap.i64(i64 %mixed)
  ret i64 %result
}
'''
new = prefix + '''  %mixed = xor i64 %data, %key
  %check = call noundef i64 @llvm.bswap.i64(i64 %mixed)
  %d = call i64 @llvm.bswap.i64(i64 %data)
  %k = call i64 @llvm.bswap.i64(i64 %key)
  %result = xor i64 %d, %k
  ret i64 %result
}
'''
(out/'old.ll').write_text(old)
checker = root/'build/alive2/alive-tv'
report = {'scope': 'Unrestricted scalar prefix only; not a full hash proof.', 'checks': {}}
for name, text in [('new', new), ('wrong', new.replace('%result = xor i64 %d, %k', '%wrong = xor i64 %d, %k\n  %result = xor i64 %wrong, 1'))]:
    (out/f'{name}.ll').write_text(text)
    cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
           '--smt-to=5000', str(out/'old.ll'), str(out/f'{name}.ll')]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    log = proc.stdout + proc.stderr
    (out/f'{name}.log').write_text(log)
    ok = proc.returncode == 0 and accepted(log, 1) and log.count('These functions seem to be equivalent!') == 1
    report['checks'][name] = dict(command=cmd, accepted=ok, returncode=proc.returncode)
report['sha256'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out/'summary.json').write_text(json.dumps(report, indent=2)+'\n')
assert not report['checks']['wrong']['accepted']
print(json.dumps(report['checks'], indent=2))
