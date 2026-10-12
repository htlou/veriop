#!/usr/bin/env python3
"""Build historical SM75 MMVQ PTX and record Volta's struct-param boundary."""

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
commit = "d7be46189f4a9ed59c5d98f71a87f8a16954a6eb"
parent = "bc81d47aba663383dc8827bd3bc8c4a35f735d16"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, env=env)
    return {"command": list(map(str, command)), "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


def kernel(path):
    entries = re.findall(r"\.entry\s+([^\(]+)\(", path.read_text())
    return next(entry for entry in entries
                if entry.startswith("_Z13mul_mat_vec_qIL9ggml_type2ELi1ELb0ELb0E"))


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "builds": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-turing-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert archived["returncode"] == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted["returncode"] == 0, extracted
    archive.unlink()
    source = work / "ggml/src/ggml-cuda/mmvq.cu"
    output = here / f"{side}.ptx"
    built = run(["nvcc", "-std=c++17", "-arch=compute_75", "--ptx", "-O3",
                 "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                 source, "-o", output])
    assert built["returncode"] == 0, built
    parsed = run([volta, "parse", output])
    assert parsed["returncode"] == 0, parsed
    record["builds"][side] = {
        "revision": revision,
        "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "ptx_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
        "compile": built,
        "parse": parsed,
    }

command = [volta, "compare", here / "old.ptx", here / "new.ptx",
           "--kernel1", kernel(here / "old.ptx"), "--kernel2", kernel(here / "new.ptx"),
           "-b", "32", "--block2", "128", "-g", "1", "--no-log-file",
           "--array", "x:0x10000:4:4096:in", "--array", "y:0x20000:4:4096:in",
           "--array", "ids:0x30000:4:4096:in", "--array", "out:0x40000:4:4096:out",
           "--check-array", "out", "--sample", "1"]
values = ["ptr:x", "ptr:y", "ptr:ids", "int:0", "ptr:out"] + ["int:1"] * 14
assert len(values) == 19
for value in values:
    command += ["--param", value]
compared = run(command)
assert compared["returncode"] != 0
assert "param loads with nonzero offsets are not supported" in compared["stderr"]
record["compare"] = compared

(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("SM75 historical PTX builds/parses passed; Volta rejects selected MMVQ struct-param load")
