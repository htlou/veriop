#!/usr/bin/env python3
"""Rebuild the historical AVX dot-product pair and replay its concrete mismatch."""

import hashlib
import json
import os
from pathlib import Path
import re
import struct
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
commit = "5c3d0f18"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
flags = ["-O2", "-mavx", "-mssse3", "-mno-avx2", "-mno-fma"]


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def run(command, timeout=60):
    try:
        result = subprocess.run(list(map(str, command)), capture_output=True, text=True,
                                env=env, timeout=timeout)
        return {"returncode": result.returncode, "stdout": result.stdout, "stderr": result.stderr}
    except subprocess.TimeoutExpired as exc:
        def decoded(value):
            return value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
        return {"timed_out": True, "stdout": decoded(exc.stdout), "stderr": decoded(exc.stderr)}


assert struct.unpack("<e", bytes.fromhex("003c"))[0] == 1.0
assert struct.unpack("<e", bytes.fromhex("ff7b"))[0] == 65504.0
full_commit = git("rev-parse", commit).decode().strip()
parent = git("rev-parse", commit + "^").decode().strip()
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
assert manifest["commits"][full_commit]["parent"] == parent
diff = (here.parent / "source-screening/5c3d0f18.source.diff").read_bytes()
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][full_commit]["diff_sha256"]

macros = run([clang, *flags, "-dM", "-E", "-x", "c", "/dev/null"])
assert macros["returncode"] == 0
assert "#define __AVX__ 1" in macros["stdout"]
assert "#define __AVX2__" not in macros["stdout"]
assert "#define __AVX512F__" not in macros["stdout"]
result = {"commit": full_commit, "parent": parent, "flags": flags,
          "diff_sha256": hashlib.sha256(diff).hexdigest(),
          "witness_sha256": hashlib.sha256((here / "Witness.c").read_bytes()).hexdigest(),
          "builds": {}, "checks": {}}

with tempfile.TemporaryDirectory(prefix="veriop-llama-5c3d0f18-") as tmp:
    base = Path(tmp)
    for side, revision in (("old", parent), ("new", full_commit)):
        work = base / side
        work.mkdir()
        archive = work / "ggml.tar"
        with archive.open("wb") as output:
            archived = subprocess.run(["git", "-C", str(repo), "archive", "--format=tar", revision,
                                       "ggml"], stdout=output, stderr=subprocess.PIPE, env=env)
        assert archived.returncode == 0, archived.stderr.decode(errors="replace")
        subprocess.run(["tar", "-xf", str(archive), "-C", str(work)], check=True)
        source = work / "ggml/src/ggml-quants.c"
        assert source.read_bytes() == git("show", revision + ":ggml/src/ggml-quants.c")
        init_source = work / "ggml/src/ggml.c"
        assert init_source.read_bytes() == git("show", revision + ":ggml/src/ggml.c")
        assert "ggml_table_f32_f16[i] = GGML_COMPUTE_FP16_TO_FP32(u.fp16)" in init_source.read_text()
        source_text = source.read_text()
        branch = source_text[source_text.index("void ggml_vec_dot_q4_0_q8_0("):]
        branch = branch[:branch.index("\nvoid ggml_vec_dot_", 10)]
        assert ("acc = _mm256_add_ps(_mm256_mul_ps( d, p ), acc);" in branch) == (side == "old")
        assert ("sumf = hsum_float_8(_mm256_add_ps(accum1, accum2));" in branch) == (side == "new")
        headers = [f"-I{work}/ggml/src", f"-I{work}/ggml/include"]
        executable = work / "witness"
        native = run([clang, *flags, "-ffunction-sections", "-fdata-sections", *headers,
                      source, here / "Witness.c", "-Wl,--gc-sections", "-lm", "-o", executable])
        assert native["returncode"] == 0, native
        observed = run([executable])
        expected = "32 0x1p+5\n" if side == "old" else "64 0x1p+6\n"
        assert observed["returncode"] == 0 and observed["stdout"] == expected, observed
        ir = work / "full.ll"
        built = run([clang, *flags, "-S", "-emit-llvm", *headers, source, "-o", ir])
        assert built["returncode"] == 0, built
        normalized = ir.read_text().replace(" noalias", "").replace(" nocapture", "")
        normalized = re.sub(r", ![A-Za-z0-9_.]+ !\d+", "", normalized)
        normalized = "\n".join(line for line in normalized.splitlines()
                               if not line.startswith("!") and
                               "call void @llvm.experimental.noalias.scope.decl(" not in line) + "\n"
        alive_ir = work / "full.alive.ll"
        alive_ir.write_text(normalized)
        result["builds"][side] = {
            "revision": revision, "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
            "ggml_init_source_sha256": hashlib.sha256(init_source.read_bytes()).hexdigest(),
            "full_ir_sha256": hashlib.sha256(ir.read_bytes()).hexdigest(),
            "alive_ir_sha256": hashlib.sha256(alive_ir.read_bytes()).hexdigest(),
            "native_output": observed["stdout"].strip(),
        }
        local_ir = here / f"Reduction.{side}.ll"
        local_build = run([clang, "-O1", "-S", "-emit-llvm", here / f"Reduction.{side}.c", "-o", local_ir])
        assert local_build["returncode"] == 0, local_build
        result["builds"][side]["reduction_ir_sha256"] = hashlib.sha256(local_ir.read_bytes()).hexdigest()

    old_ir = base / "old/full.alive.ll"
    new_ir = base / "new/full.alive.ll"
    full = run([alive, "--func=ggml_vec_dot_q4_0_q8_0", "--smt-to=20000", "--always-verify",
                old_ir, new_ir], timeout=25)
    (here / "full-alive.log").write_text(full["stdout"] + full["stderr"])
    result["checks"]["full_forward"] = {"timed_out": full.get("timed_out", False),
                                          "returncode": full.get("returncode"),
                                          "log": "full-alive.log"}

fixed = run([alive, "--func=lane_reduce_fixed", "--always-verify",
             here / "Reduction.old.ll", here / "Reduction.new.ll"])
assert "1 incorrect transformations" in fixed["stdout"]
assert "Source value: #x40800000 (4)" in fixed["stdout"]
assert "Target value: #x41000000 (8)" in fixed["stdout"]
(here / "ReductionFixed.alive.log").write_text(fixed["stdout"] + fixed["stderr"])
result["checks"]["fixed_lane_forward"] = {"returncode": fixed["returncode"],
                                              "log": "ReductionFixed.alive.log"}
(here / "verification-result.json").write_text(json.dumps(result, indent=2) + "\n")
print("old:", result["builds"]["old"]["native_output"])
print("new:", result["builds"]["new"]["native_output"])
print("full Alive2:", "timeout" if full.get("timed_out") else full["returncode"])
print("fixed lane Alive2: incorrect transformation")
