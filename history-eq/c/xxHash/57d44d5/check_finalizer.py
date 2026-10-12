#!/usr/bin/env python3
"""Audit all 128 historical XXH32 finalizer comparisons."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CHILD = "57d44d5773e27f27c8aa221199d03c8f4b138d84"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(REPO), *args], check=True,
                          capture_output=True, text=True, env=ENV).stdout.strip()


PARENT = git("rev-parse", CHILD + "^")
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", PARENT, CHILD).splitlines() == ["README.md", "xxhash.h"]
blobs = {}
for side, rev in (("old", PARENT), ("new", CHILD)):
    path = HERE / side / "xxhash.h"
    blob = subprocess.run(["git", "hash-object", str(path)], check=True,
                          capture_output=True, text=True).stdout.strip()
    assert blob == git("rev-parse", f"{rev}:xxhash.h")
    blobs[side] = blob

start = "XXH32_finalize(xxh_u32 h32, const xxh_u8* ptr, size_t len, XXH_alignment align)"
end = "#ifdef XXH_OLD_NAMES"
old = (HERE / "old/xxhash.h").read_text()
new = (HERE / "new/xxhash.h").read_text()
old_body = old[old.index(start):old.index(end, old.index(start))]
new_body = new[new.index(start):new.index(end, new.index(start))]
assert old_body.replace("/* Compact rerolled version */", "/* Compact rerolled version; generally faster */") \
               .replace("if (XXH_REROLL)", "if (!XXH32_ENDJMP)") == new_body
assert old_body.count("len &= 15") == new_body.count("len &= 15") == 1
assert old_body.count("switch(len&15)") == new_body.count("switch(len&15)") == 1


def runtime_lines(header, old_side):
    code = re.sub(r"/\*.*?\*/", "", header, flags=re.S)
    if old_side:
        code = code.replace("XXH_REROLL", "XXH32_ENDJMP")
        region = r"#ifndef XXH32_ENDJMP\s*#\s*if.*?#\s*endif\s*#endif"
        branch = "if (XXH32_ENDJMP)"
    else:
        region = r"#ifndef XXH32_ENDJMP\s*#\s*define XXH32_ENDJMP 0\s*#endif"
        branch = "if (!XXH32_ENDJMP)"
    code, count = re.subn(region, "#CONFIG_REGION", code, count=1, flags=re.S)
    assert count == 1 and code.count(branch) == 1
    code = code.replace(branch, "if (CONFIG_BRANCH)")
    return "\n".join(line.strip() for line in code.splitlines() if line.strip())


normalized_old = runtime_lines(old, True)
normalized_new = runtime_lines(new, False)
assert normalized_old == normalized_new

wrapper = (HERE / "wrap_finalizer_residues.c").read_text()
assert wrapper.count("CHECK_TAIL(") == wrapper.count("CHECK_ALIGNED(") == 17
expected = {f"target_{prefix}_{n}" for prefix in ("tail", "aligned") for n in range(16)}
results = {}
for old_mode in (0, 1):
    for new_mode in (0, 1):
        mode = f"old{old_mode}_new{new_mode}"
        directory = HERE / "finalizer_modes" / mode
        result = json.loads((directory / "result.json").read_text())
        assert result["verdict"] == "EQUIV" and result["bounded"] is False
        assert result["old_loops"] is result["new_loops"] is False
        assert result["unroll"] == 0 and set(result["functions"]) == expected
        assert all(v == {"verdict": "EQUIV", "fwd": "correct", "bwd": "correct"}
                   for v in result["functions"].values())
        for side in ("old", "new"):
            assert hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest() == result[f"{side}_ll_sha256"]
        for direction in ("fwd", "bwd"):
            log = (directory / f"{direction}.log").read_text()
            assert log.count("Transformation seems to be correct!") == 32
            assert "Transformation doesn't verify" not in log and "ERROR:" not in log and "GLOBAL TIMEOUT" not in log
        results[mode] = {"verdict": "EQUIV", "functions": 32}

report = {"parent": PARENT, "child": CHILD, "header_git_oids": blobs,
          "wrapper_sha256": hashlib.sha256((HERE / "wrap_finalizer_residues.c").read_bytes()).hexdigest(),
          "normalized_runtime_source_sha256": hashlib.sha256(normalized_old.encode()).hexdigest(),
          "source_relation": "all non-comment header code identical after isolating the sole branch-selector configuration",
          "scope": "raw XXH32_finalize; all 16 len&15 residues; aligned and unaligned pointers; all four old/new branch-mode pairs",
          "directions": "old refines new and new refines old", "pairs": 128,
          "results": results, "commit_verdict": "EQUIV"}
(HERE / "finalizer-proof-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("128 bidirectional Alive2 comparisons pass for the historical XXH32 finalizer")
