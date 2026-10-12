#!/usr/bin/env python3
"""Source-lock the changed Vulkan dispatch predicate and compare it."""

import pathlib
import re
import subprocess

root = pathlib.Path(__file__).resolve().parents[4]
repo = root / "cuda/repos/llama.cpp"
here = pathlib.Path(__file__).resolve().parent
path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
commit = "c7bda030e"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"


def run(args, **kwargs):
    return subprocess.run(args, capture_output=True, text=True, **kwargs)


exprs = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = subprocess.check_output(["git", "show", f"{revision}:{path}"], cwd=repo).decode()
    snippet = re.search(r"auto is_dense_kv_cache = \[\]\(const ggml_tensor \* t\) \{(.*?)\n    \};", source, re.S)
    assert snippet and source.count("auto is_dense_kv_cache =") == 1
    (here / f"{side}-source.txt").write_text(snippet.group(0) + "\n")
    expr = snippet.group(1).split("return ", 1)[1].rsplit(";", 1)[0]
    expr = expr.replace("ggml_type_size(t->type)", "type_size")
    expr = expr.replace("ggml_row_size(t->type, t->ne[0])", "row_size")
    expr = re.sub(r"t->nb\[(\d)\]", r"nb\1", expr)
    expr = re.sub(r"t->ne\[(\d)\]", r"ne\1", expr)
    assert "t->" not in expr and "ggml_" not in expr
    exprs[side] = " ".join(expr.split())
    (here / f"{side}.c").write_text(
        "#include <stdint.h>\n"
        "int pred(uint64_t nb0, uint64_t nb1, uint64_t nb2, uint64_t nb3,\n"
        "         uint64_t ne1, uint64_t ne2, uint64_t ne3,\n"
        "         uint64_t type_size, uint64_t row_size) {\n"
        f"    return {exprs[side]};\n}}\n"
    )
    result = run([clang, "-std=c11", "-O1", "-S", "-emit-llvm", here / f"{side}.c", "-o", here / f"{side}.ll"])
    assert result.returncode == 0, result.stderr

assert exprs["new"] == exprs["old"].replace(
    "nb3 == nb1 * ne1", "(ne3 == 1 || nb3 == nb1 * ne1)")

result = run([alive, "--func=pred", "--always-verify", here / "old.ll", here / "new.ll"])
(here / "alive2.log").write_text(result.stdout + result.stderr)
assert "Transformation doesn't verify!" in result.stdout and "Value mismatch" in result.stdout

signature = (
    "uint64_t nb0, uint64_t nb1, uint64_t nb2, uint64_t nb3,\n"
    "         uint64_t ne1, uint64_t ne2, uint64_t ne3,\n"
    "         uint64_t type_size, uint64_t row_size"
)
old_expr, new_expr = exprs["old"], exprs["new"]
(here / "implication.c").write_text(
    "#include <stdint.h>\n"
    f"int implication({signature}) {{\n"
    f"    return !({old_expr}) || ({new_expr});\n}}\n"
)
(here / "true.c").write_text(
    "#include <stdint.h>\n"
    f"int implication({signature}) {{ return 1; }}\n"
)
for side in ("implication", "true"):
    result = run([clang, "-std=c11", "-O0", "-Xclang", "-disable-O0-optnone", "-S", "-emit-llvm",
                  here / f"{side}.c", "-o", here / f"{side}.ll"])
    assert result.returncode == 0, result.stderr
result = run([alive, "--func=implication", "--always-verify",
              here / "true.ll", here / "implication.ll"])
(here / "implication-alive2.log").write_text(result.stdout + result.stderr)
assert "Transformation seems to be correct!" in result.stdout, result.stdout + result.stderr

driver = (
    "#include <stdio.h>\n"
    "#define pred pred_old\n#include \"old.c\"\n#undef pred\n"
    "#define pred pred_new\n#include \"new.c\"\n#undef pred\n"
    "int main(void) {\n"
    "    int old = pred_old(18,18,18,18,64,1,1,18,18);\n"
    "    int new = pred_new(18,18,18,18,64,1,1,18,18);\n"
    "    printf(\"old=%d new=%d\\n\",old,new);\n"
    "    return old != 0 || new != 1;\n}\n"
)
(here / "witness.c").write_text(driver)
binary = pathlib.Path("/tmp/llama-c7bda030-witness")
result = run([clang, "-std=c11", "-O1", here / "witness.c", "-o", binary])
assert result.returncode == 0, result.stderr
result = run([binary])
(here / "witness.log").write_text(result.stdout + result.stderr)
assert result.returncode == 0 and result.stdout == "old=0 new=1\n"
print(result.stdout, end="")
