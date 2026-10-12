#!/usr/bin/env python3
"""Compile exact historical CUDA sources and record Volta's PTX boundary."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
volta = root / "cuda/repos/volta/target/release/volta"
commit = "00681dfc16ba4cebb9c7fbd2cf2656e06a0692a4"
parent = "4f658855fa8f2e42b7ed9a5b298fa39a2e39b096"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, env=env)
    return {"command": list(map(str, command)), "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "builds": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-fastdiv-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    build = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert build["returncode"] == 0, build
    extract = run(["tar", "-xf", archive, "-C", work])
    assert extract["returncode"] == 0, extract
    source = work / "ggml/src/ggml-cuda/binbcast.cu"
    output = here / f"{side}.ptx"
    compile_result = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                          "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                          source, "-o", output])
    assert compile_result["returncode"] == 0, compile_result
    parse_result = run([volta, "parse", output])
    assert parse_result["returncode"] == 0, parse_result
    record["builds"][side] = {
        "revision": revision,
        "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "ptx_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
        "compile": compile_result,
        "parse": parse_result,
    }
    archive.unlink()


def kernel(path):
    entries = re.findall(r"\.entry\s+([^\(]+)\(", path.read_text())
    return next(entry for entry in entries if entry.startswith("_Z11k_bin_bcastI")
                and "op_repeatEffEEfff" in entry)


args = [volta, "compare", here / "old.ptx", here / "new.ptx",
        "--kernel1", kernel(here / "old.ptx"), "--kernel2", kernel(here / "new.ptx"),
        "-b", "1", "-g", "1",
        "--array", "src0:0x10000:4:1:in", "--array", "src1:0x20000:4:1:in",
        "--array", "dst:0x30000:4:1:out", "--check-array", "dst", "--no-log-file"]
for name in ("src0", "src1", "dst"):
    args += ["--param", f"ptr:{name}"]
for _ in range(17):
    args += ["--param", "int:1"]
record["compare"] = run(args)
assert record["compare"]["returncode"] != 0
assert "param loads with nonzero offsets are not supported" in record["compare"]["stderr"]
(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("both PTX builds and parses passed; Volta cannot lower optimized struct parameter access")
