#!/usr/bin/env python3
"""Check exact historical CM2 fallback shader and B-load index relation."""

import hashlib
import json
import re
import subprocess
import tempfile
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "c74759a244"
BASE = "ggml/src/ggml-vulkan/vulkan-shaders/"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"


def blob(rev, name):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{BASE}{name}"], text=True
    )


def shader(rev, matmul_id, quant):
    with tempfile.TemporaryDirectory() as temp:
        todo = ["mul_mm_cm2.comp"]
        seen = set()
        while todo:
            name = todo.pop()
            if name in seen:
                continue
            seen.add(name)
            src = blob(rev, name)
            todo.extend(re.findall(r'^#include\s+"([^"]+)"', src, flags=re.MULTILINE))
            src = re.sub(r"^#(?:extension|version)[^\n]*$", "", src, flags=re.MULTILINE)
            (Path(temp) / name).write_text(src)
        assert seen == {"mul_mm_cm2.comp", "dequant_funcs_cm2.glsl", "types.glsl", "utils.glsl"}
        args = ["cpp", "-P", "-undef", "-nostdinc", "-x", "c", f"-D{quant}=1",
                "-DB_TYPE=float16_t", "-DD_TYPE=float"]
        if matmul_id:
            args.append("-DMUL_MAT_ID=1")
        args.append(str(Path(temp) / "mul_mm_cm2.comp"))
        return subprocess.check_output(args, text=True)


def tokens(src):
    return re.findall(r"\w+|[^\s]", src)


checks = []
for matmul_id in (False, True):
    for quant in ("DATA_A_F16", "DATA_A_F32"):
        old = shader(f"{COMMIT}^", matmul_id, quant)
        new = shader(COMMIT, matmul_id, quant)
        if matmul_id:
            assert new.count("const uint k = blockCoords[1];") == 1
            assert new.count("p.stride_b + k]") == 1
            new = new.replace("const uint k = blockCoords[1];", "")
            new = new.replace("p.stride_b + k]", "p.stride_b + blockCoords[1]]")
        assert tokens(old) == tokens(new)
        checks.append({
            "matmul_id": matmul_id,
            "quant": quant,
            "decode_vector_enabled": False,
            "token_equal_after_local_alias_substitution": True,
            "normalized_sha256": hashlib.sha256(" ".join(tokens(old)).encode()).hexdigest(),
        })


def index_expression(src):
    body = src.split("B_TYPE decodeFuncB(", 1)[1].split("return ret;", 1)[0]
    match = re.search(r"B_TYPE ret = data_b\[(.+?)\];", body)
    assert match
    return match.group(1)


old_expr = index_expression(blob(f"{COMMIT}^", "mul_mm_cm2.comp"))
new_expr = index_expression(blob(COMMIT, "mul_mm_cm2.comp"))
assert old_expr == "row_idx.y * p.batch_stride_b + row_idx.x * p.stride_b + blockCoords[1]"
assert new_expr == "row_idx.y * p.batch_stride_b + row_idx.x * p.stride_b + k"
assert "const uint k = blockCoords[1];" in blob(COMMIT, "mul_mm_cm2.comp")

for side, expr in (("old", old_expr), ("new", new_expr)):
    expr = (expr.replace("row_idx.y", "row_y").replace("row_idx.x", "row_x")
                .replace("p.batch_stride_b", "batch_stride_b")
                .replace("p.stride_b", "stride_b").replace("blockCoords[1]", "block_k"))
    alias = "uint32_t k = block_k;\n" if side == "new" else ""
    code = ("#include <stdint.h>\n"
            "uint32_t index_b(uint16_t row_x, uint16_t row_y, uint32_t batch_stride_b, "
            "uint32_t stride_b, uint32_t block_k) {\n"
            f"{alias}return {expr};\n}}\n")
    (HERE / f"{side}.c").write_text(code)
    subprocess.run([str(CLANG), "-O1", "-S", "-emit-llvm", str(HERE / f"{side}.c"),
                    "-o", str(HERE / f"{side}.ll")], check=True)

