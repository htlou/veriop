#!/usr/bin/env python3
"""Reproduce the exact historical XXH3 block-boundary counterexample."""
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
COMMIT = "6e5d5d766800fc4134a3623ca49a48151d283c0d"
FILES = ("xxh3.h", "xxhash.h", "xxhash.c")
PROBE = '''#include "xxh3.h"
#include <stdio.h>
int main(void) {
    unsigned char input[1024] = {0};
    printf("%016llx\\n", (unsigned long long)XXH3_64bits(input, sizeof(input)));
    return 0;
}
'''
WRAPPER = '''#include "xxh3.h"
unsigned long long target(void) {
    static const unsigned char input[1024] = {0};
    return XXH3_64bits(input, sizeof(input));
}
'''


def run(args, **kwargs):
    return subprocess.run(args, capture_output=True, text=True, timeout=40, **kwargs)


def target_body(module):
    match = re.search(r"^define [^\n]*@target\([^\n]*\).*?^}", module, re.M | re.S)
    assert match
    return match.group()


def main():
    result = {"commit": COMMIT, "scope": "public XXH3_64bits on a valid 1024-byte zero input",
              "source_blobs": {}, "native": {}, "alive_attempt": {}}
    changed = run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT])
    assert changed.returncode == 0 and changed.stdout.splitlines() == ["xxh3.h", "xxhsum.c"]
    with TemporaryDirectory(prefix="xxh3-block-boundary-") as directory:
        temp = Path(directory)
        probe = temp / "probe.c"
        wrapper = temp / "wrapper.c"
        probe.write_text(PROBE)
        wrapper.write_text(WRAPPER)
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            include = temp / side
            include.mkdir()
            for name in FILES:
                data = subprocess.run(["git", "-C", str(REPO), "show", revision + ":" + name],
                                      check=True, stdout=subprocess.PIPE).stdout
                (include / name).write_bytes(data)
                digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
                expected = run(["git", "-C", str(REPO), "rev-parse", revision + ":" + name])
                assert expected.returncode == 0 and digest == expected.stdout.strip()
                result["source_blobs"][side + "/" + name] = digest
            for compiler, flags, label in ((str(CLANG), ["-O2"], "clang20"),
                                           ("gcc", ["-O0"], "gcc11")):
                binary = temp / f"{label}-{side}"
                build = run([compiler, "-std=c99", *flags, "-I", str(include), str(probe), "-o", str(binary)])
                assert build.returncode == 0, build.stderr
                executed = run([str(binary)])
                assert executed.returncode == 0
                result["native"][label + "_" + side] = executed.stdout.strip()
        assert result["source_blobs"]["old/xxhash.h"] == result["source_blobs"]["new/xxhash.h"]
        assert result["source_blobs"]["old/xxhash.c"] == result["source_blobs"]["new/xxhash.c"]
        assert result["native"]["clang20_old"] == result["native"]["gcc11_old"] == "08f1c8e108dd9d2e"
        assert result["native"]["clang20_new"] == result["native"]["gcc11_new"] == "3ebe8236f7d5d322"
        modules = {}
        for side in ("old", "new"):
            module = temp / f"{side}.ll"
            build = run([str(CLANG), "-std=c99", "-O3", "-DXXH_NO_INLINE_HINTS=1", "-mllvm",
                         "-inline-threshold=100000", "-I", str(temp / side), "-S", "-emit-llvm",
                         str(wrapper), "-o", str(module)])
            assert build.returncode == 0, build.stderr
            normalized = module.read_text().replace(" nocapture", "")
            normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
            normalized = "\n".join(line for line in normalized.splitlines()
                                   if "call void @llvm.experimental.noalias.scope.decl(" not in line) + "\n"
            module.write_text(normalized)
            body = target_body(normalized)
            assert "@XXH3_hashLong" not in body  # changed hash body must be in this comparison
            modules[side] = module
        assert target_body(modules["old"].read_text()) != target_body(modules["new"].read_text())
        checked = run([str(ALIVE), str(modules["old"]), str(modules["new"]), "--func=target",
                       "--always-verify", "--fail-src-ub", "--src-unroll=20", "--tgt-unroll=20",
                       "--smt-to=30000", "--quiet"])
        output = checked.stdout + checked.stderr
        assert "1 failed-to-prove transformations" in output and "ERROR: Timeout" in output
        result["alive_attempt"] = {"verdict": "UNKNOWN_TIMEOUT", "output": output.strip(),
                                   "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                                   "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest()}
    result["verdict"] = "NOT_EQUIV"
    result["verdict_basis"] = "exact historical native public-API counterexample; Alive2 timed out"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "old": result["native"]["clang20_old"],
                      "new": result["native"]["clang20_new"], "alive": "UNKNOWN_TIMEOUT"}))


if __name__ == "__main__":
    main()
