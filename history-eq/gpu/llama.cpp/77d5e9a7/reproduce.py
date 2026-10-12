#!/usr/bin/env python3
"""Check fixed-eight BF16/FP16 row conversions before/after their backend move."""

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
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, timeout=60):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=timeout, env=env)


def source(revision, path):
    shown = run(["git", "-C", repo, "show", revision + ":" + path])
    oid = run(["git", "-C", repo, "rev-parse", revision + ":" + path])
    assert shown.returncode == oid.returncode == 0
    data = shown.stdout.encode()
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid.stdout.strip()
    return shown.stdout, oid.stdout.strip()


def function(text, signature):
    start = text.index(signature)
    opening = text.index("{", start)
    depth = 0
    for end in range(opening, len(text)):
        depth += (text[end] == "{") - (text[end] == "}")
        if depth == 0:
            return text[start:end + 1]
    raise AssertionError(signature)


resolved = run(["git", "-C", repo, "rev-parse", "77d5e9a7"])
assert resolved.returncode == 0
commit = resolved.stdout.strip()
blobs = {}
helpers = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    implementation, blobs[side + "/ggml.c"] = source(revision, "ggml/src/ggml.c")
    header, blobs[side + "/ggml-impl.h"] = source(revision, "ggml/src/ggml-impl.h")
    assert "#define GGML_BF16_TO_FP32(x) ggml_compute_bf16_to_fp32(x)" in header
    helpers[side] = function(header, "static inline float ggml_compute_bf16_to_fp32(")
    row = function(implementation, "void ggml_bf16_to_fp32_row(")
    assert ("_mm256_cvtepu16_epi32" in row) == (side == "old")
    row = row.replace("void ggml_bf16_to_fp32_row(", "static inline void ggml_bf16_to_fp32_row(", 1)
    program = ("#include <stdint.h>\n#include <string.h>\n#include <immintrin.h>\n"
               "typedef struct { uint16_t bits; } ggml_bf16_t;\n" + helpers[side]
               + "\n#define GGML_BF16_TO_FP32(x) ggml_compute_bf16_to_fp32(x)\n" + row + "\n")
    arguments = ",".join(f"uint16_t a{i}" for i in range(8))
    initializer = ",".join("{a" + str(i) + "}" for i in range(8))
    for i in range(8):
        program += (f"uint32_t target_{i}({arguments}) {{ ggml_bf16_t x[8]={{{initializer}}}; "
                    f"float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; "
                    f"memcpy(&bits,&y[{i}],4); return bits; }}\n")
    (here / f"{side}.c").write_text(program)
    built = run([clang, "-O1", "-mavx2", "-mno-avx512f", "-S", "-emit-llvm",
                 here / f"{side}.c", "-o", here / f"{side}-raw.ll"])
    assert built.returncode == 0, built.stderr
    ir = (here / f"{side}-raw.ll").read_text()
    ir = re.sub(r", !(?:tbaa|llvm\.loop) !\d+", "", ir)
    (here / f"{side}.ll").write_text(ir)

assert helpers["old"] == helpers["new"]
old_ir = (here / "old.ll").read_text()
new_ir = (here / "new.ll").read_text()
for i in range(8):
    pattern = rf"(?ms)^define [^\n]*@target_{i}\([^{{]+\{{.*?^\}}"
    old = re.search(pattern, old_ir)
    new = re.search(pattern, new_ir)
    assert old and new and old.group() != new.group(), i

checks = {}
for direction, first, second in (("forward", "old", "new"), ("backward", "new", "old")):
    checked = run([alive, here / f"{first}.ll", here / f"{second}.ll",
                   "--always-verify", "--fail-src-ub", "--quiet",
                   "--src-unroll=10", "--tgt-unroll=10"])
    output = checked.stdout + checked.stderr
    assert checked.returncode == 0 and "8 correct transformations" in output, output
    assert all(x in output for x in ("0 incorrect transformations",
                                      "0 failed-to-prove transformations", "0 Alive2 errors")), output
    (here / f"{direction}.log").write_text(output)
    checks[direction] = output.strip()

