#!/usr/bin/env python3
"""Compile both historical flash-attention variants and record Volta failures."""

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
commit = "e9e661bd59364e5d4fce035834b6cadcadf8c2ef"
parent = "efb6ae963031709fc331e6e48cc4606ac8f9c3a7"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, env=env)
    return {"command": list(map(str, command)), "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


def kernel(path, variant):
    entries = re.findall(r"\.entry\s+([^\(]+)\(", path.read_text())
    return next(entry for entry in entries
                if entry.startswith(f"_Z22flash_attn_vec_ext_{variant}ILi128ELi1ELi4E")
                and "ELb0EE" in entry)


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "variants": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-warp-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert archived["returncode"] == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted["returncode"] == 0, extracted
    archive.unlink()
    for variant in ("f16", "f32"):
        source = work / f"ggml/src/ggml-cuda/template-instances/fattn-vec-{variant}-instance-hs128-f16-f16.cu"
        output = here / f"{variant}-{side}.ptx"
        built = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                     "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                     source, "-o", output])
        assert built["returncode"] == 0, built
        parsed = run([volta, "parse", output])
        assert parsed["returncode"] == 0, parsed
        record["variants"].setdefault(variant, {})[side] = {
            "revision": revision,
            "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
            "ptx_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
            "build": built,
            "parse": parsed,
        }

for variant in ("f16", "f32"):
    old = here / f"{variant}-old.ptx"
    new = here / f"{variant}-new.ptx"
    command = [volta, "compare", old, new, "--kernel1", kernel(old, variant),
               "--kernel2", kernel(new, variant), "-b", "128", "-g", "4,1",
               "--no-log-file", "--array", "Q:0x10000:2:128:in",
               "--array", "K:0x20000:2:16384:in", "--array", "V:0x30000:2:16384:in",
               "--array", "mask:0x40000:2:128:in", "--array", "dst:0x50000:4:512:out",
               "--array", "meta:0x60000:8:4:out", "--check-array", "dst", "--sample", "1"]
    for name in ("Q", "K", "V", "mask", "dst", "meta"):
        command += ["--param", f"ptr:{name}"]
    for value in (1.0, 0.0, 1.0, 1.0):
        command += ["--param", f"float:{value}"]
    command += ["--param", "int:0", "--param", "float:0.0"]
    dims = (128, 1, 1, 1, 128, 128, 1, 1, 1, 256, 256, 256, 256, 256,
            32768, 32768, 256, 32768, 32768, 128, 1, 1, 1)
    for value in dims:
        command += ["--param", f"int:{value}"]
    compared = run(command)
    assert compared["returncode"] != 0
    assert "integer-rounding modifier (floor/ceil/trunc/rint not modeled)" in compared["stderr"]
    record["variants"][variant]["compare"] = compared

(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("f16 and f32 historical PTX builds/parses passed; both Volta comparisons reject cvt rounding")
