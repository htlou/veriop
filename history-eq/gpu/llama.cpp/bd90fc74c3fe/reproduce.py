#!/usr/bin/env python3
"""Check source-locked WebGPU FlashAttention loop and store-index projections."""

import hashlib
import json
import os
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
COMMIT = "bd90fc74c3fe"
FILE = "ggml/src/ggml-webgpu/wgsl-shaders/flash_attn.wgsl"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


sources = {}
oids = {}
for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
    data = git("show", f"{rev}:{FILE}")
    oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert oid == git("rev-parse", f"{rev}:{FILE}").decode().strip()
    sources[side] = data.decode()
    oids[side] = oid

for needle in (
    "for (var head_dim_block = 0u; head_dim_block < HEAD_DIM_QK; head_dim_block += SG_MAT_K)",
    "acc = subgroupMatrixMultiplyAccumulate(q_sg_mat, k_sg_mat, acc);",
    "@group(0) @binding(DST_BINDING) var<storage, read_write> dst: array<f32>;",
    "for (var elem_idx = sg_inv_id; elem_idx < HEAD_DIM_V; elem_idx += subgroup_size)",
    "dst[dst_global_offset + q_tile_row * dst2_stride + elem_idx] = scaled;",
):
    assert needle in sources["old"], needle
for needle in (
    "for (; t + 1u < HEAD_DIM_QK / SG_MAT_K; t += 2u)",
    "if (t < HEAD_DIM_QK / SG_MAT_K)",
    "acc = subgroupMatrixMultiplyAccumulate(q_cur, k_cur, acc);",
    "q_cur = q0;",
    "k_cur = k0;",
    "q_cur = q1g;",
    "k_cur = k1g;",
    "q_cur = qn;",
    "k_cur = kn;",
    "@group(0) @binding(DST_BINDING) var<storage, read_write> dst: array<vec4<f32>>;",
    "for (var elem_base = sg_inv_id * 4u;",
    "let dst_vec_index: u32 = (row_base + elem_base) >> 2u;",
    "dst[dst_vec_index] = v;",
):
    assert needle in sources["new"], needle
assert sources["new"].count("acc = subgroupMatrixMultiplyAccumulate(q_cur, k_cur, acc);") == 4
assert "&q_shmem, 0u, false, HEAD_DIM_QK" in sources["new"]
assert "k_global_offset + 0u, true, params.stride_k1" in sources["new"]
assert "k_block_offset + 0u, true, HEAD_DIM_QK" in sources["new"]

for d in range(1, 65):
    old = list(range(d))
    new = []
    t = 1
    while t + 1 < d:
        new += [t - 1, t]
        t += 2
    if t < d:
        new.append(t - 1)
        new.append(t)
    else:
        new.append(t - 1)
    assert old == new, (d, old, new)


def z3_query(name, smt, expected):
    (HERE / f"{name}.smt2").write_text(smt)
    run = subprocess.run([str(Z3), "-in"], input=smt, capture_output=True,
                         text=True, timeout=30, check=True)
    (HERE / f"{name}.log").write_text(run.stdout + run.stderr)
    assert run.stdout.splitlines()[0] == expected and not run.stderr, (name, run.stdout, run.stderr)
    return expected


prelude = """(set-logic QF_LIA)
(declare-const d Int)
(declare-const k Int)
(assert (<= 1 d 64))
(assert (<= 0 k 63))
"""
events = []
conditions = []
for j in range(32):
    cond = f"(< {2*j+2} d)"
    conditions.append(f"(ite {cond} 1 0)")
    for index in (2*j, 2*j+1):
        events.append(f"(ite (and {cond} (= k {index})) 1 0)")
iterations = "(+ " + " ".join(conditions) + ")"
final_t = f"(+ 1 (* 2 {iterations}))"
events += [f"(ite (= k (- {final_t} 1)) 1 0)",
           f"(ite (and (< {final_t} d) (= k {final_t})) 1 0)"]
new_count = "(+ " + " ".join(events) + ")"
mac_count = z3_query("mac-count", prelude +
                     f"(assert (not (= {new_count} (ite (< k d) 1 0))))\n(check-sat)\n", "unsat")

store_smt = """(set-logic QF_BV)
(declare-const row_base (_ BitVec 32))
(declare-const elem_base (_ BitVec 32))
(declare-const component (_ BitVec 32))
(assert (= (bvand row_base #x00000003) #x00000000))
(assert (= (bvand elem_base #x00000003) #x00000000))
(assert (bvule component #x00000003))
(assert (not (= (bvadd row_base elem_base component)
  (bvadd (bvshl (bvlshr (bvadd row_base elem_base) #x00000002) #x00000002) component))))
(check-sat)
"""
store_index = z3_query("store-index", store_smt, "unsat")
unaligned = z3_query("unaligned-control", """(set-logic QF_BV)
(assert (not (= #x00000001
  (bvshl (bvlshr #x00000001 #x00000002) #x00000002))))
(check-sat)
""", "sat")

for head_dim_v in (64, 128, 256):
    for subgroup_size in (8, 16, 32):
        old = [lane + turn * subgroup_size for lane in range(subgroup_size)
               for turn in range((head_dim_v + subgroup_size - 1) // subgroup_size)
               if lane + turn * subgroup_size < head_dim_v]
        new = [4*lane + 4*turn*subgroup_size + component
               for lane in range(subgroup_size)
               for turn in range((head_dim_v//4 + subgroup_size - 1)//subgroup_size)
               for component in range(4)
               if 4*lane + 4*turn*subgroup_size + component < head_dim_v]
        assert sorted(old) == sorted(new) == list(range(head_dim_v))

result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "parent": git("rev-parse", f"{COMMIT}^").decode().strip(),
          "shader_source_oids": oids,
          "mac_sequence": "1..64 blocks exact by enumeration; Z3 count mismatch unsat",
          "aligned_store_index_counterexample": store_index,
          "unaligned_store_control": unaligned,
          "store_coverage": "64/128/256 elements x 8/16/32 subgroup lanes",
          "verdict": "EQUIV_PARTIAL for MAC operand order and aligned output indices"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
