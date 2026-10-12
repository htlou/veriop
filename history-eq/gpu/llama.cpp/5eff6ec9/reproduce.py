#!/usr/bin/env python3
"""Check the exact historical NVIDIA warp_reduce_all body with Volta."""

import hashlib
import json
import pathlib
import re
import subprocess

root = pathlib.Path(__file__).resolve().parents[4]
repo = root / "cuda/repos/llama.cpp"
here = pathlib.Path(__file__).resolve().parent
volta = root / "cuda/repos/volta/target/release/volta"
commit = "5eff6ec9b"
path = "ggml/src/ggml-cuda/common.cuh"


def run(args, **kwargs):
    return subprocess.run(args, text=True, capture_output=True, **kwargs)


hashes = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = subprocess.check_output(["git", "show", f"{revision}:{path}"], cwd=repo)
    hashes[side] = hashlib.sha256(source).hexdigest()
    text = source.decode()
    start = text.index("template<int width = WARP_SIZE>\nstatic __device__ __forceinline__ int warp_reduce_all(int x) {")
    brace = text.index("{", start)
    depth = 1
    end = brace + 1
    while depth:
        depth += (text[end] == "{") - (text[end] == "}")
        end += 1
    body = text[start:end]
    (here / f"{side}-source.txt").write_text(body + "\n")
    cuda = (
        "#define WARP_SIZE 32\n"
        "static constexpr __device__ int ggml_cuda_get_physical_warp_size() { return 32; }\n"
        + body
        + '\nextern "C" __global__ void check(const int *input, int *output) {\n'
        "    output[threadIdx.x] = warp_reduce_all<>(input[threadIdx.x]);\n}\n"
    )
    (here / f"{side}.cu").write_text(cuda)
    result = run(["nvcc", "-std=c++17", "-arch=sm_80", "-O2", "-ptx", here / f"{side}.cu", "-o", here / f"{side}.ptx"])
    assert result.returncode == 0, result.stderr
    assert len(re.findall(r"(?m)^\.visible \.entry ", (here / f"{side}.ptx").read_text())) == 1

args = [volta, "compare", here / "old.ptx", here / "new.ptx", "-b", "32", "-g", "1",
        "--array", "input:0x10000:4:32:in", "--array", "output:0x20000:4:32:out",
        "--check-array", "output", "--param", "ptr:input", "--param", "ptr:output",
        "--no-log-file", "--no-profile"]
result = run(args)
(here / "volta-compare.log").write_text(result.stdout + result.stderr)
ptx_identical = (here / "old.ptx").read_bytes() == (here / "new.ptx").read_bytes()
unsupported = "Unsupported instruction: VoteSync" in result.stderr
(here / "result.json").write_text(json.dumps({
    "commit": commit, "source_sha256": hashes,
    "ptx_sha256": {side: hashlib.sha256((here / f"{side}.ptx").read_bytes()).hexdigest()
                   for side in ("old", "new")},
    "command": [str(x) for x in args], "returncode": result.returncode,
    "ptx_identical": ptx_identical, "volta_status": "UNSUPPORTED" if unsupported else "OTHER",
}, indent=2) + "\n")
print(result.stdout + result.stderr)
assert ptx_identical and unsupported
