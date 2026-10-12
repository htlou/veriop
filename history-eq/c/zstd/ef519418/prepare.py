#!/usr/bin/env python3
"""Archive the historical parser change and extract its literal-price helper."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "ef51941822eb12a88afe6bb51867fab6cc65cc9d"
paths = ["lib/zstd_opt.h", "lib/zstd_compress.c"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {"source.diff": git("diff", parent, commit, "--", *paths)}
prelude = """#include <stdint.h>
typedef uint8_t BYTE;
typedef uint32_t U32;
typedef struct {
    U32 log2litLengthSum;
    U32 litLengthFreq[64];
    const BYTE* cachedLiterals;
    U32 cachedLitLength;
    U32 cachedPrice;
    U32 log2litSum;
    U32 litFreq[256];
} seqStore_t;
#define FORCE_INLINE static inline
extern U32 ZSTD_highbit(U32);
extern const BYTE LL_bits[64];
"""
wrapper = """
U32 target(seqStore_t* ssPtr, U32 litLength, const BYTE* literals) {
    return ZSTD_getLiteralPrice(ssPtr, litLength, literals);
}
"""
for side, rev in (("old", parent), ("new", commit)):
    for path in paths:
        files[f"{Path(path).name}.{side}"] = git("show", f"{rev}:{path}")
    source = files[f"zstd_opt.h.{side}"].decode()
    start = source.index("FORCE_INLINE U32 ZSTD_getLiteralPrice(")
    end = source.index("\n\nFORCE_INLINE U32 ZSTD_getPrice(", start)
    (here / f"{side}.c").write_text(prelude + source[start:end] + wrapper)
for name, data in files.items():
    (here / name).write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
