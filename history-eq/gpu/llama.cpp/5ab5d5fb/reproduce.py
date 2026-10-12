#!/usr/bin/env python3
"""Cross-compile the historical Q6 dot function and attempt Alive2 refinement."""

import hashlib
import json
import pathlib
import re
import subprocess

root = pathlib.Path(__file__).resolve().parents[4]
repo = root / "cuda/repos/llama.cpp"
here = pathlib.Path(__file__).resolve().parent
clang = root / "alive2/toolchain/usr/bin/clang-20"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
commit = "5ab5d5fb2"
path = "ggml/src/ggml-cpu/ggml-cpu-quants.c"


def git_blob(revision, path):
    return subprocess.check_output(["git", "show", f"{revision}:{path}"], cwd=repo)


def run(args):
    result = subprocess.run(args, capture_output=True, text=True, timeout=45)
    assert result.returncode == 0, result.stdout + result.stderr
    return result


resource = run([clang, "-print-resource-dir"]).stdout.strip()
common = git_blob(commit, "ggml/src/ggml-common.h")
impl = git_blob(commit, "ggml/src/ggml-cpu/ggml-cpu-impl.h")
assert b"typedef uint16_t ggml_half;" in common
assert b"uint8_t ql[QK_K/2]" in common and b"int16_t bsums[QK_K/16]" in common
assert b"#define ggml_vdotq_s32(a, b, c) vdotq_s32(a, b, c)" in impl

header = """#include <stdint.h>
#include <stddef.h>
#include <arm_neon.h>
#define ggml_int16x8x2_t int16x8x2_t
#define ggml_uint8x16x2_t uint8x16x2_t
#define ggml_uint8x16x4_t uint8x16x4_t
#define ggml_int8x16x2_t int8x16x2_t
#define ggml_int8x16x4_t int8x16x4_t
#define ggml_vld1q_s16_x2 vld1q_s16_x2
#define ggml_vld1q_u8_x2 vld1q_u8_x2
#define ggml_vld1q_u8_x4 vld1q_u8_x4
#define ggml_vld1q_s8_x2 vld1q_s8_x2
#define ggml_vld1q_s8_x4 vld1q_s8_x4
#define ggml_vqtbl1q_s8 vqtbl1q_s8
#define ggml_vqtbl1q_u8 vqtbl1q_u8
#define ggml_vdotq_s32(a,b,c) vdotq_s32(a,b,c)
#define QK_K 256
#define GGML_RESTRICT __restrict__
#define UNUSED(x) ((void)(x))
#define assert(x) do { if (!(x)) __builtin_trap(); } while (0)
#define memset __builtin_memset
typedef uint16_t ggml_half;
static float half_to_float(ggml_half x) { _Float16 y; __builtin_memcpy(&y, &x, 2); return (float)y; }
#define GGML_FP16_TO_FP32(x) half_to_float(x)
typedef struct { uint8_t ql[128]; uint8_t qh[64]; int8_t scales[16]; ggml_half d; } block_q6_K;
typedef struct { float d; int8_t qs[256]; int16_t bsums[16]; } block_q8_K;
_Static_assert(sizeof(block_q6_K) == 210, "q6 ABI");
_Static_assert(sizeof(block_q8_K) == 292, "q8 ABI");
"""

manifest = {"commit": subprocess.check_output(["git", "rev-parse", commit], cwd=repo).decode().strip(),
            "target": "aarch64-linux-gnu, armv8.6-a+i8mm, no SVE", "source_sha256": {},
            "relation": "four old nrc=1 calls versus one new nrc=2 call, n=256",
            "header_sha256": {"ggml-common.h": hashlib.sha256(common).hexdigest(),
                              "ggml-cpu-impl.h": hashlib.sha256(impl).hexdigest()}}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = git_blob(revision, path)
    manifest["source_sha256"][side] = hashlib.sha256(source).hexdigest()
    text = source.decode()
    start = text.index("void ggml_vec_dot_q6_K_q8_K(")
    brace = text.index("{", start)
    depth, end = 1, brace + 1
    while depth:
        depth += (text[end] == "{") - (text[end] == "}")
        end += 1
    body = text[start:end]
    assert "if (nrc == 2)" in body if side == "new" else "if (nrc == 2)" not in body
    (here / f"{side}-body.c").write_text(body + "\n")
    inlined = body.replace("void ggml_vec_dot_q6_K_q8_K(",
                           "static inline __attribute__((always_inline)) void ggml_vec_dot_q6_K_q8_K(", 1)
    if side == "old":
        wrapper = """
void compare_2x2(float *s, const block_q6_K *x, const block_q8_K *y) {
    ggml_vec_dot_q6_K_q8_K(256,s+0,0,x+0,0,y+0,0,1);
    ggml_vec_dot_q6_K_q8_K(256,s+1,0,x+1,0,y+0,0,1);
    ggml_vec_dot_q6_K_q8_K(256,s+2,0,x+0,0,y+1,0,1);
    ggml_vec_dot_q6_K_q8_K(256,s+3,0,x+1,0,y+1,0,1);
}
"""
    else:
        wrapper = """
void compare_2x2(float *s, const block_q6_K *x, const block_q8_K *y) {
    ggml_vec_dot_q6_K_q8_K(256,s,2,x,sizeof(block_q6_K),y,sizeof(block_q8_K),2);
}
"""
    (here / f"{side}.c").write_text(header + inlined + wrapper)
    run([clang, "--target=aarch64-linux-gnu", "-march=armv8.6-a+i8mm",
         "-ffreestanding", "-nostdinc", "-isystem", resource + "/include",
         "-O2", "-S", "-emit-llvm", here / f"{side}.c", "-o", here / f"{side}.ll"])
    llvm = (here / f"{side}.ll").read_text()
    assert not re.search(r"call [^\n]*@ggml_vec_dot_q6_K_q8_K", llvm)
    llvm = re.sub(r", ![A-Za-z_][A-Za-z0-9_.]* ![0-9]+", "", llvm)
    llvm = re.sub(r"(?<![.!])\b(?:noalias|nocapture)\b\s*", "", llvm)
    llvm = re.sub(r"^\s*(?:tail )?call void @llvm\.experimental\.noalias\.scope\.decl\(metadata ![0-9]+\)\s*$", "", llvm, flags=re.M)
    (here / f"{side}-normalized.ll").write_text(llvm)
    run([opt, "-passes=verify", "-disable-output", here / f"{side}-normalized.ll"])

result = subprocess.run([alive, "--func=compare_2x2", "--always-verify",
                         here / "old-normalized.ll", here / "new-normalized.ll"],
                        capture_output=True, text=True, timeout=45)
log = result.stdout + result.stderr
(here / "alive2.log").write_text(log)
manifest["alive2"] = {"returncode": result.returncode,
                      "verdict": "UNKNOWN" if "1 failed-to-prove transformations" in log else "REVIEW"}
(here / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
assert "ERROR: Timeout" in log and "1 failed-to-prove transformations" in log, log[-2000:]
print("Alive2: timeout; one failed-to-prove transformation")
