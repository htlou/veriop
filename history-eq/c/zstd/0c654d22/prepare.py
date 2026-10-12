#!/usr/bin/env python3
"""Extract the exact changed function for a bounded local Alive2 check."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "0c654d22c87a78fb2ff4c28341345a35714606b1"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


manifest = {"commit": commit, "parent": git("rev-parse", commit + "^").decode().strip(),
            "source_sha256": {}}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = git("show", f"{rev}:lib/compress/zstd_lazy.c")
    source_path = here / f"{side}-source.c"
    source_path.write_bytes(source)
    manifest["source_sha256"][source_path.name] = hashlib.sha256(source).hexdigest()
    s = source.decode()
    start = s.index(("static size_t" if side == "old" else "FORCE_INLINE_TEMPLATE size_t")
                    + " ZSTD_BtFindBestMatch (")
    end = s.index("\n\n\nstatic size_t ZSTD_BtFindBestMatch_selectMLS", start)
    body = s[start:end]
    prelude = """#include <stddef.h>
#include <stdint.h>
typedef unsigned char BYTE;
typedef uint32_t U32;
typedef struct { const BYTE* base; } ZSTD_window_t;
typedef struct { ZSTD_window_t window; U32 nextToUpdate; } ZSTD_matchState_t;
typedef struct { U32 unused; } ZSTD_compressionParameters;
typedef enum { ZSTD_noDict, ZSTD_dictMatchState, ZSTD_extDict } ZSTD_dictMode_e;
#define FORCE_INLINE_TEMPLATE static inline __attribute__((always_inline))
#define DEBUGLOG(...) ((void)0)
extern void ZSTD_updateDUBT(ZSTD_matchState_t*, const ZSTD_compressionParameters*, const BYTE*, const BYTE*, U32);
extern size_t ZSTD_DUBT_findBestMatch(ZSTD_matchState_t*, const ZSTD_compressionParameters*, const BYTE*, const BYTE*, size_t*, U32, ZSTD_dictMode_e);
"""
    wrapper = """
size_t target(ZSTD_matchState_t* ms, const ZSTD_compressionParameters* params,
              const BYTE* ip, const BYTE* limit, size_t* off, U32 mls,
              ZSTD_dictMode_e dictMode) {
    return ZSTD_BtFindBestMatch(ms, params, ip, limit, off, mls, dictMode);
}
"""
    (here / f"{side}.c").write_text(prelude + body + wrapper)
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
