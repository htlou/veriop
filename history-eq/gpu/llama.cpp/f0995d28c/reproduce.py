#!/usr/bin/env python3
"""Check the historical Metal FlashAttention vector dispatch with Alive2."""

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
commit = "f0995d28ce3d15095b6845d94ce4465e46575873"
path = "ggml/src/ggml-metal/ggml-metal.m"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True, env=env)


exprs = {}
sources = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env)
    sources[side] = hashlib.sha256(source).hexdigest()
    body = source.decode()
    match = re.search(r"if \((ne01 >= (?:4|20) \|\| \(ne00%128 != 0 && ne00 != 96 && ne00 != 192 && ne00 != 576\))\) \{", body)
    assert match and len(re.findall(r"if \(ne01 >= (?:4|20) \|\| \(ne00%128", body)) == 1
    assert "} else {\n                    use_vec_kernel = true;" in body[match.end():match.end() + 30000]
    exprs[side] = match.group(1)
    (here / f"{side}-source.txt").write_text(match.group(0) + "\n")
    (here / f"{side}.c").write_text(
        "#include <stdint.h>\n"
        "int vector_gate(int64_t ne00, int64_t ne01) {\n"
        f"    return !({exprs[side]});\n"
        "}\n")
    compiled = run([clang, "-std=c11", "-O1", "-S", "-emit-llvm",
                    here / f"{side}.c", "-o", here / f"{side}.ll"])
    assert compiled.returncode == 0, compiled.stderr

assert exprs["old"].replace("ne01 >= 4", "ne01 >= 20") == exprs["new"]
check = run([alive, "--func=vector_gate", "--always-verify", here / "old.ll", here / "new.ll"])
(here / "alive2.log").write_text(check.stdout + check.stderr)
assert "Transformation doesn't verify!" in check.stdout and "Value mismatch" in check.stdout

signature = "int relation(int64_t ne00, int64_t ne01)"
old, new = exprs["old"], exprs["new"]
(here / "relation.c").write_text(
    "#include <stdint.h>\n" + signature + " {\n"
    f"    const int old_vec = !({old});\n"
    f"    const int new_vec = !({new});\n"
    "    return !old_vec || new_vec;\n}\n")
(here / "true.c").write_text("#include <stdint.h>\n" + signature + " { return 1; }\n")
for name in ("relation", "true"):
    compiled = run([clang, "-std=c11", "-O0", "-Xclang", "-disable-O0-optnone",
                    "-S", "-emit-llvm", here / f"{name}.c", "-o", here / f"{name}.ll"])
    assert compiled.returncode == 0, compiled.stderr
check = run([alive, "--func=relation", "--always-verify", here / "true.ll", here / "relation.ll"])
(here / "relation-alive2.log").write_text(check.stdout + check.stderr)
assert "Transformation seems to be correct!" in check.stdout, check.stdout + check.stderr

(here / "witness.c").write_text(
    "#include <stdio.h>\n"
    "#define vector_gate old_gate\n#include \"old.c\"\n#undef vector_gate\n"
    "#define vector_gate new_gate\n#include \"new.c\"\n#undef vector_gate\n"
    "int main(void) {\n"
    "  int old = old_gate(128, 4), new = new_gate(128, 4);\n"
    "  int at20 = old_gate(128, 20) + new_gate(128, 20);\n"
    "  int below4 = old_gate(128, 3) + new_gate(128, 3);\n"
    "  printf(\"old=%d new=%d at20=%d below4=%d\\n\", old, new, at20, below4);\n"
    "  return old != 0 || new != 1 || at20 != 0 || below4 != 2;\n}\n")
with tempfile.TemporaryDirectory(prefix="metal-gate-") as temp:
    exe = Path(temp) / "witness"
    compiled = run([clang, "-std=c11", "-O1", here / "witness.c", "-o", exe])
    assert compiled.returncode == 0, compiled.stderr
    witness = run([exe])
(here / "witness.log").write_text(witness.stdout + witness.stderr)
assert witness.returncode == 0 and witness.stdout == "old=0 new=1 at20=0 below4=2\n"

result = {"commit": commit, "source_sha256": sources,
          "alive2_vector_gate_equality": "counterexample",
          "alive2_old_vector_implies_new_vector": "proved",
          "witness": {"head_dim": 128, "query_batch": 4, "old": 0, "new": 1},
          "boundary_controls": {"batch_20": [0, 0], "batch_3": [1, 1]}}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
