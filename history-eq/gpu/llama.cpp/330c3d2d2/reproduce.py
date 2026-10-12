#!/usr/bin/env python3
"""Check source-mapped Vulkan row compaction under an explicit lane model."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "330c3d2d21b55bca5517db7d2eea2ea8f131df4a"
shader_paths = ("ggml/src/ggml-vulkan/vulkan-shaders/mul_mm.comp",
                "ggml/src/ggml-vulkan/vulkan-shaders/mul_mm_cm2.comp")
z3 = root / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def blob(rev, path):
    return subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env)


def check(name, expected, timeout=120):
    result = subprocess.run([str(z3), str(here / f"{name}.smt2")],
                            capture_output=True, text=True, timeout=timeout, env=env)
    (here / f"{name}.log").write_text(result.stdout + result.stderr)
    assert result.returncode == 0, result.stderr
    answers = [line for line in result.stdout.splitlines() if line in ("sat", "unsat", "unknown")]
    assert answers == expected, (name, answers, expected)


sources = {}
for path in shader_paths:
    old = blob(commit + "^", path)
    new = blob(commit, path)
    sources[path] = {"old": hashlib.sha256(old).hexdigest(),
                     "new": hashlib.sha256(new).hexdigest()}
    old, new = old.decode(), new.decode()
    for phrase in ("j += gl_SubgroupSize", "subgroupBallotExclusiveBitCount(ballot)",
                   "_ne1 += subgroupBallotBitCount(ballot)", "i / p.nei0", "i % p.nei0"):
        assert phrase in old, (path, phrase)
    for phrase in ("j += BLOCK_SIZE", "ballots_sh[gl_SubgroupID] = ballot",
                   "subgroup_base + subgroupBallotExclusiveBitCount(ballot)",
                   "_ne1 += total", "i - ii1 * p.nei0", "i >> nei0shift"):
        assert phrase in new, (path, phrase)
    assert "void load_row_ids(uint expert_idx, bool nei0_is_pow2)" in new

utils_path = "ggml/src/ggml-vulkan/vulkan-shaders/utils.comp"
utils = blob(commit, utils_path)
assert utils == blob(commit + "^", utils_path)
assert "if ((b & (b-1)) == 0)" in utils.decode()
assert "return a & (b-1);" in utils.decode() and "return a % b;" in utils.decode()
sources[utils_path] = {"unchanged": hashlib.sha256(utils).hexdigest()}


def sum_expr(terms):
    if not terms:
        return "0"
    if len(terms) == 1:
        return terms[0]
    return "(+ " + " ".join(terms) + ")"


def hit(i):
    return f"(ite h{i} 1 0)"


rank = ["(set-logic QF_LIA)", "(declare-const lane Int)"]
rank += [f"(declare-const h{i} Bool)" for i in range(256)]
for subgroup in range(8):
    base = subgroup * 32
    old = sum_expr([hit(i) for i in range(base)] +
                   [f"(ite (< {i} lane) {hit(i)} 0)" for i in range(base, base + 32)])
    new = sum_expr([sum_expr([hit(i) for i in range(s * 32, (s + 1) * 32)])
                    for s in range(subgroup)] +
                   [f"(ite (< {i} lane) {hit(i)} 0)" for i in range(base, base + 32)])
    rank += ["(push 1)", f"(assert (<= {base} lane))",
             f"(assert (< lane {base + 32}))", f"(assert (not (= {old} {new})))",
             "(check-sat)", "(pop 1)"]
old_total = sum_expr([hit(i) for i in range(256)])
new_total = sum_expr([sum_expr([hit(i) for i in range(s * 32, (s + 1) * 32)])
                      for s in range(8)])
rank += ["(push 1)", f"(assert (not (= {old_total} {new_total})))",
         "(check-sat)", "(pop 1)"]
# Negative control: omitting subgroup_base must permit a changed row index.
rank += ["(push 1)", "(assert (= lane 32))",
         f"(assert (not (= {sum_expr([hit(i) for i in range(32)])} 0)))",
         "(check-sat)", "(pop 1)"]
(here / "rank.smt2").write_text("\n".join(rank) + "\n")
check("rank", ["unsat"] * 9 + ["sat"])

fastmod = """(set-logic QF_BV)
(declare-const a (_ BitVec 32))
(declare-const b (_ BitVec 32))
(assert (not (= b #x00000000)))
(define-fun fast () (_ BitVec 32)
  (ite (= (bvand b (bvsub b #x00000001)) #x00000000)
       (bvand a (bvsub b #x00000001))
       (bvurem a b)))
(assert (not (= fast (bvurem a b))))
(check-sat)
"""
(here / "fastmod.smt2").write_text(fastmod)
check("fastmod", ["unsat"])

pow2 = ["(set-logic QF_BV)", "(declare-const i (_ BitVec 32))"]
for shift in range(32):
    b = f"#x{1 << shift:08x}"
    s = f"#x{shift:08x}"
    pow2 += ["(push 1)",
             f"(assert (not (= (bvudiv i {b}) (bvlshr i {s}))))",
             "(check-sat)", "(pop 1)"]
(here / "power2.smt2").write_text("\n".join(pow2) + "\n")
check("power2", ["unsat"] * 32)

# Vulkan permits subgroup lane IDs to differ from LocalInvocationIndex.
# With every input selected, exchanging local invocations 0 and 1 between
# subgroup lanes 0 and 1 reverses the first two row_ids entries.
old_order = list(range(256))
new_order = list(range(256))
new_order[0], new_order[1] = new_order[1], new_order[0]
assert old_order[:2] == [0, 1] and new_order[:2] == [1, 0]
assert sorted(new_order) == old_order

lane_permutation = """(set-logic QF_LIA)
(declare-const local_at_lane0 Int)
(declare-const local_at_lane1 Int)
(assert (<= 0 local_at_lane0))
(assert (< local_at_lane0 2))
(assert (<= 0 local_at_lane1))
(assert (< local_at_lane1 2))
(assert (distinct local_at_lane0 local_at_lane1))
; Old scans input index 0 at subgroup lane 0; new loads LocalInvocationIndex.
(assert (not (= 0 local_at_lane0)))
(check-sat)
(get-value (local_at_lane0 local_at_lane1))
"""
(here / "lane-permutation.smt2").write_text(lane_permutation)
check("lane-permutation", ["sat"])

result = {"commit": commit, "source_sha256": sources,
          "rank_checks": {"natural_lane_order": "9 unsat", "missing_subgroup_base": "sat"},
          "fastmod": "unsat for arbitrary uint32 a and positive b",
          "power2_division": "32 unsat, all power-of-two uint32 divisors",
          "lane_permutation_query": "sat",
          "permitted_lane_permutation_witness": {"old_first_rows": old_order[:2],
                                                 "new_first_rows": new_order[:2]},
          "model": "256 full lanes, subgroup size 32; natural lane order for equality checks"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
