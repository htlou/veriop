#!/usr/bin/env python3
"""Check the IQ4_XS dequantize4 byte-packing rewrite in historical GLSL."""

import hashlib
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "cuda/repos/llama.cpp"
CASE = Path(__file__).resolve().parent
COMMIT = "cb999704fb5c5dc1763f2e692887229c809e14d7"
SHADERS = "ggml/src/ggml-vulkan/vulkan-shaders/"


def historical(rev, name):
    env = dict(os.environ, GIT_NO_LAZY_FETCH="1")
    return subprocess.check_output(
        ["git", "show", f"{rev}:{SHADERS}{name}"], cwd=REPO, env=env
    ).decode()


def dequantize4(source):
    section = source.split("#if defined(DATA_A_IQ4_XS)\n", 1)[1].split("#endif", 1)[0]
    return section.split("vec4 dequantize4(uint ib, uint iqs, uint a_offset) {", 1)[1]


old = historical(COMMIT + "^", "dequant_funcs.glsl")
new = historical(COMMIT, "dequant_funcs.glsl")
old_fn, new_fn = dequantize4(old), dequantize4(new)
old_load = """u8vec4 qs = u8vec4(
        data_a[a_offset + ib].qs[iq + 0],
        data_a[a_offset + ib].qs[iq + 1],
        data_a[a_offset + ib].qs[iq + 2],
        data_a[a_offset + ib].qs[iq + 3]
    );
    qs = (qs >> qshift) & uint8_t(0xF);"""
new_load = """const u8vec4 qs = unpack8((data_a_packed32[a_offset + ib].qs[iq/4] >> qshift) & 0x0F0F0F0F);"""
assert old_fn.count(old_load) == new_fn.count(new_load) == 1
assert old_fn.replace(old_load, new_load) == new_fn, "other dequantize4 code changed"
for formula in (
    "const uint ib32 = iqs / 32;",
    "const uint iq = 16 * ib32 + (iqs % 16);",
    "const uint qshift = (iqs & 16) >> 2;",
):
    assert formula in old_fn and formula in new_fn

types = historical(COMMIT, "types.glsl")
old_types = historical(COMMIT + "^", "types.glsl")
caller = historical(COMMIT, "copy_from_quant.comp")
assert "#define QUANT_K_IQ4_XS 256" in types
assert "#define QUANT_R_IQ4_XS 1" in types
assert "uint8_t qs[QUANT_K_IQ4_XS/2];" in types
assert "uint32_t qs[QUANT_K_IQ4_XS/8];" in types
assert "#define QUANT_K QUANT_K_IQ4_XS" in types
assert "#define QUANT_R QUANT_R_IQ4_XS" in types
assert "#define A_TYPE_PACKED32 block_iq4_xs_packed32" in types
assert (old_types.split("struct block_iq4_xs\n", 1)[1].split("};", 1)[0]
        == types.split("struct block_iq4_xs\n", 1)[1].split("};", 1)[0])
assert "for (int j = 0; j < QUANT_K; j += 4)" in caller
assert "dequantize4(ib, j / QUANT_R, a_offset)" in caller

z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
result = subprocess.check_output([str(z3), "-smt2", str(CASE / "proof.smt2")], text=True)
assert result.splitlines() == ["unsat", "unsat"], result
for label, source in (("old", old), ("new", new)):
    print(f"{label} dequant_funcs.glsl SHA256 {hashlib.sha256(source.encode()).hexdigest()}")
print(f"types.glsl SHA256 {hashlib.sha256(types.encode()).hexdigest()}")
print(f"copy_from_quant.comp SHA256 {hashlib.sha256(caller.encode()).hexdigest()}")
print("SMT checks: aligned iqs implies aligned iq: unsat")
print("SMT checks: any of four output nibbles differs: unsat")
