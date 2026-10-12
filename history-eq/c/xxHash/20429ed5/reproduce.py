#!/usr/bin/env python3
"""Check the historical AVX-512 secret-initialization specialization."""
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
COMMIT = "20429ed57309ae33d562f3bf363141a86ab73a60"
WRAPPER = '''#define XXH_STATIC_LINKING_ONLY
#define XXH_IMPLEMENTATION
#define XXH_VECTOR XXH_AVX512
#include "xxhash.h"
void target(void *out, unsigned long long seed) {
    XXH3_initCustomSecret_avx512(out, seed);
}
'''


def run(command):
    process = subprocess.run(command, capture_output=True, text=True, timeout=35)
    assert process.returncode == 0, (command, process.stderr[-1000:])
    return process.stdout


def main():
    result = {"commit": COMMIT, "scope": "XXH3_initCustomSecret_avx512 on Clang 20 x86-64 AVX-512F+BW; "
              "arbitrary seed and valid aligned output pointer", "source_blobs": {}, "checks": []}
    assert run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).splitlines() == ["xxhash.h"]
    diff = run(["git", "-C", str(REPO), "diff", "--unified=0", COMMIT + "^", COMMIT, "--", "xxhash.h"])
    changed = [line for line in diff.splitlines()
               if line.startswith(("+", "-")) and not line.startswith(("+++", "---"))]
    assert len(changed) == 2 and "_mm512_set1_epi8(0)" in changed[0]
    assert changed[1] == changed[0].replace("-", "+", 1).replace("_mm512_set1_epi8(0)", "_mm512_setzero_si512()")
    with TemporaryDirectory(prefix="xxh-avx512-zero-") as directory:
        temp = Path(directory)
        wrapper = temp / "wrapper.c"
        wrapper.write_text(WRAPPER)
        modules = {}
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            include = temp / side
            include.mkdir()
            data = subprocess.run(["git", "-C", str(REPO), "show", revision + ":xxhash.h"],
                                  check=True, stdout=subprocess.PIPE).stdout
            (include / "xxhash.h").write_bytes(data)
            digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert digest == run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).strip()
            result["source_blobs"][side] = digest
            module = temp / f"{side}.ll"
            run([str(CLANG), "-std=c99", "-O2", "-mavx512f", "-mavx512bw", "-I", str(include),
                 "-S", "-emit-llvm", str(wrapper), "-o", str(module)])
            normalized = module.read_text().replace(" nocapture", "")
            normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
            module.write_text(normalized)
            modules[side] = module
        body = lambda side: re.search(r"^define [^\n]*@target\([^\n]*\).*?^}",
                                      modules[side].read_text(), re.M | re.S).group()
        result["target_ir_differs"] = body("old") != body("new")
        assert not any(not name.startswith("llvm.") for side in ("old", "new")
                       for name in re.findall(r"\bcall\b[^@\n]*@([\w.$]+)", body(side)))
        for direction, source, target in (("forward", "old", "new"), ("backward", "new", "old")):
            output = run([str(ALIVE), str(modules[source]), str(modules[target]), "--func=target",
                          "--always-verify", "--fail-src-ub", "--smt-to=30000", "--quiet"])
            assert "1 correct transformations" in output and "0 incorrect transformations" in output
            assert "0 failed-to-prove transformations" in output and "0 Alive2 errors" in output
            result["checks"].append({"direction": direction, "output": output.strip(),
                                     "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                                     "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest()})
    result["verdict"] = "EQUIV"
    result["whole_library_verdict"] = "UNKNOWN"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": len(result["checks"]),
                      "target_ir_differs": result["target_ir_differs"]}))


if __name__ == "__main__":
    main()
