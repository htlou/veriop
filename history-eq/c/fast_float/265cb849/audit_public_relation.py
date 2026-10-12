#!/usr/bin/env python3
"""Compose exact-source call-site coverage with the four Alive2 runs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/fast_float"
child = "265cb849f3ef03028f80f6d058fc400bca41e1d1"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> str:
    return subprocess.check_output(["git", "-C", str(repo), *args],
                                   env=env, text=True).strip()


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", child) == \
       "include/fast_float/float_common.h"
parent = git("rev-parse", child + "^")
assert git("rev-parse", parent + ":include/fast_float/parse_number.h") == \
       git("rev-parse", child + ":include/fast_float/parse_number.h")
include = root / "history-eq/wt/fast_float-265cb849-new/include/fast_float"
for name in ("float_common.h", "parse_number.h", "fast_float.h"):
    source = (include / name).read_bytes()
    assert hashlib.sha1(f"blob {len(source)}\0".encode() + source).hexdigest() == \
           git("rev-parse", child + ":include/fast_float/" + name)
assert sum(path.read_text().count("fastfloat_strncasecmp(")
           for path in include.rglob("*.h")) == 4  # definition and three calls
caller = (include / "parse_number.h").read_text()
for literal in ("str_const_nan<UC>(), 3", "str_const_inf<UC>(), 3",
                "str_const_inf<UC>() + 3, 5"):
    assert caller.count(literal) == 1
header = (include / "float_common.h").read_text()
assert "std::is_same<UC, char8_t>::value" in header
assert '"parse_number.h"' in (include / "fast_float.h").read_text()

runs = {}
for standard in ("c++11", "c++14", "c++17", "c++20"):
    directory = here / ("caller_literals" if standard == "c++17" else
                        "caller_literals_" + standard.replace("+", "x"))
    proof = json.loads((directory / "result.json").read_text())
    expected = 15 if standard == "c++20" else 12
    assert proof["child"] == child and proof["parent"] == parent
    assert proof["wrapper_sha256"] == hashlib.sha256((here / "caller_literals.cpp").read_bytes()).hexdigest()
    assert all(data["correct"] == expected and
               data["log_sha256"] == hashlib.sha256((directory / f"{side}.log").read_bytes()).hexdigest()
               for side, data in proof["directions"].items())
    runs[standard] = expected

result = {"commit": child, "source_change": "only float_common.h; three public-parser call sites use fixed lowercase literals",
          "alive2": runs, "bidirectional": True,
          "scope": "functional floating-point from_chars value, consumed position, and error for the five supported character types under the checked Clang x86-64 C++11/14/17/20 builds; valid pointer ranges",
          "verdict": "EQUIV"}
(here / "public-relation.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "instances_per_direction": sum(runs.values())}))
