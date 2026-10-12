#!/usr/bin/env python3
"""Verify the exact historical xxhash header and the localized Alive2 model."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/zstd"
commit = "007cda88ca1c7819eec966ce030934756d33c8c1"
path = "lib/common/xxhash.h"


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args])


sources = {}
for rev, name in ((commit + "^", "xxhash.old.txt"), (commit, "xxhash.new.txt")):
    actual = git("show", f"{rev}:{path}")
    saved = here / name
    if saved.exists():
        assert saved.read_bytes() == actual, name
    else:
        saved.write_bytes(actual)
    sources[name] = actual.decode()

diff = git("diff", commit + "^", commit)
saved = here / "source.diff"
if saved.exists():
    assert saved.read_bytes() == diff
else:
    saved.write_bytes(diff)
assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [path]

old = sources["xxhash.old.txt"]
new = sources["xxhash.new.txt"]
model = (here / "xxh64_round.c").read_text()
for expr in (
    "acc += input * XXH_PRIME64_2;",
    "acc  = XXH_rotl64(acc, 31);",
    "acc *= XXH_PRIME64_1;",
    '#  define XXH_COMPILER_GUARD(var) __asm__("" : "+r" (var))',
    "#define XXH_PRIME64_1  0x9E3779B185EBCA87ULL",
    "#define XXH_PRIME64_2  0xC2B2AE3D27D4EB4FULL",
):
    assert expr in old and expr in new, expr
for expr in (
    "acc += input * XXH_PRIME64_2;",
    "acc *= XXH_PRIME64_1;",
    '#define XXH_COMPILER_GUARD(var) __asm__("" : "+r" (var))',
    "0x9E3779B185EBCA87ULL",
    "0xC2B2AE3D27D4EB4FULL",
):
    assert expr in model, expr
assert "XXH_COMPILER_GUARD(acc);" not in old[old.index("static xxh_u64 XXH64_round"):old.index("static xxh_u64 XXH64_mergeRound")]
assert "XXH_COMPILER_GUARD(acc);" in new[new.index("static xxh_u64 XXH64_round"):new.index("static xxh_u64 XXH64_mergeRound")]
assert "XXH_COMPILER_GUARD(acc);" in model
print("Exact historical headers/diff and localized arithmetic plus inline-asm guard checked")
