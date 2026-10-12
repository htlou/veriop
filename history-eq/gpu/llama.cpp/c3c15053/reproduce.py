#!/usr/bin/env python3
"""Check historical WebGPU vectorized-pipeline selection."""

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
commit = "c3c1505392"
path = "ggml/src/ggml-webgpu/ggml-webgpu-shader-lib.hpp"
header = "ggml/include/ggml.h"
caller = "ggml/src/ggml-webgpu/ggml-webgpu.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, *, check=True):
    result = subprocess.run(args, capture_output=True, text=True, env=env, timeout=60)
    if check:
        assert result.returncode == 0, result.stderr or result.stdout
    return result


def git(*args):
    return run(["git", "-C", str(repo), *args]).stdout


full = git("rev-parse", commit + "^{commit}").strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", full).splitlines() == [path]
diff = git("show", "--format=", "--no-ext-diff", full, "--", path)
assert diff.encode() == (here.parent / "source-screening/c3c15053.source.diff").read_bytes()
sources = {side: git("show", f"{rev}:{path}") for side, rev in
           (("old", full + "^"), ("new", full))}
blobs = {side: {name: git("rev-parse", f"{rev}:{name}").strip() for name in (path, header, caller)}
         for side, rev in (("old", full + "^"), ("new", full))}
assert blobs["old"][header] == blobs["new"][header]
assert blobs["old"][caller] == blobs["new"][caller]
ggml_header = git("show", f"{full}:{header}")
caller_source = git("show", f"{full}:{caller}")
for fragment in ("bool is_vec = (dst->ne[1] == 1);",
                 "case GGML_TYPE_F32:\n                case GGML_TYPE_F16:",
                 "use_fast = true;",
                 "else if (use_fast) {\n        pipeline = ctx->shader_lib->get_mul_mat_fast_pipeline(shader_lib_ctx);"):
    assert fragment in caller_source, fragment
values = {}
for name in ("F32", "F16"):
    match = re.search(r"\bGGML_TYPE_" + name + r"\s*=\s*(\d+),", ggml_header)
    assert match
    values[name] = int(match.group(1))
assert values == {"F32": 0, "F16": 1}


def predicate(source):
    start = source.index("webgpu_pipeline get_mul_mat_fast_pipeline(")
    end = source.index("auto it = mul_mat_fast_pipelines.find(key);", start)
    body = source[start:end]
    matches = re.findall(r"key\.vectorized\s*=\s*(.*?);", body, re.S)
    assert len(matches) == 1
    return matches[0].strip()


predicates = {side: predicate(source) for side, source in sources.items()}
assert "context.dst->ne[1] % 4 == 0" in predicates["old"]
assert "context.dst->ne[1] % 4 == 0" not in predicates["new"]
for side in ("old", "new"):
    assert "context.src0->ne[0] % 4 == 0" in predicates[side]
    assert "context.dst->ne[0] % 4 == 0" in predicates[side]
    assert "GGML_TYPE_F32" in predicates[side] and "GGML_TYPE_F16" in predicates[side]
assert sources["new"].count('variant += "_vectorized";') == 4
assert sources["old"].count('variant += "_vectorized";') == 3

stub = """typedef long long int64_t;
enum ggml_type { GGML_TYPE_F32 = 0, GGML_TYPE_F16 = 1, GGML_TYPE_OTHER = 2 };
struct Tensor { ggml_type type; int64_t ne[2]; };
struct Context { const Tensor *src0; const Tensor *dst; };
"""
for side in ("old", "new"):
    body = "extern \"C\" int target(int type, int64_t src0_ne0, int64_t dst_ne0, int64_t dst_ne1) {\n"
    body += "  Tensor src0{(ggml_type)type, {src0_ne0, 1}};\n"
    body += "  Tensor dst{GGML_TYPE_F32, {dst_ne0, dst_ne1}};\n"
    body += "  Context context{&src0, &dst};\n"
    body += "  return " + predicates[side] + ";\n}\n"
    (here / f"{side}.cpp").write_text(stub + body)
    run([str(clang), "-x", "c++", "-std=c++17", "-O0", "-S", "-emit-llvm",
         str(here / f"{side}.cpp"), "-o", str(here / f"{side}.ll")])

checks = {}
for direction, first, second in (("old_to_new", "old", "new"),
                                 ("new_to_old", "new", "old")):
    log = run([str(alive), str(here / f"{first}.ll"), str(here / f"{second}.ll"),
               "--func=target", "--smt-to=10000"]).stdout
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
    (here / f"alive-{direction}.log").write_text(log)
    checks[direction] = "incorrect"

native = {}
for label, kind, a, b, c in (("f32_three_rows", 0, 128, 128, 3),
                             ("f32_four_rows", 0, 128, 128, 4),
                             ("f16_three_rows", 1, 128, 128, 3),
                             ("unaligned_width", 0, 127, 128, 3),
                             ("other_type", 2, 128, 128, 3)):
    native[label] = {}
    for side in ("old", "new"):
        with TemporaryDirectory(prefix="webgpu-vectorize-") as temp:
            source = Path(temp) / "check.cpp"
            binary = Path(temp) / "check"
            source.write_text((here / f"{side}.cpp").read_text() +
                              f"int main() {{ return target({kind}, {a}, {b}, {c}); }}\n")
            run([str(clang), "-x", "c++", "-std=c++17", str(source), "-o", str(binary)])
            native[label][side] = run([str(binary)], check=False).returncode
assert native == {"f32_three_rows": {"old": 0, "new": 1},
                  "f32_four_rows": {"old": 1, "new": 1},
                  "f16_three_rows": {"old": 0, "new": 1},
                  "unaligned_width": {"old": 0, "new": 0},
                  "other_type": {"old": 0, "new": 0}}

result = {"commit": full, "changed_paths": [path], "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "native": native, "verdict": "NOT_EQUIV",
          "scope": "source-extracted get_mul_mat_fast_pipeline vectorized key on valid F32/F16 aligned-width, three-row contexts; actual WGSL outputs and whole commit unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "native": native}))
