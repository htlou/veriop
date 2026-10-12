#!/usr/bin/env python3
"""Recheck inlined public streaming paths across the stack-accumulator rewrite."""
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
COMMIT = "9c1a86e25989a0ba023443fd1fc3d0896c9343e1"
LENGTHS = (2048,)
WRAPPER = '''#define XXH_STATIC_LINKING_ONLY
#define XXH_INLINE_ALL
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
    result = {"commit": COMMIT, "scope": "Clang 20 -O1 x86-64 with XXH_INLINE_ALL and XXH3_STREAM_USE_STACK=1; public 64/128-bit reset-update-digest returned hashes at fixed length 2048", "lengths": LENGTHS, "source_blobs": {}, "checks": []}
    with TemporaryDirectory(prefix="xxhash-9c1a86e2-inlined-") as directory:
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
                run([str(CLANG), "-std=c99", "-O1", "-DXXH3_STREAM_USE_STACK=1", "-DTEST_LEN=" + str(length), "-I", str(temp / side), "-S", "-emit-llvm",
                     str(wrapper), "-o", str(module)])
                ir = module.read_text().replace(" nocapture", "")
                ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
                ir = "\n".join(line for line in ir.splitlines()
                               if "call void @llvm.experimental.noalias.scope.decl" not in line) + "\n"
                for function in ("target64", "target128"):
                    body = ir.split(" @" + function + "(", 1)[1].split("\n}", 1)[0]
                    assert not any("@XXH3_" + name + "(" in body for name in
                                   ("64bits_reset", "64bits_update", "64bits_digest",
                                    "128bits_reset", "128bits_update", "128bits_digest"))
                module.write_text(ir)
                modules[side] = module
            for function in ("target64", "target128"):
                for direction, source, target in (("old-to-new", "old", "new"), ("new-to-old", "new", "old")):
                    output = run([str(ALIVE), str(modules[source]), str(modules[target]),
                                  "--func=" + function, "--always-verify", "--fail-src-ub",
                                  "--smt-to=30000", "--quiet"])
                    result["checks"].append({"length": length, "function": function,
                                             "direction": direction, "output": output.strip()})
    assert len(result["checks"]) == 4
    assert all("1 correct transformations" in c["output"] and
               "0 incorrect transformations" in c["output"] and
               "0 failed-to-prove transformations" in c["output"] and
               "0 Alive2 errors" in c["output"] for c in result["checks"])
    result["verdict"] = "EQUIV_BOUNDED"
    (HERE / "inlined-result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": len(result["checks"])}))


if __name__ == "__main__":
    main()
