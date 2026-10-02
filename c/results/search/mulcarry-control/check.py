"""Probe the multiplication fold in isolation; never accept a hash candidate."""
from pathlib import Path
import hashlib
import json
import subprocess

out = Path(__file__).resolve().parent
root = out.parents[2]
checker = root / 'results/search/alive2-keymix-portfolio/alive-tv'
assert not (out / 'summary.json').exists(), 'Preserve completed controls.'
records = []
for label, defined, wrong in [('undef8', False, False), ('defined8', True, False),
                              ('wrong8', True, True)]:
    arg = 'noundef ' if defined else ''
    source = f'''define i8 @src(i8 {arg}%a, i8 {arg}%b) {{
  %aw = zext i8 %a to i16
  %bw = zext i8 %b to i16
  %p = mul nuw i16 %aw, %bw
  %lo = trunc i16 %p to i8
  %hs = lshr i16 %p, 8
  %hi = trunc i16 %hs to i8
  %fold = xor i8 %lo, %hi
  ret i8 %fold
}}
define i8 @tgt(i8 {arg}%a, i8 {arg}%b) {{
  %pair = call {{ i8, i1 }} @llvm.umul.with.overflow.i8(i8 %a, i8 %b)
  %lo = extractvalue {{ i8, i1 }} %pair, 0
  %overflow = extractvalue {{ i8, i1 }} %pair, 1
  %aw = zext i8 %a to i16
  %bw = zext i8 %b to i16
  %p = mul nuw i16 %aw, %bw
  %hs = lshr i16 %p, 8
  %hi = trunc i16 %hs to i8
  %selected = select i1 %overflow, i8 %hi, i8 0
  %fold = xor i8 %lo, %selected
'''
    source += '  %wrong = xor i8 %fold, 1\n  ret i8 %wrong\n' if wrong else '  ret i8 %fold\n'
    source += '}\ndeclare { i8, i1 } @llvm.umul.with.overflow.i8(i8, i8)\n'
    path = out / (label + '.ll')
    path.write_text(source)
    subprocess.run(['opt', '-passes=verify', '-disable-output', str(path)], check=True)
    cmd = [str(checker), '--bidirectional', '--always-verify', '--fail-src-ub',
           '--smt-to=5000', str(path)]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    log = proc.stdout + proc.stderr
    (out / (label + '.log')).write_text(log)
    record = dict(label=label, command=cmd, returncode=proc.returncode,
                  equivalences=log.count('These functions seem to be equivalent!'),
                  errors=[l for l in log.splitlines() if 'ERROR:' in l],
                  input_sha256=hashlib.sha256(path.read_bytes()).hexdigest())
    records.append(record)
    (out / 'summary.json').write_text(json.dumps(dict(
        scope='Eight-bit isolated controls only; no full-hash proof or native acceptance.',
        checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest(), checks=records), indent=2) + '\n')
    print(json.dumps(record), flush=True)
