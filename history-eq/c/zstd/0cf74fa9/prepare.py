#!/usr/bin/env python3
"""Extract the historical pool constructors and record their calloc requests."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "0cf74fa95751d2ce7e61f394243d5f5e19329927"
path = "lib/compress/zstdmt_compress.c"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def excerpt(source, first, after):
    start = source.index(first)
    return source[start:source.index(after, start)]


manifest = {"commit": commit, "parent": git("rev-parse", commit + "^").decode().strip()}
for side, rev in (("old", commit + "^"), ("new", commit)):
    raw = git("show", f"{rev}:{path}")
    (here / f"{side}-source.c").write_bytes(raw)
    manifest[side + "_sha256"] = hashlib.sha256(raw).hexdigest()
    source = raw.decode()
    buffer_code = excerpt(source, "typedef struct buffer_s {", "static void ZSTDMT_freeBufferPool")
    cctx_type = excerpt(source, "typedef struct {\n    unsigned totalCCtx;", "/* assumption : CCtxPool")
    cctx_code = excerpt(source, "static ZSTDMT_CCtxPool* ZSTDMT_createCCtxPool", "static ZSTD_CCtx* ZSTDMT_getCCtx")
    harness = """#include <stddef.h>
#include <stdint.h>
typedef struct ZSTD_CCtx_s ZSTD_CCtx;
static size_t requested;
static void* audit_calloc(size_t count, size_t bytes) {
    requested = count * bytes;
    return NULL;
}
#define calloc audit_calloc
"""
    layout_check = """
_Static_assert(sizeof(ZSTDMT_bufferPool) ==
               offsetof(ZSTDMT_bufferPool, bTable) + sizeof(buffer_t),
               "buffer pool has exactly one declared slot");
_Static_assert(sizeof(ZSTDMT_CCtxPool) ==
               offsetof(ZSTDMT_CCtxPool, cctx) + sizeof(ZSTD_CCtx*),
               "context pool has exactly one declared slot");
"""
    harness += buffer_code + cctx_type + cctx_code + layout_check
    harness += """
size_t target_buffer_request(unsigned n) {
    __builtin_assume(n >= 1 && n <= 128);
    requested = 0;
    ZSTDMT_createBufferPool(n);
    return requested;
}
size_t target_cctx_request(unsigned n) {
    __builtin_assume(n >= 1 && n <= 128);
    requested = 0;
    ZSTDMT_createCCtxPool(n);
    return requested;
}
"""
    (here / f"{side}.c").write_text(harness)

    budget_harness = """#include <stddef.h>
#include <stdint.h>
typedef struct ZSTD_CCtx_s ZSTD_CCtx;
static size_t budget;
static union { max_align_t align; unsigned char bytes[5000]; } region;
static void* budget_calloc(size_t count, size_t bytes) {
    size_t total = count * bytes;
    return (total <= budget && total <= sizeof(region.bytes)) ? region.bytes : NULL;
}
#define calloc budget_calloc
"""
    budget_harness += buffer_code + cctx_type + cctx_code + layout_check
    budget_harness += """
int target_buffer_success(unsigned n, size_t cap) {
    __builtin_assume(n >= 1 && n <= 128);
    budget = cap;
    return ZSTDMT_createBufferPool(n) != NULL;
}
int target_cctx_success(unsigned n, size_t cap) {
    __builtin_assume(n >= 1 && n <= 128);
    budget = cap;
    return ZSTDMT_createCCtxPool(n) != NULL;
}
"""
    (here / f"{side}-budget.c").write_text(budget_harness)

(here / "source.diff").write_bytes(git("diff", commit + "^", commit, "--", path))
(here / "source-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Extracted exact historical constructors and their allocation-call recorder")
