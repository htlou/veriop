#!/usr/bin/env python3
"""Recheck the exact historical static-wrapper-to-macro change."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
COMMIT = "eaffecc777c9be148e41a6f852154dc11881c374"
WRAPPER = '''#define XXH_STATIC_LINKING_ONLY
#define XXH_IMPLEMENTATION
#include "xxhash.h"
void target_copy(void *dst, const void *src, unsigned long n) { XXH_memcpy(dst, src, n); }
void target_set(void *dst, int byte, unsigned long n) { XXH_memset(dst, byte, n); }
int target_compare(const void *left, const void *right, unsigned long n) { return XXH_memcmp((void *)left, right, n); }
'''


def run(command):
    process = subprocess.run(command, capture_output=True, text=True, timeout=35, check=True)
    return process.stdout


def main():
    assert run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).splitlines() == ["xxhash.h"]
    result = {"commit": COMMIT, "source_blobs": {}, "scope": "three direct memory-helper calls in default Clang 20 -O1 x86-64 translation units", "o0_calls": {}, "checks": []}
    with TemporaryDirectory(prefix="xxhash-eaffecc7-") as directory:
        temp = Path(directory)
        wrapper = temp / "wrapper.c"
        wrapper.write_text(WRAPPER)
        modules = {}
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            include = temp / side
            include.mkdir()
            data = subprocess.run(["git", "-C", str(REPO), "show", revision + ":xxhash.h"],
                                  check=True, stdout=subprocess.PIPE).stdout
            digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert digest == run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).strip()
            result["source_blobs"][side] = digest
            (include / "xxhash.h").write_bytes(data)
            o0 = temp / f"{side}-o0.ll"
            run([str(CLANG), "-std=c99", "-O0", "-I", str(include), "-S", "-emit-llvm", str(wrapper), "-o", str(o0)])
            result["o0_calls"][side] = {}
            for function in ("target_copy", "target_set", "target_compare"):
                body = re.search(r"^define [^\n]*@" + function + r"\([^\n]*\).*?^}", o0.read_text(), re.M | re.S)
                assert body is not None
                result["o0_calls"][side][function] = [line.strip() for line in body.group().splitlines() if " call " in line]
            module = temp / f"{side}.ll"
            run([str(CLANG), "-std=c99", "-O1", "-I", str(include), "-S", "-emit-llvm", str(wrapper), "-o", str(module)])
            module.write_text(module.read_text().replace(" nocapture", ""))
            modules[side] = module
        for function, helper in (("target_copy", "XXH_memcpy"), ("target_set", "XXH_memset"), ("target_compare", "XXH_memcmp")):
            assert any("@" + helper + "(" in line for line in result["o0_calls"]["old"][function])
            assert all("@" + helper + "(" not in line for line in result["o0_calls"]["new"][function])
        for function in ("target_copy", "target_set", "target_compare"):
            for direction, source, target in (("old-to-new", "old", "new"), ("new-to-old", "new", "old")):
                output = run([str(ALIVE), str(modules[source]), str(modules[target]), "--func=" + function,
                              "--always-verify", "--fail-src-ub", "--smt-to=30000", "--quiet"])
                assert all(s in output for s in ("1 correct transformations", "0 incorrect transformations",
                                                 "0 failed-to-prove transformations", "0 Alive2 errors")), output
                result["checks"].append({"function": function, "direction": direction, "output": output.strip()})
    result["verdict"] = "EQUIV_PARTIAL"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": len(result["checks"])}))


if __name__ == "__main__":
    main()
