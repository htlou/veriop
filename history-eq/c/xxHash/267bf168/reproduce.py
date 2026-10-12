#!/usr/bin/env python3
"""Check the exact historical XXH3_initCustomSecret output with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
ALIVE_LARGE = ROOT / "alive2/results/search/alive2-array-expand-constants/alive-tv"
BUILD_INFO = ROOT / "alive2/results/search/alive2-array-expand-constants/build.json"
SYSINC = ROOT / "history-eq/c/xxHash/_work2020/cross_sysinc"
COMMIT = "267bf168266e308691f4c88ecbd9c1828b873919"
BLOBS = {"old": "d1ba0f81402194851c0787cda149a81acc0fe2ea",
         "new": "7c909ea9b41eb9a628e6bd8a08fc4bbd9eacb012",
         "shared_xxhash": "a3851c427ef53db20da3a5d0c7c0c80c1690e91d"}
ASM = re.compile(r'(?m)^  (%\d+) = tail call ptr asm "", "=r,0"\(ptr nonnull @kSecret\) #\d+(?:, !srcloc !\d+)?$')


def run(command, timeout=60):
    return subprocess.run(command, capture_output=True, text=True, check=True,
                          timeout=timeout, env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout


def blob(oid):
    data = subprocess.run(["git", "-C", str(REPO), "cat-file", "blob", oid],
                          capture_output=True, check=True,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    return data


def main():
    assert run(["git", "-C", str(REPO), "diff-tree", "--no-commit-id", "--name-only",
                "-r", COMMIT + "^", COMMIT]).splitlines() == ["xxh3.h"]
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        assert run(["git", "-C", str(REPO), "rev-parse", revision + ":xxh3.h"]).strip() == BLOBS[side]
        assert run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).strip() == BLOBS["shared_xxhash"]
    build = json.loads(BUILD_INFO.read_text())
    assert hashlib.sha256(ALIVE_LARGE.read_bytes()).hexdigest() == build["checker_sha256"]
    assert build["constant_model_patch"].endswith("alive2-constants.patch")
    result = {
        "commit": COMMIT, "source_blobs": BLOBS,
        "verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNKNOWN",
        "scope": "all 192 output secret bytes of XXH3_initCustomSecret for arbitrary 64-bit seed and valid writable nonoverlapping output, Clang 20 -O2 -DNDEBUG x86-64 and AArch64",
        "model": "one AArch64 empty tied-register asm guard is an identity on kSecretPtr; alias-scope metadata removed for Alive2",
        "large_constant_checker_sha256": build["checker_sha256"],
        "checks": {},
    }
    with TemporaryDirectory(prefix="xxhash-267bf168-") as directory:
        work = Path(directory)
        for arch in ("x86_64", "aarch64"):
            modules = {}
            for side in ("old", "new"):
                folder = work / arch / side
                folder.mkdir(parents=True)
                (folder / "xxh3.h").write_bytes(blob(BLOBS[side]))
                (folder / "xxhash.h").write_bytes(blob(BLOBS["shared_xxhash"]))
                (folder / "wrapper.c").write_text('#include "xxh3.h"\n'
                    'void target(xxh_u8 *out, xxh_u64 seed) { XXH3_initCustomSecret(out, seed); }\n')
                module = folder / "target.ll"
                command = [str(CLANG), "-O2", "-DNDEBUG", "-fno-strict-aliasing",
                           "-S", "-emit-llvm", str(folder / "wrapper.c"), "-o", str(module)]
                if arch == "aarch64":
                    command[1:1] = ["-target", "aarch64-linux-gnu", "-nostdlibinc",
                                    "-Dstatic_assert=_Static_assert", "-isystem", str(SYSINC)]
                run(command)
                ir = module.read_text().replace(" nocapture", "")
                ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
                ir = "\n".join(line for line in ir.splitlines()
                               if "call void @llvm.experimental.noalias.scope.decl" not in line) + "\n"
                asm_count = len(ASM.findall(ir))
                assert asm_count == (1 if arch == "aarch64" and side == "new" else 0)
                if asm_count:
                    ir = ASM.sub(lambda m: f"  {m[1]} = getelementptr i8, ptr @kSecret, i64 0", ir)
                body = ir.split(" @target(", 1)[1].split("\n}", 1)[0]
                assert "call " not in body
                assert ("@kSecret" in ir) == (arch == "aarch64" and side == "new")
                module.write_text(ir)
                modules[side] = module
                result["checks"][arch + "_" + side + "_ir"] = {
                    "sha256": hashlib.sha256(ir.replace(str(work), "<WORK>").encode()).hexdigest(),
                    "modeled_asm_count": asm_count,
                }
            assert modules["old"].read_text() != modules["new"].read_text()
            checker = ALIVE_LARGE if arch == "aarch64" else ALIVE
            for direction, source_side, target_side in (("forward", "old", "new"), ("reverse", "new", "old")):
                output = run([str(checker), "--func=target", "--always-verify", "--fail-src-ub",
                              "--smt-to=30000", "--quiet", str(modules[source_side]),
                              str(modules[target_side])])
                assert all(line in output for line in ("1 correct transformations",
                    "0 incorrect transformations", "0 failed-to-prove transformations",
                    "0 Alive2 errors")), output
                result["checks"][arch + "_" + direction] = output.strip()
            if arch == "aarch64":
                output = run([str(ALIVE), "--func=target", "--always-verify", "--fail-src-ub",
                              "--smt-to=30000", "--quiet", str(modules["old"]),
                              str(modules["new"])])
                assert "Large constant initializer removed" in output
                assert "1 failed-to-prove transformations" in output
                result["checks"]["aarch64_standard_checker_diagnostic"] = output.strip()
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "passed_directions": 4}))


if __name__ == "__main__":
    main()