backend, blobs["new/ggml-cpu.c"] = source(commit, "ggml/src/ggml-cpu/ggml-cpu.c")
old_ops, blobs["old/ops.cpp"] = source(commit + "^", "ggml/src/ggml-cpu/ops.cpp")
new_ops, blobs["new/ops.cpp"] = source(commit, "ggml/src/ggml-cpu/ops.cpp")
assert "ggml_bf16_to_fp32_row(" in old_ops and "ggml_cpu_bf16_to_fp32(" in new_ops
caller_diff = run(["git", "-C", repo, "diff", commit + "^", commit,
                   "--", "ggml/src/ggml-cpu/ops.cpp"])
assert caller_diff.returncode == 0
assert "-        ggml_bf16_to_fp32_row(" in caller_diff.stdout
assert "+        ggml_cpu_bf16_to_fp32(" in caller_diff.stdout
backend_row = function(backend, "void ggml_cpu_bf16_to_fp32(")
assert "_mm256_cvtepu16_epi32" in backend_row
backend_row = backend_row.replace("void ggml_cpu_bf16_to_fp32(",
                                  "static inline void ggml_bf16_to_fp32_row(", 1)
core_program = (here / "new.c").read_text()
start = core_program.index("static inline void ggml_bf16_to_fp32_row(")
end = core_program.index("uint32_t target_0(", start)
(here / "new-backend.c").write_text(core_program[:start] + backend_row + "\n" + core_program[end:])
built = run([clang, "-O1", "-mavx2", "-mno-avx512f", "-S", "-emit-llvm",
             here / "new-backend.c", "-o", here / "new-backend-raw.ll"])
assert built.returncode == 0, built.stderr
backend_ir = re.sub(r", !(?:tbaa|llvm\.loop) !\d+", "",
                    (here / "new-backend-raw.ll").read_text())
(here / "new-backend.ll").write_text(backend_ir)
for i in range(8):
    pattern = rf"(?ms)^define [^\n]*@target_{i}\([^{{]+\{{.*?^\}}"
    assert re.search(pattern, old_ir).group() == re.search(pattern, backend_ir).group(), i

backend_checks = {}
for direction, first, second in (("forward", "old", "new-backend"),
                                 ("backward", "new-backend", "old")):
    checked = run([alive, here / f"{first}.ll", here / f"{second}.ll",
                   "--always-verify", "--fail-src-ub", "--quiet",
                   "--src-unroll=10", "--tgt-unroll=10"])
    output = checked.stdout + checked.stderr
    assert checked.returncode == 0 and "8 correct transformations" in output, output
    assert all(x in output for x in ("0 incorrect transformations",
                                      "0 failed-to-prove transformations", "0 Alive2 errors")), output
    (here / f"backend-{direction}.log").write_text(output)
    backend_checks[direction] = output.strip()

old_cpu, blobs["old/ggml-cpu.c"] = source(commit + "^", "ggml/src/ggml-cpu/ggml-cpu.c")
cpu_diff = run(["git", "-C", repo, "diff", commit + "^", commit,
                "--", "ggml/src/ggml-cpu/ggml-cpu.c"])
assert cpu_diff.returncode == 0
assert "-        .from_float               = (ggml_from_float_t) ggml_fp32_to_fp16_row," in cpu_diff.stdout
assert "+        .from_float               = (ggml_from_float_t) ggml_cpu_fp32_to_fp16," in cpu_diff.stdout
fp16_sources = (("old", commit + "^", "ggml/src/ggml.c", "void ggml_fp32_to_fp16_row("),
                ("new-core", commit, "ggml/src/ggml.c", "void ggml_fp32_to_fp16_row("),
                ("new-backend", commit, "ggml/src/ggml-cpu/ggml-cpu.c", "void ggml_cpu_fp32_to_fp16("))
