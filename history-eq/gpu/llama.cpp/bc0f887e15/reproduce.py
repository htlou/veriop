#!/usr/bin/env python3
"""Check the historical CANN MUL_MAT support predicate at a Q8_0 block."""

import json
import re
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "bc0f887e15"
PATH = "ggml/src/ggml-cann.cpp"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"


def blob(rev, path):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{path}"], text=True
    )


assert "#define QK8_0 32" in blob(COMMIT, "ggml/src/ggml-common.h")
summary = {}
for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
    src = blob(rev, PATH)
    start = src.index("case GGML_OP_MUL_MAT: {", src.index("ggml_backend_cann_supports_op("))
    end = src.index("case GGML_OP_MUL_MAT_ID:", start)
    region = src[start:end]
    switch = region[region.index("switch (op->src[0]->type)"):region.rfind("}")]
    assert switch.count("case GGML_TYPE_Q8_0:") == 1
    assert switch.count("case GGML_TYPE_Q4_0:") == 1
    assert ("if (op->src[0]->ne[0]-1 > QK8_0)" in switch) == (side == "old")
    switch = switch.replace("op->src[0]->type", "type").replace("op->src[0]->ne[0]", "ne0")
    scaffold = """#include <stdbool.h>
#include <stdint.h>
#define GGML_TYPE_F16 1
#define GGML_TYPE_F32 2
#define GGML_TYPE_Q8_0 3
#define GGML_TYPE_Q4_0 4
#define QK8_0 32
bool support_matmul(uint32_t type, int64_t ne0) {
"""
    code = (scaffold + switch + "\n}\n"
            "bool support_q8_0_32(void) { return support_matmul(GGML_TYPE_Q8_0, 32); }\n")
    (HERE / f"{side}.c").write_text(code)
    subprocess.run([str(CLANG), "-O2", "-S", "-emit-llvm", str(HERE / f"{side}.c"),
                    "-o", str(HERE / f"{side}.ll")], check=True)
    summary[side] = {"branch": "GGML_OP_MUL_MAT / GGML_TYPE_Q8_0 / ne0=32",
                     "expected_support": side == "new"}

for func in ("support_matmul", "support_q8_0_32"):
    run = subprocess.run([str(ALIVE), "--always-verify", f"--func={func}",
                          str(HERE / "old.ll"), str(HERE / "new.ll")],
                         capture_output=True, text=True, timeout=60, check=True)
    assert "1 incorrect transformations" in run.stdout, run.stdout[-900:]
    (HERE / f"alive2-{func}.log").write_text(run.stdout)

result = {
    "commit": subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True).strip(),
    "verdict": "NOT_EQUIV for CANN supports_op on MUL_MAT/Q8_0/ne0=32",
    "old_support": False,
    "new_support": True,
    "checker": "source-extracted branch compiled with Clang 20; Alive2 incorrect transformation",
    "whole_tensor_output": "UNKNOWN",
    "quantize_float_to_q4_0_kernel": "NOT_CHECKED",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
