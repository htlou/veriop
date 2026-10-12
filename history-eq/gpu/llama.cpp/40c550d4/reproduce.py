#!/usr/bin/env python3
"""Source-lock the historical SSM_CONV workgroup mapping and check it."""

import hashlib
import json
import pathlib
import subprocess

root = pathlib.Path(__file__).resolve().parents[4]
repo = root / "cuda/repos/llama.cpp"
here = pathlib.Path(__file__).resolve().parent
commit = "40c550d4f"
shader_path = "ggml/src/ggml-vulkan/vulkan-shaders/ssm_conv.comp"
cpp_path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"


def source(revision, path):
    return subprocess.check_output(["git", "show", f"{revision}:{path}"], cwd=repo)


hashes = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    shader = source(revision, shader_path)
    cpp = source(revision, cpp_path)
    (here / f"{side}-shader.comp").write_bytes(shader)
    hashes[side] = {"shader_sha256": hashlib.sha256(shader).hexdigest(),
                    "cpp_sha256": hashlib.sha256(cpp).hexdigest()}
    text = shader.decode()
    cpp_text = cpp.decode()
    assert "elements = { nr, n_t, n_s };" in cpp_text
    assert "CEIL_DIV(elements[1], pipeline->wg_denoms[1])" in cpp_text
    for formula in (
        "const uint src0_base = i3 * (nb02 / 4) + i2 + i1 * (nb01 / 4);",
        "const uint src1_base = i1 * (nb11 / 4);",
        "const uint dst_idx = i3 * (dst_nb2 / 4) + i2 * (dst_nb1 / 4) + i1;",
    ):
        assert formula in text
    line = next(x.strip() for x in cpp_text.splitlines()
                if 'pipeline_ssm_conv_f32, "ssm_conv_f32"' in x)
    (here / f"{side}-pipeline.txt").write_text(line + "\n")
    if side == "old":
        assert "{32, 1, 1}, {32}" in line
        assert "const uint i2 = gl_WorkGroupID.y;" in text
        assert "const uint src0_idx = src0_base + i0;" in text
        assert "const uint src1_idx = src1_base + i0;" in text
        assert "sum += src0[src0_idx] * src1[src1_idx];" in text
    else:
        assert "{32, 16, 1}, {32, 16}" in line
        assert "const uint i2 = gl_WorkGroupID.y * TOKENS_PER_WG + gl_LocalInvocationID.y;" in text
        assert "sum += src0[src0_base + i0] * src1[src1_base + i0];" in text

z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
result = subprocess.run([z3, here / "layout.smt2"], capture_output=True, text=True)
(here / "layout.log").write_text(result.stdout + result.stderr)
assert result.returncode == 0 and result.stdout == "unsat\nunsat\nunsat\n", result.stdout + result.stderr
(here / "manifest.json").write_text(json.dumps({"commit": commit, "sources": hashes,
                                                  "checker": "direct Z3", "queries": ["unsat"] * 3}, indent=2) + "\n")
print(result.stdout, end="")
