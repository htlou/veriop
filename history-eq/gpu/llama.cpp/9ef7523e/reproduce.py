#!/usr/bin/env python3
"""Rebuild the historical SSM-convolution PTX and repeat scoped Volta checks."""

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
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
commit = "9ef7523ee99e13fe57a3da5cd600c206ed997630"
parent = "00de615345c9d3ead161c15bf0cc313e46f4def6"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, env=env)
    return {"command": list(map(str, command)), "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


def kernel(path):
    entries = re.findall(r"\.entry\s+([^\(]+)\(", path.read_text())
    return next(entry for entry in entries
                if entry.startswith("_Z23ssm_conv_long_token_f32ILb0ELm128ELm3ELl32E"))


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "builds": {}, "comparisons": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-ssm-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert archived["returncode"] == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted["returncode"] == 0, extracted
    archive.unlink()
    source = work / "ggml/src/ggml-cuda/ssm-conv.cu"
    output = here / f"{side}.ptx"
    built = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                 "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                 source, "-o", output])
    assert built["returncode"] == 0, built
    parsed = run([volta, "parse", output])
    assert parsed["returncode"] == 0, parsed
    record["builds"][side] = {
        "revision": revision,
        "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "ptx_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
        "build": built,
        "parse": parsed,
    }

command = [volta, "compare", here / "old.ptx", here / "new.ptx",
           "--kernel1", kernel(here / "old.ptx"), "--kernel2", kernel(here / "new.ptx"),
           "-b", "128", "-g", "1,1,2", "--dyn-shared", "17408", "--no-log-file",
           "--array", "src0:0x10000:4:8448:in", "--array", "src1:0x20000:4:384:in",
           "--array", "dst:0x30000:4:8192:out", "--check-array", "dst"]
for value in ("ptr:src0", "ptr:src1", "int:4", "int:264", "int:33792", "int:12",
              "ptr:dst", "int:4", "int:512", "int:32768", "int:64"):
    command += ["--param", value]

sampled = run(command + ["--sample", "128", "--verify-numeric"])
assert sampled["returncode"] == 0 and "elements: 128/4096" in sampled["stdout"]
assert sampled["stdout"].rstrip().endswith("EQUIVALENT")
record["comparisons"]["sample_128_numeric"] = sampled

full = run(command)
assert full["returncode"] != 0
assert "cannot check equivalence of undefined values" in full["stderr"]
record["comparisons"]["full_output"] = full

lemma = run([z3, here / "load-loop.smt2"])
assert lemma["returncode"] == 0 and lemma["stdout"].splitlines() == ["unsat"] * 3
record["load_loop_lemma"] = lemma

(here / "verification-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("128/4096 outputs equivalent; full Volta check undefined; local loop lemma unsat x3")
