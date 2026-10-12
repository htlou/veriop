#!/usr/bin/env python3
"""Build both historical llamafile SGEMM versions and run an API witness."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "2cd43f4900"
compiler = shutil.which("g++")
assert compiler
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
files = (
    "ggml/src/ggml-cpu/llamafile/sgemm.cpp",
    "ggml/src/ggml-cpu/llamafile/sgemm.h",
    "ggml/src/ggml-impl.h",
    "ggml/src/ggml-cpu/ggml-cpu-impl.h",
    "ggml/src/ggml-quants.h",
    "ggml/src/ggml-common.h",
    "ggml/include/ggml.h",
)


def run(args):
    return subprocess.run([str(arg) for arg in args], capture_output=True, text=True,
                          timeout=120, env=env)


common = '''#include "sgemm.h"
#include "ggml-cpu-impl.h"
#include <cstdio>
#include <cstdlib>
extern "C" {
float ggml_table_f32_f16[1 << 16] = {};
void ggml_barrier(struct ggml_threadpool *) {}
void ggml_abort(const char *, int, const char *, ...) { std::abort(); }
void ggml_log_internal(enum ggml_log_level, const char *, ...) {}
}
int main(int argc, char **) {
    ggml_fp16_t A_f16[4*8] = {};
    float A_f32[4*8] = {};
    float B[2*8]; for (float & x : B) x = 1.0f;
    float C[2*4]; for (float & x : C) x = -1.0f;
    ggml_compute_params params = {}; params.ith = 0; params.nth = 1;
'''


def witness(side):
    params = "&params," if side == "new" else ""
    thread = "" if side == "new" else "0,1,"
    call_f16 = (f"llamafile_sgemm({params}4,2,8,A_f16,8,B,8,C,4,{thread}"
                "GGML_TYPE_F16,GGML_TYPE_F32,GGML_TYPE_F32)")
    call_f32 = (f"llamafile_sgemm({params}4,2,8,A_f32,8,B,8,C,4,{thread}"
                "GGML_TYPE_F32,GGML_TYPE_F32,GGML_TYPE_F32)")
    return (common + f"    bool handled = argc > 1 ? {call_f32} : {call_f16};\n"
            '    for (float x : C) if (x != C[0]) std::abort();\n'
            '    std::printf("handled=%d C0=%g C7=%g\\n", int(handled), C[0], C[7]);\n}\n')


resolved = run(["git", "-C", repo, "rev-parse", commit])
assert resolved.returncode == 0
commit = resolved.stdout.strip()
result = {"commit": commit, "verdict": "NOT_EQUIV", "checker_status": "checked",
          "scope": "direct llamafile_sgemm AVX2 one-thread API, m=4,n=2,k=8, F16×F32; new params.ith/nth correspond to old ith/nth",
          "source_blobs": {}, "object_sha256": {}, "runs": {}}

with TemporaryDirectory(prefix="llama-sgemm-") as directory:
    temp = Path(directory)
    for side, revision in (("old", commit + "^"), ("new", commit)):
        source_root = temp / side
        for path in files:
            shown = run(["git", "-C", repo, "show", revision + ":" + path])
            oid = run(["git", "-C", repo, "rev-parse", revision + ":" + path])
            assert shown.returncode == oid.returncode == 0, path
            data = shown.stdout.encode()
            digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert digest == oid.stdout.strip(), path
            dest = source_root / path
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(data)
            result["source_blobs"][side + "/" + path] = digest
        assert ("bool llamafile_sgemm(const struct ggml_compute_params * params" in
                (source_root / "ggml/src/ggml-cpu/llamafile/sgemm.h").read_text()) == (side == "new")
        (here / f"{side}-witness.cpp").write_text(witness(side))
        includes = ["-I", source_root / "ggml/src", "-I", source_root / "ggml/src/ggml-cpu",
                    "-I", source_root / "ggml/src/ggml-cpu/llamafile",
                    "-I", source_root / "ggml/include"]
        options = [compiler, "-std=c++17", "-O2", "-mavx2", "-mfma", "-mf16c", "-mno-avx512f", *includes]
        obj = temp / f"{side}.o"
        built = run(options + ["-c", source_root / "ggml/src/ggml-cpu/llamafile/sgemm.cpp", "-o", obj])
        assert built.returncode == 0, built.stderr
        result["object_sha256"][side] = hashlib.sha256(obj.read_bytes()).hexdigest()
        binary = temp / f"{side}-witness"
        linked = run(options + [here / f"{side}-witness.cpp", obj, "-o", binary])
        assert linked.returncode == 0, linked.stderr
        result["runs"][side] = {}
        for case, args in (("f16_f32", []), ("f32_f32_control", ["shared"])):
            executed = run([binary, *args])
            assert executed.returncode == 0, executed.stderr
            output = executed.stdout.strip()
            (here / f"{side}-{case}.log").write_text(output + "\n")
            result["runs"][side][case] = output

assert result["runs"]["old"]["f16_f32"] == "handled=1 C0=0 C7=0"
assert result["runs"]["new"]["f16_f32"] == "handled=0 C0=-1 C7=-1"
assert all(result["runs"][side]["f32_f32_control"] == "handled=1 C0=0 C7=0"
           for side in ("old", "new"))
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("NOT_EQUIV for direct F16×F32 SGEMM API: old handled and wrote output; new declined")
