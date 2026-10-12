#!/usr/bin/env python3
"""Check the historical HIP packed-byte subtraction replacements with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive = root / "alive2/build/alive2/alive-tv"
commit = "748d4225b9"
paths = ("ggml/src/ggml-cuda/fattn-common.cuh", "ggml/src/ggml-cuda/mmq-load-tiles.cuh",
         "ggml/src/ggml-cuda/vecdotq.cuh")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    return subprocess.run([str(arg) for arg in args], capture_output=True, text=True,
                          timeout=60, env=env)


def source(revision, path):
    shown = run(["git", "-C", repo, "show", revision + ":" + path])
    oid = run(["git", "-C", repo, "rev-parse", revision + ":" + path])
    assert shown.returncode == oid.returncode == 0
    data = shown.stdout.encode()
    digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert digest == oid.stdout.strip()
    return shown.stdout, digest


resolved = run(["git", "-C", repo, "rev-parse", commit])
assert resolved.returncode == 0
commit = resolved.stdout.strip()
diff = run(["git", "-C", repo, "show", "--format=", "--unified=0", commit, "--", *paths])
assert diff.returncode == 0
old_calls = [line[1:].strip() for line in diff.stdout.splitlines()
             if line.startswith("-") and not line.startswith("---") and "__vsubss4(" in line]
new_calls = [line[1:].strip() for line in diff.stdout.splitlines()
             if line.startswith("+") and not line.startswith("+++") and "__vsub4(" in line]
assert len(old_calls) == len(new_calls) == 14
assert all(new == old.replace("__vsubss4(", "__vsub4(", 1)
           for old, new in zip(old_calls, new_calls))
callsite_families = []
for call in old_calls:
    if "0x08080808" in call:
        callsite_families.append("q4")
    elif "0x10101010" in call:
        callsite_families.append("q5")
    elif "x_ql_k | x_qh_k" in call:
        callsite_families.append("q3")
    elif "__vsubss4(vil, vih)" in call:
        callsite_families.append("q3_pair")
    elif "0x20202020" in call:
        callsite_families.append("sc3_q6")
    else:
        raise AssertionError(call)
assert callsite_families == ["q4", "q5", "q4", "q4", "q5", "q5", "q3",
                             "sc3_q6", "sc3_q6", "sc3_q6", "sc3_q6", "sc3_q6",
                             "q3_pair", "sc3_q6"]
(here / "source.diff").write_text(diff.stdout)

blobs = {}
historical = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    for path in paths:
        historical[side, path], blobs[side + "/" + path] = source(revision, path)
    _, blobs[side + "/ggml/src/ggml-cuda/vendors/hip.h"] = source(
        revision, "ggml/src/ggml-cuda/vendors/hip.h")
assert blobs["old/ggml/src/ggml-cuda/vendors/hip.h"] == blobs["new/ggml/src/ggml-cuda/vendors/hip.h"]
hip, _ = source(commit, "ggml/src/ggml-cuda/vendors/hip.h")
start = hip.index("static __device__ __forceinline__ int __vsubss4(")
end = hip.index("static __device__ __forceinline__ unsigned int __vcmpeq4(", start)
helpers = hip[start:end].replace("__device__", "").replace("__forceinline__", "inline")
assert "__builtin_elementwise_sub_sat" in helpers and "a | 0x80808080" in helpers

# These source masks are the bounds used by the five symbolic wrapper families.
sources = "\n".join(historical["old", path] for path in paths)
for bound in ("q &= 0x0F0F0F0F", "& 0x0F0F0F0F", "& 0x03030303",
              "& 0x04040404", "& 0x30303030"):
    assert bound in sources, bound

families = {
    "q4": (0x0F0F0F0F, 0x08080808),
    "q5": (0x1F1F1F1F, 0x10101010),
    "q3": (0x07070707, 0x04040404),
    "sc3_q6": (0x3F3F3F3F, 0x20202020),
}
for side, operation in (("old", "__vsubss4"), ("new", "__vsub4")):
    program = ("#include <stdint.h>\n"
               "typedef int8_t int8x4_t __attribute__((ext_vector_type(4)));\n"
               + helpers + "\n")
    for name, (mask, bias) in families.items():
        program += (f'extern "C" uint32_t target_{name}(uint32_t x) '
                    f'{{ return {operation}(x & 0x{mask:08x}u, 0x{bias:08x}u); }}\n')
    program += (f'extern "C" uint32_t target_q3_pair(uint32_t x, uint32_t y) '
                f'{{ return {operation}(x & 0x03030303u, y & 0x04040404u); }}\n')
    program += (f'extern "C" uint32_t target_unrestricted(uint32_t x, uint32_t y) '
                f'{{ return {operation}(x,y); }}\n')
    (here / f"{side}.cpp").write_text(program)
    built = run([clang, "-std=c++17", "-O1", "-S", "-emit-llvm",
                 here / f"{side}.cpp", "-o", here / f"{side}.ll"])
    assert built.returncode == 0, built.stderr

assert "@llvm.ssub.sat.v4i8" in (here / "old.ll").read_text()
checks = {}
for direction, first, second in (("forward", "old", "new"), ("backward", "new", "old")):
    checks[direction] = {}
    for name in (*families, "q3_pair"):
        checked = run([alive, here / f"{first}.ll", here / f"{second}.ll",
                       "--func=target_" + name, "--always-verify", "--fail-src-ub", "--quiet"])
        output = checked.stdout + checked.stderr
        assert checked.returncode == 0
        assert "1 correct transformations" in output and "0 incorrect transformations" in output
        assert "0 failed-to-prove transformations" in output and "0 Alive2 errors" in output
        checks[direction][name] = output.strip()

negative = run([alive, here / "old.ll", here / "new.ll", "--func=target_unrestricted",
                "--always-verify", "--fail-src-ub"])
negative_output = negative.stdout + negative.stderr
assert "1 incorrect transformations" in negative_output
assert "Source value: #x0000007f" in negative_output
assert "Target value: #x00000080" in negative_output
(here / "unrestricted-counterexample.log").write_text(negative_output)

(here / "result.json").write_text(json.dumps({
    "commit": commit, "verdict": "EQUIV_PARTIAL", "checker_status": "checked",
    "scope": "HIP helper arithmetic for all 14 saturating-to-wrapping replacements under source byte bounds; other code and full kernels unproved",
    "source_blobs": blobs, "diff_sha256": hashlib.sha256(diff.stdout.encode()).hexdigest(),
    "changed_calls": len(old_calls), "callsite_families": callsite_families,
    "ir_sha256": {side: hashlib.sha256((here / f"{side}.ll").read_bytes()).hexdigest()
                  for side in ("old", "new")},
    "checks": checks, "unrestricted_counterexample": negative_output.strip(),
}, indent=2) + "\n")
print("HIP packed-byte subtraction: 10/10 bounded bidirectional Alive2 checks pass; unrestricted counterexample found")
