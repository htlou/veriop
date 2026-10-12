#!/usr/bin/env python3
"""Reproduce the historical OpenCL Q6_K flat-GEMV routing difference."""

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
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "39eab74a"
path = "ggml/src/ggml-opencl/ggml-opencl.cpp"
ggml_c = "ggml/src/ggml.c"
common = "ggml/src/ggml-common.h"
ggml_h = "ggml/include/ggml.h"


def run(args, check=True):
    return subprocess.run(args, capture_output=True, check=check,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


def git(*args):
    return run(["git", "-C", str(repo), *args]).stdout.decode()


commit = git("rev-parse", commit + "^{commit}").strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [path]
blobs = {}
source = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {name: git("rev-parse", f"{rev}:{name}").strip()
                   for name in (path, ggml_c, common, ggml_h)}
    source[side] = git("show", f"{rev}:{path}")
assert all(blobs["old"][name] == blobs["new"][name] for name in (ggml_c, common, ggml_h))


def extract(text):
    start = text.index("static inline bool use_flat_gemv_for_large_m_q6_K(")
    return text[start:text.index("\nstatic bool ggml_opencl_supports_op", start)]


parts = {side: extract(text) for side, text in source.items()}
normalized = source["old"].replace(parts["old"], parts["new"], 1)
assert normalized.count("use_flat_gemv_for_large_m_q6_K(tensor)") == 3
assert normalized.count("use_flat_gemv_for_large_m_q6_K(src0)") == 1
normalized = normalized.replace("use_flat_gemv_for_large_m_q6_K(tensor)",
                                "use_flat_gemv_for_large_m_q6_K(backend_ctx, tensor)")
normalized = normalized.replace("use_flat_gemv_for_large_m_q6_K(src0)",
                                "use_flat_gemv_for_large_m_q6_K(backend_ctx, src0)")
assert normalized == source["new"]

header = git("show", f"{commit}:{ggml_h}")
common_source = git("show", f"{commit}:{common}")
c_source = git("show", f"{commit}:{ggml_c}")
assert "GGML_TYPE_Q6_K    = 14," in header
assert "#define QK_K 256" in common_source
assert "typedef uint16_t ggml_half;" in common_source
assert "static_assert(sizeof(block_q6_K) == sizeof(ggml_half) + QK_K / 16 + 3*QK_K/4" in common_source
assert "[GGML_TYPE_Q6_K] = {" in c_source and ".type_size                = sizeof(block_q6_K)" in c_source
assert "enum ADRENO_GPU_GEN {\n    ADRENO_UNKNOWN,\n    A6X,\n    A7X," in source["new"]

nbytes_start = c_source.index("size_t ggml_nbytes(const struct ggml_tensor * tensor) {")
nbytes = c_source[nbytes_start:c_source.index("\nsize_t ggml_nbytes_pad", nbytes_start)]
prefix = """typedef unsigned long size_t;
typedef long long int64_t;
#define GGML_MAX_DIMS 4
enum ADRENO_GPU_GEN { ADRENO_UNKNOWN, A6X, A7X, A8X, X1E, X2E };
struct ggml_backend_opencl_context { ADRENO_GPU_GEN adreno_gen; };
struct ggml_tensor { int64_t ne[4]; size_t nb[4]; int type; };
static size_t ggml_blck_size(int type) { return 256; }
static size_t ggml_type_size(int type) { return 210; }
""" + nbytes + "\n"

signatures = {
    "old": "static inline bool use_flat_gemv_for_large_m_q6_K(const ggml_tensor *tensor)",
    "new": "static inline bool use_flat_gemv_for_large_m_q6_K(const ggml_backend_opencl_context *backend_ctx, const ggml_tensor *tensor)",
}
replacement = "extern \"C\" bool target(const ggml_backend_opencl_context *backend_ctx, const ggml_tensor *tensor)"
make_tensor = """ggml_tensor t{{ne0, ne1, 1, 1}, {210, (ne0/256)*210, (ne0/256)*210*ne1, (ne0/256)*210*ne1}, 14};"""
for side in ("old", "new"):
    assert parts[side].startswith(signatures[side])
    code = prefix + parts[side].replace(signatures[side], replacement, 1)
    code += ("\nextern \"C\" bool witness() { ggml_backend_opencl_context ctx{A6X}; " +
             make_tensor.replace("ne0", "1024").replace("ne1", "327680") +
             " return target(&ctx, &t); }\n")
    (here / f"{side}.cpp").write_text(code)
    run([str(clang), "-x", "c++", "-std=c++17", "-O1", "-S", "-emit-llvm", "-fno-ident",
         str(here / f"{side}.cpp"), "-o", str(here / f"{side}.raw.ll")])
    ir = (here / f"{side}.raw.ll").read_text()
    ir, loops = re.subn(r", !llvm\.loop !\d+", "", ir)
    ir, aliases = re.subn(r", !tbaa !\d+", "", ir)
    assert loops >= 2 and aliases >= 11
    (here / f"{side}.ll").write_text(ir)

checks = {}
for direction, src, dst in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
    log = run([str(alive), str(here / f"{src}.ll"), str(here / f"{dst}.ll"),
               "--func=witness", "--src-unroll=5", "--tgt-unroll=5", "--smt-to=10000"]).stdout.decode()
    assert "1 incorrect transformations" in log and "0 failed-to-prove transformations" in log
    assert "0 Alive2 errors" in log
    (here / f"alive-{direction}.log").write_text(log)
    checks[direction] = "incorrect"

native = {}
for label, gen, ne0, ne1 in (
    ("narrow_large_a6x", "A6X", 1024, 327680),
    ("narrow_large_a7x", "A7X", 1024, 327680),
    ("narrow_small_a6x", "A6X", 1024, 32768),
    ("wide_a6x", "A6X", 2048, 32768),
):
    native[label] = {}
    for side in ("old", "new"):
        with tempfile.TemporaryDirectory() as directory:
            source_file = Path(directory) / "test.cpp"
            binary = Path(directory) / "test"
            source_file.write_text((here / f"{side}.cpp").read_text() +
                                   f"\nint main() {{ ggml_backend_opencl_context ctx{{{gen}}}; " +
                                   make_tensor.replace("ne0", str(ne0)).replace("ne1", str(ne1)) +
                                   " return target(&ctx, &t) ? 0 : 1; }\n")
            run([str(clang), "-x", "c++", "-std=c++17", str(source_file), "-o", str(binary)])
            native[label][side] = run([str(binary)], check=False).returncode == 0
assert native == {
    "narrow_large_a6x": {"old": False, "new": True},
    "narrow_large_a7x": {"old": False, "new": False},
    "narrow_small_a6x": {"old": False, "new": False},
    "wide_a6x": {"old": True, "new": True},
}

result = {
    "commit": commit, "changed_paths": [path], "blobs": blobs,
    "q6_k": {"block_elements": 256, "block_bytes": 210,
             "witness_nbytes": 275251200, "threshold_bytes": 268435456},
    "ir_sha256": {name: hashlib.sha256((here / name).read_bytes()).hexdigest()
                  for name in ("old.raw.ll", "old.ll", "new.raw.ll", "new.ll")},
    "checks": checks, "native": native, "verdict": "NOT_EQUIV",
    "scope": "complete use_flat_gemv_for_large_m_q6_K helper return value for contiguous Q6_K tensor 1024x327680x1x1 on A6X: old false/new true; OpenCL kernel output and whole operation unverified",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "checks": checks, "native": native}))
