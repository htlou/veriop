#!/usr/bin/env python3
"""Compile historical CUDA and attempt Volta comparison of result combination."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
volta = root / "cuda/repos/volta/target/release/volta"
child = "c959b676be29e93f8dbc3bd6056ceba812a9eb72"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
kernel = "_Z26flash_attn_combine_resultsILi64EEvPKfPK6float2Pfi"


def run(args, timeout=90):
    result = subprocess.run(list(map(str, args)), env=env, capture_output=True,
                            text=True, timeout=timeout)
    return {"command": list(map(str, args)), "exit": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", child + "^"],
                                 env=env, text=True).strip()
diff = subprocess.check_output(["git", "-C", str(repo), "diff", parent, child, "--",
                                "ggml/src/ggml-cuda"], env=env)
assert diff == (here.parent / "source-screening/c959b676.source.diff").read_bytes()
record = {"parent": parent, "child": child,
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(), "builds": {}}
for side, rev in (("old", parent), ("new", child)):
    work = Path(f"/tmp/veriop-llama-c959-{side}")
    if work.exists():
        shutil.rmtree(work)
    work.mkdir()
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "-o", archive, rev, "ggml"])
    assert archived["exit"] == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted["exit"] == 0, extracted
    archive.unlink()
    source = work / "ggml/src/ggml-cuda/fattn-tile.cu"
    common = work / "ggml/src/ggml-cuda/fattn-common.cuh"
    ptx = here / f"{side}.ptx"
    build = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                 "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                 source, "-o", ptx])
    assert build["exit"] == 0, build
    parsed = run([volta, "parse", "--no-log-file", ptx])
    assert parsed["exit"] == 0, parsed
    assert f".entry {kernel}(" in ptx.read_text()
    record["builds"][side] = {
        "revision": rev,
        "source_git_oid": subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{rev}:ggml/src/ggml-cuda/fattn-common.cuh"],
            env=env, text=True).strip(),
        "common_sha256": hashlib.sha256(common.read_bytes()).hexdigest(),
        "ptx_sha256": hashlib.sha256(ptx.read_bytes()).hexdigest(),
        "compile": build, "parse": parsed,
    }

compared = run([volta, "compare", here / "old.ptx", here / "new.ptx",
                "--kernel1", kernel, "--kernel2", kernel,
                "-b", "64", "-g", "1", "--dyn-shared", "16",
                "--array", "parts:0x10000:4:128:in",
                "--array", "meta:0x20000:8:2:in",
                "--array", "dst:0x30000:4:64:out",
                "--check-array", "dst", "--param", "ptr:parts",
                "--param", "ptr:meta", "--param", "ptr:dst",
                "--param", "int:2", "--no-log-file"])
record["comparison"] = compared
assert compared["exit"] != 0 and "Unsupported instruction: Ex2" in compared["stderr"]
(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("historical CUDA pair built and parsed; Volta comparison stopped at unsupported Ex2")
