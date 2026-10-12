#!/usr/bin/env python3
"""Source-lock and check the Q2–Q5_K Vulkan reduction write conflict."""

import json
import os
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
COMMIT = "dafae66cc242eb766797194d3c85c5e502625623"
PARENT = "ae4b922614d452477cf5d2fb8cad247c9c12596c"
PREFIX = "ggml/src/ggml-vulkan/"
SHADERS = [f"vulkan-shaders/mul_mat_vec_{q}.comp" for q in ("q2_k", "q3_k", "q4_k", "q5_k")]


def git(*args):
    env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=env).decode()


assert git("rev-parse", COMMIT).strip() == COMMIT
assert git("rev-parse", COMMIT + "^").strip() == PARENT
oids = {}


def source(rev, path):
    full = PREFIX + path
    oids[f"{rev}:{full}"] = git("rev-parse", f"{rev}:{full}").strip()
    return git("show", f"{rev}:{full}")


old_base = source(PARENT, "vulkan-shaders/mul_mat_vec_base.comp")
new_base = source(COMMIT, "vulkan-shaders/mul_mat_vec_base.comp")
assert "#define K_QUANTS_PER_ITERATION 2" in old_base
assert "#define K_QUANTS_PER_ITERATION 2" not in new_base
old_host = source(PARENT, "ggml-vulkan.cpp")
new_host = source(COMMIT, "ggml-vulkan.cpp")
assert "const uint32_t subgroup_size_16 = std::max(device->subgroup_size, 16u);" in new_host

for shader in SHADERS:
    old, new = source(PARENT, shader), source(COMMIT, shader)
    q = shader.removeprefix("vulkan-shaders/mul_mat_vec_").removesuffix(".comp").upper()
    assert "#include \"mul_mat_vec_base.comp\"" in old and "#include \"mul_mat_vec_base.comp\"" in new
    assert "layout(local_size_x = 32, local_size_y = 1, local_size_z = 1) in;" in old
    assert "layout(local_size_x_id = 0, local_size_y = 1, local_size_z = 1) in;" in new
    assert ("const uint tid = gl_LocalInvocationID.x/K_QUANTS_PER_ITERATION;" in old or
            "const uint tid = gl_LocalInvocationID.x/2;" in old)
    assert "const uint tid = gl_LocalInvocationID.x;" in new
    assert "tmp[gl_LocalInvocationID.x] = temp;" in old and "tmp[gl_LocalInvocationID.x] = temp;" in new
    for text, first_stage in ((old, "16"), (new, "gl_WorkGroupSize.x/2")):
        assert f"for (uint s = {first_stage}; s > 0; s >>= 1)" in text
        assert "if (tid < s) {\n            tmp[tid] += tmp[tid + s];\n        }\n        barrier();" in text
    pipeline = f"pipeline_dequant_mul_mat_vec_f32_f32[GGML_TYPE_{q}]"
    assert pipeline in old_host and pipeline in new_host


queries = {
    "old_collision": """(set-logic QF_LIA)
(declare-const a Int) (declare-const b Int)
(assert (and (<= 0 a) (< a 32) (<= 0 b) (< b 32) (not (= a b))))
(assert (= a 0)) (assert (= b 1))
(assert (< (div a 2) 16)) (assert (< (div b 2) 16))
(assert (= (div a 2) (div b 2)))
(check-sat)
""",
    "new_distinct_writers": """(set-logic QF_LIA)
(declare-const n Int) (declare-const s Int) (declare-const a Int) (declare-const b Int)
(assert (and (>= n 16) (> s 0) (<= (* 2 s) n)))
(assert (and (<= 0 a) (< a s) (<= 0 b) (< b s) (not (= a b))))
(assert (= a b))
(check-sat)
""",
    "new_read_write_overlap": """(set-logic QF_LIA)
(declare-const n Int) (declare-const s Int) (declare-const a Int) (declare-const b Int)
(assert (and (>= n 16) (> s 0) (<= (* 2 s) n)))
(assert (and (<= 0 a) (< a s) (<= 0 b) (< b s)))
(assert (= a (+ b s)))
(check-sat)
""",
}
checks = {}
for name, query in queries.items():
    (HERE / f"{name}.smt2").write_text(query)
    out = subprocess.check_output([str(Z3), "-in"], input=query.encode()).decode().strip()
    (HERE / f"{name}.log").write_text(out + "\n")
    checks[name] = out
assert checks == {"old_collision": "sat", "new_distinct_writers": "unsat",
                  "new_read_write_overlap": "unsat"}

result = {
    "commit": COMMIT,
    "parent": PARENT,
    "exact_source_oids": oids,
    "scope": "four historical Q2_K/Q3_K/Q4_K/Q5_K Vulkan shader shared-memory reduction loops",
    "old_same_stage_write_conflict": "invocations 0 and 1 both write tmp[0] at s=16",
    "new_same_stage_waw_raw": "unsat for distinct writers and write/read overlap at any s>0 with 2*s<=workgroup size",
    "checks": checks,
    "output_equivalence": "unverified; neither GPU executions nor numerical outputs were compared",
    "verdict": "UNSUPPORTED for whole-kernel equivalence by installed Volta/Alive2/Kuiper relation",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"checks": checks, "verdict": result["verdict"]}))
