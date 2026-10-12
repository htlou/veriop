#!/usr/bin/env python3
"""Audit exact AArch64 sources and the installed LLVM build prerequisite."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
child = "0f1a39f3439825acf7e3a1663566d410be152170"
optimized = "ggml/src/ggml-aarch64.c"
generic = "ggml/src/ggml-quants.c"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
archive = here.parent / "source-screening/0f1a39f3.source.diff"
assert manifest["commits"][child]["parent"] == parent
assert hashlib.sha256(archive.read_bytes()).hexdigest() == manifest["commits"][child]["diff_sha256"]
assert archive.read_bytes() == git("diff", "--no-ext-diff", parent, child, "--", "ggml/src/")
assert subprocess.run(["git", "-C", str(repo), "cat-file", "-e", f"{parent}:{optimized}"],
                      env=env, capture_output=True).returncode != 0
report = {"parent": parent, "child": child, "source_store": str(repo),
          "scope": "generic Q4/Q8 path versus new AArch64 kernel build prerequisite",
          "sources": {}, "verdict": "UNKNOWN"}

for side, rev, path in (("old", parent, generic), ("new_generic", child, generic),
                        ("new_optimized", child, optimized)):
    source = git("show", f"{rev}:{path}")
    oid = git("rev-parse", f"{rev}:{path}").decode().strip()
    assert subprocess.check_output(["git", "hash-object", "--stdin"], input=source).decode().strip() == oid
    report["sources"][side] = {"path": path, "git_oid": oid, "sha256": hashlib.sha256(source).hexdigest()}
    if side == "new_optimized":
        assert b"#include <math.h>" in source and b"__asm__ __volatile__" in source

command = [str(clang), "--target=aarch64-linux-gnu", "-march=armv8-a+simd",
           "-x", "c", "-fsyntax-only", "-"]
probe = subprocess.run(command, input="#include <math.h>\nint main(void) { return 0; }\n",
                       capture_output=True, text=True)
assert probe.returncode != 0 and "bits/libc-header-start.h' file not found" in probe.stderr
report["compiler_probe"] = {"command": command, "exit_code": probe.returncode,
                            "stderr": probe.stderr.strip()}
(here / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print("AArch64 libc prerequisite unavailable; no exact historical IR or Alive2 verdict")
