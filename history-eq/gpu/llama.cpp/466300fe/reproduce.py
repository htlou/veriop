#!/usr/bin/env python3
"""Source-lock Q4_K/Q5_K extraction lemmas and replay their bitvector proof."""

import hashlib
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "466300fe1416de2802b710215817db28d4496f41"
BASE = "ggml/src/ggml-vulkan/vulkan-shaders/"


def historical(rev, name):
    return subprocess.check_output(
        ["git", "show", f"{rev}:{BASE}{name}"], cwd=REPO,
        env=dict(os.environ, GIT_NO_LAZY_FETCH="1"),
    ).decode()


def function(source, name):
    start = f"float16_t dequantFunc{name}("
    return start + source.split(start, 1)[1].split("\n}\n", 1)[0] + "\n}\n"


for revision, label in ((COMMIT + "^", "old"), (COMMIT, "new")):
    shader = historical(revision, "dequant_funcs_cm2.comp")
    types = historical(revision, "types.comp")
    print(label, "shader SHA256", hashlib.sha256(shader.encode()).hexdigest())
    print(label, "types SHA256", hashlib.sha256(types.encode()).hexdigest())
    assert "uint8_t scales[3*QUANT_K_Q4_K/64];" in types
    assert "uint8_t scales[12];" in types
    for name in ("Q4_K", "Q5_K"):
        body = function(shader, name)
        (CASE / f"{name.lower()}-{label}.glsl").write_text(body)
        assert "const uint is = (idx & 0xE0) >> 5;" in body
        assert "const uint b = (idx & 0x20) >> 5;" in body
        if label == "old":
            assert "sc    = uint8_t((bl.block.scales[scidx0] & 0xF)" in body
            assert "mbyte = uint8_t(((bl.block.scales[mbidx0] & mbidxmask0)" in body
            assert "qs = unpack8(qs)[idx & 1];" in body
        else:
            assert "uvec4 v = bl128.block." in body
            assert "sc_hi = (scale8 & 0x0F0F0F0F) | ((scale0 & 0xC0C0C0C0) >> 2);" in body
            assert "mb_hi = ((scale8 & 0xF0F0F0F0) >> 4) | ((scale4 & 0xC0C0C0C0) >> 2);" in body
            assert "sc &= 0x3F;" in body and "mbyte &= 0x3F;" in body
    if label == "new":
        assert "struct block_q4_K_packed128" in types
        assert "struct block_q5_K_packed128" in types

assert "qs = (qs >> (b * 4 + 8 * (idx & 1))) & 0xF;" in (CASE / "q4_k-new.glsl").read_text()
assert "qh = ((qh >> is) & 0x101) << 4;" in (CASE / "q5_k-new.glsl").read_text()
assert "qs = unpack8(qs | qh)[idx & 1];" in (CASE / "q5_k-new.glsl").read_text()

z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
result = subprocess.check_output([str(z3), "-smt2", str(CASE / "proof.smt2")], text=True)
assert result.splitlines() == ["unsat"] * 4, result
print("old/new scale, min-byte, Q4 nibble, Q5 value differences: unsat unsat unsat unsat")
