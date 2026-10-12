#!/usr/bin/env python3
"""Check whether the modeled F32->F32 branch is reachable from its sole caller."""

import os
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[4]
repo = root / "cuda/repos/llama.cpp"
blobs = {
    "old": "8531baf6c57fbdc9c06eb79c247d5ca69dc78251",
    "new": "9f17ea43c8553fc5ff5f41dff255684ee061127b",
}
dispatchers = []
for side, blob in blobs.items():
    source = subprocess.check_output(
        ["git", "-C", str(repo), "cat-file", "blob", blob],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    ).decode()
    assert source.count("ggml_compute_forward_dup_f32(") == 2
    start = source.index("void ggml_compute_forward_dup(\n")
    end = source.index("// ggml_compute_forward_add", start)
    dispatch = source[start:end]
    guard = dispatch.index("if (src0->type == dst->type) {")
    copy = dispatch.index("ggml_compute_forward_dup_bytes(params, dst);", guard)
    early_return = dispatch.index("return;", copy)
    f32_case = dispatch.index("case GGML_TYPE_F32:", early_return)
    call = dispatch.index("ggml_compute_forward_dup_f32(params, dst);", f32_case)
    assert guard < copy < early_return < f32_case < call
    dispatchers.append(dispatch)
    print(side, "sole call to F32 helper follows same-type early return")
assert dispatchers[0] == dispatchers[1]
print("old/new dispatchers are text-identical; F32->F32 modeled branch is unreachable here")
