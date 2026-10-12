#!/usr/bin/env python3
"""Check the exact historical Vulkan MUL_MAT_ID route for F32 inputs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "50b7f076"
path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
shader = "ggml/src/ggml-vulkan/vulkan-shaders/mul_mat_vec_base.glsl"
header = "ggml/include/ggml.h"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(*args):
    p = subprocess.run(args, capture_output=True, text=True, env=env, timeout=60)
    assert p.returncode == 0, p.stderr or p.stdout
    return p.stdout


def git(*args):
    return run("git", "-C", str(repo), *args)


commit = git("rev-parse", commit + "^{commit}").strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [path, shader]
diff = git("show", "--format=", "--no-ext-diff", commit, "--", path, shader)
assert diff.encode() == (here.parent / "source-screening/50b7f076.source.diff").read_bytes()
blobs = {side: {p: git("rev-parse", f"{rev}:{p}").strip() for p in (path, shader, header)}
         for side, rev in (("old", commit + "^"), ("new", commit))}
assert blobs["old"][header] == blobs["new"][header]
h = git("show", f"{commit}:{header}")
assert "GGML_TYPE_F32     = 0," in h and "GGML_TYPE_F16     = 1," in h

start = "static bool ggml_vk_use_mul_mat_vec_id("
end = "\nstatic void ggml_vk_mul_mat_id("
parts = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = git("show", f"{rev}:{path}")
    parts[side] = source[source.index(start):source.index(end, source.index(start))]
assert "src2->ne[1] == 1" in parts["old"]
assert "src2->ne[1] <= 8" in parts["new"]
assert parts["old"].replace("src2->ne[1] == 1", "(src2->ne[1] <= 8)") == parts["new"]
assert "if (ggml_vk_use_mul_mat_vec_id(cgraph, node_idx))" in git("show", f"{commit}:{path}")

stub = """#include <stdint.h>
enum { GGML_TYPE_F32 = 0, GGML_TYPE_F16 = 1 };
struct ggml_tensor { int64_t ne[4]; int type; ggml_tensor *src[3]; };
struct ggml_cgraph { ggml_tensor *nodes[1]; };
static bool ggml_is_quantized(int) { return false; }
"""
wrapper = """extern "C" bool target(int64_t batch) {
    ggml_tensor src0{{1,1,1,1}, GGML_TYPE_F32, {}};
    ggml_tensor src2{{1,batch,1,1}, GGML_TYPE_F32, {}};
    ggml_tensor dst{{1,1,1,1}, GGML_TYPE_F32, {&src0,nullptr,&src2}};
    ggml_cgraph graph{{&dst}};
    return ggml_vk_use_mul_mat_vec_id(&graph, 0);
}
"""
for side in ("old", "new"):
    (here / f"{side}.cpp").write_text(stub + parts[side] + wrapper)
    run(str(clang), "-x", "c++", "-std=c++17", "-O1", "-S", "-emit-llvm",
        str(here / f"{side}.cpp"), "-o", str(here / f"{side}.ll"))

checks = {}
for direction, src, dst in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
    log = run(str(alive), str(here / f"{src}.ll"), str(here / f"{dst}.ll"),
              "--func=target", "--always-verify", "--smt-to=30000")
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
    (here / f"alive-{direction}.log").write_text(log)
    checks[direction] = "incorrect"

native = {}
for batch in (1, 2, 8, 9):
    native[str(batch)] = {}
    for side in ("old", "new"):
        exe = here / f"probe-{side}"
        probe = here / f"probe-{side}.cpp"
        probe.write_text((here / f"{side}.cpp").read_text() +
                         f"int main() {{ return target({batch}) ? 0 : 1; }}\n")
        run(str(clang), "-std=c++17", str(probe), "-o", str(exe))
        p = subprocess.run([str(exe)], env=env)
        assert p.returncode in (0, 1)
        native[str(batch)][side] = p.returncode == 0
        exe.unlink()
        probe.unlink()
assert native == {"1": {"old": True, "new": True},
                  "2": {"old": False, "new": True},
                  "8": {"old": False, "new": True},
                  "9": {"old": False, "new": False}}
result = {"commit": commit, "changed_paths": [path, shader], "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "native": native, "verdict": "NOT_EQUIV",
          "scope": "exact ggml_vk_use_mul_mat_vec_id return for F32 src0 with src2.ne[1]=2: old false/new true; Vulkan dispatch and tensor outputs unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"checks": checks, "native": native}))
