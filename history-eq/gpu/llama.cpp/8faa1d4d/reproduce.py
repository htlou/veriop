#!/usr/bin/env python3
"""Compare historical non-contiguous concat kernels with Volta."""

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
commit = "8faa1d4d"
path = "ggml/src/ggml-cuda/concat.cu"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, timeout=60):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=timeout, env=env)


def git(*args):
    result = run(["git", "-C", repo, *args])
    assert result.returncode == 0, result.stderr
    return result.stdout.strip()


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


full = git("rev-parse", commit)
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", full).splitlines() == [path]
blobs = {}
for side, revision in (("old", full + "^"), ("new", full)):
    shown = subprocess.run(["git", "-C", str(repo), "show", revision + ":" + path],
                           capture_output=True, check=True, env=env)
    source_bytes = shown.stdout
    source = source_bytes.decode()
    oid = git("rev-parse", revision + ":" + path)
    assert hashlib.sha1(b"blob " + str(len(source_bytes)).encode() + b"\0" + source_bytes).hexdigest() == oid
    blobs[side] = oid
    marker = "static __global__ void concat_f32_non_cont(" if side == "old" else "template <int dim>\nstatic __global__"
    start = source.index(marker)
    opening = source.index("{", start)
    depth = 0
    for end in range(opening, len(source)):
        depth += (source[end] == "{") - (source[end] == "}")
        if depth == 0:
            break
    else:
        raise AssertionError("kernel body has no closing brace")
    kernel = source[start:end + 1]
    if side == "old":
        assert kernel.count("static __global__") == 1 and "int32_t   dim" in kernel
        kernel = kernel.replace("static __global__", 'extern "C" __global__', 1)
        keep = ""
    else:
        assert kernel.count("static __global__") == 1 and kernel.count("uint64_t   nb3){") == 1
        kernel = kernel.replace("static __global__", "__global__", 1)
        # Match the old launch signature; the historical specialized body never reads this parameter.
        kernel = kernel.replace("uint64_t   nb3){", "uint64_t   nb3, int32_t runtime_dim){", 1)
        signature = kernel.split("concat_f32_non_cont(", 1)[1].split("){", 1)[0]
        assert signature.count(",") + 1 == 28
        keep = "void keep() { " + " ".join(
            f"concat_f32_non_cont<{dim}><<<1,256>>>(" + ",".join(
                ["nullptr"] * 3 + ["0"] * 25) + ");" for dim in range(4)) + " }\n"
    (here / (side + ".cu")).write_text(
        "#include <stdint.h>\n#define CUDA_CONCAT_BLOCK_SIZE 256\n" + kernel + "\n" + keep)
    compiled = run(["nvcc", "-std=c++17", "-arch=sm_80", "-O2", "-ptx",
                    here / (side + ".cu"), "-o", here / (side + ".ptx")])
    assert compiled.returncode == 0, compiled.stderr
    ptx = (here / (side + ".ptx")).read_text()
    entries = re.findall(r"(?m)^\.visible \.entry ([^(]+)\(", ptx)
    assert len(entries) == (1 if side == "old" else 4)
    assert ptx.count("\t.param ") == 28 * len(entries)

ptx_hashes = {side: sha256(here / (side + ".ptx")) for side in ("old", "new")}
checks = []
for n0, n1, s0, s1, sd in ((2, 2, 4, 4, 4), (2, 2, 8, 12, 8), (3, 1, 12, 8, 4)):
    ne0 = n0 + n1
    vals = [n0, 1, 1, 1, s0, s0 * n0, s0 * n0, s0 * n0,
            n1, 1, 1, 1, s1, s1 * n1, s1 * n1, s1 * n1,
            ne0, 1, 1, 1, sd, sd * ne0, sd * ne0, sd * ne0, 0]
    assert len(vals) == 25
    args = [volta, "compare", here / "old.ptx", here / "new.ptx",
            "--kernel1", "concat_f32_non_cont",
            "--kernel2", next(x for x in re.findall(
                r"(?m)^\.visible \.entry ([^(]+)\(", (here / "new.ptx").read_text())
                if x.startswith("_Z19concat_f32_non_contILi0E")),
            "-b", "256", "-g", "1",
            "--array", f"src0:0x10000:4:{(n0 - 1) * s0 // 4 + 1}:in",
            "--array", f"src1:0x20000:4:{(n1 - 1) * s1 // 4 + 1}:in",
            "--array", f"dst:0x30000:4:{(ne0 - 1) * sd // 4 + 1}:out",
            "--check-array", "dst", "--no-log-file", "--no-profile"]
    for value in ("ptr:src0", "ptr:src1", "ptr:dst", *(f"int:{v}" for v in vals)):
        args += ["--param", value]
    result = run(args)
    assert result.returncode == 0 and f"elements: {ne0}" in result.stdout
    assert result.stdout.rstrip().endswith("EQUIVALENT"), result.stdout + result.stderr
    checks.append({"n0": n0, "n1": n1, "src0_stride": s0, "src1_stride": s1,
                   "dst_stride": sd, "stdout": result.stdout})

