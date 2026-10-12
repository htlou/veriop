#!/usr/bin/env python3
"""Extract the changed F32 duplicate loops from exact historical blobs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
blobs = {
    "old": "8531baf6c57fbdc9c06eb79c247d5ca69dc78251",
    "new": "9f17ea43c8553fc5ff5f41dff255684ee061127b",
}
prefix = r"""#include <stdint.h>
#include <stddef.h>
#include <string.h>

typedef struct { char *data; int type; } Tensor;
static int ggml_blck_size(int type) { (void) type; return 1; }
static void copy_f32(const float *x, char *y, int64_t n) {
    memcpy(y, x, (size_t)n * sizeof(float));
}

void target(const unsigned char *input, unsigned char *output) {
    Tensor source = { (char *)input, 1 }, destination = { (char *)output, 1 };
    Tensor *src0 = &source, *dst = &destination;
    const int ne00 = 4, ne01 = 3, ne02 = 2, ne03 = 1, ir0 = 0, ir1 = 3;
    const size_t nb00 = 4, nb01 = 24, nb02 = 80, nb03 = 0, nb0 = 4;
    void (*from_float)(const float *, char *, int64_t) = copy_f32;
"""

audit = {}
for side, blob in blobs.items():
    source = subprocess.check_output(
        ["git", "-C", str(repo), "cat-file", "blob", blob],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    ).decode()
    anchor = source.index("static void ggml_compute_forward_dup_f32(")
    if side == "old":
        begin = source.index("size_t id = 0;\n                const size_t rs = ne00 * nb00;", anchor)
        end = source.index("} else if (ggml_get_type_traits_cpu(dst->type)->from_float)", begin)
    else:
        begin = source.index("size_t id = 0;\n                size_t rs = nb0 * (ne00 / ggml_blck_size(dst->type));", anchor)
        end = source.index('} else {\n                GGML_ABORT("fatal error")', begin)
        cpu_source = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", "2042ee71f1f804c647e715f2ba770721f25e25d2"],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
        ).decode()
        assert ".from_float               = (ggml_from_float_t) ggml_cpu_fp32_to_fp32," in cpu_source
        assert "void ggml_cpu_fp32_to_fp32(const float * x, float * y, int64_t n) {\n    memcpy(y, x, n * sizeof(float));\n}" in cpu_source
    loop = source[begin:end]
    assert ("memcpy(dst_ptr + id, src0_ptr, rs);" if side == "old" else "from_float(src0_ptr, dst_ptr + id, ne00);") in loop
    model = prefix + loop + "\n}\n"
    (here / f"{side}.c").write_text(model)
    aligned_prefix = prefix.replace(
        "void target(const unsigned char *input, unsigned char *output) {\n",
        "void target(const unsigned char *input, unsigned char *output) {\n"
        "    if (((uintptr_t)input & 3u) != 0) __builtin_unreachable();\n",
    )
    assert aligned_prefix != prefix
    aligned_model = aligned_prefix + loop + "\n}\n"
    (here / f"{side}-aligned.c").write_text(aligned_model)
    audit[side] = {
        "ops_blob": blob,
        "loop_sha256": hashlib.sha256(loop.encode()).hexdigest(),
        "model_sha256": hashlib.sha256(model.encode()).hexdigest(),
        "aligned_model_sha256": hashlib.sha256(aligned_model.encode()).hexdigest(),
    }

(here / "source-audit.json").write_text(json.dumps(audit, indent=2) + "\n")
