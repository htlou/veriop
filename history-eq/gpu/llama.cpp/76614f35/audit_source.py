#!/usr/bin/env python3
"""Tie the SVE selector projection to the exact historical source diff."""

import hashlib
import json
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
screening = here.parent / "source-screening"
commit = "76614f352e94d25659306d9e97321f204e5de0d3"
diff = (screening / "76614f35.source.diff").read_bytes()
manifest = json.loads((screening / "source_manifest.json").read_text())
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][commit]["diff_sha256"]
for fragment in (
    b"-    if (svcntw() == 8) {",
    b"+    if (ggml_sve_cnt_b == QK8_0) {",
    b"-    if (svcntb() == QK8_0) {",
    b"+        ggml_sve_cnt_b = PR_SVE_VL_LEN_MASK & prctl(PR_SVE_GET_VL);",
):
    assert fragment in diff, fragment

repo = root / "cuda/repos/llama.cpp"
def old(path):
    return subprocess.check_output(
        ["git", "-C", str(repo), "show", f"{commit}^:{path}"],
        env={"GIT_NO_LAZY_FETCH": "1"},
    )

assert b"#define QK8_0 32" in old("ggml/src/ggml-common.h")
header = old("ggml/include/ggml.h")
assert b'#define GGML_ASSERT(x) if (!(x)) GGML_ABORT(' in header
assert b"#define GGML_ABORT(...) ggml_abort(" in header
assert b"    abort();" in old("ggml/src/ggml.c")
assert b"if (svcntw() == 8) {\n        GGML_ASSERT(!(ggml_cpu_has_sve() && (svcntw() == 8))" in old("ggml/src/ggml-aarch64.c")
print("historical SVE selectors, QK8_0=32, and abort outcome match projection")
