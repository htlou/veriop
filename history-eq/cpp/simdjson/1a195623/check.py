#!/usr/bin/env python3
"""Check an old public unescape call against both exact historical headers."""

import json
import os
import subprocess
import tempfile
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/simdjson"
revisions = {
    "old": "5f7a56e7f1ca433df246bf84a976eaecadcb0005",
    "new": "1a195623a538d3ad1e9ae54b552655b696e57ac2",
}
path = "include/simdjson/generic/ondemand/raw_json_string.h"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
result = {"revisions": revisions, "source_blobs": {}, "runs": {}}

with tempfile.TemporaryDirectory(prefix="veriop-simdjson-1a19-") as temp:
    temp = Path(temp)
    for label, rev in revisions.items():
        oid = subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
            env=env, text=True,
        ).strip()
        data = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", oid], env=env
        )
        include = temp / label / "include"
        header = include / "simdjson/generic/ondemand/raw_json_string.h"
        header.parent.mkdir(parents=True, exist_ok=True)
        header.write_bytes(data)
        error = include / "simdjson/error.h"
        error.parent.mkdir(parents=True, exist_ok=True)
        error.write_text("")
        run = subprocess.run(
            ["clang++", "-std=c++17", "-fsyntax-only", "-I", str(include),
             str(here / "Client.cpp")], capture_output=True, text=True,
        )
        if label == "old":
            assert run.returncode == 0, run.stderr
        else:
            assert run.returncode != 0 and \
                   "json_iterator" in run.stderr and \
                   "uint8_t *" in run.stderr, run.stderr
        result["source_blobs"][label] = oid
        result["runs"][label] = {
            "exit_code": run.returncode,
            "stderr": run.stderr.strip(),
        }
        print(f"{label}: " +
              ("call type-checks" if run.returncode == 0 else run.stderr.splitlines()[0]))

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