for side, revision, path, signature in fp16_sources:
    implementation, oid = source(revision, path)
    assert oid == blobs[("old" if side == "old" else "new") + "/" + path.rsplit("/", 1)[-1]]
    header, _ = source(revision, "ggml/src/ggml-impl.h")
    assert "#define GGML_COMPUTE_FP32_TO_FP16(x) _cvtss_sh(x, 0)" in header
    row = function(implementation, signature).replace(signature, "static inline void row(", 1)
    assert ("_mm256_cvtps_ph" in row) == (side != "new-core")
    program = ("#include <stdint.h>\n#include <string.h>\n#include <immintrin.h>\n"
               "typedef uint16_t ggml_fp16_t;\n#define GGML_FP32_TO_FP16(x) _cvtss_sh(x, 0)\n"
               + row + "\n")
    arguments = ",".join(f"uint32_t a{i}" for i in range(8))
    initializer = ",".join(f"a{i}" for i in range(8))
    for i in range(8):
        program += (f"uint16_t target_{i}({arguments}) {{ uint32_t bits[8]={{{initializer}}}; "
                    f"float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[{i}]; }}\n")
    (here / f"fp16-{side}.c").write_text(program)
    built = run([clang, "-O1", "-mf16c", "-mavx2", "-mno-avx512f", "-S", "-emit-llvm",
                 here / f"fp16-{side}.c", "-o", here / f"fp16-{side}.ll"])
    assert built.returncode == 0, built.stderr

fp16_old = (here / "fp16-old.ll").read_text()
fp16_backend = (here / "fp16-new-backend.ll").read_text()
for i in range(8):
    pattern = rf"(?ms)^define [^\n]*@target_{i}\([^{{]+\{{.*?^\}}"
    assert re.search(pattern, fp16_old).group() == re.search(pattern, fp16_backend).group(), i
fp16_checks = {}
for direction, first, second in (("forward", "old", "new-backend"),
                                 ("backward", "new-backend", "old")):
    checked = run([alive, here / f"fp16-{first}.ll", here / f"fp16-{second}.ll",
                   "--always-verify", "--fail-src-ub", "--quiet",
                   "--src-unroll=10", "--tgt-unroll=10"])
    output = checked.stdout + checked.stderr
    assert checked.returncode == 0 and "8 correct transformations" in output, output
    assert all(x in output for x in ("0 incorrect transformations",
                                      "0 failed-to-prove transformations", "0 Alive2 errors")), output
    (here / f"fp16-backend-{direction}.log").write_text(output)
    fp16_checks[direction] = output.strip()

core_probe = run([alive, here / "fp16-old.ll", here / "fp16-new-core.ll",
                  "--func=target_0", "--always-verify", "--fail-src-ub", "--quiet",
                  "--src-unroll=10", "--tgt-unroll=10"])
core_output = core_probe.stdout + core_probe.stderr
assert "Unknown libcall: @llvm.x86.vcvtps2ph.128" in core_output
assert "1 failed-to-prove transformations" in core_output and "0 incorrect transformations" in core_output
(here / "fp16-core-diagnostic.log").write_text(core_output)

(here / "result.json").write_text(json.dumps({
    "commit": commit, "source_blobs": blobs, "verdict": "EQUIV_PARTIAL",
    "scope": "n=8 AVX2/no-AVX512F: BF16-to-FP32 old core versus new core/backend; FP32-to-FP16 old core versus new backend; other paths unproved",
    "ir_sha256": {side: hashlib.sha256((here / f"{side}.ll").read_bytes()).hexdigest()
                  for side in ("old", "new", "new-backend")},
    "core_checks": checks, "backend_checks": backend_checks,
    "fp16_ir_sha256": {side: hashlib.sha256((here / f"fp16-{side}.ll").read_bytes()).hexdigest()
                       for side in ("old", "new-core", "new-backend")},
    "fp16_backend_checks": fp16_checks,
    "fp16_core_diagnostic": core_output.strip(),
}, indent=2) + "\n")
print("Fixed-eight conversions: BF16 32/32 and FP16 backend 16/16 Alive2 checks pass; FP16 core unproved")
