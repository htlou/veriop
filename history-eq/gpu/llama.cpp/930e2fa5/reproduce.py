#!/usr/bin/env python3
"""Check source-extracted Hexagon reshape-copy loops under a scalar copy model."""

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
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = "930e2fa5"
path = "ggml/src/ggml-hexagon/htp/cpy-ops.c"


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def run(args, timeout=60):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=timeout, env=env)


commit = git("rev-parse", commit).decode().strip()
tensor_header = git("show", commit + ":ggml/src/ggml-hexagon/htp/htp-tensor.h").decode()
assert git("show", commit + "^:ggml/src/ggml-hexagon/htp/htp-tensor.h").decode() == tensor_header
copy_header = git("show", commit + ":ggml/src/ggml-hexagon/htp/hvx-copy.h")
assert git("show", commit + "^:ggml/src/ggml-hexagon/htp/hvx-copy.h") == copy_header
assert b"hvx_copy_loop_body(HVX_UVector, HVX_UVector, hvx_vec_store_u)" in copy_header
base_header = git("show", commit + ":ggml/src/ggml-hexagon/htp/hvx-base.h")
assert git("show", commit + "^:ggml/src/ggml-hexagon/htp/hvx-base.h") == base_header
assert b"static inline void hvx_vec_store_u" in base_header
contiguous = tensor_header.split("static inline bool htp_tensor_is_contiguous", 1)[1].split(
    "static inline bool htp_tensor_is_permuted", 1)[0]
contiguous = "static inline bool htp_tensor_is_contiguous" + contiguous
assert "next_nb *= t->ne[i]" in contiguous

scaffold = """#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#define HTP_OP_MAX_DIMS 4
#define MIN(a,b) ((a)<(b)?(a):(b))
struct htp_tensor { uint32_t ne[4], nb[4]; void *data; };
struct htp_ops_context { const struct htp_tensor *src[1], *dst; };
struct fastdiv_values { uint32_t divisor; };
static inline uint32_t fastdiv(uint32_t n, const struct fastdiv_values *d) { return n / d->divisor; }
struct htp_copy_context {
    struct htp_ops_context *octx;
    uint32_t elem_start, nelem, elem_per_thread;
    struct fastdiv_values div_ne0, div_ne1_ne0, div_ne2_ne1_ne0;
    struct fastdiv_values div_ne00, div_ne01_ne00, div_ne02_ne01_ne00;
};
static inline void hvx_copy_uu(uint8_t *dst, const uint8_t *src, uint32_t n, uint32_t elem_size) {
    __builtin_memcpy(dst, src, (size_t)n * elem_size);
}
struct Out32 { uint32_t v[4]; };
struct Out16 { uint16_t v[4]; };
"""

cases = {}
for kind, size in (("f32", 4), ("f16", 2)):
    cases[kind + "_contiguous"] = ((2, 2, 1, 1), (size, 2*size, 4*size, 4*size),
                                   (4, 1, 1, 1), (size, 4*size, 4*size, 4*size), 0, 4, size)
    cases[kind + "_row_runs"] = ((2, 2, 1, 1), (size, 3*size, 6*size, 6*size),
                                 (2, 2, 1, 1), (size, 4*size, 8*size, 8*size), 0, 4, size)
    cases[kind + "_row_boundary"] = ((2, 2, 1, 1), (size, 3*size, 6*size, 6*size),
                                     (2, 2, 1, 1), (size, 4*size, 8*size, 8*size), 1, 2, size)
    cases[kind + "_strided"] = ((2, 2, 1, 1), (2*size, 5*size, 10*size, 10*size),
                                (2, 2, 1, 1), (2*size, 6*size, 12*size, 12*size), 0, 4, size)


def initializer(values):
    return "{" + ",".join(map(str, values)) + "}"


