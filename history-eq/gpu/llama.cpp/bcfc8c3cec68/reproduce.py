#!/usr/bin/env python3
"""Reproduce the one-row VTCM early-return regression in exact Hexagon C bodies."""

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
COMMIT = "bcfc8c3cec68"
PATH = "ggml/src/ggml-hexagon/htp/act-ops.c"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def blob(rev, path):
    data = git("show", f"{rev}:{path}")
    oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert oid == git("rev-parse", f"{rev}:{path}").decode().strip()
    return data.decode(), oid


def function(source, name):
    start = source.index(f"static void {name}(")
    opening = source.index("{", start)
    depth = 0
    for end in range(opening, len(source)):
        depth += (source[end] == "{") - (source[end] == "}")
        if depth == 0:
            return source[start:end + 1]
    raise AssertionError(name)


def preamble(source):
    lines = source[source.index("#define htp_act_preamble2"):].splitlines()
    selected = []
    for line in lines:
        selected.append(line)
        if not line.rstrip().endswith("\\"):
            break
    return "\n".join(selected)


sources = {}
oids = {}
for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
    sources[side], oids[side] = blob(rev, PATH)
assert preamble(sources["old"]) == preamble(sources["new"])
assert "#define VLEN        (128)" in blob(COMMIT, "ggml/src/ggml-hexagon/htp/hvx-utils.h")[0]
assert "unsigned int vtcm_size = 8 * 1024 * 1024;" in blob(COMMIT, "ggml/src/ggml-hexagon/htp/main.c")[0]

for side in ("old", "new"):
    src = sources[side]
    for needle in (
        "size_t vtcm_row_per_thread = (octx->ctx->vtcm_size)/ (n_threads* spad_size_per_row);",
        "if(vtcm_row_per_thread ==0){",
        "octx->src0_spad.size_per_thread = src0_row_size_aligned * vtcm_row_per_thread;",
        "worker_pool_run_func(octx->ctx->worker_pool, act_op_func, octx, n_jobs);",
        "return err;",
    ):
        assert needle in src, (side, needle)
old = function(sources["old"], "unary_silu_fp32_per_thread")
new = function(sources["new"], "unary_silu_fp32_per_thread")
assert "hvx_mul_f32_opt((const uint8_t *) src0, src0_spad_data, (uint8_t *) dst, ne0);" in old
assert "const int BLOCK = src0_spad_half_size / src0_row_size_aligned;" in new
assert "if (BLOCK == 0)" in new and new.index("if (BLOCK == 0)") < new.index("dma_queue_push_ddr_to_vtcm")
assert "dma_queue_push_vtcm_to_ddr(dma_queue," in new
mul_source = blob(COMMIT, "ggml/src/ggml-hexagon/htp/hvx-utils.c")[0]
assert "int step_of_4 = num_elems >> 7;" in mul_source
assert "*(HVX_Vector *) dst_curr = Q6_Vsf_equals_Vqf32(v1);" in mul_source

template = (HERE / "native_harness.c").read_text()
for side, body in (("old", old), ("new", new)):
    call = ("unary_silu_fp32_per_thread(&src, &dst, NULL, &src_spad, &dst_spad, "
            "n_threads, 0, 1" + (", &queue" if side == "new" else "") + ");")
    code = template.replace("/*SOURCE_MACRO*/", preamble(sources[side]))
    code = code.replace("/*SOURCE_FUNCTION*/", body).replace("/*SOURCE_CALL*/", call)
    source = HERE / f"{side}.c"
    source.write_text(code)
    binary = HERE / f"{side}.native"
    build = subprocess.run([str(CLANG), "-std=c11", "-O0", str(source), "-o", str(binary)],
                           capture_output=True, text=True)
    assert build.returncode == 0, (side, build.stderr)
    run = subprocess.run([str(binary)], capture_output=True, text=True, check=True)
    (HERE / f"{side}.log").write_text(run.stdout)
    expected = ("rows=1 block=0 mul_calls=1 dst0=0.5\n" if side == "old" else
                "rows=1 block=0 mul_calls=0 dst0=-9\n")
    assert run.stdout == expected, (side, run.stdout)
    binary.unlink()

for side in ("old", "new"):
    gate = """#include <stdint.h>
unsigned write_marker(unsigned rows) {
    if (rows > 3 || rows == 0) return 0;
"""
    if side == "new":
        gate += "    unsigned size_per_thread = 128u * rows;\n"
        gate += "    unsigned block = (size_per_thread / 2u) / 128u;\n"
        gate += "    if (block == 0) return 0;\n"
    gate += "    return 1;\n}\n"
    (HERE / f"{side}-gate.c").write_text(gate)
    subprocess.run([str(CLANG), "-O2", "-S", "-emit-llvm", str(HERE / f"{side}-gate.c"),
                    "-o", str(HERE / f"{side}-gate.ll")], check=True)
run = subprocess.run([str(ALIVE), "--always-verify", "--func=write_marker",
                      str(HERE / "old-gate.ll"), str(HERE / "new-gate.ll")],
                     capture_output=True, text=True, timeout=60, check=True)
assert "1 incorrect transformations" in run.stdout, run.stdout
(HERE / "alive2-gate.log").write_text(run.stdout)

result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "parent": git("rev-parse", f"{COMMIT}^").decode().strip(),
          "exact_act_source_oids": oids,
          "scenario": "8 MiB VTCM, four threads, 512 KiB FP32 row, four rows",
          "old": "successful gate; extracted helper calls output writer and changes dst0 -9 to 0.5 under scalar stubs",
          "new": "successful outer gate; extracted helper BLOCK=0 returns before DMA/output writer, dst0 stays -9",
          "alive2": "source-locked write-marker projection is NOT_EQUIV",
          "verdict": "NOT_EQUIV for activation destination write footprint in one-row-per-thread configuration"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
