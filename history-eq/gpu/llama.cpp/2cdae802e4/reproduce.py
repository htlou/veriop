#!/usr/bin/env python3
"""Compare historical Vulkan pipeline arguments outside the RDNA3 tuning gate."""

import hashlib
import json
import re
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "2cdae802e4"
PATH = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"


def source(rev):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{PATH}"], text=True
    )


old = source(f"{COMMIT}^")
new = source(COMMIT)
helpers = (
    "const bool is_rdna3 = device->vendor_id == VK_VENDOR_ID_AMD && device->architecture == AMD_RDNA3;",
    "auto const &rm_int_n = [&](uint32_t rows, uint32_t i) { return (is_rdna3 && i >= 4) ? 4u : rows; };",
    "auto const &rm_id = [&](uint32_t rows) { return is_rdna3 ? 4u : rows; };",
    "GGML_UNUSED(is_rdna3);", "GGML_UNUSED(rm_int_n);", "GGML_UNUSED(rm_id);",
)
for line in helpers:
    assert new.count(line) == 1, line
    new = new.replace(line, "")
int_calls = len(re.findall(r"rm_int_n\([^()]*, i\)", new))
id_calls = len(re.findall(r"rm_id\([^()]*\)", new))
assert int_calls > 0 and id_calls > 0
new = re.sub(r"rm_int_n\(([^()]*), i\)", r"\1", new)
new = re.sub(r"rm_id\(([^()]*)\)", r"\1", new)
assert "rm_int_n(" not in new and "rm_id(" not in new


def tokens(src):
    src = re.sub(r"//[^\n]*", "", src)
    return re.findall(r"\w+|[^\s]", src)


assert tokens(old) == tokens(new)

prefix = """(set-logic QF_LIA)
(declare-const amd Bool)
(declare-const rdna3 Bool)
(declare-const rows Int)
(declare-const i Int)
(define-fun gate () Bool (and amd rdna3))
(define-fun rm_int_n () Int (ite (and gate (>= i 4)) 4 rows))
(define-fun rm_id () Int (ite gate 4 rows))
(assert (>= rows 0))
(assert (< rows 4294967296))
(assert (>= i 0))
(assert (< i 8))
"""
queries = {
    "non-rdna3": (
        prefix + "(assert (not gate))\n(assert (or (not (= rm_int_n rows)) (not (= rm_id rows))))\n(check-sat)\n",
        "unsat",
    ),
    "rdna3-five-cols": (
        prefix + "(assert gate)\n(assert (= rows 1))\n(assert (= i 4))\n"
        "(assert (and (not (= rm_int_n rows)) (not (= rm_id rows))))\n(check-sat)\n"
        "(get-value (rows i rm_int_n rm_id))\n",
        "sat",
    ),
}
answers = {}
for name, (query, expected) in queries.items():
    path = HERE / f"{name}.smt2"
    path.write_text(query)
    run = subprocess.run([str(Z3), str(path)], capture_output=True, text=True, check=True)
    assert run.stdout.startswith(expected + "\n"), run.stdout
    (HERE / f"{name}.log").write_text(run.stdout)
    answers[name] = run.stdout.strip()

assert "static constexpr uint32_t mul_mat_vec_max_cols = 8;" in old
assert "for (uint32_t i = 0; i < mul_mat_vec_max_cols; ++i)" in old
result = {
    "commit": subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True).strip(),
    "scope": "Vulkan pipeline-creation arguments in ggml_vk_load_shaders",
    "normalized_source_tokens_equal": True,
    "normalized_source_sha256": hashlib.sha256(" ".join(tokens(old)).encode()).hexdigest(),
    "int_calls": int_calls,
    "id_calls": id_calls,
    "non_rdna3_argument_relation": answers["non-rdna3"],
    "rdna3_five_column_witness": answers["rdna3-five-cols"],
    "full_tensor_output": "UNKNOWN",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
