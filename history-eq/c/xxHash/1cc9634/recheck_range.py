#!/usr/bin/env python3
"""Check both public scalar hashes for every length from zero through 16 KiB."""

import hashlib
import json
import re
from pathlib import Path
from tempfile import TemporaryDirectory

from recheck_1100 import ALIVE, CLANG, COMMIT, HERE, REPO, ROOT, WRAPPER, run

MAX_LEN = 16384


def main():
    assert run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).splitlines() == ["xxh3.h"]
    sources = {}
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        sources[side] = {}
        for name in ("xxh3.h", "xxhash.h", "xxhash.c"):
            data = (HERE / side / name).read_bytes()
            oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert oid == run(["git", "-C", str(REPO), "rev-parse", revision + ":" + name]).strip()
            sources[side][name] = oid

    checks = []
    with TemporaryDirectory(prefix="xxhash-1cc9634-range-") as directory:
        temp = Path(directory)
        for width, define, function in ((64, (), "target_xxh3_64"),
                                        (128, ("-DH128",), "target_xxh128")):
            modules = {}
            for side in ("old", "new"):
                module = temp / f"{side}-{width}.ll"
                run([str(CLANG), "-std=c99", "-O3", "-march=x86-64-v3",
                     "-fno-strict-aliasing", "-fno-vectorize", "-fno-slp-vectorize",
                     "-w", "-DNDEBUG", "-Drestrict=", "-D__restrict=",
                     "-mllvm", "-inline-threshold=100000", f"-DSYMLEN={MAX_LEN}",
                     "-DMINLEN=0", "-DXXH_VECTOR=0", *define,
                     "-I", str(HERE / side), "-S", "-emit-llvm", str(WRAPPER),
                     "-o", str(module)])
                ir = module.read_text().replace(" nocapture", "")
                ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
                ir = "\n".join(line for line in ir.splitlines()
                               if "call void @llvm.experimental.noalias.scope.decl" not in line) + "\n"
                body = ir.split(" @" + function + "(", 1)[1].split("\n}", 1)[0]
                assert re.search(rf"icmp ugt i64 .*?, {MAX_LEN}", body), "length must remain symbolic"
                assert not any("call " in line and "@llvm." not in line for line in body.splitlines())
                assert ("@llvm.prefetch" in body) == (side == "new")
                module.write_text(ir)
                run([str(ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/opt"),
                     "-passes=verify", "-disable-output", str(module)])
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
                checks.append({"width": width, "direction": direction,
                               "source_ir_sha256": hashlib.sha256(modules[source].read_bytes()).hexdigest(),
                               "target_ir_sha256": hashlib.sha256(modules[target].read_bytes()).hexdigest(),
                               "output": output.strip()})
    assert len(checks) == 4
    result = {"commit": COMMIT, "verdict": "EQUIV_BOUNDED",
              "scope": f"Clang 20 -O3 scalar x86-64-v3, public XXH3 64/128-bit returned hashes for every symbolic length 0..{MAX_LEN} and symbolic input bytes/seed; 20-step Alive2 loop bound",
              "source_blobs": sources, "checks": checks}
    (HERE / "recheck-range-result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": len(checks),
                      "lengths": f"0..{MAX_LEN}"}))


if __name__ == "__main__":
    main()
