#!/usr/bin/env python3
"""Compare the exact historical Metal small-batch dispatch predicate with Alive2."""

import json
import re
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "e22cd0aa15"
PATH = "ggml/src/ggml-metal/ggml-metal-ops.cpp"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"


def blob(rev, path):
    return subprocess.check_output(["git", "-C", str(REPO), "show", f"{rev}:{path}"], text=True)


header = blob(COMMIT, "ggml/include/ggml.h")
types = dict((name, int(value)) for name, value in re.findall(
    r"\b(GGML_TYPE_[A-Z0-9_]+)\s*=\s*([0-9]+)\s*,", header))
conditions = {}
for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
    src = blob(rev, PATH)
    start = src.index("if (op->src[1]->type == GGML_TYPE_F32 && (ne00%128 == 0)",
                      src.index("int ggml_metal_op_mul_mat("))
    end = src.index(") {", start) + 1
    cond = src[start + len("if ("):end - 1]
    cond = cond.replace("op->src[0]->type", "type_a").replace("op->src[1]->type", "type_b")
    conditions[side] = cond

added = (
    "           type_a == GGML_TYPE_BF16 ||\n",
    "           type_a == GGML_TYPE_Q2_K ||\n",
    "           type_a == GGML_TYPE_Q3_K ||\n",
)
normalized = conditions["new"]
for line in added:
    assert normalized.count(line) == 1, line
    normalized = normalized.replace(line, "")
assert normalized == conditions["old"], "another part of the predicate changed"

used_types = sorted(set(re.findall(r"\bGGML_TYPE_[A-Z0-9_]+\b", conditions["old"] + conditions["new"])))
assert all(name in types for name in used_types)
defines = "".join(f"#define {name} {types[name]}\n" for name in used_types)
assert types["GGML_TYPE_BF16"] == 30
assert types["GGML_TYPE_Q2_K"] == 10
assert types["GGML_TYPE_Q3_K"] == 11


def compile_side(name, cond):
    code = ("#include <stdbool.h>\n" + defines +
            "bool select_small_batch(int type_a, int type_b, int ne00, int ne11) {\n"
            "    return " + cond + ";\n}\n" +
            "bool select_bf16(void) { return select_small_batch(GGML_TYPE_BF16, GGML_TYPE_F32, 128, 4); }\n"
            "bool select_q2_k(void) { return select_small_batch(GGML_TYPE_Q2_K, GGML_TYPE_F32, 128, 4); }\n"
            "bool select_q3_k(void) { return select_small_batch(GGML_TYPE_Q3_K, GGML_TYPE_F32, 128, 4); }\n")
    (HERE / f"{name}.c").write_text(code)
    subprocess.run([str(CLANG), "-O2", "-S", "-emit-llvm", str(HERE / f"{name}.c"),
                    "-o", str(HERE / f"{name}.ll")], check=True)


compile_side("old", conditions["old"])
compile_side("new", conditions["new"])
for func in ("select_small_batch", "select_bf16", "select_q2_k", "select_q3_k"):
    run = subprocess.run([str(ALIVE), "--always-verify", f"--func={func}",
                          str(HERE / "old.ll"), str(HERE / "new.ll")],
                         capture_output=True, text=True, timeout=60, check=True)
    assert "1 incorrect transformations" in run.stdout, (func, run.stdout[-900:])
    (HERE / f"alive2-{func}.log").write_text(run.stdout)

# Old eligibility implies new eligibility for all integer arguments.
conjunction = "(" + conditions["old"] + ") && (" + conditions["new"] + ")"
compile_side("old-and-new", conjunction)
run = subprocess.run([str(ALIVE), "--always-verify", "--func=select_small_batch",
                      str(HERE / "old.ll"), str(HERE / "old-and-new.ll")],
                     capture_output=True, text=True, timeout=60, check=True)
assert "1 correct transformations" in run.stdout, run.stdout[-900:]
(HERE / "alive2-no-regression.log").write_text(run.stdout)

result = {
    "commit": subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True).strip(),
    "verdict": "NOT_EQUIV for Metal small-batch dispatch predicate",
    "witnesses": {"BF16": 30, "Q2_K": 10, "Q3_K": 11},
    "shape": {"type_b": "F32", "ne00": 128, "ne11": 4},
    "old_accepted_implies_new_accepted": True,
    "checker": "source-extracted Clang 20 LLVM IR plus Alive2",
    "whole_tensor_output": "UNKNOWN",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
