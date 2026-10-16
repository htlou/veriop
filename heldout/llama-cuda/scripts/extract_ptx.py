"""Emit PTX for one ggml-cuda source using the exact nvcc command CMake used for the build.

usage: extract_ptx.py <worktree> <source-basename> <out.ptx>
Takes the compile_commands.json entry, swaps `--generate-code=...` / `-c` for `-arch=compute_80 --ptx`.
The build itself embeds compute_80 PTX (code=[compute_80,sm_80]); on H100 (sm_90) the driver JITs that PTX,
so this PTX is what actually executes. Records the command and sha256 next to the output.
"""
import hashlib, json, shlex, subprocess, sys
from pathlib import Path

wt, src, out = Path(sys.argv[1]).resolve(), sys.argv[2], Path(sys.argv[3]).resolve()
entries = json.loads((wt / 'build-cuda/compile_commands.json').read_text())
(entry,) = [e for e in entries if e['file'].endswith('/ggml-cuda/' + src)]
args = shlex.split(entry['command'])
cmd = []
skip = False
for a in args:
    if skip:
        skip = False; continue
    if a.startswith('--generate-code='):
        cmd.append('-arch=compute_80'); continue
    if a in ('-c', '-o'):
        skip = a == '-o'
        continue
    if a == '-x':
        cmd.append(a); continue
    cmd.append(a)
# last arg is the source file now
cmd = cmd[:-1] + ['--ptx', cmd[-1], '-o', str(out)]
subprocess.run(cmd, check=True, cwd=entry['directory'])
rec = dict(command=cmd, cwd=entry['directory'], ptx=str(out),
           ptx_sha256=hashlib.sha256(out.read_bytes()).hexdigest(),
           source_sha256=hashlib.sha256(Path(entry['file']).read_bytes()).hexdigest())
out.with_suffix('.ptx.json').write_text(json.dumps(rec, indent=2) + '\n')
print(rec['ptx_sha256'])
