#!/usr/bin/env python3
"""Check the historical Q5_K SYCL launch write-footprint."""

import json
import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "cuda/repos/llama.cpp"
HERE = Path(__file__).resolve().parent
COMMIT = "d209086157"
SOURCE = "ggml/src/ggml-sycl/dmmv.cpp"


def blob(rev, path):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{path}"], text=True
    )


def section(src, start, end):
    begin = src.index(start)
    return src[begin:src.index(end, begin + len(start))]


old = blob(f"{COMMIT}^", SOURCE)
new = blob(COMMIT, SOURCE)
old_kernel = section(old, "static void dequantize_mul_mat_vec_q5_k(", "static void dequantize_mul_mat_vec_q5_k_reorder(")
new_kernel = section(new, "static void dequantize_mul_mat_vec_q5_k_reorder(", "static void dequantize_mul_mat_vec_q6_k(")
old_launch = section(old, "static void dequantize_mul_mat_vec_q5_K_sycl(", "static void dequantize_mul_mat_vec_q6_K_sycl(")
new_launch = section(new, "static void dequantize_mul_mat_vec_q5_K_sycl_reorder(", "static void dequantize_mul_mat_vec_q6_K_sycl_reorder(")

for kernel in (old_kernel, new_kernel):
    assert "const int row = item_ct1.get_group(2);" in kernel
    assert re.search(r"if \(item_ct1\.get_local_id\(2\) == 0\)\s*\{\s*dst\[row\] = tmp;", kernel)
    assert re.findall(r"dst\[[^]]+\]\s*=", kernel) == ["dst[row] ="]
assert "sycl::range<3>(1, 1, nrows) * block_dims" in old_launch
assert "const int ny = 2 / K_QUANTS_PER_ITERATION;" in new_launch
assert "const int block_num_y = (nrows + ny - 1) / ny;" in new_launch
assert "sycl::range<3> block_nums(1, 1, block_num_y);" in new_launch
assert "sycl::range<3> block_dims(1, ny, WARP_SIZE);" in new_launch
assert "sycl::nd_range<3>(block_nums * block_dims, block_dims)" in new_launch
assert re.search(r"#ifndef K_QUANTS_PER_ITERATION\s*#define K_QUANTS_PER_ITERATION 2", blob(f"{COMMIT}^", "ggml/src/ggml-sycl/presets.hpp"))
assert re.search(r"#ifndef K_QUANTS_PER_ITERATION\s*#define K_QUANTS_PER_ITERATION 1", blob(COMMIT, "ggml/src/ggml-sycl/presets.hpp"))

old_dispatch = section(blob(f"{COMMIT}^", "ggml/src/ggml-sycl/ggml-sycl.cpp"), "inline bool ggml_sycl_supports_reorder_dmmv(", "inline bool ggml_sycl_supports_reorder_mmvq(")
new_dispatch = section(blob(COMMIT, "ggml/src/ggml-sycl/ggml-sycl.cpp"), "inline bool ggml_sycl_supports_reorder_dmmv(", "inline bool ggml_sycl_supports_reorder_mmvq(")
assert "case GGML_TYPE_Q5_K:" not in old_dispatch
assert "case GGML_TYPE_Q5_K:" in new_dispatch

# SYCL nd_range group count is global_size/local_size in each dimension.
# With nrows=2 and the new default K_QUANTS_PER_ITERATION=1, z has one group.
query = """(set-logic QF_LIA)
(declare-const nrows Int)
(define-fun old_z_groups () Int nrows)
(define-fun new_z_groups () Int (div (+ nrows 1) 2))
(assert (= nrows 2))
(assert (< 1 old_z_groups))
(assert (>= 1 new_z_groups))
(check-sat)
(get-value (nrows old_z_groups new_z_groups))
"""
(HERE / "coverage.smt2").write_text(query)
z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
run = subprocess.run([str(z3), str(HERE / "coverage.smt2")], text=True, capture_output=True, check=True)
assert run.stdout.startswith("sat\n"), run.stdout
(HERE / "solver.log").write_text(run.stdout)

result = {
    "commit": subprocess.check_output(
        ["git", "-C", str(REPO), "rev-parse", COMMIT], text=True
    ).strip(),
    "scope": "Q5_K DMMV launch write-footprint, nrows=2, default K_QUANTS_PER_ITERATION",
    "old_z_groups": 2,
    "new_z_groups": 1,
    "old_writes_row_1": True,
    "new_writes_row_1": False,
    "verdict": "NOT_EQUIV for write-footprint; full output value not executed",
    "smt_result": run.stdout.strip(),
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
