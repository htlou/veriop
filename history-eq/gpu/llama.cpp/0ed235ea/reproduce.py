#!/usr/bin/env python3
"""Alive2-check the old scalar and new pitched-copy byte addresses for an upstream test."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "0ed235ea2c17a19fc8238668653946721ed136fd"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
PATHS = ["ggml/src/ggml-cuda/cpy.cu", "ggml/src/ggml-openvino/ggml-openvino.cpp",
         "tests/test-backend-ops.cpp"]


def run(args, timeout=120):
    result = subprocess.run(args, capture_output=True, text=True, timeout=timeout,
                            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    assert result.returncode == 0, result.stdout + result.stderr
    return result.stdout


def git(*args):
    return run(["git", "-C", str(REPO), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).splitlines() == PATHS
diff = git("show", "--format=", "--no-ext-diff", COMMIT, "--", *PATHS[:2])
archived = HERE.parent / "source-screening/0ed235ea.source.diff"
assert archived.read_bytes() == diff.encode()
blobs = {side: {path: git("rev-parse", f"{rev}:{path}").strip() for path in PATHS}
         for side, rev in (("old", COMMIT + "^"), ("new", COMMIT))}
dependencies = ["ggml/src/ggml.c", "ggml/src/ggml-cuda/cpy-utils.cuh"]
dependency_blobs = {path: git("rev-parse", f"{COMMIT}:{path}").strip() for path in dependencies}
assert all(dependency_blobs[path] == git("rev-parse", f"{COMMIT}^:{path}").strip()
           for path in dependencies)
old = git("show", f"{COMMIT}^:{PATHS[0]}")
new = git("show", f"{COMMIT}:{PATHS[0]}")
test = git("show", f"{COMMIT}:{PATHS[2]}")
ggml = git("show", f"{COMMIT}:{dependencies[0]}")
cpy_utils = git("show", f"{COMMIT}:{dependencies[1]}")
assert '.type_size                = sizeof(float)' in ggml
assert 'return ggml_type_size(tensor->type);' in ggml
assert 'result->nb[1] = result->nb[0]*(result->ne[0]/ggml_blck_size(type));' in ggml
assert 'result->nb[i] = result->nb[i - 1]*result->ne[i - 1];' in ggml
assert 'result->nb[2] = nb2;' in ggml
assert '*(dst_t *) cdsti = ggml_cuda_cast<dst_t>(*(const src_t *) cxi);' in cpy_utils
assert 'dst_buf->nb[1], dst_buf->nb[2], dst_buf->nb[3], 0);' in test
assert 'test_cpy(GGML_TYPE_F32, GGML_TYPE_F32, {128, 2, 3, 1}' in test
assert 'false, {128, 4, 3, 1})); // strided dst' in test
assert "ggml_cpy_scalar_cuda<float, float>" in old
assert "cpy_1_scalar<src_t, dst_t>" in old
assert "cudaMemcpy2DAsync(src1_ddc, mc_dpitch, src0_ddc, mc_spitch," in new
assert "ggml_cuda_cpy_as_memcpy_2d(src0, src1, mc_width" in new

begin = old.index("    const int64_t i03 = i/(ne00 * ne01 * ne02);")
end = old.index("    ggml_cuda_pdl_sync();", begin)
scalar_offsets = old[begin:end]
assert scalar_offsets in new
assert "const int64_t x_offset" in scalar_offsets and "const int64_t dst_offset" in scalar_offsets
begin = new.index("static bool ggml_cuda_cpy_as_memcpy_2d(")
end = new.index("\nvoid ggml_cuda_cpy(", begin)
helper = new[begin:end]
assert helper not in old and "return spitch >= width && dpitch >= width;" in helper

header = """using size_t = __SIZE_TYPE__;
using int64_t = long long;
using uint64_t = unsigned long long;
using uint32_t = unsigned int;
constexpr uint64_t UINT64_MAX = ~uint64_t(0);
constexpr int GGML_MAX_DIMS = 4;
struct ggml_tensor { int type; int64_t ne[4]; size_t nb[4]; };
static bool ggml_are_same_shape(const ggml_tensor * a, const ggml_tensor * b) {
    for (int d = 0; d < 4; ++d) if (a->ne[d] != b->ne[d]) return false;
    return true;
}
static size_t ggml_element_size(const ggml_tensor *) { return 4; }
"""
common = """extern "C" uint64_t target(uint32_t byte_index) {
    if (byte_index >= 3072) __builtin_unreachable();
    // The upstream F32 test has ne={128,2,3,1} and a {128,4,3,1} dst allocation.
    // Source pitches: {4,512,1024,3072}; destination: {4,512,2048,6144}.
"""
old_model = header + common + """    const int64_t i = byte_index / 4;
    const int64_t ne00=128, ne01=2, ne02=3, ne10=128, ne11=2, ne12=3;
    const int64_t nb00=4, nb01=512, nb02=1024, nb03=3072;
    const int64_t nb10=4, nb11=512, nb12=2048, nb13=6144;
""" + scalar_offsets + """    uint64_t src_byte = x_offset + byte_index % 4;
    uint64_t dst_byte = dst_offset + byte_index % 4;
    return (src_byte << 32) | dst_byte;
}
"""
new_model = header + helper + "\n" + common + """    const ggml_tensor src = {0, {128,2,3,1}, {4,512,1024,3072}};
    const ggml_tensor dst = {0, {128,2,3,1}, {4,512,2048,6144}};
    size_t width=0, height=0, spitch=0, dpitch=0;
    if (!ggml_cuda_cpy_as_memcpy_2d(&src, &dst, width, height, spitch, dpitch))
        return UINT64_MAX;
    if (byte_index >= width * height) return UINT64_MAX;
    uint64_t row = byte_index / width;
    uint64_t column = byte_index % width;
    uint64_t src_byte = row * spitch + column;
    uint64_t dst_byte = row * dpitch + column;
    return (src_byte << 32) | dst_byte;
}
"""
for side, source in (("old", old_model), ("new", new_model)):
    cpp = HERE / f"{side}.cpp"
    cpp.write_text(source)
    ll = HERE / f"{side}.ll"
    run([str(CLANG), "-std=c++17", "-O3", "-S", "-emit-llvm", str(cpp), "-o", str(ll)])
    ll.write_text(re.sub(r" nocapture\b", "", ll.read_text()))

checks = {}
for direction, source, target in (("old_to_new", "old", "new"),
                                  ("new_to_old", "new", "old")):
    log = run([str(ALIVE), str(HERE / f"{source}.ll"), str(HERE / f"{target}.ll"),
               "--smt-to=30000", "--always-verify"])
    assert "1 correct transformations" in log and "0 Alive2 errors" in log, log
    (HERE / f"alive-{direction}.log").write_text(log)
    checks[direction] = "correct"

result = {"commit": COMMIT, "changed_paths": PATHS, "source_blobs": blobs,
          "unchanged_dependency_blobs": dependency_blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((HERE / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "verdict": "EQUIV_PARTIAL",
          "scope": "For the upstream F32 {128,2,3,1} strided-destination test, both directions prove identical source and destination byte addresses for every logical byte; CUDA execution, values, other shapes/types, OpenVINO, and whole-commit behavior unverified"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
