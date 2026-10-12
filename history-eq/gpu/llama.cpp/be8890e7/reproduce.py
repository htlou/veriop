#!/usr/bin/env python3
"""Run the historical generic Q6_K dot and repacked GEMV on identical blocks."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "be8890e7217982fc02da568bc3955e9416d0e5d0"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def source(rev, path):
    return subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env)


def function(body, signature):
    start = body.index(signature)
    opening = body.index("{", start)
    depth = 0
    for pos in range(opening, len(body)):
        if body[pos] == "{":
            depth += 1
        elif body[pos] == "}":
            depth -= 1
            if depth == 0:
                return body[start:pos + 1]
    raise ValueError(signature)


old_path = "ggml/src/ggml-cpu/quants.c"
new_path = "ggml/src/ggml-cpu/repack.cpp"
old_source = source(commit + "^", old_path)
new_source = source(commit, new_path)
old = function(old_source.decode(), "void ggml_vec_dot_q6_K_q8_K_generic(")
assert "x = vx;" in old and "y = vy;" in old
old = old.replace("x = vx;", "x = (const block_q6_K *) vx;").replace(
    "y = vy;", "y = (const block_q8_K *) vy;")
pack = function(new_source.decode(), "static block_q6_Kx8 make_block_q6_Kx8(")
new = function(new_source.decode(), "void ggml_gemv_q6_K_8x8_q8_K_generic(")
assert "sums[l] += d * aux32[l]" in old
assert "sumf[j] +=" in new
assert "out.ql[dst_offset]" in pack and "out.qh[dst_offset]" in pack

scaffold = r'''#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#define QK_K 256
#define GGML_RESTRICT __restrict__
#define UNUSED(x) (void)(x)
using ggml_half = uint16_t;
static inline float half_to_float(ggml_half bits) {
    assert(bits == 0x3c00);
    return 1.0f;
}
#define GGML_CPU_FP16_TO_FP32(x) half_to_float(x)
struct block_q6_K {
    uint8_t ql[128], qh[64];
    int8_t scales[16];
    ggml_half d;
};
struct block_q8_K {
    float d;
    int8_t qs[256];
    int16_t bsums[16];
};
struct block_q6_Kx8 {
    ggml_half d[8];
    int8_t scales[128];
    uint8_t ql[1024], qh[512];
};
static_assert(sizeof(block_q6_K) == 210);
static_assert(sizeof(block_q8_K) == 292);
static_assert(sizeof(block_q6_Kx8) == 1680);
'''

driver = r'''
static uint32_t state = 0x6b384f93u;
static uint32_t next() {
    state ^= state << 13;
    state ^= state >> 17;
    state ^= state << 5;
    return state;
}
int main() {
    for (int trial = 0; trial < 100000; trial++) {
        block_q6_K weights[8] = {};
        block_q8_K activation = {};
        float reference[8] = {}, candidate[8] = {};
        for (int row = 0; row < 8; row++) {
            weights[row].d = 0x3c00;
            for (auto &v : weights[row].ql) v = next() & 255;
            for (auto &v : weights[row].qh) v = next() & 255;
            for (auto &v : weights[row].scales) v = (int)(next() % 7) - 3;
        }
        activation.d = 0.7f;
        for (auto &v : activation.qs) v = (int)(next() % 7) - 3;
        for (int row = 0; row < 8; row++) {
            ggml_vec_dot_q6_K_q8_K_generic(256, &reference[row], 0, &weights[row], 0, &activation, 0, 1);
        }
        block_q6_Kx8 packed = make_block_q6_Kx8(weights, 8);
        ggml_gemv_q6_K_8x8_q8_K_generic(256, candidate, 0, &packed, &activation, 1, 8);
        for (int row = 0; row < 8; row++) {
            uint32_t a, b;
            memcpy(&a, &reference[row], 4);
            memcpy(&b, &candidate[row], 4);
            if (a != b) {
                printf("trial=%d row=%d old=%08x new=%08x old_float=%a new_float=%a\n",
                       trial, row, a, b, reference[row], candidate[row]);
                return 0;
            }
        }
    }
    puts("no difference in 100000 trials");
    return 1;
}
'''

cpp = scaffold + old + "\n" + pack + "\n" + new + "\n" + driver
(here / "historical.cpp").write_text(cpp)
clang = root / "alive2/toolchain/usr/bin/clang-20"
commands = {
    "clang20": [str(clang), "-x", "c++", "-std=c++17", "-O2", "-ffp-contract=off"],
    "gcc11": ["g++", "-std=c++17", "-O2", "-ffp-contract=off"],
    "gcc11_sanitize": ["g++", "-std=c++17", "-O1", "-g", "-ffp-contract=off",
                       "-fsanitize=address,undefined", "-fno-omit-frame-pointer"],
}
checks = {}
with tempfile.TemporaryDirectory(prefix="q6k-history-") as temp:
    for name, command in commands.items():
        exe = Path(temp) / name
        build = subprocess.run(command + [str(here / "historical.cpp"), "-o", str(exe)],
                               capture_output=True, text=True)
        (here / f"{name}-build.log").write_text(build.stdout + build.stderr)
        assert build.returncode == 0, build.stderr
        run = subprocess.run([str(exe)], capture_output=True, text=True,
                             env={**env, "ASAN_OPTIONS": "detect_leaks=0"})
        (here / f"{name}-run.log").write_text(run.stdout + run.stderr)
        assert run.returncode == 0, run.stderr
        checks[name] = {"command": command, "output": run.stdout.strip()}
assert len({check["output"] for check in checks.values()}) == 1
assert checks["clang20"]["output"].startswith("trial=0 row=0 old=44362ccd new=44362ccc ")
result = {"commit": commit, "source_sha256": {
    "old": hashlib.sha256(old_source).hexdigest(),
    "new": hashlib.sha256(new_source).hexdigest()},
    "extracted_sha256": hashlib.sha256(cpp.encode()).hexdigest(),
    "checks": checks}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
