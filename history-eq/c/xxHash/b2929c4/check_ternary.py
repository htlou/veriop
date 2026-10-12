#!/usr/bin/env python3
"""Audit the exact historical edit and its complete three-input bit truth table."""

import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
commit = "b2929c4"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, text=True, env=env).stdout.strip()


full = git("rev-parse", commit + "^{commit}")
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", full).splitlines() == ["xxhash.h"]
blobs = {}
for side, revision in (("old", full + "^"), ("new", full)):
    path = here / side / "xxhash.h"
    expected = git("rev-parse", f"{revision}:xxhash.h")
    actual = subprocess.run(["git", "hash-object", str(path)], check=True,
                            capture_output=True, text=True).stdout.strip()
    assert actual == expected, (side, actual, expected)
    blobs[side] = actual

old = (here / "old/xxhash.h").read_text()
new = (here / "new/xxhash.h").read_text()
before = """        __m512i const data_vec    = _mm512_xor_si512     (acc_vec, shifted);
        /* xacc[0] ^= secret; */
        __m512i const key_vec     = _mm512_loadu_si512   (secret);
        __m512i const data_key    = _mm512_xor_si512     (data_vec, key_vec);"""
after = """        /* xacc[0] ^= secret; */
        __m512i const key_vec     = _mm512_loadu_si512   (secret);
        __m512i const data_key    = _mm512_ternarylogic_epi32(key_vec, acc_vec, shifted, 0x96 /* key_vec ^ acc_vec ^ shifted */);"""
assert old.count(before) == 1
assert old.replace(before, after, 1) == new


def ternary(a, b, c, imm8):
    return (imm8 >> ((a << 2) | (b << 1) | c)) & 1


rows = [{"a": a, "b": b, "c": c, "old_xor": a ^ b ^ c,
         "new_0x96": ternary(a, b, c, 0x96)}
        for a in (0, 1) for b in (0, 1) for c in (0, 1)]
assert all(row["old_xor"] == row["new_0x96"] for row in rows)
assert any(ternary(row["a"], row["b"], row["c"], 0x95) != row["old_xor"]
           for row in rows), "negative control must fail"

(here / "ternary-proof.json").write_text(json.dumps({
    "commit": full,
    "changed_paths": ["xxhash.h"],
    "historical_blob_oids": blobs,
    "source_audit": "whole old header becomes whole new header by the one exact expression replacement",
    "intrinsic_semantics": "Intel VPTERNLOGD/ternarylogic imm8 is a per-bit three-input lookup table",
    "truth_table": rows,
    "negative_control": "0x95 differs from the original XOR expression",
    "verdict": "EQUIV",
    "scope": "all defined C executions of the AVX-512 scramble helper and its callers, comparing returned hash values and memory writes; excludes timing, code generation, and undefined C executions",
}, indent=2) + "\n")
print("8/8 truth-table rows equal; negative control differs; whole historical header edit audited")
