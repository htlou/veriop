#!/usr/bin/env python3
"""Compile historical Quick GELU wrappers and record Alive2's global-state limit."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive = root / "alive2/build/alive2/alive-tv"
commit = "0c6ee1cadee96d3ba6e06afb0c001d33f413a0b0"
parent = "2dd84169d1225c2a56ddd1902d718f4514d7536a"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, env=env)
    return {"command": list(map(str, command)), "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "builds": {}, "checks": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-gelu-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert archived["returncode"] == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted["returncode"] == 0, extracted
    archive.unlink()
    source = work / "ggml/src/ggml-cpu/vec.h"
    output = here / f"{side}.ll"
    compiled = run([clang, "-std=c++17", "-O2", "-march=x86-64-v3", "-fno-strict-aliasing",
                    "-isystem", "/usr/include/c++/11",
                    "-isystem", "/usr/include/x86_64-linux-gnu/c++/11",
                    "-S", "-emit-llvm", f"-I{work}/ggml/src", f"-I{work}/ggml/src/ggml-cpu",
                    f"-I{work}/ggml/include", here / "wrapper.cpp", "-o", output])
    assert compiled["returncode"] == 0, compiled
    record["builds"][side] = {
        "revision": revision,
        "vec_header_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "ir_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
        "compile": compiled,
    }

for tag, src, tgt, marker in (
    ("forward", "old", "new", "non-constant global variable @ggml_table_gelu_quick_f16 is introduced in target"),
    ("reverse", "new", "old", "non-constant global variable @ggml_table_f32_f16 is introduced in target"),
):
    checked = run([alive, "--smt-to=10000", "--always-verify", here / f"{src}.ll", here / f"{tgt}.ll"])
    assert marker in checked["stdout"]
    assert "0 correct transformations" in checked["stdout"]
    assert "1 failed-to-prove transformations" in checked["stdout"]
    record["checks"][tag] = checked

(here / "alive2-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("historical IR compiles; Alive2 rejects introduced non-constant global tables in both directions")
