#!/usr/bin/env python3
"""Check the historical AIX/BE matmul syntax gate before equivalence testing."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
path = "ggml/src/ggml-cpu/llamafile/sgemm.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(*args):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True, env=env)


commit = run("git", "-C", repo, "rev-parse", "3b4fca11")
assert commit.returncode == 0
commit = commit.stdout.strip()
blobs = {}
checks = []
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = run("git", "-C", repo, "show", revision + ":" + path)
    oid = run("git", "-C", repo, "rev-parse", revision + ":" + path)
    assert source.returncode == oid.returncode == 0
    oid = oid.stdout.strip()
    data = source.stdout.encode()
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    blobs[side] = oid
    start = source.stdout.index("void matmul(int64_t m, int64_t n) {",
                                source.stdout.index("class tinyBLAS_Q0_PPC"))
    end = source.stdout.index("\n\n  private:", start)
    method = source.stdout[start:end]
    assert ("n_chunk = 32\n" in method) == (side == "new")
    wrapper = ("typedef long long int64_t;\nclass Probe {\n"
               "void mnpack(int64_t,int64_t,int64_t,int64_t);\n"
               "void matmul_tiled(int64_t,int64_t,int64_t,int64_t,int64_t);\n"
               + method + "\n};\n")
    (here / f"{side}.cpp").write_text(wrapper)
    for mode, flag in (("aix", "-D_AIX"), ("ordinary", "-DVERIOP_NO_AIX")):
        result = run(clang, "-fsyntax-only", flag, here / f"{side}.cpp")
        (here / f"{side}-{mode}.log").write_text(result.stdout + result.stderr)
        checks.append({"side": side, "mode": mode, "exit_code": result.returncode,
                       "diagnostic": result.stderr.strip()})

assert next(x for x in checks if x["side"] == "old" and x["mode"] == "aix")["exit_code"] == 0
assert next(x for x in checks if x["side"] == "new" and x["mode"] == "aix")["exit_code"] != 0
assert "expected ';' after expression" in next(x for x in checks if x["side"] == "new" and x["mode"] == "aix")["diagnostic"]
assert all(x["exit_code"] == 0 for x in checks if x["mode"] == "ordinary")
(here / "result.json").write_text(json.dumps({
    "commit": commit, "historical_source_blobs": blobs,
    "verdict": "UNSUPPORTED", "unsupported_reason": "new-code-does-not-build",
    "checker_status": "compile_gate_checked",
    "scope": "tinyBLAS_Q0_PPC::matmul source-extracted AIX branch; no output equivalence check",
    "checks": checks,
}, indent=2) + "\n")
print("old AIX branch compiles; new AIX branch fails at missing semicolon; ordinary branches compile")
