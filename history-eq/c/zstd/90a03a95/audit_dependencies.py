#!/usr/bin/env python3
"""Locate this historical zstd case's unchanged dependencies by Git blob ID."""

import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/zstd"
commit = "90a03a95a1a20ce8b8cf4c5036a6869678ff0515"
paths = ("lib/error_private.h", "lib/error_public.h", "lib/fse_static.h", "lib/zstd_internal.h")
stores = [store for base in ("benchmarks/repos", "history-eq/repos", "aeneas/repos",
                            "alive2/repos", "cuda/repos")
          for store in (root / base).iterdir() if (store / ".git").exists()]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

objects = {}
for path in paths:
    old = subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{commit}^:{path}"],
                                  text=True, env=env).strip()
    new = subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{commit}:{path}"],
                                  text=True, env=env).strip()
    assert len(old) == len(new) == 40
    objects[path] = {"old": old, "new": new}

found = {oid: [] for pair in objects.values() for oid in pair.values()}
query = "\n".join(found) + "\n"
for store in stores:
    output = subprocess.run(
        ["git", "-C", str(store), "cat-file", "--batch-check=%(objectname) %(objecttype)"],
        input=query, capture_output=True, text=True, check=True, env=env).stdout.splitlines()
    assert len(output) == len(found)
    for line in output:
        oid, kind = line.split()
        if kind == "blob":
            found[oid].append(str(store.relative_to(root)))
        else:
            assert kind == "missing"

result = {"commit": commit, "stores_checked": len(stores), "objects": objects,
          "available_in": found}
(here / "dependency-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"stores_checked": len(stores),
                  "missing_unique_blobs": sum(not locations for locations in found.values())}))
