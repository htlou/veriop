#!/usr/bin/env python3
"""Check the historical Q4_K scale-byte to packed-word rewrite."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "f9f33654a63d6a39bf6059b4f96c125ded827728"
shader_dir = "ggml/src/ggml-vulkan/vulkan-shaders/"
paths = [shader_dir + name for name in ("mul_mat_vecq_funcs.glsl", "mul_mm_funcs.glsl")]
types_path = shader_dir + "types.glsl"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    result = subprocess.run(args, capture_output=True, text=True, env=env, timeout=60)
    assert result.returncode == 0, result.stderr or result.stdout
    return result.stdout


def git(*args):
    return run(["git", "-C", str(repo), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == paths
diff = git("show", "--format=", "--no-ext-diff", commit, "--", *paths)
assert diff.encode() == (here.parent / "source-screening/f9f33654.source.diff").read_bytes()
blobs = {}
sources = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {path: git("rev-parse", f"{rev}:{path}").strip()
                   for path in paths + [types_path]}
    sources[side] = {path: git("show", f"{rev}:{path}") for path in paths + [types_path]}
assert blobs["old"][types_path] == blobs["new"][types_path]
types = sources["new"][types_path]
assert "uint8_t scales[3*QUANT_K_Q4_K/64];" in types
assert "uint32_t scales[3*QUANT_K_Q4_K/64/4];" in types
assert "#define QUANT_K_Q4_K 256" in types

# These source snippets occur in all three rewritten scale-unpack sites.
old_text = "\n".join(sources["old"][path] for path in paths)
new_text = "\n".join(sources["new"][path] for path in paths)
for fragment in ("data_a[ib_k].scales[is] & 0x3F",
                 "data_a[ib_k].scales[is + 4] & 0x3F",
                 "data_a[ib_k].scales[is+4] & 0xF",
                 "data_a[ib_k].scales[is-4] & 0xC0",
                 "const uint scidx0 = (is < 4) ? is : (is + 4);",
                 "const uint mbidx0 = is + 4;"):
    assert fragment in old_text, fragment
for fragment in ("const uint scalesoffs = (is & 3) * 8;",
                 "const uint scidx0 = (is < 4) ? 0 : 2;",
                 "const uint mbidx0 = (is < 4) ? 1 : 2;",
                 "((scales[scidx0] >> scidxshift0) & 0xF)",
                 "((scales[0] >> scidxshift1) & 0x30)",
                 "((scales[mbidx0] >> mbidxshift0) & 0xF)",
                 "((scales[1] >> mbidxshift1) & 0x30)"):
    assert new_text.count(fragment) == 3, (fragment, new_text.count(fragment))

prefix = "#include <stdint.h>\n"
old = """uint32_t target(const uint8_t s[static 12], uint32_t is) {
    if (is >= 8) return 0;
    uint32_t sc, m;
    if (is < 4) {
        sc = s[is] & 0x3f;
        m = s[is + 4] & 0x3f;
    } else {
        sc = (s[is + 4] & 0x0f) | ((s[is - 4] & 0xc0) >> 2);
        m = (s[is + 4] >> 4) | ((s[is] & 0xc0) >> 2);
    }
    return sc | (m << 8);
}
"""
new = """static uint32_t load32le(const uint8_t *s) {
    return (uint32_t)s[0] | ((uint32_t)s[1] << 8) |
           ((uint32_t)s[2] << 16) | ((uint32_t)s[3] << 24);
}
uint32_t target(const uint8_t s[static 12], uint32_t is) {
    if (is >= 8) return 0;
    uint32_t scales[3] = {load32le(s), load32le(s + 4), load32le(s + 8)};
    uint32_t scalesoffs = (is & 3) * 8;
    uint32_t scidx0 = is < 4 ? 0 : 2;
    uint32_t scidxshift0 = scalesoffs;
    uint32_t scidxshift1 = is < 4 ? scalesoffs : scalesoffs + 2;
    uint32_t mbidx0 = is < 4 ? 1 : 2;
    uint32_t mbidxshift0 = is < 4 ? scalesoffs : scalesoffs + 4;
    uint32_t mbidxshift1 = is < 4 ? scalesoffs : scalesoffs + 2;
    uint32_t sc = ((scales[scidx0] >> scidxshift0) & 0x0f) |
                  ((scales[0] >> scidxshift1) & 0x30);
    uint32_t m = ((scales[mbidx0] >> mbidxshift0) & 0x0f) |
                 ((scales[1] >> mbidxshift1) & 0x30);
    return sc | (m << 8);
}
"""
signature = ("uint32_t target(" + ", ".join(f"uint8_t b{i}" for i in range(12)) +
             ", uint32_t is) {\n    const uint8_t s[12] = {" +
             ", ".join(f"b{i}" for i in range(12)) + "};")
for side, source in (("old", old), ("new", new)):
    source = source.replace("uint32_t target(const uint8_t s[static 12], uint32_t is) {", signature)
    (here / f"{side}.c").write_text(prefix + source)
    run([str(clang), "-std=c11", "-O1", "-S", "-emit-llvm", "-fno-ident",
         str(here / f"{side}.c"), "-o", str(here / f"{side}.ll")])
    ir = here / f"{side}.ll"
    ir.write_text(re.sub(r", !tbaa !\d+", "",
                         re.sub(r" nocapture\b", "", ir.read_text())))

checks = {}
for direction, first, second in (("old_to_new", "old", "new"),
                                 ("new_to_old", "new", "old")):
    log = run([str(alive), str(here / f"{first}.ll"), str(here / f"{second}.ll"),
               "--func=target", "--smt-to=30000", "--always-verify"])
    assert "1 correct transformations" in log and "0 failed-to-prove transformations" in log
    assert "0 Alive2 errors" in log
    (here / f"alive-{direction}.log").write_text(log)
    checks[direction] = "correct"

result = {"commit": commit, "changed_paths": paths, "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.c").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "verdict": "EQUIV_PARTIAL",
          "scope": "Q4_K scale and min byte values for every is=0..7 and arbitrary 12 scale bytes, assuming each packed32 word reads four little-endian bytes of the same block; shader multiplication, memory layout, and full Vulkan kernels unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "checks": checks}))
