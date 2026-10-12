#!/usr/bin/env python3
"""Check both exact historical XXH3_mergeAccs bodies, including ARMv7."""

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
SYSINC = ROOT / "history-eq/c/xxHash/_work2020/cross_sysinc"
COMMIT = "a16928e06a4205240f9d54fd6ef11e781ed2fbaf"
BLOBS = {"old": "7c909ea9b41eb9a628e6bd8a08fc4bbd9eacb012",
         "new": "f5907eca4958869cef018f9a65ebea3492c0c075",
         "shared_xxhash": "a3851c427ef53db20da3a5d0c7c0c80c1690e91d"}
WRAPPER = ('#include "xxh3.h"\n'
           'xxh_u64 target(const xxh_u64 *acc, const xxh_u8 *secret, xxh_u64 start) '
           '{ return XXH3_mergeAccs(acc, secret, start); }\n')
ASM = re.compile(r'(?m)^  (%\d+) = tail call i64 asm "", "=r,0"\(i64 (%\d+)\) #\d+(?:, !srcloc !\d+)?$')


def run(command):
    return subprocess.run(command, capture_output=True, text=True, check=True,
                          timeout=45, env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout


def source(oid):
    data = subprocess.run(["git", "-C", str(REPO), "cat-file", "blob", oid],
                          capture_output=True, check=True,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    return data


def normalized(ir, arm, side):
    ir = ir.replace(" nocapture", "")
    ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
    ir = "\n".join(line for line in ir.splitlines()
                   if "call void @llvm.experimental.noalias.scope.decl" not in line) + "\n"
    asm_count = len(ASM.findall(ir))
    assert asm_count == (4 if arm and side == "new" else 0), (arm, side, asm_count)
    raw_ir = ir
    if arm:
        ir = ASM.sub(lambda m: f"  {m[1]} = add i64 {m[2]}, 0", ir)
    body = ir.split(" @target(", 1)[1].split("\n}", 1)[0]
    assert "call " not in body, (arm, side)
    return ir, asm_count, raw_ir


def main():
    assert run(["git", "-C", str(REPO), "diff-tree", "--no-commit-id", "--name-only",
                "-r", COMMIT + "^", COMMIT]).splitlines() == ["xxh3.h"]
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        assert run(["git", "-C", str(REPO), "rev-parse", revision + ":xxh3.h"]).strip() == BLOBS[side]
        assert run(["git", "-C", str(REPO), "rev-parse", revision + ":xxhash.h"]).strip() == BLOBS["shared_xxhash"]
    result = {
        "commit": COMMIT, "source_blobs": BLOBS,
        "verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNKNOWN",
        "scope": "complete returned XXH3_mergeAccs 64-bit value, arbitrary initialized 8-lane accumulator, 64-byte secret, and start; x86-64 and Clang ARMv7 NEON -O2",
        "model": "the four new ARMv7 empty tied-register asm guards preserve their i64 input value; alias-scope metadata is stripped for Alive2",
        "checks": {},
    }
    with TemporaryDirectory(prefix="xxhash-a16928e0-") as directory:
        work = Path(directory)
        for arch in ("x86_64", "armv7_neon"):
            arm = arch == "armv7_neon"
            modules = {}
            raw_modules = {}
            for side in ("old", "new"):
                folder = work / arch / side
                folder.mkdir(parents=True)
                (folder / "xxh3.h").write_bytes(source(BLOBS[side]))
                (folder / "xxhash.h").write_bytes(source(BLOBS["shared_xxhash"]))
                (folder / "wrapper.c").write_text(WRAPPER)
                module = folder / "target.ll"
                command = [str(CLANG), "-O2", "-fno-vectorize", "-fno-slp-vectorize",
                           "-fno-strict-aliasing", "-S", "-emit-llvm", str(folder / "wrapper.c"),
                           "-o", str(module)]
                if arm:
                    command[1:1] = ["-target", "armv7a-linux-gnueabihf", "-mfpu=neon",
                                    "-mfloat-abi=hard", "-nostdlibinc",
                                    "-Dstatic_assert=_Static_assert", "-isystem", str(SYSINC)]
                run(command)
                ir, asm_count, raw_ir = normalized(module.read_text(), arm, side)
                module.write_text(ir)
                modules[side] = module
                if arm:
                    raw_module = folder / "target-raw.ll"
                    raw_module.write_text(raw_ir)
                    raw_modules[side] = raw_module
                result["checks"][arch + "_" + side + "_ir"] = {
                    "sha256": hashlib.sha256(ir.replace(str(work), "<WORK>").encode()).hexdigest(),
                    "modeled_asm_count": asm_count,
                }
            assert modules["old"].read_text() != modules["new"].read_text()
            if arm:
                raw_output = run([str(ALIVE), "--func=target", "--always-verify",
                                  "--fail-src-ub", "--smt-to=30000", "--quiet",
                                  str(raw_modules["old"]), str(raw_modules["new"])])
                assert "1 incorrect transformations" in raw_output and "0 Alive2 errors" in raw_output
                result["checks"]["armv7_raw_checker_diagnostic"] = raw_output.strip()
            for direction, source_side, target_side in (("forward", "old", "new"), ("reverse", "new", "old")):
                output = run([str(ALIVE), "--func=target", "--always-verify", "--fail-src-ub",
                              "--smt-to=30000", "--quiet", str(modules[source_side]),
                              str(modules[target_side])])
                assert all(line in output for line in ("1 correct transformations",
                    "0 incorrect transformations", "0 failed-to-prove transformations",
                    "0 Alive2 errors")), output
                result["checks"][arch + "_" + direction] = output.strip()
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "passed_directions": 4}))


if __name__ == "__main__":
    main()
