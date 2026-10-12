#!/usr/bin/env python3
"""Replay a strict-IEEE IQ2_XXS rounding counterexample from historical GLSL."""

import hashlib
import os
from pathlib import Path
import re
import subprocess


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "2c6c8df56d8a3edd657b9a295e95d469a37f0044"
BASE = "ggml/src/ggml-vulkan/vulkan-shaders/"


def historical(rev, path):
    return subprocess.check_output(
        ["git", "show", f"{rev}:{BASE}{path}"], cwd=REPO,
        env=dict(os.environ, GIT_NO_LAZY_FETCH="1"),
    ).decode()


start = "float16_t dequantFuncIQ2_XXS("
for rev, label in ((COMMIT + "^", "old"), (COMMIT, "new")):
    shader = historical(rev, "dequant_funcs_cm2.comp")
    function = start + shader.split(start, 1)[1].split("\n}\n", 1)[0] + "\n}\n"
    (CASE / f"{label}.glsl").write_text(function)
    print(label, "shader SHA256", hashlib.sha256(shader.encode()).hexdigest())
    assert "const uint idx = coordInBlock[1];" in function
    assert "const uint iqs = 8 * ib32 + ib8;" in function
    assert "const uint8_t qs = bl.block.qs[iqs];" in function
    assert "const uint signscale = pack32(u16vec2(bl16.block.qs[4*ib32+2], bl16.block.qs[4*ib32+3]));" in function
    if label == "old":
        assert "const float16_t dscale = bl.block.d * 0.25hf * (0.5hf + float16_t(signscale >> 28));" in function
        assert "float16_t ret = dscale * float16_t(g) *" in function
    else:
        assert "const float dscale = float(bl.block.d) * 0.25 * (0.5 + float(signscale >> 28));" in function
        assert "vec2 ret = dscale * g *" in function
        assert "return float16_t(ret[idx & 1]);" in function

types = historical(COMMIT, "types.comp")
print("types SHA256", hashlib.sha256(types.encode()).hexdigest())
assert "uint8_t qs[QUANT_K_IQ2_XXS/4];" in types
assert "uint16_t qs[QUANT_K_IQ2_XXS/8];" in types
grid = types.split("iq2xxs_grid_const = {", 1)[1].split("};", 1)[0]
entries = re.findall(r"uvec2\((0x[0-9a-fA-F]+), (0x[0-9a-fA-F]+)\)", grid)
assert len(entries) == 256
assert int(entries[2][0], 16) == 0x08081919
assert int(entries[2][0], 16) & 0xff == 25
# idx=0 gives ib32=ib8=iqs=0. Set qs[0]=2 and packed qs[2:4]
# so pack32(u16vec2(0, 0x1000)) is 0x10000000: scale=1, sign bit=0.
assert ((0x1000 << 16) | 0) == 0x10000000
assert (0x10000000 & 0x7f) == 0

z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
result = subprocess.check_output([str(z3), "-smt2", str(CASE / "proof.smt2")], text=True)
assert result.splitlines() == ["unsat"] * 3, result
print("strict IEEE old=0x2cb2, new=0x2cb1, equality impossible: unsat unsat unsat")
