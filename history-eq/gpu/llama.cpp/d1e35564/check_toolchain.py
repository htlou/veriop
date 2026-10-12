#!/usr/bin/env python3
"""Source-lock the historical CUDA edit and test this host's CCCL iterator API."""

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
commit = "d1e3556481c8b351f9b7b69ba3febf6cb77fffa6"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


paths = ["ggml/src/ggml-cuda/argsort.cu", "ggml/src/ggml-cuda/top-k.cu"]
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == paths
blobs = {}
source = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {}
    for path in paths:
        body = git("show", f"{rev}:{path}")
        oid = git("rev-parse", f"{rev}:{path}").decode().strip()
        actual = subprocess.run(["git", "hash-object", "--stdin"], input=body,
                                check=True, capture_output=True).stdout.decode().strip()
        assert oid == actual
        blobs[side][path] = oid
        source[side, path] = body.decode()
old = source["old", paths[0]]
new = source["new", paths[0]]
assert "static __global__ void init_offsets(" in old
assert "static __global__ void init_offsets(" not in new
expr = "cuda::make_strided_iterator(cuda::make_counting_iterator(0), ncols)"
assert new.count(expr) == 1 and expr not in old
assert old.count("d_offsets, d_offsets + 1") == 4
assert len(re.findall(r"offset_iterator\s*,\s*offset_iterator\s*\+\s*1", new)) == 4
assert "#        include <cuda/iterator>" in source["old", paths[1]]
assert "#        include <cuda/iterator>" not in source["new", paths[1]]

control = """#include <cub/cub.cuh>
int main() { cub::CountingInputIterator<int> offsets(0); return offsets[2] != 2; }
"""
target = """#include <cub/cub.cuh>
int main() {
  int ncols = 4;
  auto offset_iterator = cuda::make_strided_iterator(cuda::make_counting_iterator(0), ncols);
  return offset_iterator[2] != 8;
}
"""
assert expr in target
logs = {}
with tempfile.TemporaryDirectory(prefix="veriop-d1e355-") as temp:
    for name, code in (("control", control), ("target", target)):
        src = Path(temp) / f"{name}.cu"
        src.write_text(code)
        run = subprocess.run(["nvcc", "-std=c++17", "-c", str(src), "-o",
                              str(Path(temp) / f"{name}.o")], capture_output=True, text=True)
        logs[name] = {"exit_code": run.returncode, "output": run.stdout + run.stderr,
                      "source_sha256": hashlib.sha256(code.encode()).hexdigest()}
        (here / f"{name}-compile.log").write_text(run.stdout + run.stderr)
assert logs["control"]["exit_code"] == 0
assert logs["target"]["exit_code"] != 0
assert 'namespace "cuda" has no member "make_strided_iterator"' in logs["target"]["output"]
assert 'namespace "cuda" has no member "make_counting_iterator"' in logs["target"]["output"]
version = subprocess.run(["nvcc", "--version"], check=True, capture_output=True, text=True).stdout
(here / "toolchain-result.json").write_text(json.dumps({
    "commit": commit, "changed_paths": paths, "source_blob_oids": blobs,
    "nvcc_version": version.strip().splitlines()[-1],
    "control": {k: v for k, v in logs["control"].items() if k != "output"},
    "target": {k: v for k, v in logs["target"].items() if k != "output"},
    "verdict": "installed-toolchain-unsupported; no old/new equivalence verdict",
    "scope": "the exact new source iterator expression compiled as a minimal CUB client; not a full historical argsort build",
}, indent=2) + "\n")
print("CUB control builds; historical iterator expression is unavailable in the installed nvcc/CCCL")
