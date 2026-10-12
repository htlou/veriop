#!/usr/bin/env python3
"""Cross-compile the historical RISC-V FP16 conversion and probe Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
resource = root / "alive2/toolchain/usr/lib/llvm-20/lib/clang/20/include"
alive = root / "alive2/build/alive2/alive-tv"
commit = "ca4844062b3f0679a39b76b2fe95ba87cd6fb00d"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    return subprocess.run([str(arg) for arg in args], capture_output=True, text=True,
                          timeout=60, env=env)


def source(revision, path):
    shown = run(["git", "-C", repo, "show", revision + ":" + path])
    oid = run(["git", "-C", repo, "rev-parse", revision + ":" + path])
    assert shown.returncode == oid.returncode == 0
    data = shown.stdout.encode()
    digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert digest == oid.stdout.strip()
    return shown.stdout, digest


def function(text, signature):
    start = text.index(signature)
    opening = text.index("{", start)
    depth = 0
    for end in range(opening, len(text)):
        depth += (text[end] == "{") - (text[end] == "}")
        if depth == 0:
            return text[start:end + 1]
    raise AssertionError(signature)


changed = run(["git", "-C", repo, "diff", "--name-only", commit + "^", commit])
assert changed.returncode == 0
assert changed.stdout.splitlines() == ["ggml/src/ggml-cpu/ggml-cpu.c"]

result = {"commit": commit, "verdict": "UNSUPPORTED", "checker_status": "checked",
          "checker": "Alive2", "scope": "RISC-V RVV/Zvfh FP16-to-FP32 row, n=8; one symbolic FP16 word repeated, first output bits",
          "source_blobs": {}, "compilation": {}}
for side, revision in (("old", commit + "^"), ("new", commit)):
    implementation, result["source_blobs"][side + "/ggml-cpu.c"] = source(
        revision, "ggml/src/ggml-cpu/ggml-cpu.c")
    mappings, result["source_blobs"][side + "/simd-mappings.h"] = source(
        revision, "ggml/src/ggml-cpu/simd-mappings.h")
    assert "#define GGML_CPU_FP16_TO_FP32(x) GGML_CPU_COMPUTE_FP16_TO_FP32(x)" in mappings
    assert "#define GGML_CPU_COMPUTE_FP16_TO_FP32(x) riscv_compute_fp16_to_fp32(x)" in mappings
    scalar = function(mappings, "static inline float riscv_compute_fp16_to_fp32(")
    row = function(implementation, "void ggml_cpu_fp16_to_fp32(")
    assert ("__riscv_vfwcvt_f_f_v_f32m2" in row) == (side == "new")
    program = ("#include <stdint.h>\n#include <riscv_vector.h>\n"
               "#define memcpy __builtin_memcpy\ntypedef uint16_t ggml_fp16_t;\n"
               + scalar + "\n#define GGML_CPU_FP16_TO_FP32(x) riscv_compute_fp16_to_fp32(x)\n"
               + row + "\nuint32_t target(uint16_t a) { uint16_t x[8]={a,a,a,a,a,a,a,a}; "
               "float y[8]; ggml_cpu_fp16_to_fp32(x,y,8); uint32_t bits; "
               "memcpy(&bits,&y[0],4); return bits; }\n")
    (here / f"{side}.c").write_text(program)
    options = [clang, "--target=riscv64-unknown-linux-gnu", "-march=rv64gcv_zvfh",
               "-mabi=lp64d", "-O1", "-ffreestanding", "-nostdinc", "-isystem", resource]
    ir_build = run(options + ["-S", "-emit-llvm", here / f"{side}.c", "-o", here / f"{side}-raw.ll"])
    object_build = run(options + ["-c", here / f"{side}.c", "-o", here / f"{side}.o"])
    assert ir_build.returncode == object_build.returncode == 0, ir_build.stderr + object_build.stderr
    raw = (here / f"{side}-raw.ll").read_text()
    normalized = re.sub(r"^!llvm\.module\.flags = .*\n", "", raw, flags=re.M)
    normalized = re.sub(r", !(?:tbaa|llvm\.loop) !\d+", "", normalized)
    (here / f"{side}.ll").write_text(normalized)
    result["compilation"][side] = {
        "ir_sha256": hashlib.sha256(raw.encode()).hexdigest(),
        "object_sha256": hashlib.sha256((here / f"{side}.o").read_bytes()).hexdigest()}

assert result["source_blobs"]["old/simd-mappings.h"] == result["source_blobs"]["new/simd-mappings.h"]
assert "@llvm.riscv.vfwcvt.f.f.v" in (here / "new.ll").read_text()
assert "@llvm.riscv.vfwcvt.f.f.v" not in (here / "old.ll").read_text()
checked = run([alive, here / "old.ll", here / "new.ll", "--func=target",
               "--always-verify", "--fail-src-ub", "--quiet",
               "--src-unroll=12", "--tgt-unroll=12"])
diagnostic = checked.stdout + checked.stderr
assert checked.returncode != 0
assert "Unsupported type: <vscale x 4 x half>" in diagnostic
assert "0 incorrect transformations" in diagnostic and "1 Alive2 errors" in diagnostic
(here / "alive2.log").write_text(diagnostic)
result["alive2"] = diagnostic.strip()
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("UNSUPPORTED: both historical RISC-V objects build; Alive2 rejects scalable half vectors")
