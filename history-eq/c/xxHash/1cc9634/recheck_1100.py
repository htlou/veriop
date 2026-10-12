#!/usr/bin/env python3
"""Recheck exact-source 1100-byte xxHash prefetch paths with current Alive2."""
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
COMMIT = "1cc96340532f65f606661ac6dc0837397a129b37"
WRAPPER = HERE / "api64_len1100_scalar_u20/wrapper.c"


def run(command):
    return subprocess.run(command, capture_output=True, text=True, check=True, timeout=60,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout


def main():
    assert run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).splitlines() == ["xxh3.h"]
    sources = {}
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        sources[side] = {}
        for name in ("xxh3.h", "xxhash.h", "xxhash.c"):
            path = HERE / side / name
            data = path.read_bytes()
            oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert oid == run(["git", "-C", str(REPO), "rev-parse", revision + ":" + name]).strip()
            sources[side][name] = oid
    assert WRAPPER.read_bytes() == (HERE / "api128_len1100_scalar_u20/wrapper.c").read_bytes()
    checks = []
    with TemporaryDirectory(prefix="xxhash-1cc9634-") as directory:
        temp = Path(directory)
        for width, define, function in ((64, (), "target_xxh3_64"),
                                        (128, ("-DH128",), "target_xxh128")):
            modules = {}
            for side in ("old", "new"):
                module = temp / f"{side}-{width}.ll"
                run([str(CLANG), "-std=c99", "-O3", "-march=x86-64-v3",
                     "-fno-strict-aliasing", "-fno-vectorize", "-fno-slp-vectorize",
                     "-w", "-DNDEBUG", "-Drestrict=", "-D__restrict=",
                     "-mllvm", "-inline-threshold=100000", "-DLEN=1100", "-DXXH_VECTOR=0",
                     *define, "-I", str(HERE / side), "-S", "-emit-llvm",
                     str(WRAPPER), "-o", str(module)])
                ir = module.read_text().replace(" nocapture", "")
                ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
                ir = "\n".join(line for line in ir.splitlines()
                               if "call void @llvm.experimental.noalias.scope.decl" not in line) + "\n"
                body = ir.split(" @" + function + "(", 1)[1].split("\n}", 1)[0]
                assert not any("call " in line and "@llvm." not in line for line in body.splitlines())
                assert ("@llvm.prefetch" in body) == (side == "new")
                module.write_text(ir)
                modules[side] = module
            for direction, source, target in (("old-to-new", "old", "new"),
                                              ("new-to-old", "new", "old")):
                output = run([str(ALIVE), "--func=" + function,
                              "--src-unroll=20", "--tgt-unroll=20", "--smt-to=30000",
                              "--always-verify", "--fail-src-ub", "--quiet",
                              str(modules[source]), str(modules[target])])
                assert all(term in output for term in ("1 correct transformations",
                    "0 incorrect transformations", "0 failed-to-prove transformations",
                    "0 Alive2 errors")), output
                checks.append({"width": width, "direction": direction, "output": output.strip()})
    assert len(checks) == 4
    result = {"commit": COMMIT, "verdict": "EQUIV_BOUNDED",
              "scope": "Clang 20 -O3 scalar x86-64-v3, public XXH3 64/128-bit returned hashes at fixed length 1100 with symbolic input and seed; 20-step Alive2 loop bound",
              "source_blobs": sources, "checks": checks}
    (HERE / "recheck-1100-result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": len(checks)}))


if __name__ == "__main__":
    main()
