#!/usr/bin/env python3
"""Audit historical Kontrol source before attempting a K equivalence check."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/kontrol"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


child = git("rev-parse", "a70c6644").decode().strip()
parent = git("rev-parse", child + "^").decode().strip()
diff = git("diff", parent, child, "--", "src/kontrol/")
archived = here.parent / "source-screening/a70c6644.source.diff"
assert diff == archived.read_bytes()

result = {"parent": parent, "child": child,
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}}
for side, rev in (("old", parent), ("new", child)):
    foundry = git("show", f"{rev}:src/kontrol/kdist/foundry.md").decode()
    assert 'requires "assert.md"' in foundry
    dep = "src/kontrol/kdist/assert.md"
    oid = git("rev-parse", f"{rev}:{dep}").decode().strip()
    available = subprocess.run(["git", "-C", str(repo), "cat-file", "-e", oid],
                               env=env, capture_output=True).returncode == 0
    result["sides"][side] = {"revision": rev, "required_dependency": dep,
                              "required_blob_oid": oid, "required_blob_available": available}

assert not any(side["required_blob_available"] for side in result["sides"].values())
result["verdict"] = "UNKNOWN"
result["reason"] = "The exact historical Foundry K definition cannot be compiled with its missing assert.md dependency."
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["reason"])