for dim in (1, 2, 3):
    # Two positive-sized source slabs, one per CTA along the concat dimension.
    dst_ne = [2, 1, 1, 1]
    dst_ne[dim] = 2
    dst_nb = [4, 8, 8 * dst_ne[1], 8 * dst_ne[1] * dst_ne[2]]
    vals = [2, 1, 1, 1, 4, 8, 8, 8,
            2, 1, 1, 1, 4, 8, 8, 8,
            *dst_ne, *dst_nb, dim]
    assert len(vals) == 25
    kernel2 = next(x for x in re.findall(
        r"(?m)^\.visible \.entry ([^(]+)\(", (here / "new.ptx").read_text())
        if x.startswith(f"_Z19concat_f32_non_contILi{dim}E"))
    for cta in (0, 1):
        old_ptx, new_ptx = here / "old.ptx", here / "new.ptx"
        if cta:
            # Volta executes CTA 0 only. Specialize its CTA coordinate to 1
            # in both PTX modules; all other PTX instructions stay identical.
            axis = "xyz"[dim - 1]
            for side, entry in (("old", "concat_f32_non_cont"), ("new", kernel2)):
                original = (here / (side + ".ptx")).read_text()
                start = original.index(".entry " + entry + "(")
                end = original.index("\n}", start) + 2
                body = original[start:end]
                needle = "%ctaid." + axis
                assert body.count(needle) == 1
                updated = original[:start] + body.replace(needle, "1", 1) + original[end:]
                target = here / f"{side}-dim{dim}-cta1.ptx"
                target.write_text(updated)
                assert run([volta, "parse", "--no-log-file", target]).returncode == 0
                if side == "old":
                    old_ptx = target
                else:
                    new_ptx = target
        args = [volta, "compare", old_ptx, new_ptx,
                "--kernel1", "concat_f32_non_cont", "--kernel2", kernel2,
                "-b", "256", "-g", f"{dst_ne[1]},{dst_ne[2]},{dst_ne[3]}",
                "--array", "src0:0x10000:4:2:in",
                "--array", "src1:0x20000:4:2:in",
                "--array", "dst:0x30000:4:4:out",
                "--check-array", "dst", "--no-log-file", "--no-profile"]
        for value in ("ptr:src0", "ptr:src1", "ptr:dst", *(f"int:{v}" for v in vals)):
            args += ["--param", value]
        result = run(args)
        assert result.returncode == 0 and "elements: 2" in result.stdout
        assert result.stdout.rstrip().endswith("EQUIVALENT"), result.stdout + result.stderr
        checks.append({"dim": dim, "cta": cta, "dst_ne": dst_ne,
                       "old_ptx_sha256": sha256(old_ptx), "new_ptx_sha256": sha256(new_ptx),
                       "stdout": result.stdout})

record = {"commit": full, "historical_source_blobs": blobs, "ptx_sha256": ptx_hashes,
          "verdict": "EQUIV_PARTIAL",
          "scope": "dim=0 one-CTA full output and dims=1..3 both CTA slabs, arbitrary F32 input bits",
          "checks": checks}
(here / "result.json").write_text(json.dumps(record, indent=2) + "\n")
print(f"{len(checks)}/{len(checks)} Volta complete-footprint comparisons equivalent")
