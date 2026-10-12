#!/usr/bin/env python3
"""Alive2-check historical Hexagon FP16-tile transfer address hoisting."""

import hashlib
import json
import os
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
COMMIT = "85dde8dc4a9e"
PATH = "ggml/src/ggml-hexagon/htp/hmx-matmul-ops.c"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def blob(rev, path):
    data = git("show", f"{rev}:{path}")
    oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert oid == git("rev-parse", f"{rev}:{path}").decode().strip()
    return data.decode(), oid


sources = {}
oids = {}
for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
    sources[side], oids[side] = blob(rev, PATH)
constants, _ = blob(COMMIT, "ggml/src/ggml-hexagon/htp/hmx-utils.h")
assert "#define VLEN        (128)" in blob(COMMIT, "ggml/src/ggml-hexagon/htp/hvx-types.h")[0]
for needle in ("#define HMX_FP16_TILE_N_ROWS 32", "#define HMX_FP16_TILE_N_COLS 32",
               "#define HMX_FP16_TILE_N_ELMS 1024"):
    assert needle in constants
old = sources["old"]
new = sources["new"]
for needle in (
    "const int n_col_tiles = n_cols / HMX_FP16_TILE_N_COLS;",
    "int r0 = r / HMX_FP16_TILE_N_ROWS;",
    "int r1 = r % HMX_FP16_TILE_N_ROWS;",
    "const __fp16 *tile = vtcm_src + (r0 * n_col_tiles + c0) * HMX_FP16_TILE_N_ELMS;",
    "HVX_Vector v = ((const HVX_Vector *) tile)[r1 / 2];",
    "(dst + (r * n + c + 0))",
    "(dst + (r * n + c + n))",
):
    assert needle in old, needle
for needle in (
    "const size_t tile_row_stride = (n_cols / HMX_FP16_TILE_N_COLS) * HMX_FP16_TILE_N_ELMS;",
    "const size_t r0 = r / HMX_FP16_TILE_N_ROWS;",
    "const size_t r1 = (r % HMX_FP16_TILE_N_ROWS) / 2;",
    "const __fp16 *row_base = vtcm_src + r0 * tile_row_stride;",
    "const __fp16 *tile = row_base + c0 * HMX_FP16_TILE_N_ELMS;",
    "HVX_Vector v = ((const HVX_Vector *) tile)[r1];",
    "float *output_row_base = dst + r * n;",
    "(output_row_base + c + 0)",
    "(output_row_base + c + n)",
):
    assert needle in new, needle

common = """#include <stddef.h>
#include <stdint.h>
#define ASSUME(x) __builtin_assume(x)
"""
for side in ("old", "new"):
    if side == "old":
        code = common + """size_t src_index(int r, int c, int n_cols) {
    ASSUME(r >= 0 && r < 8192 && r % 2 == 0);
    ASSUME(n_cols >= 32 && n_cols <= 8192 && n_cols % 32 == 0);
    ASSUME(c >= 0 && c < n_cols && c % 32 == 0);
    const int n_col_tiles = n_cols / 32;
    int r0 = r / 32;
    int r1 = r % 32;
    int c0 = c / 32;
    size_t tile = (size_t)((r0 * n_col_tiles + c0) * 1024);
    return tile + (size_t)(r1 / 2) * 64;
}
size_t dst0_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    return (size_t)(r * n + c);
}
size_t dst1_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    return (size_t)(r * n + c + n);
}
"""
    else:
        code = common + """size_t src_index(int r, int c, int n_cols) {
    ASSUME(r >= 0 && r < 8192 && r % 2 == 0);
    ASSUME(n_cols >= 32 && n_cols <= 8192 && n_cols % 32 == 0);
    ASSUME(c >= 0 && c < n_cols && c % 32 == 0);
    const size_t tile_row_stride = (n_cols / 32) * 1024;
    const size_t r0 = (size_t)r / 32;
    const size_t r1 = ((size_t)r % 32) / 2;
    const size_t c0 = (size_t)c / 32;
    const size_t row_base = r0 * tile_row_stride;
    const size_t tile = row_base + c0 * 1024;
    return tile + r1 * 64;
}
size_t dst0_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    const size_t output_row_base = (size_t)r * n;
    return output_row_base + c;
}
size_t dst1_index(int r, int c, int n) {
    ASSUME(r >= 0 && r < 8192 && c >= 0 && c < 8192 && n >= 1 && n <= 8192);
    const size_t output_row_base = (size_t)r * n;
    return output_row_base + c + n;
}
"""
    (HERE / f"{side}.c").write_text(code)
    subprocess.run([str(CLANG), "-O2", "-S", "-emit-llvm", str(HERE / f"{side}.c"),
                    "-o", str(HERE / f"{side}.ll")], check=True)

checks = {}
for name in ("src_index", "dst0_index", "dst1_index"):
    checks[name] = {}
    for direction, reference, candidate in (("old_to_new", "old", "new"),
                                            ("new_to_old", "new", "old")):
        run = subprocess.run([str(ALIVE), "--always-verify", "--smt-to=60000", f"--func={name}",
                              str(HERE / f"{reference}.ll"), str(HERE / f"{candidate}.ll")],
                             capture_output=True, text=True, timeout=75, check=True)
        (HERE / f"alive2-{name}-{direction}.log").write_text(run.stdout + run.stderr)
        assert "1 correct transformations" in run.stdout and "0 failed-to-prove" in run.stdout, (name, direction, run.stdout)
        checks[name][direction] = "correct"

result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "parent": git("rev-parse", f"{COMMIT}^").decode().strip(),
          "exact_source_oids": oids, "checks": checks,
          "preconditions": "r even and <8192; n_cols multiple of 32 and <=8192; c a valid tile start; n<=8192",
          "verdict": "EQUIV_PARTIAL for three transfer-output address expressions"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
