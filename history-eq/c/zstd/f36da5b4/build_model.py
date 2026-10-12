#!/usr/bin/env python3
"""Extract the changed reducer bodies verbatim from the sampled Git pair."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/zstd"
commit = "f36da5b4d9f6"
path = "lib/compress/zstd_compress.c"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def function(text: str, name: str) -> str:
    start = text.index("static void " + name + " (")
    open_brace = text.index("{", start)
    depth = 0
    for i in range(open_brace, len(text)):
        depth += (text[i] == "{") - (text[i] == "}")
        if depth == 0:
            return text[start : i + 1]
    raise AssertionError(name)


old = git("show", commit + "^:" + path)
new = git("show", commit + ":" + path)
diff = git("diff", commit + "^", commit)
assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [path]
for name, data in (("zstd.old.txt", old), ("zstd.new.txt", new), ("source.diff", diff)):
    target = here / name
    if target.exists():
        assert target.read_bytes() == data, name
    else:
        target.write_bytes(data)

old_fn = function(old.decode(), "ZSTD_reduceTable")
new_internal = function(new.decode(), "ZSTD_reduceTable_internal")
new_fn = function(new.decode(), "ZSTD_reduceTable")
model = """#include <assert.h>
typedef unsigned int U32;
#define ZSTD_ROWSIZE 16
"""
model += old_fn.replace("ZSTD_reduceTable", "old_reduceTable", 1).replace("static void", "static __attribute__((always_inline)) void", 1) + "\n\n"
model += new_internal.replace("ZSTD_reduceTable_internal", "new_reduceTable_internal", 1).replace("static void", "static __attribute__((always_inline)) void", 1) + "\n\n"
model += new_fn.replace("ZSTD_reduceTable_internal", "new_reduceTable_internal").replace("ZSTD_reduceTable", "new_reduceTable", 1).replace("static void", "static __attribute__((always_inline)) void", 1)
model += """
void old16(U32* table, U32 reducerValue) { old_reduceTable(table, 16, reducerValue); }
void new16(U32* table, U32 reducerValue) { new_reduceTable(table, 16, reducerValue); }
void old32(U32* table, U32 reducerValue) { old_reduceTable(table, 32, reducerValue); }
void new32(U32* table, U32 reducerValue) { new_reduceTable(table, 32, reducerValue); }
void new16_bad(U32* table, U32 reducerValue) { new_reduceTable(table, 16, reducerValue); table[0]++; }
"""
target = here / "reduce_model.c"
target.write_text(model)
print("Historical full sources and diff match Git; reducer model generated from exact source functions")