manifest = {"commit": commit, "changed_source_sha256": {},
            "tensor_header_sha256": hashlib.sha256(tensor_header.encode()).hexdigest(),
            "hvx_copy_header_sha256": hashlib.sha256(copy_header).hexdigest(),
            "hvx_base_header_sha256": hashlib.sha256(base_header).hexdigest(),
            "copy_model": "hvx_copy_uu has bytewise nonoverlapping memcpy output semantics",
            "cases": list(cases), "checks": []}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = git("show", rev + ":" + path)
    manifest["changed_source_sha256"][side] = hashlib.sha256(source).hexdigest()
    text = source.decode()
    preamble = text.split("#define cpy_preamble", 1)[1].split(
        "#define DEFINE_CPY_SAMESHAPE", 1)[0]
    preamble = "#define cpy_preamble" + preamble
    macro = text.split("#define DEFINE_CPY_RESHAPE", 1)[1].split(
        "DEFINE_CPY_RESHAPE(f32", 1)[0]
    macro = "#define DEFINE_CPY_RESHAPE" + macro
    assert "const uint32_t th_start" in macro and "const uint32_t th_end" in macro
    assert ("rows_contig" in macro) == (side == "new")
    body = scaffold + contiguous + "\n" + preamble + "\n" + macro + (
        "\nDEFINE_CPY_RESHAPE(f32,float,4)\nDEFINE_CPY_RESHAPE(f16,__fp16,2)\n")
    body = body.replace("static void cpy_thread_##NAME##_reshape", 
                        "static inline __attribute__((always_inline)) void cpy_thread_##NAME##_reshape")
    for name, (sne, snb, dne, dnb, start, count, size) in cases.items():
        source_offsets = [((e // sne[0]) % sne[1]) * snb[1] + (e % sne[0]) * snb[0]
                          for e in range(4)]
        dest_offsets = [((e // dne[0]) % dne[1]) * dnb[1] + (e % dne[0]) * dnb[0]
                        for e in range(4)]
        value_type = "uint32_t" if size == 4 else "uint16_t"
        out_type = "Out32" if size == 4 else "Out16"
        body += f"""
struct {out_type} compare_{name}({value_type} a0, {value_type} a1, {value_type} a2, {value_type} a3) {{
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
"""
        for e, offset in enumerate(source_offsets):
            body += f"    __builtin_memcpy(src_data + {offset}, &a{e}, {size});\n"
        body += f"""
    struct htp_tensor src = {{{initializer(sne)}, {initializer(snb)}, src_data}};
    struct htp_tensor dst = {{{initializer(dne)}, {initializer(dnb)}, dst_data}};
    struct htp_ops_context ops = {{{{&src}}, &dst}};
    struct htp_copy_context ct = {{0}};
    ct.octx = &ops;
    ct.elem_start = {start}; ct.nelem = {count}; ct.elem_per_thread = {count};
    ct.div_ne0.divisor = {dne[0]};
    ct.div_ne1_ne0.divisor = {dne[0]*dne[1]};
    ct.div_ne2_ne1_ne0.divisor = {dne[0]*dne[1]*dne[2]};
    ct.div_ne00.divisor = {sne[0]};
    ct.div_ne01_ne00.divisor = {sne[0]*sne[1]};
    ct.div_ne02_ne01_ne00.divisor = {sne[0]*sne[1]*sne[2]};
    cpy_thread_{name[:3]}_reshape(1, 0, &ct);
    struct {out_type} out;
"""
        for e, offset in enumerate(dest_offsets):
            body += f"    __builtin_memcpy(&out.v[{e}], dst_data + {offset}, {size});\n"
        body += "    return out;\n}\n"
    (here / f"{side}.c").write_text(body)
    compiled = run([clang, "-O2", "-S", "-emit-llvm", here / f"{side}.c",
                    "-o", here / f"{side}.ll"])
    assert compiled.returncode == 0, compiled.stderr
    llvm = (here / f"{side}.ll").read_text()
    assert "call void @cpy_thread_f32_reshape" not in llvm and "call void @cpy_thread_f16_reshape" not in llvm
    llvm = re.sub(r", ![A-Za-z_][A-Za-z0-9_.]* ![0-9]+", "", llvm)
    llvm = re.sub(r"(?<![.!])\b(?:noalias|nocapture)\b\s*", "", llvm)
    (here / f"{side}-normalized.ll").write_text(llvm)
    verified = run([opt, "-passes=verify", "-disable-output", here / f"{side}-normalized.ll"])
    assert verified.returncode == 0, verified.stderr

for direction, first, second in (("forward", "old", "new"),
                                  ("backward", "new", "old")):
    for name in cases:
        result = run([alive, "--always-verify", "--src-unroll=8", "--tgt-unroll=8",
                      "--func=compare_" + name,
                      here / f"{first}-normalized.ll", here / f"{second}-normalized.ll"], timeout=60)
        log = result.stdout + result.stderr
        (here / f"{direction}-{name}.log").write_text(log)
        status = "EQUIV" if all(s in log for s in ("1 correct transformations", "0 incorrect transformations",
                                                    "0 failed-to-prove transformations", "0 Alive2 errors")) else "UNKNOWN"
        manifest["checks"].append({"direction": direction, "case": name,
                                   "status": status, "returncode": result.returncode})

assert len(manifest["checks"]) == 16
assert all(row["status"] == "EQUIV" and row["returncode"] == 0 for row in manifest["checks"])
manifest["normalized_ir_sha256"] = {
    side: hashlib.sha256((here / f"{side}-normalized.ll").read_bytes()).hexdigest()
    for side in ("old", "new")
}
(here / "result.json").write_text(json.dumps(manifest, indent=2) + "\n")
print(json.dumps({"checks": manifest["checks"]}))
