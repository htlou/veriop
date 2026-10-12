#!/usr/bin/env python3
"""Check the historical Q4_K/Q5_K scale-byte rewrite with bitvectors."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

import z3


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "4064c0e3b6c27440f5d12b7caaf90b4088c28c61"
BASE = "ggml/src/ggml-vulkan/vulkan-shaders/"
NAMES = ("dequant_q4_k.comp", "dequant_q5_k.comp")


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(REPO), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


sources = {}
blobs = {}
for name in NAMES:
    for side, rev in (("old", COMMIT + "^"), ("new", COMMIT)):
        path = BASE + name
        sources[name, side] = git("show", f"{rev}:{path}").decode()
        blobs[f"{name}:{side}"] = git("rev-parse", f"{rev}:{path}").decode().strip()

archive = ROOT / "history-eq/gpu/llama.cpp/source-screening/4064c0e3.source.diff"
actual_diff = git("diff", COMMIT + "^", COMMIT, "--", *(BASE + name for name in NAMES))
assert archive.read_bytes() == actual_diff


def changed_block(source, side):
    start = "uint8_t sc;" if side == "old" else "uint scidx0 ="
    return start + source.split(start, 1)[1].split("const FLOAT_TYPE d2 =", 1)[0]


for side in ("old", "new"):
    assert changed_block(sources[NAMES[0], side], side) == changed_block(sources[NAMES[1], side], side)

old = changed_block(sources[NAMES[0], "old"], "old")
new = changed_block(sources[NAMES[0], "new"], "new")
for fragment in (
    "data_a[i].scales[is] & 63", "data_a[i].scales[is + 4] & 63",
    "data_a[i].scales[is + 4] & 0xF", "data_a[i].scales[is - 4] >> 6",
    "data_a[i].scales[is + 4] >>  4", "data_a[i].scales[is    ] >> 6",
    "data_a[i].scales[is + 1] & 63", "data_a[i].scales[is + 5] & 63",
    "data_a[i].scales[is + 5] & 0xF", "data_a[i].scales[is - 3] >> 6",
    "data_a[i].scales[is + 5] >>  4", "data_a[i].scales[is + 1] >> 6",
):
    assert fragment in old, fragment
for fragment in (
    "scidx0 = (is < 4) ? is : (is + 4)",
    "scidx1 = (is < 4) ? is : (is - 4)",
    "mbidx0 = is + 4", "mbidx1 = (is < 4) ? is + 4 : is",
    "scidx0 = (is < 4) ? is + 1 : (is + 5)",
    "scidx1 = (is < 4) ? is + 1 : (is - 3)",
    "mbidx0 = is + 5", "mbidx1 = (is < 4) ? is + 5 : is + 1",
    "scidxmask1 = (is < 4) ? 0x30 : 0xC0",
    "scidxshift1 = (is < 4) ? 0 : 2",
    "mbidxmask0 = (is < 4) ? 0xF : 0xF0",
    "mbidxshift0 = (is < 4) ? 0 : 4",
    "mbidxmask1 = (is < 4) ? 0x30 : 0xC0",
    "mbidxshift1 = (is < 4) ? 0 : 2",
):
    assert fragment in new, fragment
assert old.count("if (is < 4)") == 2
assert new.count("(data_a[ib].scales[scidx0] & 0xF)") == 2
assert new.count("(data_a[ib].scales[mbidx0] & mbidxmask0)") == 2
for name in NAMES:
    for side in ("old", "new"):
        source = sources[name, side]
        size, divisor = (32, 8) if name == NAMES[0] else (64, 16)
        assert f"layout(local_size_x = {size}" in source
        assert f"const uint il = tid / {divisor};" in source
        assert "const uint is = 2 * il;" in source

index = z3.BitVec("index", 32)
bytes_ = z3.Array("scales", z3.BitVecSort(32), z3.BitVecSort(8))
u8 = lambda i: z3.ZeroExt(24, z3.Select(bytes_, i))
low = z3.ULT(index, z3.BitVecVal(4, 32))
old_sc = z3.If(low, u8(index) & 63,
               (u8(index + 4) & 15) | ((u8(index - 4) >> 6) << 4))
old_m = z3.If(low, u8(index + 4) & 63,
              (u8(index + 4) >> 4) | ((u8(index) >> 6) << 4))
new_sc = (u8(z3.If(low, index, index + 4)) & 15) | (
    (u8(z3.If(low, index, index - 4)) & z3.If(low, z3.BitVecVal(0x30, 32), z3.BitVecVal(0xC0, 32)))
    >> z3.If(low, z3.BitVecVal(0, 32), z3.BitVecVal(2, 32)))
new_m = ((u8(index + 4) & z3.If(low, z3.BitVecVal(0x0F, 32), z3.BitVecVal(0xF0, 32)))
         >> z3.If(low, z3.BitVecVal(0, 32), z3.BitVecVal(4, 32))) | (
    (u8(z3.If(low, index + 4, index)) & z3.If(low, z3.BitVecVal(0x30, 32), z3.BitVecVal(0xC0, 32)))
    >> z3.If(low, z3.BitVecVal(0, 32), z3.BitVecVal(2, 32)))

checks = {}
for label, lhs, rhs in (("scale", old_sc, new_sc), ("minimum", old_m, new_m)):
    solver = z3.Solver()
    solver.add(z3.ULT(index, z3.BitVecVal(8, 32)), lhs != rhs)
    outcome = str(solver.check())
    assert outcome == "unsat", (label, outcome, solver.model() if outcome == "sat" else "")
    checks[label] = outcome

result = {
    "commit": COMMIT,
    "source_blobs": blobs,
    "source_diff_sha256": hashlib.sha256(actual_diff).hexdigest(),
    "checker": f"Z3 {z3.get_version_string()} bitvector old/new comparison",
    "checks": checks,
    "scope": "both historical Q4_K/Q5_K shaders; scale and minimum bytes for every legal lane and arbitrary scale bytes",
    "verdict": "EQUIV_PARTIAL",
}
(CASE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
