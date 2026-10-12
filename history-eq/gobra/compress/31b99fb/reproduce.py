#!/usr/bin/env python3
"""Source-lock and recheck the historical Go load helper rewrite."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "benchmarks/repos/compress"
COMMIT = "31b99fb25891c5029c4ce786455141372f0de6c3"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
GOBRA = ROOT / "benchmarks/tools/gobra/target/scala-2.13/gobra.jar"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def main():
    assert git("diff", "--name-only", COMMIT + "^", COMMIT).decode().splitlines() == ["zstd/zstd.go"]
    blobs = {}
    texts = {}
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        data = git("show", revision + ":zstd/zstd.go")
        oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        assert oid == git("rev-parse", revision + ":zstd/zstd.go").decode().strip()
        blobs[side] = oid
        texts[side] = data.decode()
    changed = texts["old"].replace("binary.LittleEndian.Uint32(b[i:])",
                                  "binary.LittleEndian.Uint32(b[:len(b):len(b)][i:])")
    changed = changed.replace("binary.LittleEndian.Uint64(b[i:])",
                              "binary.LittleEndian.Uint64(b[:len(b):len(b)][i:])")
    assert changed == texts["new"] and changed != texts["old"]
    shell = "source benchmarks/env.sh && java -Xss128m -jar benchmarks/tools/gobra/target/scala-2.13/gobra.jar -i history-eq/gobra/compress/31b99fb/slice_equiv.gobra"
    gobra = subprocess.run(["bash", "-lc", shell], cwd=ROOT, capture_output=True, text=True, timeout=120)
    (HERE / "gobra.log").write_text(gobra.stdout + gobra.stderr)
    assert gobra.returncode == 0 and "Gobra found 0 errors." in gobra.stdout + gobra.stderr
    domain = subprocess.run([str(Z3), "-smt2", str(HERE / "domain.smt2")],
                            capture_output=True, text=True, timeout=20, check=True)
    (HERE / "domain.log").write_text(domain.stdout)
    assert domain.stdout.strip() == "unsat"
    result = {"commit": COMMIT, "source_blobs": blobs,
              "gobra": "same four/eight slice lengths and bytes for valid reads: 0 errors",
              "z3": "old/new slice validity and 4/8-byte normal-return domains differ: unsat",
              "scope": "load3232/load6432 returned integer or panic occurrence for all valid Go slice headers and int32 indexes; panic diagnostics excluded",
              "verdict": "EQUIV"}
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "source_blobs": blobs}))


if __name__ == "__main__":
    main()
