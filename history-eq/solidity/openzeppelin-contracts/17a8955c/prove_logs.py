#!/usr/bin/env python3
"""Source-audited 256-bit proof of the changed log2/log256 stage relations."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

import z3

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/openzeppelin-contracts"
commit = "17a8955cd8ed2c9a269421a11c2e2774b796e305"


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


def function(source, name):
    signature = f"function {name}(uint256 value) internal pure returns (uint256) {{"
    start = source.index(signature)
    depth = 0
    for position in range(source.index("{", start), len(source)):
        if source[position] == "{":
            depth += 1
        elif source[position] == "}":
            depth -= 1
            if depth == 0:
                return source[start : position + 1]
    raise AssertionError(name)


def compact(source):
    return re.sub(r"\s+", "", source)


def expected_old(name, stages, final_shift):
    blocks = [
        f"if (value >> {shift} > 0) {{ value >>= {shift}; result += {increment}; }}"
        for shift, increment in stages
    ]
    blocks.append(f"if (value >> {final_shift} > 0) {{ result += 1; }}")
    return f"function {name}(uint256 value) internal pure returns (uint256) {{ uint256 result = 0; unchecked {{ {' '.join(blocks)} }} return result; }}"


def expected_new(name, stages, final_shift):
    temp = "exp" if name == "log2" else "isGt"
    blocks = []
    for shift, increment in stages:
        if name == "log2":
            blocks.extend((
                f"exp = {shift} * SafeCast.toUint(value > (1 << {shift}) - 1);",
                "value >>= exp;", "result += exp;",
            ))
        else:
            blocks.extend((
                f"isGt = SafeCast.toUint(value > (1 << {shift}) - 1);",
                f"value >>= isGt * {shift};", f"result += isGt * {increment};",
            ))
    final_bound = "1" if name == "log2" else f"(1 << {final_shift}) - 1"
    blocks.append(f"result += SafeCast.toUint(value > {final_bound});")
    return f"function {name}(uint256 value) internal pure returns (uint256) {{ uint256 result = 0; uint256 {temp}; unchecked {{ {' '.join(blocks)} }} return result; }}"


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "files": {}}
source = {}
for label, revision in (("old", parent), ("new", commit)):
    source[label] = {}
    for name in ("Math.sol", "SafeCast.sol"):
        path = f"contracts/utils/math/{name}"
        raw = git("show", f"{revision}:{path}")
        dest = here / f"{label}.{name}.txt"
        dest.write_bytes(raw)
        manifest["files"][dest.name] = {"git_path": path, "sha256": hashlib.sha256(raw).hexdigest()}
        source[label][name] = raw.decode()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")

assert "function toUint(bool b)" not in source["old"]["SafeCast.sol"]
assert re.search(
    r"function toUint\(bool b\) internal pure returns \(uint256 u\)\s*"
    r"\{\s*/// @solidity memory-safe-assembly\s*assembly\s*"
    r"\{\s*u := iszero\(iszero\(b\)\)\s*\}\s*\}",
    source["new"]["SafeCast.sol"],
)
for name, stages, final_shift in (
    ("log2", [(128, 128), (64, 64), (32, 32), (16, 16), (8, 8), (4, 4), (2, 2)], 1),
    ("log256", [(128, 16), (64, 8), (32, 4), (16, 2)], 8),
):
    assert compact(function(source["old"]["Math.sol"], name)) == compact(expected_old(name, stages, final_shift))
    assert compact(function(source["new"]["Math.sol"], name)) == compact(expected_new(name, stages, final_shift))

    value = z3.BitVec(f"{name}_value", 256)
    for shift, increment in stages:
        old_guard = z3.LShR(value, shift) != 0
        new_guard = z3.UGT(value, z3.BitVecVal((1 << shift) - 1, 256))
        old_value = z3.If(old_guard, z3.LShR(value, shift), value)
        exp = z3.If(new_guard, z3.BitVecVal(shift, 256), z3.BitVecVal(0, 256))
        new_value = z3.LShR(value, exp)
        old_delta = z3.If(old_guard, z3.BitVecVal(increment, 256), z3.BitVecVal(0, 256))
        new_delta = z3.BitVecVal(increment, 256) * z3.If(new_guard, z3.BitVecVal(1, 256), z3.BitVecVal(0, 256))
        solver = z3.Solver()
        solver.add(z3.Or(old_guard != new_guard, old_value != new_value, old_delta != new_delta))
        result = solver.check()
        assert result == z3.unsat, (name, shift, result)
        print(f"{name} stage {shift}: UNSAT inequivalence query")
    solver = z3.Solver()
    solver.add((z3.LShR(value, final_shift) != 0) != z3.UGT(value, z3.BitVecVal((1 << final_shift) - 1, 256)))
    result = solver.check()
    assert result == z3.unsat, (name, "final", result)
    print(f"{name} final: UNSAT inequivalence query")

print(f"source-audited log2/log256 stage proofs complete (Z3 {z3.get_version_string()})")
