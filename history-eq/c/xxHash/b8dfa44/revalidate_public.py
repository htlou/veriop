#!/usr/bin/env python3
"""Recheck the seven archived public-call LLVM pairs without unrelated helpers."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[4]
case = Path(__file__).resolve().parent
repo = root / "history-eq/repos/xxHash"
archived = json.loads((case / "r_O3_default/result.json").read_text())
commit = "b8dfa44bbcce9d8c36c52996ec7073242e2aa04b"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True,
                                   env=env).strip()


assert len(archived["functions"]) == 7
for side, revision in (("old", commit + "^"), ("new", commit)):
    header = case / side / "xxhash.h"
    assert git("hash-object", str(header)) == git("rev-parse", revision + ":xxhash.h")
    ir = case / "r_O3_default" / (side + ".ll")
    assert hashlib.sha256(ir.read_bytes()).hexdigest() == archived[side + "_ll_sha256"]

checks = []
for func in archived["functions"]:
    for direction, first, second in (("forward", "old", "new"),
                                     ("backward", "new", "old")):
        cmd = [str(alive), str(case / "r_O3_default" / (first + ".ll")),
               str(case / "r_O3_default" / (second + ".ll")),
               "--func=" + func, "--always-verify", "--quiet"]
        run = subprocess.run(cmd, text=True, capture_output=True, timeout=60)
        output = run.stdout + run.stderr
        assert run.returncode == 0 and "1 correct transformations" in output
        assert all(term in output for term in ("0 incorrect transformations",
                                                 "0 failed-to-prove transformations",
                                                 "0 Alive2 errors")), (func, direction, output)
        checks.append({"function": func, "direction": direction, "output": output})

assert len(checks) == 14
result = {"commit": commit, "verdict": "EQUIV_PARTIAL",
          "scope": "seven fixed-length public hash calls at Clang -O3 x86-64-v3 default configuration",
          "source_blobs": {side + "/xxhash.h": git("rev-parse", rev + ":xxhash.h")
                           for side, rev in (("old", commit + "^"), ("new", commit))},
          "ir_sha256": {side: archived[side + "_ll_sha256"] for side in ("old", "new")},
          "checks": checks}
(case / "revalidated-public.json").write_text(json.dumps(result, indent=2) + "\n")
print("14/14 selected Alive2 directions correct; see defined-outputs-audit for complete source scope")
