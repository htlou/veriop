#!/usr/bin/env python3
"""Check both historical q4 MMQ eight-word load rewrites."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "66c4f9ded01b29d9120255be1ed8d5835bcbb51d"
changed = "ggml/src/ggml-cuda/mmq.cuh"
dependencies = ["ggml/src/ggml-cuda/common.cuh", "ggml/src/ggml-cuda/vecdotq.cuh",
                "ggml/src/ggml-common.h"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    result = subprocess.run(args, capture_output=True, text=True, env=env, timeout=60)
    assert result.returncode == 0, result.stderr or result.stdout
    return result.stdout


def git(*args):
    return run(["git", "-C", str(repo), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [changed]
diff = git("show", "--format=", "--no-ext-diff", commit, "--", changed)
assert diff.encode() == (here.parent / "source-screening/66c4f9de.source.diff").read_bytes()
blobs = {side: {path: git("rev-parse", f"{rev}:{path}").strip()
                for path in [changed] + dependencies}
         for side, rev in (("old", commit + "^"), ("new", commit))}
assert all(blobs["old"][path] == blobs["new"][path] for path in dependencies)
sources = {side: git("show", f"{rev}:{changed}") for side, rev in
           (("old", commit + "^"), ("new", commit))}
common = git("show", f"{commit}:{dependencies[0]}")
vecdot = git("show", f"{commit}:{dependencies[1]}")
ggml_common = git("show", f"{commit}:{dependencies[2]}")
for q in ("0", "1"):
    assert f"#define VDR_Q4_{q}_Q8_1_MMQ  4" in vecdot
    assert f"#define QK4_{q} 32" in ggml_common
    assert f"#define QR4_{q} 2" in ggml_common
    assert f"#define QI4_{q} (QK4_{q} / (4 * QR4_{q}))" in ggml_common
assert "#ifdef GGML_USE_HIP\n    return 16;" in common
assert "#else\n    return 8;" in common
max_cpy_start = common.index("static constexpr __device__ int ggml_cuda_get_max_cpy_bytes()")
max_cpy_end = common.index("[[noreturn]]", max_cpy_start)
max_cpy_body = common[max_cpy_start:max_cpy_end]
copy_start = common.index("template <int nbytes, int alignment = 0>\nstatic __device__ __forceinline__ void ggml_cuda_memcpy_1")
copy_end = common.index("static __device__ __forceinline__ float ggml_cuda_e8m0_to_fp32", copy_start)
copy_body = common[copy_start:copy_end]
for width, ty in ((4, "int"), (8, "int2"), (16, "int4")):
    assert f"nb_per_cpy == {width}" in copy_body
    assert f"(({ty} *) dst)[i] = ((const {ty} *) src)[i];" in copy_body


def load_fragment(side, q):
    source = sources[side]
    name = f"vec_dot_q4_{q}_q8_1_dp4a("
    start = source.index(name)
    start = source.index(f"int u[2*VDR_Q4_{q}_Q8_1_MMQ];", start)
    end = source.index("sum[", start)
    return source[start:end]


fragments = {(side, q): load_fragment(side, q) for side in ("old", "new") for q in ("0", "1")}
for q in ("0", "1"):
    assert f"u[2*l+0] = y_qs[j*MMQ_TILE_Y_K + kyqs +  l];" in fragments[("old", q)]
    assert f"u[2*l+1] = y_qs[j*MMQ_TILE_Y_K + kyqs + (l + QI4_{q})];" in fragments[("old", q)]
    assert "ggml_cuda_memcpy_1<max_cpy>(tmp0" in fragments[("new", q)]
    assert "ggml_cuda_memcpy_1<max_cpy>(tmp1" in fragments[("new", q)]
    assert "u[0]=tmp0[0]; u[2]=tmp0[1]; u[4]=tmp0[2]; u[6]=tmp0[3];" in fragments[("new", q)]
    assert "u[1]=tmp1[0]; u[3]=tmp1[1]; u[5]=tmp1[2]; u[7]=tmp1[3];" in fragments[("new", q)]

stub = """#define __device__
#define __forceinline__ __attribute__((always_inline)) inline
#define GGML_CUDA_CC_VOLTA 700
#define QI4_0 4
#define QI4_1 4
#define VDR_Q4_0_Q8_1_MMQ 4
#define VDR_Q4_1_Q8_1_MMQ 4
#define MMQ_TILE_Y_K 8
struct alignas(8) int2 { int x, y; };
struct alignas(16) int4 { int x, y, z, w; };
"""
args = ", ".join(f"int a{i}" for i in range(8))
initial = ", ".join(f"a{i}" for i in range(8))
for side in ("old", "new"):
    text = stub + max_cpy_body + copy_body
    for q in ("0", "1"):
        for half in (0, 1):
            text += f"extern \"C\" unsigned __int128 target_q4{q}_{half}({args}) {{\n"
            text += f"alignas(16) int y_qs[8] = {{{initial}}};\n"
            text += "constexpr int j = 0, kyqs = 0;\n"
            text += fragments[(side, q)]
            text += "unsigned __int128 result = 0;\n"
            for i in range(4):
                text += f"result |= (unsigned __int128)(unsigned int)u[{half*4+i}] << {32*i};\n"
            text += "return result;\n}\n"
    (here / f"{side}.cpp").write_text(text)

checks = {}
for width, flags in ((8, ["-D__CUDA_ARCH__=600"]), (16, ["-DGGML_USE_HIP"])):
    output = here / f"bytes{width}"
    output.mkdir(exist_ok=True)
    for side in ("old", "new"):
        ir = output / f"{side}.ll"
        run([str(clang), "-x", "c++", "-std=c++17", "-O1", "-fno-strict-aliasing",
             "-w", *flags, "-S", "-emit-llvm", str(here / f"{side}.cpp"), "-o", str(ir)])
        ir.write_text(re.sub(r" nocapture\b", "", ir.read_text()))
    for direction, first, second in (("old_to_new", "old", "new"),
                                     ("new_to_old", "new", "old")):
        log = run([str(alive), str(output / f"{first}.ll"), str(output / f"{second}.ll"),
                   "--smt-to=30000", "--always-verify"])
        assert "4 correct transformations" in log and "0 failed-to-prove transformations" in log
        assert "0 Alive2 errors" in log
        (output / f"alive-{direction}.log").write_text(log)
        checks[f"bytes{width}/{direction}"] = "4 correct"

result = {"commit": commit, "changed_paths": [changed], "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "verdict": "EQUIV_PARTIAL",
          "scope": "all eight u[] integer values for both q4_0/q4_1 MMQ load paths, arbitrary initialized y words, and both historical 8/16-byte copy widths under aligned, nonaliasing source/destination; actual HIP/CUDA compilation, shared-memory scheduling, and final matmul output unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "checks": checks}))
