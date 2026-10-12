#!/usr/bin/env python3
"""Audit the complete historical change and recheck changed XXH3 stripe routines."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parents[4]
here = Path(__file__).resolve().parent
repo = root / "benchmarks/repos/xxHash"
commit = "11126e38d9bb00ee1de3b2a581c386f7a02da06b"
old_oid = "6e7ef05323ec20a55c0c4ce8e26e847bba563604"
new_oid = "485d46625ad16db94a5f9725d55b24cfb5fe9eed"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, *, output=None):
    result = subprocess.run(args, cwd=root, env=env, text=True, stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT)
    if output is not None:
        output.write_text(result.stdout)
    assert result.returncode == 0, (args, result.stdout[-2000:])
    return result.stdout


change = run(["git", "-C", str(repo), "diff-tree", "--raw", "--no-commit-id", "-r",
              commit + "^", commit]).strip()
assert change.endswith(f"{old_oid} {new_oid} M\txxhash.h") and len(change.splitlines()) == 1
sources = {}
for side, oid in (("old", old_oid), ("new", new_oid)):
    data = (here / side / "xxhash.h").read_bytes()
    assert hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == oid
    sources[side] = data.decode()

pattern = r"XXH_ALIGN\((?:64|32|16|XXH_ACC_ALIGN)\)[ \t]+(?=(?:__m512i|__m256i|__m128i|uint64x2_t|xxh_u64)\*\s*const xacc\b)"
stripped, changed = re.subn(pattern, "", sources["old"])
assert changed == 9 and stripped == sources["new"]
assert not re.search(r"&\s*xacc\b|#\s*define\s+xacc\b", sources["old"])
alignments = re.findall(r"^#\s*define XXH_ALIGN\(n\)\s*(.*)$", sources["old"], re.MULTILINE)
assert alignments == ["alignas(n)", "alignas(n)", "__attribute__ ((aligned(n)))",
                      "__declspec(align(n))", "/* disabled */"]

out = here / "alignment-checks"
out.mkdir(exist_ok=True)
clang = root / "alive2/toolchain/usr/bin/clang-20"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
inc = root / "history-eq/c/xxHash/_work2020/inc"
checks = []
for vector, flags in (
    ("SCALAR", []), ("SSE2", ["-msse2"]), ("AVX2", ["-mavx2"]),
    ("AVX512", ["-mavx512f", "-mavx512bw", "-mavx512dq", "-mavx512vl"]),
):
    modules = {}
    for side in ("old", "new"):
        module = out / f"{vector.lower()}-{side}.ll"
        run([str(clang), "-O3", "-march=x86-64-v3", "-fno-strict-aliasing",
             "-fno-vectorize", "-fno-slp-vectorize", "-w", *flags,
             f"-DXXH_VECTOR=XXH_{vector}", "-I", str(here / side), "-I", str(inc),
             "-S", "-emit-llvm", str(here / "wrap_rawsimd.c"), "-o", str(module)])
        # This Alive2 pin rejects newer LLVM attributes and loop metadata on both sides.
        ir = module.read_text()
        ir = re.sub(r" nocapture\b", "", ir)
        ir = re.sub(r", !llvm\.loop ![0-9]+|, !srcloc ![0-9]+", "", ir)
        module.write_text(ir)
        run([str(opt), "-passes=verify", "-disable-output", str(module)])
        modules[side] = module
    for func in ("target_acc512", "target_scramble"):
        for direction, src, dst in (("forward", "old", "new"), ("reverse", "new", "old")):
            log = out / f"{vector.lower()}-{func}-{direction}.log"
            output = run([str(alive), f"--func={func}", "--always-verify",
                          "--smt-to=30000", "-quiet", str(modules[src]), str(modules[dst])],
                         output=log)
            assert "1 correct transformations" in output
            assert "0 incorrect transformations" in output
            assert "0 failed-to-prove transformations" in output
            assert "0 Alive2 errors" in output
            checks.append({"vector": vector, "function": func, "direction": direction,
                           "log": str(log.relative_to(root))})

result = {"commit": commit, "historical_blobs": {"old": old_oid, "new": new_oid},
          "complete_source_diff": "nine XXH_ALIGN removals on local xacc pointer objects",
          "pointer_address_taken": False, "alive2_correct_directions": len(checks), "checks": checks,
          "scope": "changed stripe routines under four x86 Clang 20 configurations; source audit covers all changed declarations"}
(here / "defined-outputs-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"{changed} source removals audited; {len(checks)} Alive2 directions correct")
