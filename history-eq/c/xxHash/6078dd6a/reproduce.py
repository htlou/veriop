#!/usr/bin/env python3
"""Record Alive2's exact-source noalias rejection for the restrict change."""
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
COMMIT = "6078dd6a888eee8d1ef243ea6bd5f6767089389e"
WRAPPER = '''#define XXH_STATIC_LINKING_ONLY
#define XXH_IMPLEMENTATION
#include "xxhash.h"
unsigned long long target(const void *input, unsigned long long seed) {
    return XXH3_hashLong_64b_withSeed(input, 256, seed, XXH3_kSecret, 192);
}
'''


def run(args):
    return subprocess.run(args, capture_output=True, text=True, timeout=40)


def main():
    result = {"commit": COMMIT, "scope": "XXH3_hashLong_64b_withSeed, Clang 20 O1 x86-64",
              "source_blobs": {}, "checks": []}
    assert run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).stdout.splitlines() == ["xxhash.h"]
    with TemporaryDirectory(prefix="xxh-restrict-alive-") as directory:
        temp = Path(directory)
        wrapper = temp / "wrapper.c"
        wrapper.write_text(WRAPPER)
        modules = {}
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            include = temp / side
            include.mkdir()
            data = run(["git", "-C", str(REPO), "show", revision + ":xxhash.h"])
            assert data.returncode == 0
            raw = data.stdout.encode()
            (include / "xxhash.h").write_bytes(raw)
            digest = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
            assert digest == run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).stdout.strip()
            result["source_blobs"][side] = digest
            module = temp / f"{side}.ll"
            compiled = run([str(CLANG), "-std=c99", "-O1", "-I", str(include), "-S", "-emit-llvm",
                            str(wrapper), "-o", str(module)])
            assert compiled.returncode == 0, compiled.stderr
            normalized = module.read_text().replace(" nocapture", "")
            normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
            normalized = "\n".join(line for line in normalized.splitlines()
                                   if "call void @llvm.experimental.noalias.scope.decl(" not in line) + "\n"
            module.write_text(normalized)
            modules[side] = module
        assert "@XXH3_hashLong_64b_withSeed(ptr noalias" in modules["new"].read_text()
        for direction, source, target in (("forward", "old", "new"), ("backward", "new", "old")):
            checked = run([str(ALIVE), str(modules[source]), str(modules[target]),
                           "--func=XXH3_hashLong_64b_withSeed", "--always-verify", "--fail-src-ub", "--quiet"])
            output = checked.stdout + checked.stderr
            assert "Unsupported attribute: noalias" in output and "1 Alive2 errors" in output
            result["checks"].append({"direction": direction, "exit_code": checked.returncode,
                                     "output": output.strip(),
                                     "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                                     "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest()})
    result["verdict"] = "UNSUPPORTED"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print("UNSUPPORTED: Alive2 rejects the historical restrict/noalias function attribute")


if __name__ == "__main__":
    main()
