#!/usr/bin/env python3
"""Extract exact historical FSE_count implementations into a zero-input check."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "4ddb1f556680242c5e614e0884143e58810eed54"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


manifest = {"commit": commit,
            "parent": git("rev-parse", commit + "^").decode().strip(),
            "source_sha256": {}}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = git("show", f"{rev}:lib/fse.c")
    header = git("show", f"{rev}:lib/fse.h")
    static_header = git("show", f"{rev}:lib/fse_static.h")
    for path, data in ((f"{side}-source.c", source),
                       (f"{side}-fse.h", header),
                       (f"{side}-fse_static.h", static_header)):
        target = here / path
        if target.exists():
            assert target.read_bytes() == data
        else:
            target.write_bytes(data)
        manifest["source_sha256"][path] = hashlib.sha256(data).hexdigest()
    text = source.decode()
    if side == "old":
        start = text.index("size_t FSE_count_generic(")
        end = text.index("static U32 FSE_tableStep", start)
    else:
        start = text.index("static size_t FSE_count_simple(")
        after_public_count = text.index("size_t FSE_count(unsigned*", start)
        end = text.index("/*-**************************************************************", after_public_count)
    exact_functions = text[start:end]
    prelude = """#include <stddef.h>
#include <stdint.h>
#include <string.h>
typedef unsigned char BYTE;
typedef uint32_t U32;
#define FSE_MAX_SYMBOL_VALUE 255
#define FSE_FUNCTION_TYPE BYTE
#define FSE_FUNCTION_EXTENSION
#define FSE_CAT(X,Y) X##Y
#define FSE_FUNCTION_NAME(X,Y) FSE_CAT(X,Y)
#define ERROR(X) ((size_t)-1)
static U32 MEM_read32(const void* p) { U32 v; memcpy(&v, p, 4); return v; }
"""
    wrapper = """
/* count[] has the documented 256 unsigned cells. The single-byte source
 * provides a valid pointer even though its declared length is zero. */
uint64_t target_zero_count(void) {
    unsigned count[256] = {0};
    unsigned maxSymbolValue = 255;
    const BYTE source[1] = {0};
    count[64] = 0xA5A5A5A5U;
    size_t result = FSE_count(count, &maxSymbolValue, source, 0);
    return ((uint64_t)(uint32_t)result << 48) |
           ((uint64_t)maxSymbolValue << 32) | count[64];
}
"""
    (here / f"{side}.c").write_text(prelude + exact_functions + wrapper)
    manifest["source_sha256"][f"{side}.c"] = hashlib.sha256(
        (prelude + exact_functions + wrapper).encode()).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Historical FSE_count bodies extracted from exact old/new fse.c")
