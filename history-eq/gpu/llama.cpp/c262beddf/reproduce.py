#!/usr/bin/env python3
"""Check the historical CUDA vector-attention dispatch predicate with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "c262beddf29f3f3be5bbbf167b56029a19876956"
path = "ggml/src/ggml-cuda/fattn.cu"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True, env=env)


expressions = {}
sources = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = subprocess.check_output(["git", "-C", str(repo), "show", f"{revision}:{path}"], env=env)
    sources[side] = hashlib.sha256(source).hexdigest()
    match = re.search(r"const bool can_use_vector_kernel = ([^;]+);", source.decode())
    assert match and source.decode().count("const bool can_use_vector_kernel =") == 1
    assert "Q->ne[1] == 1 && can_use_vector_kernel && !mma_faster_for_bs1" in source.decode()
    (here / f"{side}-source.txt").write_text(match.group(0) + "\n")
    expr = match.group(1).replace("Q->ne[0]", "head_dim")
    expr = expr.replace("warp_size", "32").replace("GGML_PREC_DEFAULT", "0")
    assert "Q->" not in expr and "GGML_" not in expr
    expressions[side] = expr
    (here / f"{side}.c").write_text(
        "#include <stdint.h>\n"
        "int gate(int64_t head_dim, int64_t query_len, int prec, int mma_faster_for_bs1) {\n"
        f"    const int can_use_vector_kernel = {expr};\n"
        "    return query_len == 1 && can_use_vector_kernel && !mma_faster_for_bs1;\n"
        "}\n"
    )
    compiled = run([clang, "-std=c11", "-O1", "-S", "-emit-llvm",
                    here / f"{side}.c", "-o", here / f"{side}.ll"])
    assert compiled.returncode == 0, compiled.stderr

assert expressions["old"] == "(head_dim % (2*32) == 0) && (prec == 0 || head_dim <= 128)"
assert expressions["new"] == "head_dim % (2*32) == 0"

check = run([alive, "--func=gate", "--always-verify", here / "old.ll", here / "new.ll"])
(here / "alive2.log").write_text(check.stdout + check.stderr)
assert "Transformation doesn't verify!" in check.stdout and "Value mismatch" in check.stdout

old = expressions["old"]
new = expressions["new"]
signature = "int64_t head_dim, int64_t query_len, int prec, int mma_faster_for_bs1"
body = (f"#include <stdint.h>\nint implication({signature}) {{\n"
        f"  const int old = query_len == 1 && ({old}) && !mma_faster_for_bs1;\n"
        f"  const int new = query_len == 1 && ({new}) && !mma_faster_for_bs1;\n"
        "  return !old || new;\n}\n")
(here / "implication.c").write_text(body)
(here / "true.c").write_text(f"#include <stdint.h>\nint implication({signature}) {{ return 1; }}\n")
for name in ("implication", "true"):
    compiled = run([clang, "-std=c11", "-O0", "-Xclang", "-disable-O0-optnone",
                    "-S", "-emit-llvm", here / f"{name}.c", "-o", here / f"{name}.ll"])
    assert compiled.returncode == 0, compiled.stderr
check = run([alive, "--func=implication", "--always-verify",
             here / "true.ll", here / "implication.ll"])
(here / "implication-alive2.log").write_text(check.stdout + check.stderr)
assert "Transformation seems to be correct!" in check.stdout, check.stdout + check.stderr

driver = ("#include <stdio.h>\n"
          "#define gate old_gate\n#include \"old.c\"\n#undef gate\n"
          "#define gate new_gate\n#include \"new.c\"\n#undef gate\n"
          "int main(void) {\n"
          "  int old = old_gate(256, 1, 1, 0);\n"
          "  int new = new_gate(256, 1, 1, 0);\n"
          "  printf(\"old=%d new=%d\\n\", old, new);\n"
          "  return old != 0 || new != 1;\n}\n")
(here / "witness.c").write_text(driver)
with tempfile.TemporaryDirectory(prefix="fattn-gate-") as temp:
    exe = Path(temp) / "witness"
    compiled = run([clang, "-std=c11", "-O1", here / "witness.c", "-o", exe])
    assert compiled.returncode == 0, compiled.stderr
    witness = run([exe])
(here / "witness.log").write_text(witness.stdout + witness.stderr)
assert witness.returncode == 0 and witness.stdout == "old=0 new=1\n"

result = {"commit": commit, "source_sha256": sources, "warp_size": 32,
          "precision_encoding": {"GGML_PREC_DEFAULT": 0, "GGML_PREC_F32": 1},
          "alive2_predicate": "value mismatch", "alive2_old_implies_new": "proved",
          "witness": {"head_dim": 256, "query_len": 1, "prec": 1,
                      "mma_faster_for_bs1": 0, "old": 0, "new": 1}}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
