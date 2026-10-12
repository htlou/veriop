#!/usr/bin/env python3
"""Check the historical Vulkan fast-division arithmetic for a valid uint32 input."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "2759916d86b70e7aceaed4d0b4e7ed126f0f9e51"
paths = ["ggml/src/ggml-vulkan/ggml-vulkan.cpp",
         "ggml/src/ggml-vulkan/vulkan-shaders/generic_unary_head.comp",
         "tests/test-backend-ops.cpp"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, *, timeout=60):
    result = subprocess.run(args, capture_output=True, text=True, env=env, timeout=timeout)
    assert result.returncode == 0, result.stderr or result.stdout
    return result.stdout


def git(*args):
    return run(["git", "-C", str(repo), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == paths
diff = git("show", "--format=", "--no-ext-diff", commit, "--", *paths[:2])
assert diff.encode() == (here.parent / "source-screening/2759916d.source.diff").read_bytes()
blobs = {side: {path: git("rev-parse", f"{rev}:{path}").strip() for path in paths}
         for side, rev in (("old", commit + "^"), ("new", commit))}
host = git("show", f"{commit}:{paths[0]}")
shader = git("show", f"{commit}:{paths[1]}")
start = host.index("void init_fastdiv_values(uint32_t d, uint32_t &mp, uint32_t &L)")
end = host.index("template <typename T> void init_pushconst_fastdiv", start)
initializer = host[start:end]
assert "L = 0;" in initializer
assert "while (L < 32 && (uint32_t{1} << L) < d)" in initializer
assert "mp = (uint32_t)((uint64_t{1} << 32) * ((uint64_t{1} << L) - d) / d + 1);" in initializer
shader_fastdiv = shader[shader.index("uint fastdiv(uint n, uint mp, uint L)"):
                        shader.index("uint src0_idx(uint idx)")]
assert "umulExtended(n, mp, msbs, lsbs);" in shader_fastdiv
assert "return (msbs + n) >> L;" in shader_fastdiv
assert "const uint i03 = fastdiv(idx, p.ne0_012mp, p.ne0_012L);" in shader
assert "const uint i03 = idx / (p.ne02*p.ne01*p.ne00);" in git("show", f"{commit}^:{paths[1]}")

with TemporaryDirectory(prefix="vk-fastdiv-") as temp:
    probe = Path(temp) / "init.cpp"
    binary = Path(temp) / "init"
    probe.write_text("typedef unsigned int uint32_t; typedef unsigned long long uint64_t;\n"
                     "extern \"C\" int printf(const char *, ...);\n" + initializer +
                     "int main() { uint32_t mp, L; init_fastdiv_values(3, mp, L); "
                     "printf(\"%u %u\\n\", mp, L); }\n")
    run([str(clang), "-std=c++17", str(probe), "-o", str(binary)])
    assert run([str(binary)]).strip() == "1431655766 2"

old = """#include <stdint.h>
uint32_t target(uint32_t n) { return n / UINT32_C(3); }
"""
new = """#include <stdint.h>
uint32_t target(uint32_t n) {
    const uint32_t mp = UINT32_C(1431655766), L = 2;
    uint32_t msbs = (uint32_t)(((uint64_t)n * mp) >> 32);
    return (uint32_t)(msbs + n) >> L;
}
"""
for side, source in (("old", old), ("new", new)):
    (here / f"{side}.c").write_text(source)
    run([str(clang), "-std=c11", "-O1", "-S", "-emit-llvm", "-fno-ident",
         str(here / f"{side}.c"), "-o", str(here / f"{side}.ll")])

log = run([str(alive), str(here / "old.ll"), str(here / "new.ll"),
           "--func=target", "--always-verify", "--smt-to=30000"])
assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
(here / "alive-old_to_new.log").write_text(log)
reverse = run([str(alive), str(here / "new.ll"), str(here / "old.ll"),
               "--func=target", "--always-verify", "--smt-to=30000"])
assert "1 incorrect transformations" in reverse and "0 Alive2 errors" in reverse
(here / "alive-new_to_old.log").write_text(reverse)

n = 0xC0000000
old_value = n // 3
new_value = ((((n * 1431655766) >> 32) + n) & 0xffffffff) >> 2
assert (old_value, new_value) == (0x40000000, 0)
result = {"commit": commit, "changed_paths": paths, "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.c").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checker": "Alive2 on source-audited uint32 arithmetic projection",
          "checks": {"old_to_new": "incorrect", "new_to_old": "incorrect"},
          "witness": {"divisor": 3, "n": n, "mp": 1431655766, "L": 2,
                      "old_quotient": old_value, "new_quotient": new_value},
          "verdict": "NOT_EQUIV", "whole_commit_verdict": "UNKNOWN",
          "scope": "exact source fastdiv quotient formula at d=3 for uint32 n=0xC0000000; shader-index reachability, Vulkan execution, tensor outputs, and full commit unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "witness": result["witness"]}))
