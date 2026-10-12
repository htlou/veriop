#!/usr/bin/env python3
"""Compare exact historical CUDA transpose-copy kernels on one-CTA shapes."""

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
commit = "230d1169e5bfe04a013b2e20f4662ee56c2454b0"
parent = "a44d77126c911d105f7f800c17da21b2a5b112d1"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command, timeout=60):
    try:
        result = subprocess.run(command, capture_output=True, text=True, env=env, timeout=timeout)
        return {"command": list(map(str, command)), "returncode": result.returncode,
                "stdout": result.stdout, "stderr": result.stderr}
    except subprocess.TimeoutExpired as exc:
        def decode(value):
            return value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
        return {"command": list(map(str, command)), "timed_out": True,
                "stdout": decode(exc.stdout), "stderr": decode(exc.stderr)}


assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
record = {"commit": commit, "parent": parent, "builds": {}, "comparisons": {}}
for side, revision in (("old", parent), ("new", commit)):
    work = Path(f"/tmp/veriop-llama-cpy-{side}")
    work.mkdir(exist_ok=True)
    archive = work / "ggml.tar"
    archived = run(["git", "-C", repo, "archive", "--format=tar", "-o", archive, revision, "ggml"])
    assert archived.get("returncode") == 0, archived
    extracted = run(["tar", "-xf", archive, "-C", work])
    assert extracted.get("returncode") == 0, extracted
    archive.unlink()
    source = work / "ggml/src/ggml-cuda/cpy.cu"
    output = here / f"{side}.ptx"
    built = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                 "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src", f"-I{work}/ggml/include",
                 source, "-o", output])
    assert built.get("returncode") == 0, built
    parsed = run([volta, "parse", "--no-log-file", output])
    assert parsed.get("returncode") == 0, parsed
    record["builds"][side] = {
        "revision": revision,
        "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "ptx_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
        "compile": built,
        "parse": parsed,
    }


def kernel(side, dtype):
    entries = re.findall(r"\.entry\s+([^\(]+)\(", (here / f"{side}.ptx").read_text())
    if side == "new":
        prefix = {"f32": "_Z17cpy_flt_transposeIfE",
                  "f16": "_Z17cpy_flt_transposeI6__halfE",
                  "bf16": "_Z17cpy_flt_transposeI13__nv_bfloat16E"}[dtype]
        return next(entry for entry in entries if entry.startswith(prefix))
    fragment = {"f32": "cpy_1_fltIffEE", "f16": "cpy_1_fltI6__halfS2_EE",
                "bf16": "cpy_1_fltI13__nv_bfloat16S2_EE"}[dtype]
    return next(entry for entry in entries if entry.startswith("_Z7cpy_fltI") and fragment in entry)


for dtype, width in (("f32", 4), ("f16", 2), ("bf16", 2)):
    for ne00, ne01 in ((8, 8), (7, 9), (16, 4), (4, 16), (32, 2), (2, 32)):
        ne = ne00 * ne01
        assert 1 < ne00 <= 32 and ne01 <= 32 and ne <= 64
        # These are the historical transpose dispatch's byte strides.
        nb00, nb01, nb02 = ne01 * width, width, ne * width
        assert nb01 == width and nb00 < nb02
        params = [ne, ne00, ne01, 1, nb00, nb01, nb02, nb02,
                  ne00, ne01, 1, width, ne00 * width, nb02, nb02]
        command = [volta, "compare", here / "old.ptx", here / "new.ptx",
                   "--kernel1", kernel("old", dtype), "--kernel2", kernel("new", dtype),
                   "-b", "64", "-g", "1", "--block2", "32,8,1", "--grid2", "1,1,1",
                   "--array", f"src:0x10000:{width}:{ne}:in",
                   "--array", f"dst:0x20000:{width}:{ne}:out",
                   "--check-array", "dst", "--no-log-file",
                   "--param", "ptr:src", "--param", "ptr:dst"]
        for value in params:
            command += ["--param", f"int:{value}"]
        result = run(command, timeout=30)
        record["comparisons"][f"{dtype}_{ne00}x{ne01}"] = result

(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
passed = [name for name, result in record["comparisons"].items()
          if result.get("returncode") == 0
          and f"elements: {int(name.split('_')[1].split('x')[0]) * int(name.split('x')[1])}" in result["stdout"]
          and result["stdout"].rstrip().endswith("EQUIVALENT")]
print(f"{len(passed)}/{len(record['comparisons'])} complete-output one-CTA comparisons equivalent")
for name, result in record["comparisons"].items():
    if name not in passed:
        print(name, "timeout" if result.get("timed_out") else result["returncode"],
              (result["stdout"] + result["stderr"])[-350:])
