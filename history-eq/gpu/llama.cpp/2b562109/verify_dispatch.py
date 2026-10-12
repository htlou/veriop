#!/usr/bin/env python3
"""Source-lock and check the historical NVIDIA MMVQ routing difference."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang++-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "2b5621094ef383cdcd8428ef6d22efe5df976532"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


paths = ["ggml/src/ggml-cuda/mmvq.cu", "ggml/src/ggml-cuda/common.cuh",
         "ggml/src/ggml-cuda/mmvq.cuh", "ggml/include/ggml.h", "ggml/src/ggml.c"]
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == [paths[0]]
source = {}
blobs = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {}
    for path in paths:
        body = git("show", f"{rev}:{path}")
        oid = git("rev-parse", f"{rev}:{path}").decode().strip()
        actual = subprocess.run(["git", "hash-object", "--stdin"], input=body,
                                check=True, capture_output=True).stdout.decode().strip()
        assert oid == actual
        blobs[side][path] = oid
        source[side, path] = body.decode()
for path in paths[1:]:
    assert blobs["old"][path] == blobs["new"][path]

old = source["old", paths[0]]
new = source["new", paths[0]]
start = "bool ggml_cuda_should_use_mmvq(enum ggml_type type, int cc, int64_t ne11) {"
end = "    if (GGML_CUDA_CC_IS_CDNA(cc)) {"
assert old.count(start) == new.count(start) == 1
old_prefix = old[old.index(start):old.index(end, old.index(start))]
new_prefix = new[new.index(start):new.index(end, new.index(start))]
assert new_prefix.startswith(old_prefix)
inserted = new_prefix[len(old_prefix):]
assert inserted.startswith("    // k-quants") and new.count(inserted) == 1
assert old.replace(old_prefix, new_prefix, 1) == new
assert "return ne11 <= 4;" in inserted and "return ne11 <= 6;" in inserted

common = source["new", paths[1]]
mmvq_header = source["new", paths[2]]
ggml_header = source["new", paths[3]]
traits = source["new", paths[4]]
macro_names = ("GGML_CUDA_CC_ADA_LOVELACE", "GGML_CUDA_CC_BLACKWELL",
               "GGML_CUDA_CC_DGX_SPARK", "GGML_CUDA_CC_OFFSET_MTHREADS",
               "GGML_CUDA_CC_IS_NVIDIA")
macros = []
for name in macro_names:
    matches = [line for line in common.splitlines() if re.match(r"#define " + name + r"(?:\(|\s)", line)]
    assert len(matches) == 1
    macros.append(matches[0])
assert "#define GGML_CUDA_CC_CDNA1      (GGML_CUDA_CC_OFFSET_AMD + 0x908)" in common
assert "#define GGML_CUDA_CC_IS_CDNA(cc)    (cc >= GGML_CUDA_CC_CDNA1 && cc < GGML_CUDA_CC_RDNA1)" in common
assert "#define GGML_CUDA_CC_OFFSET_AMD      0x1000000" in common
assert all(cc < 0x1000000 + 0x908 for cc in (700, 890))
assert "#define MMVQ_MAX_BATCH_SIZE 8" in mmvq_header
assert re.search(r"\[GGML_TYPE_Q2_K\]\s*=\s*\{[^}]*\.is_quantized\s*=\s*true", traits)
assert "return type_traits[type].is_quantized;" in traits
types = {}
for name in ("Q2_K", "Q3_K", "Q4_K", "Q5_K", "Q6_K"):
    match = re.search(r"\bGGML_TYPE_" + name + r"\s*=\s*(\d+)", ggml_header)
    assert match
    types[name] = int(match.group(1))
assert types == {"Q2_K": 10, "Q3_K": 11, "Q4_K": 12, "Q5_K": 13, "Q6_K": 14}

checks = {}
for cc, expected in ((890, "incorrect"), (700, "correct")):
    for side, prefix in (("old", old_prefix), ("new", new_prefix)):
        preamble = "typedef long long int64_t; static_assert(sizeof(int64_t) == 8);\n" + "\n".join(macros) + "\n"
        preamble += "#define MMVQ_MAX_BATCH_SIZE 8\n"
        preamble += "enum ggml_type { " + ", ".join(f"GGML_TYPE_{name} = {value}" for name, value in types.items()) + " };\n"
        preamble += "static bool ggml_is_quantized(enum ggml_type type) { return type == GGML_TYPE_Q2_K; }\n"
        code = (preamble + prefix + "    return ne11 <= MMVQ_MAX_BATCH_SIZE;\n}\n" +
                f'extern "C" int target(int64_t ne11) {{ return ggml_cuda_should_use_mmvq(GGML_TYPE_Q2_K, {cc}, ne11); }}\n')
        src = here / f"{side}-cc{cc}.cpp"
        src.write_text(code)
        ll = here / f"{side}-cc{cc}.ll"
        subprocess.run([str(clang), "-std=c++17", "-O1", "-S", "-emit-llvm", "-fno-ident",
                        str(src), "-o", str(ll)], check=True, capture_output=True, text=True)
    for direction, a, b in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
        result = subprocess.run([str(alive), str(here / f"{a}-cc{cc}.ll"),
                                 str(here / f"{b}-cc{cc}.ll"), "--func=target", "--smt-to", "10000"],
                                capture_output=True, text=True)
        log = result.stdout + result.stderr
        (here / f"cc{cc}-{direction}.log").write_text(log)
        assert f"1 {expected} transformations" in log and "0 Alive2 errors" in log, log
        checks[f"cc{cc}/{direction}"] = expected

assert checks["cc890/old_to_new"] == "incorrect" and checks["cc700/old_to_new"] == "correct"
assert 5 <= 8 and not (5 <= 4)  # exact Q2_K, Ada, batch=5 witness
(here / "result.json").write_text(json.dumps({
    "commit": commit, "changed_paths": [paths[0]], "source_blob_oids": blobs,
    "model_sha256": {f"{side}-cc{cc}": hashlib.sha256((here / f"{side}-cc{cc}.cpp").read_bytes()).hexdigest()
                     for side in ("old", "new") for cc in (890, 700)},
    "checks": checks,
    "witness": {"type": "GGML_TYPE_Q2_K", "cc": 890, "ne11": 5,
                "old_should_use_mmvq": True, "new_should_use_mmvq": False},
    "verdict": "NOT_EQUIV",
    "scope": "host routing helper return value for Q2_K on Ada CC 890; quantized trait source-locked; old/new GPU kernel outputs unverified",
}, indent=2) + "\n")
print("Alive2 refutes Ada Q2_K routing equality in both directions; CC 700 control passes")
