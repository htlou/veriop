#!/usr/bin/env python3
"""Build both historical get_rows kernels and probe Volta's lowering boundary."""

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
commit = "305ba519"
parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"]).decode().strip()
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, timeout=60):
    proc = subprocess.run(list(map(str, args)), capture_output=True, text=True, env=env, timeout=timeout)
    return {"command": list(map(str, args)), "returncode": proc.returncode,
            "stdout": proc.stdout, "stderr": proc.stderr}


record = {"commit": subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit], env=env).decode().strip(),
          "parent": parent, "builds": {}, "checks": {}}
with tempfile.TemporaryDirectory(prefix="veriop-llama-getrows-") as tmp:
    for side, revision in (("old", parent), ("new", record["commit"])):
        work = Path(tmp) / side
        work.mkdir()
        archive = work / "ggml.tar"
        archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
        assert archived["returncode"] == 0, archived
        subprocess.run(["tar", "-xf", archive, "-C", work], check=True)
        source = work / "ggml/src/ggml-cuda/getrows.cu"
        exact = subprocess.check_output(["git", "-C", str(repo), "show", revision + ":ggml/src/ggml-cuda/getrows.cu"], env=env)
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


def kernel(side, prefix):
    ptx = (here / f"{side}.ptx").read_text()
    return next(name for name in re.findall(r"\.entry\s+([^\(]+)\(", ptx) if name.startswith(prefix))


old_scalar = kernel("old", "_Z16k_get_rows_floatIffE")
new_scalar = kernel("new", "_Z16k_get_rows_floatIffE")
new_vector = kernel("new", "_Z20k_get_rows_float_vecIfE")


def compare(label, reference, optimized, kernel1, kernel2, width):
    cmd = [volta, "compare", here / f"{reference}.ptx", here / f"{optimized}.ptx",
           "--kernel1", kernel1, "--kernel2", kernel2, "-b", "16", "-g", "1",
           "--array", "src0:0x10000:4:16:in", "--array", "src1:0x20000:4:1:index",
           "--array", "dst:0x30000:4:16:out", "--check-array", "dst", "--no-log-file"]
    values = ["ptr:src0", "ptr:src1", "ptr:dst"] + [f"int:{x}" for x in
        (width, 1, 1, 0, 1, 16, 16, 16, 64, 64, 64, 1, 0, 0)]
    for value in values:
        cmd += ["--param", value]
    result = run(cmd)
    assert result["returncode"] != 0
    assert "param loads with nonzero offsets are not supported" in result["stderr"]
    record["checks"][label] = result


compare("historical_scalar_pair", "old", "new", old_scalar, new_scalar, 16)
# This self-pair is a lowering probe, not an equivalence result.
compare("new_vector_lowering_probe", "new", "new", new_vector, new_vector, 4)
(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
print("both historical PTX modules parse; scalar pair and vector lowering probe are unsupported")
