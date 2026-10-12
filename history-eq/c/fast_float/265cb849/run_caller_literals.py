#!/usr/bin/env python3
"""Check all three historical parse_infnan literal comparisons with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

here = Path(__file__).resolve().parent
standard = sys.argv[1] if len(sys.argv) == 2 else "c++17"
assert standard in ("c++11", "c++14", "c++17", "c++20")
expected = 15 if standard == "c++20" else 12
root = here.parents[3]
repo = root / "benchmarks/repos/fast_float"
child = "265cb849f3ef03028f80f6d058fc400bca41e1d1"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", child + "^"], env=env, text=True).strip()
changed = subprocess.check_output(["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", child], env=env, text=True).splitlines()
assert changed == ["include/fast_float/float_common.h"]
common = "include/fast_float/parse_number.h"
assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{parent}:{common}"], env=env) == subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{child}:{common}"], env=env)
caller = subprocess.check_output(["git", "-C", str(repo), "show", f"{child}:{common}"], env=env, text=True)
for actual in ("str_const_nan<UC>(), 3", "str_const_inf<UC>(), 3", "str_const_inf<UC>() + 3, 5"):
    assert actual in caller

out = here / ("caller_literals" if standard == "c++17" else "caller_literals_" + standard.replace("+", "x"))
out.mkdir(exist_ok=True)
report = {"parent": parent, "child": child,
          "scope": f"nan/inf/inity literal comparisons under {standard} for char, char16_t, char32_t, wchar_t" +
                   (", char8_t" if standard == "c++20" else ""),
          "wrapper_sha256": hashlib.sha256((here / "caller_literals.cpp").read_bytes()).hexdigest(),
          "sides": {}, "directions": {}}
for side, rev in (("old", parent), ("new", child)):
    include = root / f"history-eq/wt/fast_float-265cb849-{side}/include"
    header = include / "fast_float/float_common.h"
    exact = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:include/fast_float/float_common.h"], env=env)
    assert header.read_bytes() == exact
    raw = out / f"{side}.ll"
    command = ["clang", "-O3", f"-std={standard}", "-march=x86-64-v3", "-fno-vectorize",
               "-fno-slp-vectorize", "-w", "-nostdinc++", "-isystem", "/usr/include/c++/11",
               "-isystem", "/usr/include/x86_64-linux-gnu/c++/11", "-I", str(include),
               "-S", "-emit-llvm", str(here / "caller_literals.cpp"), "-o", str(raw)]
    subprocess.run(command, check=True, capture_output=True, text=True)
    ir = raw.read_text()
    normalized, count = re.subn(r", !(?:llvm\.loop|tbaa) !\d+", "", ir)
    assert count > 0
    cleaned = out / f"{side}-normalized.ll"
    cleaned.write_text(normalized)
    report["sides"][side] = {"revision": rev, "header_sha256": hashlib.sha256(exact).hexdigest(),
                              "ir_sha256": hashlib.sha256(raw.read_bytes()).hexdigest(),
                              "normalized_ir_sha256": hashlib.sha256(cleaned.read_bytes()).hexdigest(),
                              "removed_nonsemantic_metadata_attachments": count}

alive = root / "alive2/build/alive2/alive-tv"
for direction, reference, candidate in (("forward", "old", "new"), ("backward", "new", "old")):
    command = [str(alive), "--smt-to=30000", "--always-verify",
               str(out / f"{reference}-normalized.ll"), str(out / f"{candidate}-normalized.ll")]
    completed = subprocess.run(command, capture_output=True, text=True)
    log = completed.stdout + completed.stderr
    (out / f"{direction}.log").write_text(log)
    assert completed.returncode == 0, (direction, log[-800:])
    assert log.count("Transformation seems to be correct!") == expected, direction
    assert f"{expected} correct transformations\n  0 incorrect transformations\n  0 failed-to-prove transformations\n  0 Alive2 errors" in log
    report["directions"][direction] = {"log_sha256": hashlib.sha256(log.encode()).hexdigest(), "correct": expected}

report["verdict"] = "EQUIV_PARTIAL"
(out / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print(f"{expected} historical literal-call instances proved in both Alive2 directions under {standard}")
