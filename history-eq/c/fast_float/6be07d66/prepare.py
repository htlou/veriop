#!/usr/bin/env python3
"""Reproduce the historical Clinger helper as isolated translation units."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/fast_float"
commit = "6be07d66a83bf6186d427bb21344dcdd28df09d2"
path = "include/fast_float/parse_number.h"
deps = ("float_common.h", "constexpr_feature_detect.h")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [path]
diff = git("diff", commit + "^", commit, "--", path)
saved_diff = here / "source.diff"
if saved_diff.exists():
    assert saved_diff.read_bytes() == diff
else:
    saved_diff.write_bytes(diff)
assert diff.count(b"-FASTFLOAT_CONSTEXPR20 bool") == 1
assert diff.count(b"+fastfloat_really_inline FASTFLOAT_CONSTEXPR20 bool") == 1

manifest = {"commit": commit, "parent": git("rev-parse", commit + "^").decode().strip(), "sides": {}}


def extract(source: str, beginning: str, ending: str) -> str:
    start = source.index(beginning)
    end = source.index(ending, start) + 2
    return source[start:end]


for side, revision in (("old", commit + "^"), ("new", commit)):
    source_bytes = git("show", f"{revision}:{path}")
    source = source_bytes.decode()
    snapshot = here / f"parse_number.{side}.txt"
    if snapshot.exists():
        assert snapshot.read_bytes() == source_bytes
    else:
        snapshot.write_bytes(source_bytes)
    inc = here / side / "include" / "fast_float"
    inc.mkdir(parents=True, exist_ok=True)
    rows = [{"path": path, "sha256": hashlib.sha256(source_bytes).hexdigest()}]
    for dep in deps:
        dep_path = "include/fast_float/" + dep
        data = git("show", f"{revision}:{dep_path}")
        target = inc / dep
        target.write_bytes(data)
        rows.append({"path": dep_path, "sha256": hashlib.sha256(data).hexdigest()})
    rounds = extract(source, "fastfloat_really_inline bool rounds_to_nearest() noexcept {", "\n}\n\n} // namespace detail")
    if side == "old":
        prefix = "template <typename T>\nFASTFLOAT_CONSTEXPR20 bool\nclinger_fast_path_impl"
    else:
        prefix = "template <typename T>\nfastfloat_really_inline FASTFLOAT_CONSTEXPR20 bool\nclinger_fast_path_impl"
    clinger = extract(source, prefix, "\n}\n\n/**")
    wrapper = (
        '#include "fast_float/float_common.h"\n'
        '#include <cmath>\n#include <cstring>\n#include <limits>\n'
        'namespace fast_float { namespace detail {\n' + rounds + '\n} // namespace detail\n'
        + clinger + '\n} // namespace fast_float\n'
        'extern "C" unsigned long long target_ok(unsigned long long m, long long e, bool n) {\n'
        '  double value = 123.0;\n'
        '  return fast_float::clinger_fast_path_impl<double>(m, e, n, value);\n'
        '}\n'
        'extern "C" unsigned long long target_bits(unsigned long long m, long long e, bool n) {\n'
        '  double value = 123.0;\n'
        '  fast_float::clinger_fast_path_impl<double>(m, e, n, value);\n'
        '  unsigned long long bits; std::memcpy(&bits, &value, sizeof(bits));\n'
        '  return bits;\n'
        '}\n'
    )
    (here / side / "isolated.cpp").write_text(wrapper)
    manifest["sides"][side] = rows

assert manifest["sides"]["old"][1:] == manifest["sides"]["new"][1:]
(here / "source-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Verified single-attribute source diff and materialized exact helper bodies")
