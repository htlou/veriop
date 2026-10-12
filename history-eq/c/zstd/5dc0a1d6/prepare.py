#!/usr/bin/env python3
"""Extract the exact historical ZSTD_storeSeq body for a local release-model check."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "5dc0a1d65921821eddfcf0a16ef4a3d79be0ba3f"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "source_sha256": {}}
for side, rev in (("old", parent), ("new", commit)):
    source = git("show", f"{rev}:lib/compress/zstd_compress_internal.h")
    source_path = here / f"{side}-source.h"
    source_path.write_bytes(source)
    manifest["source_sha256"][source_path.name] = hashlib.sha256(source).hexdigest()
    s = source.decode()
    declaration = ("MEM_STATIC" if side == "old" else "HINT_INLINE") + " void ZSTD_storeSeq("
    start = s.index(declaration)
    end = s.index("\n\n\n/*-*************************************", start)
    function = s[start:end]
    prelude = """#include <stddef.h>
#include <stdint.h>
#define NDEBUG
#include <assert.h>
typedef unsigned char BYTE;
typedef uint32_t U32;
typedef uint16_t U16;
typedef struct { U16 litLength; U32 offset; U16 matchLength; } seqDef;
typedef struct {
    seqDef* sequences;
    seqDef* sequencesStart;
    size_t maxNbSeq;
    BYTE* lit;
    BYTE* litStart;
    size_t maxNbLit;
    U32 longLengthID;
    U32 longLengthPos;
} seqStore_t;
typedef enum { ZSTD_no_overlap } ZSTD_overlap_e;
#define MEM_STATIC static inline
#define HINT_INLINE static inline __attribute__((always_inline))
#define WILDCOPY_OVERLENGTH 32
extern void ZSTD_copy16(void*, const void*);
extern void ZSTD_wildcopy(void*, const void*, ptrdiff_t, ZSTD_overlap_e);
extern void ZSTD_safecopyLiterals(BYTE*, const BYTE*, const BYTE*, const BYTE*);
"""
    wrapper = """
void target(seqStore_t* store, size_t litLength, const BYTE* literals,
            const BYTE* litLimit, U32 offCode, size_t mlBase) {
    ZSTD_storeSeq(store, litLength, literals, litLimit, offCode, mlBase);
}
"""
    (here / f"{side}.c").write_text(prelude + function + wrapper)
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
