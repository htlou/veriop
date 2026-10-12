#!/usr/bin/env python3
"""Bind the Power10 FP32 dispatch projection to exact historical sgemm source."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
screen = here.parent / "source-screening"
child = "13731766db91ec927c1b61bf502ac7a9be2b11b9"
path = "ggml/src/ggml-cpu/llamafile/sgemm.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
assert (screen / "13731766.paths.txt").read_text().splitlines() == [path]
diff = git("diff", parent, child, "--", path)
assert diff == (screen / "13731766.source.diff").read_bytes()
report = {"parent": parent, "child": child,
          "diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}}
gates = {
    "old": "    if (n < 2)\n        return false;",
    "new": "#if !defined(__MMA__)\n    if (n < 2)\n        return false;\n#endif",
}
for side, rev in (("old", parent), ("new", child)):
    body = git("show", f"{rev}:{path}")
    (here / f"sgemm.{side}.cpp").write_bytes(body)
    source = body.decode()
    start = source.index("bool llamafile_sgemm(")
    function = source[start:]
    assert function.count(gates[side]) == 1
    f32 = function[function.index("case GGML_TYPE_F32:"):]
    assert "if (Btype != GGML_TYPE_F32)" in f32
    assert "#elif defined(__MMA__)" in f32
    mma = f32[f32.index("#elif defined(__MMA__)"):]
    assert "if (k % 8)" in mma and "tb.matmul(m, n);\n        return true;" in mma
    report["sides"][side] = {"git_oid": git("rev-parse", f"{rev}:{path}").decode().strip(),
                             "sha256": hashlib.sha256(body).hexdigest()}
    (here / f"gate-{side}.c").write_text(
        "#include <stdbool.h>\n#include <stdint.h>\n"
        "bool gate(int64_t n, int64_t k, bool a_f32, bool b_f32, bool c_f32) {\n"
        "    if (n < 1 || k < 8) return false;\n"
        + gates[side] + "\n"
        "    if (!c_f32 || !a_f32 || !b_f32 || k % 8) return false;\n"
        "    return true;\n}\n"
    )
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("exact historical sgemm pair, full diff, and projected FP32 MMA gate audited")
