#!/usr/bin/env python3
"""Audit whether the prior Alive2 wrappers included the changed update body."""
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
COMMIT = "9c1a86e25989a0ba023443fd1fc3d0896c9343e1"
LENGTHS = (2048,)
WRAPPER = '''#define XXH_STATIC_LINKING_ONLY
#define XXH_IMPLEMENTATION
#include "xxhash.h"
XXH64_hash_t target64(const unsigned char *data) {
    XXH3_state_t state = {0};
    XXH3_64bits_reset(&state);
    XXH3_64bits_update(&state, data, TEST_LEN);
    return XXH3_64bits_digest(&state);
}
XXH128_hash_t target128(const unsigned char *data) {
    XXH3_state_t state = {0};
    XXH3_128bits_reset(&state);
    XXH3_128bits_update(&state, data, TEST_LEN);
    return XXH3_128bits_digest(&state);
}
'''


def run(command):
    process = subprocess.run(command, capture_output=True, text=True, timeout=45, check=True)
    return process.stdout


def main():
    assert run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).splitlines() == ["xxhash.h"]
    result = {"commit": COMMIT, "scope": "Clang 20 -O1 x86-64 with XXH3_STREAM_USE_STACK=1; public 64/128-bit reset-update-digest wrappers at length 2048", "lengths": LENGTHS, "source_blobs": {}, "calls": {}}
    with TemporaryDirectory(prefix="xxhash-9c1a86e2-") as directory:
        temp = Path(directory)
        wrapper = temp / "wrapper.c"
        wrapper.write_text(WRAPPER)
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            include = temp / side
            include.mkdir()
            data = subprocess.run(["git", "-C", str(REPO), "show", revision + ":xxhash.h"],
                                  check=True, stdout=subprocess.PIPE).stdout
            oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert oid == run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).strip()
            (include / "xxhash.h").write_bytes(data)
            result["source_blobs"][side] = oid
        for length in LENGTHS:
            modules = {}
            for side in ("old", "new"):
                module = temp / f"{side}-{length}.ll"
                run([str(CLANG), "-std=c99", "-O1", "-DXXH3_STREAM_USE_STACK=1",
                     "-DTEST_LEN=" + str(length), "-I", str(temp / side), "-S", "-emit-llvm",
                     str(wrapper), "-o", str(module)])
                ir = module.read_text().replace(" nocapture", "")
                ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
                ir = "\n".join(line for line in ir.splitlines()
                               if "call void @llvm.experimental.noalias.scope.decl" not in line) + "\n"
                module.write_text(ir)
                modules[side] = module
            for side, module in modules.items():
                ir = module.read_text()
                result["calls"][side] = {}
                for function in ("target64", "target128"):
                    body = ir.split(" @" + function + "(", 1)[1].split("\n}", 1)[0]
                    result["calls"][side][function] = [line.strip() for line in body.splitlines()
                        if "call " in line and "@XXH3_" in line and "_update(" in line]
                    assert len(result["calls"][side][function]) == 1
    result["verdict"] = "UNKNOWN"
    result["reason"] = "The prior 28 Alive2 wrapper comparisons left the changed update body as a call; their success is not evidence of update equivalence."
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "noninlined_targets": 4}))


if __name__ == "__main__":
    main()
