#!/usr/bin/env python3
"""Lock the changed call and helper to the exact historical Java sources."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = "6a23ee08266ac0b34b6d1a4fad47e6103b0c864a"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MappeableRunContainer.java"


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


old = git("show", commit + "^:" + path)
new = git("show", commit + ":" + path)
old_call = b"          decrementValue(0);\n"
new_call = b"          decrementValue();\n"
old_helper = (b"  private void decrementValue(int index) {\n"
              b"    valueslength.put(2 * index, (char) (valueslength.get(2 * index) - 1));\n"
              b"  }\n")
new_helper = (b"  private void decrementValue() {\n"
              b"    valueslength.put(0, (char) (valueslength.get(0) - 1));\n"
              b"  }\n")
assert old.count(old_call) == old.count(old_helper) == 1
assert old.replace(old_call, new_call, 1).replace(old_helper, new_helper, 1) == new
assert old.count(b"decrementValue(") == new.count(b"decrementValue(") == 2
assert b"if (index == -1)" in old and b"if (getValue(0) == k + 1)" in old
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == [path]
diff = git("diff", commit + "^", commit, "--", path)
(here / "source.diff").write_bytes(diff)
record = {"commit": commit, "path": path,
          "old_blob": git("rev-parse", commit + "^:" + path).decode().strip(),
          "new_blob": git("rev-parse", commit + ":" + path).decode().strip(),
          "diff_sha256": hashlib.sha256(diff).hexdigest(),
          "source_relation": "only the zero-index call and the decrementValue helper change"}
(here / "source-audit.json").write_text(json.dumps(record, indent=2) + "\n")
print(record["source_relation"])
