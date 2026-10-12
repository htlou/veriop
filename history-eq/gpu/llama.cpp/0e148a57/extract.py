#!/usr/bin/env python3
"""Extract the exact old/new SYCL allocation predicate for Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "0e148a573f0ccbb0e9000312e2757b8998c1e070"
parent = "32b741c336decea914e4c1c24a9c9815485901b2"
path = "ggml/src/ggml-sycl/ggml-sycl.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip() == parent
manifest = {"commit": commit, "parent": parent, "path": path, "versions": {}}
fragments = {}
for side, revision in (("old", parent), ("new", commit)):
    blob = subprocess.check_output(["git", "-C", str(repo), "show", f"{revision}:{path}"], env=env)
    source = blob.decode()
    assert re.search(r"^#define MEM_SIZE_1G\s+0x40000000$", source, re.M)
    begin = source.index("static bool check_usm_system(int device, size_t size) {")
    end = source.index("\n}\n", begin) + 2
    fragment = source[begin:end]
    match = re.search(r"bool use_usm_system = (.*);", fragment)
    assert match is not None
    expr = match.group(1)
    assert fragment.count("bool use_usm_system =") == 1
    (here / side).mkdir(exist_ok=True)
    (here / side / "selector.h").write_text(f"#define HISTORICAL_PREDICATE ({expr})\n")
    fragments[side] = (fragment, expr)
    manifest["versions"][side] = {
        "revision": revision,
        "git_blob_sha256": hashlib.sha256(blob).hexdigest(),
        "function_sha256": hashlib.sha256(fragment.encode()).hexdigest(),
        "expression": expr,
    }
old_func, old_expr = fragments["old"]
new_func, new_expr = fragments["new"]
assert old_func.replace(old_expr, new_expr, 1) == new_func
assert old_expr == "g_ggml_sycl_usm_system && size >= MEM_SIZE_1G"
assert new_expr == "g_ggml_sycl_usm_system && size >= ((size_t)4 * MEM_SIZE_1G)"
(here / "source-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("extracted exact historical allocation predicates")
