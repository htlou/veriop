#!/usr/bin/env python3
"""Reproduce the s390x float-reduction counterexample from historical macros."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive = root / "alive2/build/alive2/alive-tv"
vecintrin = root / "alive2/toolchain/usr/lib/llvm-20/lib/clang/20/include/vecintrin.h"
path = "ggml/src/ggml-cpu/simd-mappings.h"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(*args, timeout=60):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=timeout, env=env)


commit = run("git", "-C", repo, "rev-parse", "50d22279")
assert commit.returncode == 0
commit = commit.stdout.strip()
intrinsics = vecintrin.read_text()
assert "vec_reve(__vector float __vec)" in intrinsics
assert "{ __vec[3], __vec[2], __vec[1], __vec[0] }" in intrinsics
shim = ("static inline float extract_lane(__attribute__((vector_size(16))) float v, int i) { return v[i]; }\n"
        "static inline __attribute__((vector_size(16))) float reverse_lanes(__attribute__((vector_size(16))) float v) { return {v[3],v[2],v[1],v[0]}; }\n"
        "#define vec_extract(v,i) extract_lane(v,i)\n#define vec_reve(v) reverse_lanes(v)\n")
source_blobs = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = run("git", "-C", repo, "show", revision + ":" + path)
    oid = run("git", "-C", repo, "rev-parse", revision + ":" + path)
    assert source.returncode == oid.returncode == 0
    oid = oid.stdout.strip()
    assert hashlib.sha1(b"blob " + str(len(source.stdout.encode())).encode() + b"\0"
                        + source.stdout.encode()).hexdigest() == oid
    source_blobs[side] = oid
    text = source.stdout
    start = text.index("#define GGML_F32x4_REDUCE(res, x)", text.index("// F32 s390x"))
    end = text.index("\n\n#define GGML_F32_VEC", start)
    macro = text[start:end]
    assert "GGML_F32_ARR >> 1" in macro and "vec_add(x[i], x[offset + i])" in macro
    assert ("vec_reve(x[0])" in macro) == (side == "new")
    prefix = "typedef float float32x4_t __attribute__((vector_size(16)));\n#define GGML_F32_ARR 8\n#define vec_add(a,b) ((a)+(b))\n"
    body = ("extern \"C\" float reduce(float a,float b,float c,float d) { "
            "float32x4_t x[8]={{a,b,c,d}}; float res; GGML_F32x4_REDUCE(res,x); return res; }\n")
    (here / f"{side}-s390.cpp").write_text("#include <vecintrin.h>\n" + prefix + macro + "\n" + body)
    built = run(clang, "-target", "s390x-linux-gnu", "-march=z15", "-fzvector",
                "-O0", "-S", "-emit-llvm", here / f"{side}-s390.cpp", "-o", here / f"{side}-s390.ll")
    assert built.returncode == 0, built.stderr
    (here / f"{side}-full.cpp").write_text(shim + prefix + macro + "\n" + body.replace("reduce(", f"{side}_reduce("))
    tail_start = macro.index("    res = vec_extract(") if side == "old" else macro.index("    float32x4_t tmp =")
    tail = macro[tail_start:macro.index("\n}", tail_start)].replace("x[0]", "v")
    tail_source = (shim + prefix + "extern \"C\" float reduce(float a,float b,float c,float d) { "
                   "float32x4_t v={a,b,c,d}; float res;\n" + tail + "\nreturn res; }\n")
    (here / f"{side}-tail.cpp").write_text(tail_source)
    built = run(clang, "-O1", "-ffp-contract=off", "-S", "-emit-llvm",
                here / f"{side}-tail.cpp", "-o", here / f"{side}-tail.ll")
    assert built.returncode == 0, built.stderr

main = ("#include <stdio.h>\nextern \"C\" float old_reduce(float,float,float,float);\n"
        "extern \"C\" float new_reduce(float,float,float,float);\n"
        "int main() { float a=33554432.0f,b=-33554432.0f,c=1.0f,d=1.0f; "
        "printf(\"old=%.9g new=%.9g\\n\",old_reduce(a,b,c,d),new_reduce(a,b,c,d)); }\n")
(here / "witness.cpp").write_text(main)
built = run(clang, "-nostdlib++", "-O0", "-ffp-contract=off", here / "old-full.cpp",
            here / "new-full.cpp", here / "witness.cpp", "-o", here / "witness")
assert built.returncode == 0, built.stderr
witness = run(here / "witness")
assert witness.returncode == 0 and witness.stdout.strip() == "old=2 new=0", witness.stdout + witness.stderr
(here / "witness.log").write_text(witness.stdout)
checked = run(alive, here / "old-tail.ll", here / "new-tail.ll", "--func=reduce",
              "--always-verify", "--fail-src-ub", "--quiet", timeout=90)
output = checked.stdout + checked.stderr
assert checked.returncode == 0 and "1 incorrect transformations" in output, output
assert "0 failed-to-prove transformations" in output and "0 Alive2 errors" in output, output
(here / "alive2-tail.log").write_text(output)
(here / "result.json").write_text(json.dumps({
    "commit": commit, "source_blobs": source_blobs,
    "scope": "s390x VXE/VXE2 GGML_F32x4_REDUCE macro, finite four-lane input and other seven registers zero",
    "verdict": "NOT_EQUIV", "witness": {"input": [33554432.0, -33554432.0, 1.0, 1.0],
                                        "old": 2.0, "new": 0.0},
    "alive2_tail": output.strip(), "s390_llvm_built": True,
}, indent=2) + "\n")
print("s390x historical macros compiled; full-macro witness old=2 new=0; Alive2 tail inequivalent")
