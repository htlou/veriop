#!/usr/bin/env python3
"""Check two source-locked XXH32 lengths on strict-alignment ARMv7."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
revision = {"old": "107fd8f2a60611afd641aa4b53521ac042e533ec",
            "new": "681ea2aad6367279f8b82149de8657e9b17be8d6"}
expected = {
    "old": {"xxhash.c": "3c5f560925617934c521db3e4d34d0eb8a19c395",
            "xxhash.h": "afdf243d5e108cb70f61df8a55d6ea26365480bc"},
    "new": {"xxhash.c": "6dacdcbc87b834f348c653a0710db50fb7473edb",
            "xxhash.h": "8cb06d39a0a826b92351b2732e7aad0815231c41"},
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
for side in ("old", "new"):
    for name, oid in expected[side].items():
        actual = subprocess.check_output(["git", "-C", str(repo), "rev-parse",
                                          f"{revision[side]}:{name}"], env=env, text=True).strip()
        assert actual == oid
        assert subprocess.check_output(["git", "hash-object", str(here / side / name)],
                                       env=env, text=True).strip() == oid

with tempfile.TemporaryDirectory(prefix="xxh681-arm-strict-") as temporary:
    work = Path(temporary)
    (work / "stdlib.h").write_text("#include <stddef.h>\nvoid *malloc(size_t);\nvoid free(void *);\n")
    (work / "string.h").write_text("#include <stddef.h>\nvoid *memcpy(void *, const void *, size_t);\n")
    flags = ["--target=armv7-none-eabi", "-mno-unaligned-access", "-std=gnu11", "-O3",
             "-mllvm", "-inline-threshold=10000", "-S", "-emit-llvm", "-I", str(work)]
    macros = subprocess.check_output([str(clang), *flags[:2], "-dM", "-E", "-x", "c", "/dev/null"], text=True)
    assert "#define __arm__ 1" in macros and "__ARM_FEATURE_UNALIGNED" not in macros
    irs = {}
    for side in ("old", "new"):
        wrapper = work / f"{side}.c"
        body = f'#include "{here / side / "xxhash.c"}"\n'
        for length in (5, 16):
            body += (f"unsigned target_len{length}(const void *p, unsigned seed) "
                     f"{{ return XXH32(p,{length},seed); }}\n")
            body += (f"unsigned target_len{length}_aligned(const void *p, unsigned seed) "
                     f"{{ __builtin_assume(((unsigned long)p & 3u)==0); return XXH32(p,{length},seed); }}\n")
        wrapper.write_text(body)
        raw = work / f"{side}.ll"
        subprocess.run([str(clang), *flags, str(wrapper), "-o", str(raw)], check=True)
        normalized = re.sub(r", ![A-Za-z0-9_.]+ !\d+", "",
                            raw.read_text().replace(" nocapture", "").replace(" noalias", ""))
        normalized = "\n".join(line for line in normalized.splitlines() if not line.startswith("!")) + "\n"
        ir = work / f"{side}-alive.ll"
        ir.write_text(normalized)
        subprocess.run([str(opt), "-passes=verify", "-disable-output", str(ir)], check=True)
        for length in (5, 16):
            for suffix in ("", "_aligned"):
                name = f"target_len{length}{suffix}"
                match = re.search(rf"^define[^\n]*@{name}\([^\n]*\{{.*?^\}}", normalized, re.M | re.S)
                assert match and "call i32 @XXH32" not in match.group(), (side, name)
        irs[side] = ir

    checks = {}
    for length in (5, 16):
        for aligned in (False, True):
            name = f"target_len{length}" + ("_aligned" if aligned else "")
            for source, target in (("old", "new"), ("new", "old")):
                run = subprocess.run([str(alive), f"--func={name}", "--always-verify", "--smt-to=30000",
                                      str(irs[source]), str(irs[target])],
                                     capture_output=True, text=True, timeout=60)
                log = run.stdout + run.stderr
                label = f"{name}-{source}-to-{target}"
                (here / f"arm-strict-{label}.log").write_text(log)
                refinement = source == "old" or aligned
                assert run.returncode == 0 and "0 Alive2 errors" in log, label
                if refinement:
                    assert "1 correct transformations" in log, label
                else:
                    assert "1 incorrect transformations" in log and "UB triggered" in log, label
                checks[label] = "refines" if refinement else "reverse fails: old target UB on unaligned input"

    result = {
        "commit": revision["new"], "parent": revision["old"],
        "scope": "XXH32, ARMv7 little-endian with -mno-unaligned-access, Clang 20 -O3; input lengths 5 and 16",
        "verdict": "new refines old for both lengths; aligned inputs equivalent; new has defined unaligned inputs where old is UB",
        "whole_commit_verdict": "UNKNOWN", "source_blobs": expected,
        "clang_flags": flags[:-2],
        "ir_sha256": {side: hashlib.sha256(irs[side].read_bytes()).hexdigest() for side in irs},
        "checks": checks,
    }
    (here / "arm-strict-result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"checks": len(checks), "verdict": result["verdict"]}))
