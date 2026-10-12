#!/usr/bin/env python3
"""Build a one-sequence Alive2 harness around exact historical seqToCodes bodies."""

from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[3] / "benchmarks/repos/zstd"
COMMIT = "5d39357bc4a030819778e2ec054825cb72a70af3"


def historical(rev: str, path: str) -> str:
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{path}"], text=True
    )


for label, rev in (("old", COMMIT + "^"), ("new", COMMIT)):
    source = historical(rev, "lib/zstd_compress.c")
    (HERE / f"{label}-source.c").write_text(source)
    header = historical(rev, "lib/zstd_internal.h")
    (HERE / f"{label}-internal.h").write_text(header)
    body = source.split("void ZSTD_seqToCodes(", 1)[1].split(
        "\n\nsize_t ZSTD_compressSequences(", 1
    )[0]
    # Internal linkage lets LLVM inline the exact historical body into the
    # one-sequence wrapper, without changing its C behavior.
    body = "static void ZSTD_seqToCodes(" + body + "\n"
    fields = (
        "U32 longLength;"
        if label == "old"
        else "U32 longLengthID; U32 longLengthPos;"
    )
    store = (
        "if (litLength >= 65535) { ll[0] = 65535; ss.longLength = litLength; }\n"
        "    else ll[0] = (U16)litLength;\n"
        "    if (matchCode >= 65535) { ml[0] = 65535; ss.longLength = matchCode; }\n"
        "    else ml[0] = (U16)matchCode;"
        if label == "old"
        else
        "if (litLength > 0xFFFF) { ss.longLengthID = 1; ss.longLengthPos = 0; }\n"
        "    ll[0] = (U16)litLength;\n"
        "    if (matchCode > 0xFFFF) { ss.longLengthID = 2; ss.longLengthPos = 0; }\n"
        "    ml[0] = (U16)matchCode;"
    )
    harness = f"""#include <stdint.h>
#include <stddef.h>
typedef uint8_t BYTE;
typedef uint16_t U16;
typedef uint32_t U32;
#define MaxLL 35
#define MaxML 52
typedef struct {{
    U16 *litLengthStart, *matchLengthStart;
    U32 *offsetStart;
    BYTE *llCodeStart, *offCodeStart, *mlCodeStart;
    {fields}
}} seqStore_t;
static unsigned ZSTD_highbit(U32 val) {{ return 31 - __builtin_clz(val); }}
{body}
/* Store branches above ZSTD_seqToCodes are transcribed from historical
 * ZSTD_storeSeq; only literal copying, stats, and pointer increments are omitted.
 * One valid sequence consumes litLength + matchCode + MINMATCH bytes. */
uint64_t target_one_sequence(U32 litLength, U32 matchCode) {{
    if ((uint64_t)litLength + matchCode + 3 > 131072)
        __builtin_unreachable();
    U16 ll[1], ml[1];
    U32 offset[1] = {{1}};
    BYTE llCode[1], mlCode[1], offCode[1];
    seqStore_t ss = {{0}};
    ss.litLengthStart = ll;
    ss.matchLengthStart = ml;
    ss.offsetStart = offset;
    ss.llCodeStart = llCode;
    ss.mlCodeStart = mlCode;
    ss.offCodeStart = offCode;
    {store}
    ZSTD_seqToCodes(&ss, 1);
    return ((uint64_t)llCode[0] << 40) |
           ((uint64_t)mlCode[0] << 32) |
           ((uint64_t)ll[0] << 16) | ml[0];
}}
"""
    (HERE / f"{label}.c").write_text(harness)
