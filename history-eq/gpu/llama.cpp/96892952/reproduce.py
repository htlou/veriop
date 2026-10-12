#!/usr/bin/env python3
"""Reproduce the historical RDNA3 MMQ routing difference."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
path = "ggml/src/ggml-cuda/mmq.cu"
common_path = "ggml/src/ggml-cuda/common.cuh"
mmq_header = "ggml/src/ggml-cuda/mmq.cuh"
ggml_header = "ggml/include/ggml.h"


def run(args, check=True):
    return subprocess.run(args, capture_output=True, check=check,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


def git(*args):
    return run(["git", "-C", str(repo), *args]).stdout.decode()


commit = git("rev-parse", "96892952^{commit}").strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [path]
blobs = {}
source = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {name: git("rev-parse", f"{rev}:{name}").strip()
                   for name in (path, common_path, mmq_header, ggml_header)}
    source[side] = git("show", f"{rev}:{path}")
assert all(blobs["old"][name] == blobs["new"][name]
           for name in (common_path, mmq_header, ggml_header))

old = source["old"][source["old"].index("bool ggml_cuda_should_use_mmq("):]
new = source["new"][source["new"].index("bool ggml_cuda_should_use_mmq("):]
assert source["old"].replace(old, new, 1) == source["new"]
assert "if (amd_wmma_available(cc)) {\n        return true;" in old
assert "if (GGML_CUDA_CC_IS_RDNA3(cc)) {" in new

common = git("show", f"{commit}:{common_path}")
mmq = git("show", f"{commit}:{mmq_header}")
header = git("show", f"{commit}:{ggml_header}")
macro_names = (
    "GGML_CUDA_CC_OFFSET_AMD", "GGML_CUDA_CC_OFFSET_MTHREADS", "GGML_CUDA_CC_DP4A",
    "GGML_CUDA_CC_VOLTA", "GGML_CUDA_CC_TURING", "GGML_CUDA_CC_CDNA1", "GGML_CUDA_CC_CDNA3",
    "GGML_CUDA_CC_RDNA1", "GGML_CUDA_CC_RDNA3", "GGML_CUDA_CC_RDNA3_5", "GGML_CUDA_CC_RDNA4",
    "GGML_CUDA_CC_QY2", "GGML_CUDA_CC_IS_NVIDIA", "GGML_CUDA_CC_IS_CDNA",
    "GGML_CUDA_CC_IS_CDNA3", "GGML_CUDA_CC_IS_RDNA3_0", "GGML_CUDA_CC_IS_RDNA3_5",
    "GGML_CUDA_CC_IS_RDNA3", "GGML_CUDA_CC_IS_RDNA4", "GGML_CUDA_CC_IS_MTHREADS",
)
macros = []
for name in macro_names:
    found = re.search(r"^#define\s+" + name + r"(?:\([^)]*\))?\s+[^\n]+$", common, re.M)
    assert found, name
    macros.append(found.group())
batch = re.search(r"^#define MMQ_DP4A_MAX_BATCH_SIZE\s+[^\n]+$", mmq, re.M)
assert batch
macros.append(batch.group())


def helper(name):
    start = common.index("static bool " + name + "(")
    return common[start:common.index("\n}\n", start) + 2]


highest = "static int ggml_cuda_highest_compiled_arch(const int arch) {\n    return arch;\n}"
assert highest in common
helpers = "\n\n".join((highest, helper("fp16_mma_hardware_available"),
                       helper("amd_mfma_available"), helper("amd_wmma_available"),
                       helper("turing_mma_available")))
type_names = sorted(set(re.findall(r"\bGGML_TYPE_([A-Z0-9_]+)\b", old + new)))
types = {}
for name in type_names:
    found = re.search(r"\bGGML_TYPE_" + name + r"\s*=\s*(\d+),", header)
    assert found, name
    types[name] = int(found.group(1))
assert len(set(types.values())) == len(types) and types["Q2_K"] == 10
prefix = ("typedef long long int64_t;\n" +
          "enum ggml_type { " + ", ".join(f"GGML_TYPE_{name}={value}" for name, value in types.items()) + " };\n" +
          "\n".join(macros) + "\n" + helpers + "\n")
signature = "bool ggml_cuda_should_use_mmq(enum ggml_type type, int cc, int64_t ne11, int64_t n_experts) {"
for side, original in (("old", old), ("new", new)):
    assert original.startswith(signature)
    replacement = "extern \"C\" bool target(enum ggml_type type, int64_t ne11, int64_t n_experts) {\n    constexpr int cc = GGML_CUDA_CC_RDNA3;"
    (here / f"{side}.cpp").write_text(prefix + original.replace(signature, replacement, 1))
    run([str(clang), "-x", "c++", "-std=c++17", "-O0", "-S", "-emit-llvm", "-fno-ident",
         str(here / f"{side}.cpp"), "-o", str(here / f"{side}.ll")])

checks = {}
for label, src, dst in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
    log = run([str(alive), str(here / f"{src}.ll"), str(here / f"{dst}.ll"),
               "--func=target", "--smt-to=10000"]).stdout.decode()
    assert "1 incorrect transformations" in log and "0 failed-to-prove transformations" in log
    assert "0 Alive2 errors" in log
    (here / f"alive-{label}.log").write_text(log)
    checks[label] = "incorrect"

native = {}
for label, name, ne11, experts in (
    ("q2_k_large_batch", "Q2_K", 256, 1),
    ("q2_k_small_batch", "Q2_K", 128, 1),
    ("q2_k_many_experts", "Q2_K", 256, 64),
    ("q4_0_large_batch", "Q4_0", 256, 1),
):
    native[label] = {}
    for side in ("old", "new"):
        with tempfile.TemporaryDirectory() as directory:
            code = Path(directory) / "check.cpp"
            exe = Path(directory) / "check"
            code.write_text((here / f"{side}.cpp").read_text() +
                            f"\nint main() {{ return target(GGML_TYPE_{name}, {ne11}, {experts}) ? 0 : 1; }}\n")
            run([str(clang), "-x", "c++", "-std=c++17", str(code), "-o", str(exe)])
            native[label][side] = run([str(exe)], check=False).returncode == 0
assert native == {
    "q2_k_large_batch": {"old": True, "new": False},
    "q2_k_small_batch": {"old": True, "new": True},
    "q2_k_many_experts": {"old": True, "new": True},
    "q4_0_large_batch": {"old": True, "new": True},
}

result = {
    "commit": commit, "changed_paths": [path], "blobs": blobs, "ggml_type_values": types,
    "architecture": "GGML_CUDA_CC_RDNA3 from the exact historical common.cuh",
    "ir_sha256": {side: hashlib.sha256((here / f"{side}.ll").read_bytes()).hexdigest()
                  for side in ("old", "new")},
    "checks": checks, "native": native, "verdict": "NOT_EQUIV",
    "scope": "complete ggml_cuda_should_use_mmq routing return value at exact historical RDNA3 capability under default force flags; Q2_K, ne11=256, n_experts=1 old true/new false; kernels and tensor outputs unverified",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "checks": checks, "native": native}))
