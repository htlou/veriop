#!/usr/bin/env python3
"""Check the exact historical source scope of the CUDA debug-counter move."""

import json
import os
import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "6eea6669125af4a6c6a8e186ba5a019152e4e868"
CUDA = "ggml/src/ggml-cuda/ggml-cuda.cu"
GRAPH = "src/llama-graph.cpp"
OIDS = {
    ("old", CUDA): "fa7e1e13a71ab6f955d0091e86a436203f5bec0b",
    ("new", CUDA): "eb2e273110dff691c76ad841a080c351ffa3b4a0",
    ("old", GRAPH): "1d012e09abab50aa236a30fd6840e1ad7a79a759",
    ("new", GRAPH): "452a956c43de9118511fd29958a252ab5144f664",
}


def git(*args):
    env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=env).decode()


def source(side, path):
    rev = COMMIT + ("^" if side == "old" else "")
    assert git("rev-parse", f"{rev}:{path}").strip() == OIDS[side, path]
    return git("show", f"{rev}:{path}")


old_cuda, new_cuda = source("old", CUDA), source("new", CUDA)
old_graph, new_graph = source("old", GRAPH), source("new", GRAPH)

# There is exactly one such conditional in each historical CUDA file. Removing
# its inactive arm models this build configuration without changing other code.
debug = re.compile(r"(?ms)^#ifdef GGML_CUDA_DEBUG\n.*?^#endif\n")
old_blocks, new_blocks = debug.findall(old_cuda), debug.findall(new_cuda)
assert len(old_blocks) == len(new_blocks) == 1
assert old_blocks == new_blocks
old_active = [line for line in debug.sub("", old_cuda).splitlines() if line.strip()]
new_active = [line for line in debug.sub("", new_cuda).splitlines() if line.strip()]
assert old_active == new_active

# Lock the comparison to the complete commit diff: graph construction also
# changes, so the CUDA result must not be presented as whole-commit equality.
removed = "    //expand here so that we can fuse ffn gate\n    ggml_build_forward_expand(gf, cur);\n\n"
assert old_graph.count(removed) == 2
assert old_graph.replace(removed, "") == new_graph

assert "                prev_i = i;\n\n#ifdef GGML_CUDA_DEBUG" in old_cuda
assert "#endif\n                prev_i = i;" in new_cuda
i, prev_i = 2, 0
old_debug_count = i - i - 1
new_debug_count = i - prev_i - 1
assert old_debug_count == -1 and new_debug_count == 1

print(json.dumps({
    "commit": COMMIT,
    "source_oids": {f"{side}_{path}": oid for (side, path), oid in OIDS.items()},
    "cuda_debug_disabled": "identical nonblank active source lines in complete CUDA translation unit",
    "cuda_debug_enabled_example": {"i": i, "previous_i": prev_i,
                                   "old_nodes_fused": old_debug_count,
                                   "new_nodes_fused": new_debug_count},
    "graph_change": "two early ggml_build_forward_expand(gf, cur) calls removed; semantic effect unchecked",
    "verdict": "EQUIV_PARTIAL",
}, indent=2))
