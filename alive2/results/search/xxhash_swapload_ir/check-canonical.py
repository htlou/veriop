"""Inspect LLVM canonicalization without emitting or timing unproved native code."""
from pathlib import Path
import hashlib
import json
import re
import subprocess

out = Path(__file__).resolve().parent
commands = []
texts = []
for source, target in [('old.ll', 'reference-canonical.ll'), ('new.ll', 'canonical.ll')]:
    cmd = ['opt', '-passes=default<O3>', '-S', str(out/source), '-o', str(out/target)]
    subprocess.run(cmd, check=True)
    commands.append(cmd)
    texts.append((out/target).read_text())
functions = {}
for name in ['target_9to16', 'target_0to16']:
    bodies = []
    for text in texts:
        match = re.search(r'^define [^\n]*@'+name+r'\([^\n]*\{\n(.*?)^}', text, re.M | re.S)
        assert match
        bodies.append(re.sub(r', !prof !\d+', ', !prof !PROFILE', match[1]))
    attribute = 'tail call noundef i64 @llvm.bswap.i64'
    assert bodies[0].count(attribute) == 1 and attribute not in bodies[1]
    assert bodies[0].replace(attribute, 'tail call i64 @llvm.bswap.i64') == bodies[1]
    functions[name] = 'Same body after branch-profile ID normalization, except the candidate loses the noundef bswap return attribute.'
report = dict(commands=commands, functions=functions,
              scope='IR canonicalization inspection, not an equivalence proof or native benchmark.',
              sha256={p: hashlib.sha256((out/p).read_bytes()).hexdigest()
                      for p in ['old.ll', 'new.ll', 'reference-canonical.ll', 'canonical.ll']})
(out/'canonical-check.json').write_text(json.dumps(report, indent=2)+'\n')
print('PASS: distributed swaps canonicalize back; only the bswap definedness attribute differs.')
