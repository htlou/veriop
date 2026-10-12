#!/usr/bin/env python3
"""Check the historical Q4_K/Q5_K scale-unpack rewrite with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
path = "ggml/src/ggml-cuda/vecdotq.cuh"


def run(args, timeout=60):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=timeout, env=env)


def git(*args):
    result = run(["git", "-C", repo, *args])
    assert result.returncode == 0, result.stderr
    return result.stdout.strip()


commit = git("rev-parse", "73ab7599")
assert path in git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines()
common = git("show", commit + ":ggml/src/ggml-common.h")
assert "#define K_SCALE_SIZE 12" in common and common.count("uint8_t scales[K_SCALE_SIZE]") >= 2
common_oid = git("rev-parse", commit + ":ggml/src/ggml-common.h")
blobs = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = subprocess.run(["git", "-C", str(repo), "show", revision + ":" + path],
                            capture_output=True, check=True, env=env).stdout
    oid = git("rev-parse", revision + ":" + path)
    assert hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest() == oid
    blobs[side] = oid
    text = source.decode()
    output = "#include <stdint.h>\ntypedef struct { uint16_t v[6]; } Scales;\n"
    for q in ("q4", "q5"):
        start = text.index(f"static __device__ __forceinline__ float vec_dot_{q}_K_q8_1(")
        begin = text.index("const uint16_t * scales =", start)
        end = text.index("const uint8_t * sc =", begin)
        snippet = text[begin:end]
        original = f"(const uint16_t *)b{q}_K->scales"
        assert snippet.count(original) == 1 and snippet.count("uint16_t aux[2]") == 1
        snippet = snippet.replace(original, "s.v")
        for j in range(4):
            output += (f"uint32_t target_{q}_{j}(Scales s) {{ const int bq8_offset = {2*j};\n"
                       + snippet + "\nreturn (uint32_t)aux[0] | ((uint32_t)aux[1] << 16); }\n")
    (here / (side + ".c")).write_text(output)
    compiled = run([clang, "-O0", "-S", "-emit-llvm", here / (side + ".c"),
                    "-o", here / (side + ".raw.ll")])
    assert compiled.returncode == 0, compiled.stderr
    ir = (here / (side + ".raw.ll")).read_text()
    # Fully initialized historical 12-byte scales exclude poison in both ABI arguments.
    assert ir.count("(i64 %0, i32 %1)") == 8
    ir = ir.replace("(i64 %0, i32 %1)", "(i64 noundef %0, i32 noundef %1)")
    (here / (side + ".ll")).write_text(ir)

for name in (f"target_{q}_{j}" for q in ("q4", "q5") for j in range(4)):
    pattern = rf"(?ms)^define [^\n]*@{name}\([^{{]+\{{.*?^\}}"
    old = re.search(pattern, (here / "old.ll").read_text())
    new = re.search(pattern, (here / "new.ll").read_text())
    assert old and new and old.group() != new.group(), name

checks = []
for direction, first, second in (("forward", "old", "new"),
                                 ("backward", "new", "old")):
    cmd = [alive, here / (first + ".ll"), here / (second + ".ll"),
           "--always-verify", "--fail-src-ub", "--quiet"]
    result = run(cmd)
    output = result.stdout + result.stderr
    (here / (direction + ".log")).write_text(output)
    assert result.returncode == 0 and "8 correct transformations" in output, output
    assert all(line in output for line in ("0 incorrect transformations",
                                           "0 failed-to-prove transformations",
                                           "0 Alive2 errors")), output
    checks.append({"direction": direction, "output": output})

diagnostic = run([alive, here / "old.raw.ll", here / "new.raw.ll",
                  "--func=target_q4_0", "--always-verify", "--fail-src-ub"])
diagnostic_output = diagnostic.stdout + diagnostic.stderr
assert "Target is more poisonous than source" in diagnostic_output
(here / "unrestricted-diagnostic.log").write_text(diagnostic_output)

record = {"commit": commit, "historical_source_blobs": blobs,
          "historical_common_header_blob": common_oid,
          "precondition": "all 12 scale bytes initialized; bq8_offset is 0, 2, 4, or 6",
          "scope": "Q4_K and Q5_K two-word scale unpack only; complete vector-dot kernels unproved",
          "verdict": "EQUIV_PARTIAL",
          "unrestricted_ir_diagnostic": "new eager scale load may propagate poison if scale bytes are undefined",
          "ir_sha256": {
              side: hashlib.sha256((here / (side + ".ll")).read_bytes()).hexdigest()
              for side in ("old", "new")}, "checks": checks}
(here / "result.json").write_text(json.dumps(record, indent=2) + "\n")
print("16/16 source-mapped Alive2 directions correct under initialized-scale precondition")
