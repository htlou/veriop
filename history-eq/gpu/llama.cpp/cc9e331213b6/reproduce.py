#!/usr/bin/env python3
"""Source-locked bounded SMT check of the SYCL MoE row-layout rewrite."""

import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
COMMIT = "cc9e331213b6"
FILE = "ggml/src/ggml-sycl/ggml-sycl.cpp"
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
    "if (row_id_i != i02) {",
    "cur_src1_row, 1);",
    "row_mapping[src1_row] = {id, iid1};",
    "grid_dims(1, 1, num_src1_rows)",
):
    assert needle in sources["old"], needle
for needle in (
    "mmid_counting_sort_rows(ids, ids_host.data(), n_ids, n_as, n_routed_rows,",
    "expert_row_offsets[i02 + 1] = expert_row_offsets[i02] + expert_counts[i02];",
    "const int64_t routed_row = expert_row_next[row_id_i]++;",
    "routed_row_src[routed_row] = {(int32_t) id, (int32_t) iid1};",
    "grid_dims(1, 1, n_routed_rows)",
):
    assert needle in sources["new"], needle
for side in ("old", "new"):
    assert "const int64_t i11 = id % ne11;" in sources[side]
    assert "dst_original + i1*nb1 + i2*nb2" in sources[side]

start = sources["new"].index("static void mmid_counting_sort_rows(")
opening = sources["new"].index("{", start)
depth = 0
for end in range(opening, len(sources["new"])):
    depth += (sources["new"][end] == "{") - (sources["new"][end] == "}")
    if depth == 0:
        break
function = sources["new"][start:end + 1]
native = (HERE / "native_harness.cpp").read_text().replace("/*SOURCE_FUNCTION*/", function)
with tempfile.TemporaryDirectory(prefix="veriop-cc9e-") as temp:
    source = Path(temp) / "native.cpp"
    binary = Path(temp) / "native"
    source.write_text(native)
    build = subprocess.run(["g++", "-std=c++17", "-O0", str(source), "-o", str(binary)],
                           capture_output=True, text=True)
    assert build.returncode == 0, build.stderr
    run = subprocess.run([str(binary)], capture_output=True, text=True, check=True)
    assert run.stdout.strip() == "81/81 source-extracted counting-sort cases pass"
    (HERE / "native.log").write_text(run.stdout)

N = 4  # two slots per token, two tokens; three possible experts


def total(parts):
    return "(+ " + " ".join(parts) + ")"


def count(predicates):
    return total([f"(ite {p} 1 0)" for p in predicates])


lines = ["(set-logic QF_AUFLIA)"]
for i in range(N):
    lines += [f"(declare-const e{i} Int)", f"(assert (<= 0 e{i} 2))",
              f"(declare-const s{i} Int)", f"(assert (<= 0 s{i} {N-1}))",
              f"(declare-const v{i} Int)"]
lines.append("(assert (distinct s0 s1 s2 s3))")
for i in range(N):
    offset = count([f"(< e{j} e{i})" for j in range(N)])
    cardinality = count([f"(= e{j} e{i})" for j in range(N)])
    old_rank = count([f"(and (= e{j} e{i}) (< s{j} s{i}))" for j in range(N) if j != i])
    new_rank = count([f"(= e{j} e{i})" for j in range(i)]) if i else "0"
    lines += [f"(define-fun off{i} () Int {offset})",
              f"(define-fun card{i} () Int {cardinality})",
              f"(define-fun old{i} () Int (+ off{i} {old_rank}))",
              f"(define-fun new{i} () Int (+ off{i} {new_rank}))"]
prelude = "\n".join(lines) + "\n"


def query(name, bad, expected):
    witness = "(get-value (e0 e1 s0 s1 s2 s3 old0 new0))\n" if name == "internal-order" else ""
    smt = prelude + f"(assert {bad})\n(check-sat)\n" + witness
    (HERE / f"{name}.smt2").write_text(smt)
    run = subprocess.run([str(Z3), "-in"], input=smt, capture_output=True,
                         text=True, timeout=30, check=True)
    (HERE / f"{name}.log").write_text(run.stdout + run.stderr)
    assert run.stdout.splitlines()[0] == expected, (name, run.stdout, run.stderr)
    return expected


bad_layout = []
for side in ("old", "new"):
    for i in range(N):
        bad_layout += [f"(< {side}{i} off{i})",
                       f"(>= {side}{i} (+ off{i} card{i}))"]
    for i in range(N):
        for j in range(i + 1, N):
            bad_layout.append(f"(= {side}{i} {side}{j})")
layout = query("layout", "(or " + " ".join(bad_layout) + ")", "unsat")

arrays = []
for side in ("old", "new"):
    expr = "((as const (Array Int Int)) 0)"
    for i in range(N):
        expr = f"(store {expr} {side}{i} v{i})"
    arrays.append(f"(define-fun {side}Out () (Array Int Int) {expr})")
bad_output = "(or " + " ".join(
    f"(not (= (select oldOut old{i}) (select newOut new{i})))" for i in range(N)) + ")"
smt = prelude + "\n".join(arrays) + f"\n(assert {bad_output})\n(check-sat)\n"
(HERE / "scatter.smt2").write_text(smt)
run = subprocess.run([str(Z3), "-in"], input=smt, capture_output=True,
                     text=True, timeout=30, check=True)
(HERE / "scatter.log").write_text(run.stdout + run.stderr)
assert run.stdout.strip() == "unsat", (run.stdout, run.stderr)
scatter = "unsat"

changed_order = query("internal-order", "(and (= e0 e1) (not (= old0 new0)))", "sat")
result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "parent": git("rev-parse", f"{COMMIT}^").decode().strip(),
          "source_oids": oids, "route_shape": "2 slots x 2 tokens, 3 experts",
          "old_schedule": "any permutation of four atomic assignments",
          "layout_counterexample": layout, "abstract_scatter_counterexample": scatter,
          "internal_order_can_change": changed_order,
          "source_extracted_counting_sort": "81/81 cases pass",
          "verdict": "EQUIV_PARTIAL: bounded routing/scatter under pure per-route compute"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
