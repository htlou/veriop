#!/usr/bin/env python3
"""Make a materialized OpenSSL tree preprocessable: run Configure and generate headers (version-agnostic best effort).
usage: prepare.py TREE   -> prints JSON {ok, steps:[...]}"""
import json, os, subprocess, sys, re
tree = sys.argv[1]
steps = []
def run(cmd, tmo=600):
    try:
        p = subprocess.run(cmd, cwd=tree, capture_output=True, text=True, timeout=tmo, shell=isinstance(cmd, str))
        steps.append((cmd if isinstance(cmd, str) else " ".join(cmd), p.returncode, (p.stdout + p.stderr)[-200:]))
        return p.returncode
    except subprocess.TimeoutExpired:
        steps.append((cmd, 'timeout', '')); return 124
def has(f): return os.path.exists(os.path.join(tree, f))
cfgopts = "no-asm no-shared no-tests no-docs" 
rc = 1
if has("Configure"):
    for target in ("linux-x86_64", "linux-generic64"):
        for opts in (cfgopts, "no-asm no-shared"):
            rc = run(f"perl ./Configure {target} {opts} >/dev/null 2>&1")
            if rc == 0: break
        if rc == 0: break
if rc != 0 and has("config"):
    rc = run("./config no-asm no-shared >/dev/null 2>&1")
if rc == 0:
    mk = open(os.path.join(tree, "Makefile")).read() if has("Makefile") else ""
    if re.search(r"^build_generated:", mk, re.M):
        run("make -j4 build_generated >/dev/null 2>&1", 900)
    elif re.search(r"^links:", mk, re.M):
        run("make links >/dev/null 2>&1", 300)
    for t in ("depend",):
        pass
print(json.dumps(dict(ok=(rc == 0), steps=steps)))
