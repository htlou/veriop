#!/usr/bin/env python3
"""Build historical im2col PTX and test whether Volta can lower each side."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
volta = root / "cuda/repos/volta/target/release/volta"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, timeout=60):
    cmd = list(map(str, args))
    p = subprocess.run(cmd, capture_output=True, text=True, env=env, timeout=timeout)
    return {"command": cmd, "returncode": p.returncode, "stdout": p.stdout, "stderr": p.stderr}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env).decode().strip()


commit = git("rev-parse", "83078fec")
parent = git("rev-parse", commit + "^")
record = {"commit": commit, "parent": parent, "builds": {}, "lowering_probes": {}}
with tempfile.TemporaryDirectory(prefix="veriop-llama-im2col-") as tmp:
    for side, revision in (("old", parent), ("new", commit)):
        work = Path(tmp) / side
        work.mkdir()
        archive = work / "ggml.tar"
        result = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
        assert result["returncode"] == 0, result
        subprocess.run(["tar", "-xf", archive, "-C", work], check=True)
        source = work / "ggml/src/ggml-cuda/im2col.cu"
        exact = subprocess.check_output(["git", "-C", str(repo), "show", revision + ":ggml/src/ggml-cuda/im2col.cu"], env=env)
        assert source.read_bytes() == exact
        ptx = here / f"{side}.ptx"
        build = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3", "-DGGML_BACKEND_BUILD",
                     f"-I{work}/ggml/src", f"-I{work}/ggml/include", source, "-o", ptx], timeout=120)
        assert build["returncode"] == 0, build
        parse = run([volta, "parse", "--no-log-file", ptx])
        assert parse["returncode"] == 0, parse
        record["builds"][side] = {"revision": revision, "source_sha256": hashlib.sha256(exact).hexdigest(),
                                  "ptx_sha256": hashlib.sha256(ptx.read_bytes()).hexdigest(),
                                  "compile": build, "parse": parse}

for side in ("old", "new"):
    ptx = here / f"{side}.ptx"
    kernel = next(name for name in re.findall(r"\.entry\s+([^\(]+)\(", ptx.read_text())
                  if name.startswith("_Z13im2col_kernelIfE"))
    cmd = [volta, "compare", ptx, ptx, "--kernel1", kernel, "--kernel2", kernel,
           "-b", "1", "-g", "1", "--array", "x:0x10000:4:4:in",
           "--array", "dst:0x20000:4:1:out", "--check-array", "dst", "--no-log-file"]
    values = ["ptr:x", "ptr:dst"] + [f"int:{x}" for x in
        ([1, 2, 2, 1, 1, 1, 1] + ([1] if side == "new" else []) +
         [4, 4, 1, 1, 1, 1, 1, 0, 0, 1, 1])]
    for value in values:
        cmd += ["--param", value]
    result = run(cmd)
    if side == "old":
        assert result["returncode"] != 0 and "mul.hi at width 64" in result["stderr"]
    else:
        assert result["returncode"] == 0 and result["stdout"].rstrip().endswith("EQUIVALENT")
    record["lowering_probes"][side] = result

(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("old im2col PTX rejected at mul.hi width 64; new self-pair lowers successfully")
