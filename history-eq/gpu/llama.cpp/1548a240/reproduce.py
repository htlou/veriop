#!/usr/bin/env python3
"""Check source-locked OpenCL flat-copy address equality for one contiguous F32 row."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "1548a240e36079f07856c95c53de1ec2770840ab"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
PATHS = ["ggml/src/ggml-opencl/CMakeLists.txt", "ggml/src/ggml-opencl/ggml-opencl.cpp",
         "ggml/src/ggml-opencl/kernels/concat.cl", "ggml/src/ggml-opencl/kernels/cpy.cl",
         "ggml/src/ggml-opencl/kernels/unary_ext.cl"]


def run(args):
    p = subprocess.run(args, capture_output=True, text=True, timeout=120,
                       env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    assert p.returncode == 0, p.stdout + p.stderr
    return p.stdout


def git(*args):
    return run(["git", "-C", str(REPO), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).splitlines() == PATHS
diff = git("show", "--format=", "--no-ext-diff", COMMIT, "--", *PATHS)
assert diff.encode() == (HERE.parent / "source-screening/1548a240.source.diff").read_bytes()
host = git("show", f"{COMMIT}:{PATHS[1]}")
old = git("show", f"{COMMIT}^:{PATHS[3]}")
new = git("show", f"{COMMIT}:{PATHS[3]}")
assert "ne00 < 32 ? backend_ctx->kernel_cpy_f32_f32_pack" in host
assert "ggml_is_contiguous(src0) && ggml_is_contiguous(src1)" in host
assert "ggml_nelements(src0) == ggml_nelements(src1)" in host
assert "const cl_ulong n4    = nelem / 4;" in host
assert "const size_t items = (size_t) n4 + ((nelem % 4) ? 1 : 0);" in host
assert "((items + lsz - 1) / lsz) * lsz" in host
assert "clSetKernelArg(k, 1, sizeof(cl_ulong), &offset0)" in host
assert "clSetKernelArg(k, 3, sizeof(cl_ulong), &offset1)" in host
assert "const int nth = MIN(64, ne00);" in host
old_kernel = old[old.index("kernel void kernel_cpy_f32_f32("):old.index("kernel void kernel_cpy_f32_f32_pack(")]
new_kernel = new[new.index("kernel void kernel_cpy_f32_f32_flat("):]
assert old_kernel in new  # the old fallback is unchanged
assert "for (int i00 = get_local_id(0); i00 < ne00; i00 += get_local_size(0))" in old_kernel
assert "dst_data[i00] = src[0];" in old_kernel
assert "vstore4(vload4(i, src0), i, dst);" in new_kernel
assert "for (ulong t = n4 * 4; t < ne; ++t)" in new_kernel
assert "dst[t] = src0[t];" in new_kernel

for side, source in (("old", old), ("new", new)):
    path = HERE / f"{side}.cl"
    path.write_text(source)
    run([str(CLANG), "-x", "cl", "-cl-std=CL1.2", "-fsyntax-only", str(path)])

# For ne={n,1,1,1}, n>=32, the old row kernel copies scalar j to scalar j.
# The new kernel copies lane j%4 of float4 work item j/4, or scalar j in its tail.
# One arbitrary byte offset covers both source and destination addressing.
prefix = """using u64 = unsigned long long;
extern "C" u64 target(u64 ne, u64 j, u64 offset) {
    if (ne < 32 || ne > 2147483647ULL || j >= ne || offset > (1ULL<<63))
        __builtin_unreachable();
"""
models = {
    "old": prefix + "    return offset + 4*j;\n}\n",
    "new": prefix + """    u64 n4 = ne / 4;
    u64 item = j / 4;
    u64 lane = j % 4;
    if (item < n4) return offset + 4*(4*item + lane);
    if (item == n4) return offset + 4*j;
    return ~u64(0);
}
""",
}
for side, source in models.items():
    cpp = HERE / f"{side}.cpp"
    cpp.write_text(source)
    ll = HERE / f"{side}.ll"
    run([str(CLANG), "-std=c++17", "-O1", "-S", "-emit-llvm", str(cpp), "-o", str(ll)])
    ll.write_text(re.sub(r" nocapture\b", "", ll.read_text()))

checks = {}
for direction, source, target in (("old_to_new", "old", "new"),
                                  ("new_to_old", "new", "old")):
    log = run([str(ALIVE), str(HERE / f"{source}.ll"), str(HERE / f"{target}.ll"),
               "--smt-to=30000", "--always-verify"])
    assert "1 correct transformations" in log and "0 Alive2 errors" in log, log
    (HERE / f"alive-{direction}.log").write_text(log)
    checks[direction] = "correct"

blobs = {side: {path: git("rev-parse", f"{rev}:{path}").strip()
                for path in (PATHS if side == "new" else PATHS[:-1])}
         for side, rev in (("old", COMMIT + "^"), ("new", COMMIT))}
result = {"commit": COMMIT, "changed_paths": PATHS, "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((HERE / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in models},
          "checks": checks, "opencl_syntax": {"old": "pass", "new": "pass"},
          "verdict": "EQUIV_PARTIAL",
          "scope": "For one contiguous F32 row with 32 <= length <= INT_MAX, every logical element has the same source/destination byte address in the old row kernel and new flat kernel, including tails; OpenCL execution, aliasing, other shapes/types, and whole-commit behavior unverified"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