alive_checks = {}
for direction, first, second in (("old_to_new", "old", "new"),
                                 ("new_to_old", "new", "old")):
    run = subprocess.run([str(ALIVE), "--always-verify", "--func=index_b",
                          str(HERE / f"{first}.ll"), str(HERE / f"{second}.ll")],
                         capture_output=True, text=True, timeout=60, check=True)
    assert "1 correct transformations" in run.stdout
    assert "0 incorrect transformations" in run.stdout
    assert "0 failed-to-prove transformations" in run.stdout
    (HERE / f"alive2-{direction}.log").write_text(run.stdout)
    alive_checks[direction] = "correct"

vector_src = blob(COMMIT, "mul_mm_cm2.comp")
assert "const uint k = blockCoords[1] * BK + coordInBlock[1];" in vector_src
assert "const uint base = row_idx.y * p.batch_stride_b + row_idx.x * p.stride_b + k;" in vector_src
assert "return data_b_v4[base >> 2];" in vector_src
assert "const uint BK = 16;" in vector_src
host = subprocess.check_output(
    ["git", "-C", str(REPO), "show", f"{COMMIT}:ggml/src/ggml-vulkan/ggml-vulkan.cpp"], text=True
)
assert "(ne10 % 4 == 0)" in host
assert "ggml_vk_align_size(ne10, 4)" in host
assert "y_decode_vector_staging ? y_staged_row_stride : ne10" in host

prefix = """(set-logic QF_BV)
(declare-const row_x (_ BitVec 32))
(declare-const row_y (_ BitVec 32))
(declare-const stride_b (_ BitVec 32))
(declare-const batch_stride_b (_ BitVec 32))
(declare-const block_coord (_ BitVec 32))
(declare-const coord_in_block (_ BitVec 32))
(define-fun base () (_ BitVec 32)
  (bvadd (bvadd (bvmul row_y batch_stride_b) (bvmul row_x stride_b))
         (bvadd (bvmul block_coord #x00000010) coord_in_block)))
(define-fun vector_start () (_ BitVec 32)
  (bvshl (bvlshr base #x00000002) #x00000002))
"""
aligned = prefix + """(assert (= (bvand stride_b #x00000003) #x00000000))
(assert (= (bvand batch_stride_b #x00000003) #x00000000))
(assert (= (bvand coord_in_block #x00000003) #x00000000))
(assert (not (= base vector_start)))
(check-sat)
"""
misaligned = prefix + """(assert (= row_x #x00000001))
(assert (= row_y #x00000000))
(assert (= stride_b #x00000001))
(assert (= batch_stride_b #x00000000))
(assert (= block_coord #x00000000))
(assert (= coord_in_block #x00000000))
(assert (not (= base vector_start)))
(check-sat)
(get-value (base vector_start))
"""
for name, query, expected in (("vector-aligned", aligned, "unsat"),
                              ("vector-misaligned", misaligned, "sat")):
    path = HERE / f"{name}.smt2"
    path.write_text(query)
    run = subprocess.run([str(Z3), str(path)], capture_output=True, text=True, check=True)
    assert run.stdout.startswith(expected + "\n"), run.stdout
    (HERE / f"{name}.log").write_text(run.stdout)

result = {
    "commit": subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True).strip(),
    "scope": "CM2 fallback source plus selected decode-vector B-address lemma",
    "shader_checks": checks,
    "b_index_alive2": alive_checks,
    "decode_vector_b_address": {
        "aligned_stride_and_callback_coordinate": "proved vector_start equals scalar base for BK=16",
        "without_stride_alignment": "counterexample base=1, vector_start=0",
        "packed_buffer_value_relation": "unproved",
    },
    "decode_vector_enabled_path": "UNKNOWN beyond the address lemma",
    "compiled_spirv_and_full_host_execution": "UNKNOWN",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
