#!/usr/bin/env python3
"""Source-lock and check a four-row model of Vulkan expert-ID hoisting."""

import json
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "90c26fcd4b"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"


def source(rev, path):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{path}"], text=True
    )


shader_dir = "ggml/src/ggml-vulkan/vulkan-shaders/"
old_ids = source(f"{COMMIT}^", shader_dir + "mul_mm_id_funcs.glsl")
new_ids = source(COMMIT, shader_dir + "mul_mm_id_funcs.glsl")
old_func = old_ids.split("void load_row_ids(", 1)[1].split("#endif // MUL_MAT_ID_USE_SUBGROUPS", 1)[0]
new_func = new_ids.split("void load_row_ids(", 1)[1].split("#endif // MUL_MAT_ID_USE_SUBGROUPS", 1)[0]
assert old_func == new_func, "the subgroup fallback changed"

count = source(COMMIT, shader_dir + "count_experts.comp")
old_count = source(f"{COMMIT}^", shader_dir + "count_experts.comp")
host = source(COMMIT, "ggml/src/ggml-vulkan/ggml-vulkan.cpp")
assert "count += uint(a == expert_id);" in old_count
assert "data_d[expert_id] = vals[0];" in old_count
for snippet in (
    "if (tid < p.n_experts) {\n            vals[tid] = 0;",
    "atomicAdd(vals[expert], 1);",
    "data_d[p.n_experts + expert] = offset;",
    "const uint row = atomicAdd(cursors[expert], 1);",
    "data_d[2 * p.n_experts + 1 + offsets[expert] + row] = packed_row_id;",
    "const uint packed_row_id = (i01 << 16) | (i00 & 0xffffu);",
    "umulExtended(n, mp, msbs, lsbs);",
    "return (msbs + n) >> L;",
):
    assert snippet in count, snippet
for snippet in (
    "_ne1 = uint(data_expert_count[expert_idx]);",
    "row_ids[i] = u16vec2(packed_row_id & 0xffffu, packed_row_id >> 16);",
):
    assert snippet in new_ids, snippet
assert "n_as <= 256 && nei0 <= 0xffff && nei1 <= 0xffff" in host
assert "init_fastdiv_values(p.ne00, p.ne00mp, p.ne00L);" in host


def run(name, query, expected):
    (HERE / f"{name}.smt2").write_text(query)
    proc = subprocess.run([str(Z3), str(HERE / f"{name}.smt2")], text=True,
                          capture_output=True, check=True)
    assert proc.stdout.startswith(expected + "\n"), (name, proc.stdout, proc.stderr)
    (HERE / f"{name}.log").write_text(proc.stdout)
    return proc.stdout.strip()


prelude = "(set-logic QF_LIA)\n"
for i in range(4):
    prelude += f"(declare-const id{i} Int)\n(assert (<= 0 id{i} 1))\n"
    prelude += f"(declare-const s{i} Int)\n(assert (<= 0 s{i} 3))\n"
prelude += "(assert (distinct s0 s1 s2 s3))\n"
prelude += "(define-fun count0 () Int (+ " + " ".join(f"(ite (= id{i} 0) 1 0)" for i in range(4)) + "))\n"
prelude += "(define-fun count1 () Int (+ " + " ".join(f"(ite (= id{i} 1) 1 0)" for i in range(4)) + "))\n"
prelude += "(define-fun id-at ((t Int)) Int (ite (= t 0) id0 (ite (= t 1) id1 (ite (= t 2) id2 id3))))\n"
for i in range(4):
    prelude += f"(define-fun pos{i} () Int (+ " + " ".join(
        f"(ite (= s{t} {i}) {t} 0)" for t in range(4)) + "))\n"
for i in range(4):
    rank = " ".join(
        f"(ite (and (= id{j} id{i}) (< pos{j} pos{i})) 1 0)"
        for j in range(4) if j != i
    )
    prelude += f"(define-fun slot{i} () Int (+ (ite (= id{i} 0) 0 count0) {rank}))\n"

# AtomicAdd gives distinct cursors to the four matching invocations in some order.
# No two different input rows can occupy the same expert-table slot.
collisions = [f"(= slot{i} slot{j})" for i in range(4) for j in range(i + 1, 4)]
unique = run("unique-slots", prelude + "(assert (or " + " ".join(collisions) + "))\n(check-sat)\n", "unsat")
new_count0 = "(+ " + " ".join(f"(ite (= (id-at s{i}) 0) 1 0)" for i in range(4)) + ")"
new_count1 = "(+ " + " ".join(f"(ite (= (id-at s{i}) 1) 1 0)" for i in range(4)) + ")"
counts = run("expert-counts", prelude + f"(assert (or (not (= count0 {new_count0})) "
             + f"(not (= count1 {new_count1}))))\n(check-sat)\n", "unsat")
bad_intervals = [
    f"(ite (= id{i} 0) (or (< slot{i} 0) (>= slot{i} count0)) "
    f"(or (< slot{i} count0) (>= slot{i} 4)))" for i in range(4)
]
intervals = run("expert-intervals", prelude + "(assert (or " + " ".join(bad_intervals)
                + "))\n(check-sat)\n", "unsat")

# The row list is not an ordered replacement: a legal interleaving can reverse it.
order = run("different-order", prelude + """
(assert (= id0 0)) (assert (= id1 0))
(assert (= id2 1)) (assert (= id3 1))
(assert (= s0 1)) (assert (= s1 0))
(assert (= s2 2)) (assert (= s3 3))
(assert (= slot1 0)) (assert (= slot0 1))
(check-sat)
(get-value (id0 id1 id2 id3 s0 s1 s2 s3 slot0 slot1))
""", "sat")

# The host guard makes both coordinates fit the source's 16+16-bit packing.
packing = run("packing", """(set-logic QF_BV)
(declare-const i00 (_ BitVec 32))
(declare-const i01 (_ BitVec 32))
(assert (bvule i00 #x0000ffff))
(assert (bvule i01 #x0000ffff))
(define-fun packed () (_ BitVec 32)
  (bvor (bvshl i01 #x00000010) (bvand i00 #x0000ffff)))
(assert (or (not (= (bvand packed #x0000ffff) i00))
            (not (= (bvlshr packed #x00000010) i01))))
(check-sat)
""", "unsat")
fastdiv = run("fastdiv-two", """(set-logic QF_BV)
(declare-const n (_ BitVec 32))
(assert (bvult n #x00000004))
; For ne00=2 the historical host formula gives mp=1 and L=1.
(define-fun hi () (_ BitVec 32) ((_ extract 63 32) (bvmul ((_ zero_extend 32) n) #x0000000000000001)))
(assert (not (= (bvlshr (bvadd hi n) #x00000001) (bvudiv n #x00000002))))
(check-sat)
""", "unsat")

result = {
    "commit": subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True).strip(),
    "scope": "four valid rows, two experts, one count_experts workgroup; arbitrary atomic cursor order",
    "subgroup_fallback_source_identical": True,
    "unique_slots": unique,
    "expert_counts": counts,
    "expert_intervals": intervals,
    "packed_id_roundtrip": packing,
    "fastdiv_ne00_two": fastdiv,
    "different_row_order": order,
    "verdict": "EQUIV_PARTIAL",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
