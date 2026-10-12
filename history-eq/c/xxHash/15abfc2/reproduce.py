#!/usr/bin/env python3
"""Recheck the exact historical ARM64 multiply change with an explicit __umulh model."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
LEAN_PROOF = HERE / "Mul128.lean"
SYSINC = ROOT / "history-eq/c/xxHash/_work2020/cross_sysinc"
COMMIT = "15abfc22c7d3c3c94e1da9858c8818531f038006"
BLOBS = {
    "old": "3bd125cbc15b6950cfd27c0606284450123b894e",
    "new": "fa8fc14d017de1acf54d2fbbaa1cf0de4ea59aac",
}
WRAPPER = """static __inline__ unsigned long long __umulh(unsigned long long a, unsigned long long b) {
    return (unsigned long long)(((__uint128_t)a * b) >> 64);
}
#define XXH_INLINE_ALL
#include "xxhash.h"
XXH128_hash_t target(unsigned long long a, unsigned long long b) { return XXH_mult64to128(a,b); }
unsigned long long target_low(unsigned long long a, unsigned long long b) { return XXH_mult64to128(a,b).low64; }
unsigned long long target_high(unsigned long long a, unsigned long long b) { return XXH_mult64to128(a,b).high64; }
"""


def run(command, timeout=45):
    return subprocess.run(command, capture_output=True, text=True, timeout=timeout,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, check=True).stdout


def main():
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        assert run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).strip() == BLOBS[side]
    result = {
        "commit": COMMIT,
        "source_blobs": BLOBS,
        "verdict": "EQUIV_PARTIAL",
        "whole_commit_verdict": "UNKNOWN",
        "scope": "XXH_mult64to128 low64 bidirectional Alive2 and full 128-bit source arithmetic for arbitrary operands under the documented __umulh model; AArch64 Clang 20 -O2 selects the historical branches",
        "model": "__umulh(a,b) = high 64 bits of unsigned 64x64 product; _M_ARM64 defined and __GNUC__ undefined to select the historical branches; this is not an MSVC compilation",
        "checks": {},
    }
    lean_output = run(["lean", str(LEAN_PROOF)])
    assert "'arbitrary_u64_operands' depends on axioms:" in lean_output
    assert "sorryAx" not in lean_output
    result["checks"]["full_128_source_arithmetic"] = lean_output.strip()
    with TemporaryDirectory(prefix="xxhash-15abfc2-") as directory:
        work = Path(directory)
        modules = {}
        for side, oid in BLOBS.items():
            source = subprocess.run(["git", "-C", str(REPO), "cat-file", "blob", oid],
                                    capture_output=True, check=True,
                                    env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout
            assert hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest() == oid
            folder = work / side
            folder.mkdir()
            (folder / "xxhash.h").write_bytes(source)
            (folder / "wrapper.c").write_text(WRAPPER)
            module = folder / "target.ll"
            run([str(CLANG), "-target", "aarch64-linux-gnu", "-D_M_ARM64=1", "-U__GNUC__",
                 "-DXXH_VECTOR=0", "-Dstatic_assert=_Static_assert", "-O2", "-nostdlibinc",
                 "-Wno-unknown-pragmas", "-isystem", str(SYSINC), "-S", "-emit-llvm",
                 str(folder / "wrapper.c"), "-o", str(module)])
            ir = module.read_text()
            target = ir.split(" @target(", 1)[1].split("\n}", 1)[0]
            assert ("mul nuw i128" in target) == (side == "new")
            assert ("4294967295" in target) == (side == "old")
            modules[side] = module
            result[side + "_ir_sha256"] = hashlib.sha256(ir.replace(str(work), "<WORK>").encode()).hexdigest()
        for direction, source, target in (("forward", "old", "new"), ("reverse", "new", "old")):
            output = run([str(ALIVE), "--func=target_low", "--always-verify", "--fail-src-ub",
                          "--smt-to=30000", "--quiet", str(modules[source]), str(modules[target])])
            assert "1 correct transformations" in output and "0 incorrect transformations" in output
            assert "0 failed-to-prove transformations" in output and "0 Alive2 errors" in output
            result["checks"]["low_" + direction] = output.strip()
        output = run([str(ALIVE), "--func=target_high", "--always-verify", "--fail-src-ub",
                      "--smt-to=30000", "--quiet", str(modules["old"]), str(modules["new"])], timeout=45)
        assert "ERROR: Timeout" in output and "1 failed-to-prove transformations" in output
        assert "0 correct transformations" in output and "0 incorrect transformations" in output
        result["checks"]["high_forward"] = output.strip()
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": list(result["checks"])}))


if __name__ == "__main__":
    main()
