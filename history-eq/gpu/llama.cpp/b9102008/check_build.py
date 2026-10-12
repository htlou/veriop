#!/usr/bin/env python3
"""Audit exact PPC sources and the installed LLVM build prerequisite."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
child = "b910200897f1d3193a711438d8482a59e517ed08"
path = "ggml/src/ggml-cpu/llamafile/sgemm.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
archive = here.parent / "source-screening/b9102008.source.diff"
assert manifest["commits"][child]["parent"] == parent
assert hashlib.sha256(archive.read_bytes()).hexdigest() == manifest["commits"][child]["diff_sha256"]
assert archive.read_bytes() == git("diff", "--no-ext-diff", parent, child, "--", path)
report = {"parent": parent, "child": child, "source_store": str(repo),
          "scope": "PowerPC MMA source-to-LLVM build prerequisite", "sides": {}, "verdict": "UNKNOWN"}

for side, rev in (("old", parent), ("new", child)):
    source = git("show", f"{rev}:{path}")
    assert b"#include <array>" in source and b"#if defined(__MMA__)" in source
    oid = git("rev-parse", f"{rev}:{path}").decode().strip()
    assert subprocess.check_output(["git", "hash-object", "--stdin"], input=source).decode().strip() == oid
    report["sides"][side] = {"source_git_oid": oid, "source_sha256": hashlib.sha256(source).hexdigest()}

command = [str(clang), "--target=powerpc64le-linux-gnu", "-mcpu=power10",
           "-D__MMA__", "-x", "c++", "-fsyntax-only", "-"]
probe = subprocess.run(command, input="#include <array>\n#include <type_traits>\n",
                       capture_output=True, text=True)
assert probe.returncode != 0 and "'array' file not found" in probe.stderr
report["compiler_probe"] = {"command": command, "exit_code": probe.returncode,
                            "stderr": probe.stderr.strip()}
(here / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print("PPC C++ standard-library prerequisite unavailable; no historical IR or Alive2 verdict")
