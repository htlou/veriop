#!/usr/bin/env python3
"""Find a source-locked WebGPU set_rows vector-load counterexample with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import struct
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "03ea04175da3cdd7fd8cc1835f33490e3483928a"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
CPP = "ggml/src/ggml-webgpu/ggml-webgpu.cpp"
OLD_SHADER = "ggml/src/ggml-webgpu/wgsl-shaders/set_rows.wgsl"
NEW_SHADER = "ggml/src/ggml-webgpu/wgsl-shaders/set_rows.tmpl.wgsl"
PATHS = [CPP, NEW_SHADER, OLD_SHADER]


def run(args, timeout=120):
    process = subprocess.run(args, capture_output=True, text=True, timeout=timeout,
                             env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    assert process.returncode == 0, process.stdout + process.stderr
    return process.stdout


def git(*args):
    return run(["git", "-C", str(REPO), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).splitlines() == PATHS
diff = git("show", "--format=", "--no-ext-diff", COMMIT, "--", *PATHS)
assert diff.encode() == (HERE.parent / "source-screening/03ea0417.source.diff").read_bytes()
parent = git("show", f"{COMMIT}^:{CPP}")
child = git("show", f"{COMMIT}:{CPP}")
old_shader = git("show", f"{COMMIT}^:{OLD_SHADER}")
new_shader = git("show", f"{COMMIT}:{NEW_SHADER}")
ggml_blob = git("rev-parse", f"{COMMIT}:ggml/src/ggml.c").strip()
assert ggml_blob == git("rev-parse", f"{COMMIT}^:ggml/src/ggml.c").strip()
ggml = git("show", f"{COMMIT}:ggml/src/ggml.c")
assert "struct ggml_tensor * ggml_view_1d(" in ggml
assert "ggml_view_impl(ctx, a, 1, &ne0, offset);" in ggml
assert "GGML_ASSERT(ggml_is_contiguous_rows(b));" in ggml
assert "GGML_ASSERT(b->type == GGML_TYPE_F32);" in ggml
assert "GGML_ASSERT(c->type == GGML_TYPE_I64 || c->type == GGML_TYPE_I32);" in ggml
assert "int             vectorized = src->ne[0] % 4 == 0;" in child
assert "pipeline   = ctx->set_rows_pipeline[0][vectorized]" in child
assert "(ggml_webgpu_tensor_misalignment(ctx, src) / ggml_type_size(src->type))" in child
assert "return offset & (ctx->limits.minStorageBufferOffsetAlignment - 1);" in child
assert "return offset & ~(ctx->limits.minStorageBufferOffsetAlignment - 1);" in child
assert "return webgpu_tensor_offset(tensor) + tensor->view_offs;" in child
assert "return (uint8_t *) tensor->view_src->data - (uint8_t *) webgpu_ptr_base;" in child
assert "supports_op = (op->type == GGML_TYPE_F16 && src0->type == GGML_TYPE_F32 && src1->type == GGML_TYPE_I64);" in child
assert "set_rows_pipeline;" in parent
assert '"SHADER_SUFFIX": "f16_vec"' in new_shader
assert '"VEC_SIZE": 4' in new_shader and '"TYPE" : "vec4<f32>"' in new_shader
assert "var<storage, read_write> src: array<f32>;" in old_shader
assert "var<storage, read_write> src: array<{{TYPE}}>;" in new_shader
old_row = re.search(r"let i_src_row = ([^;]+);", old_shader).group(1)
new_row = re.search(r"let i_src_row = ([^;]+);", new_shader).group(1)
assert old_row == new_row
old_load = re.search(r"dst\[i_dst_row \+ i\] = f16\(src\[([^]]+)\]\);", old_shader).group(1)
new_load = re.search(r"dst\[i_dst_row/\{\{VEC_SIZE\}\} \+ col_idx\] = \{\{DST_TYPE\}\}\(src\[([^]]+)\]\);", new_shader).group(1)
assert old_load == "i_src_row + i"
assert new_load == "i_src_row/{{VEC_SIZE}} + col_idx"
assert "let col_idx = (gid.x % elems_per_row);" in new_shader

# Valid specialization: F32 source is a four-element view at byte offset 4 of
# a five-element allocation; F16 destination starts at offset 0; I64 index is 0.
# With a storage-buffer alignment of 256, the host passes offset_src=1.
assert (4 & (256 - 1)) // 4 == 1 and (4 & ~(256 - 1)) == 0
assert 4 % 4 == 0  # new host selects the vector shader
assert struct.pack("<e", 0.0) == b"\0\0"
assert struct.pack("<e", 1.0) == b"\0\x3c"

header = """using uint32_t = unsigned int;
extern "C" uint32_t target(uint32_t a0, uint32_t a1) {
    const uint32_t src[5] = {a0, a1, 0, 0, 0};
    const uint32_t offset_src=1, i_src1=0, i_src2=0, i_src3=0;
    const uint32_t stride_src1=5, stride_src2=5, stride_src3=5;
"""
row = re.sub(r"params\.", "", old_row)
old_model = header + f"    const uint32_t i_src_row = {row};\n" + """    const uint32_t i=0;
    return src[i_src_row + i];
}
"""
new_model = header + f"    const uint32_t i_src_row = {row};\n" + """    const uint32_t col_idx=0;
    const uint32_t vec_index = i_src_row/4 + col_idx;
    return src[4*vec_index]; // lane zero of array<vec4<f32>>
}
"""
for side, model in (("old", old_model), ("new", new_model)):
    cpp = HERE / f"{side}.cpp"
    cpp.write_text(model)
    ll = HERE / f"{side}.ll"
    run([str(CLANG), "-std=c++17", "-O1", "-S", "-emit-llvm", str(cpp), "-o", str(ll)])
    ll.write_text(re.sub(r" nocapture\b", "", ll.read_text()))

checks = {}
for direction, source, target in (("old_to_new", "old", "new"),
                                  ("new_to_old", "new", "old")):
    log = run([str(ALIVE), str(HERE / f"{source}.ll"), str(HERE / f"{target}.ll"),
               "--smt-to=30000", "--always-verify"])
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log, log
    (HERE / f"alive-{direction}.log").write_text(log)
    checks[direction] = "incorrect"

result = {"commit": COMMIT, "changed_paths": PATHS,
          "unchanged_dependency_blobs": {"ggml/src/ggml.c": ggml_blob},
          "source_blobs": {"old": {CPP: git("rev-parse", f"{COMMIT}^:{CPP}").strip(),
                                   OLD_SHADER: git("rev-parse", f"{COMMIT}^:{OLD_SHADER}").strip()},
                           "new": {CPP: git("rev-parse", f"{COMMIT}:{CPP}").strip(),
                                   NEW_SHADER: git("rev-parse", f"{COMMIT}:{NEW_SHADER}").strip()}},
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((HERE / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "verdict": "NOT_EQUIV",
          "witness": {"src_f32": [0.0, 1.0, 0.0, 0.0, 0.0], "view_offset_bytes": 4,
                      "shape": [4, 1, 1, 1], "row_index": 0, "storage_buffer_alignment": 256,
                      "old_first_output_f16_bits": "0x3c00", "new_first_output_f16_bits": "0x0000"},
          "scope": "The old scalar and new vector WGSL source-index formulas disagree for a four-element F32 source view at byte offset 4 and index 0; exact 0/1 data gives different first F16 output. Device execution, complete graph scheduling, and other changed behavior unverified"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
