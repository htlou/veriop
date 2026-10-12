"""Recover the missing child blob from the indexed historical diff."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
old = (here / "zstd.old.c").read_bytes()
assert subprocess.check_output(["git", "hash-object", str(here / "zstd.old.c")]).strip() == b"63ae947dca3c6d7c5414ffbef128bb84cee679a4"

edits = [
    (
        b"    const size_t litLength = sequence.litLength;   /* for some reason, doing the same with matchLength decreases speed ... */\n"
        b"    BYTE* const oMatchEnd = op + litLength + sequence.matchLength;   /* risk : address space overflow (32-bits) */\n"
        b"    const BYTE* const litEnd = *litPtr + litLength;\n",
        b"    BYTE* const oLitEnd = op + sequence.litLength;\n"
        b"    BYTE* const oMatchEnd = op + sequence.litLength + sequence.matchLength;   /* risk : address space overflow (32-bits) */\n"
        b"    BYTE* const oend_8 = oend-8;\n"
        b"    const BYTE* const litEnd = *litPtr + sequence.litLength;\n",
    ),
    (
        b"    /* check */\n"
        b"    if (oMatchEnd > oend) return ERROR(dstSize_tooSmall);   /* overwrite beyond dst buffer */\n"
        b"    if (litEnd > litLimit) return ERROR(corruption_detected);\n"
        b"\n"
        b"    /* copy Literals */\n"
        b"    if (op+litLength > oend-8)   /* ZSTD_wildcopy() risks overwrite */\n"
        b"        memmove(op, *litPtr, litLength);\n"
        b"    else\n"
        b"        ZSTD_wildcopy(op, *litPtr, litLength);\n"
        b"    op += litLength;\n"
        b"    *litPtr = litEnd;   /* update for next sequence */\n"
        b"\n"
        b"    /* check : last match must be at a minimum distance of 8 from end of dst buffer */\n"
        b"    if (oend-op < 8) return ERROR(dstSize_tooSmall);\n",
        b"    /* check */\n"
        b"    if (oLitEnd > oend_8) return ERROR(dstSize_tooSmall);   /* last match must start at a minimum distance of 8 from oend */\n"
        b"    if (oMatchEnd > oend) return ERROR(dstSize_tooSmall);   /* overwrite beyond dst buffer */\n"
        b"    if (litEnd > litLimit) return ERROR(corruption_detected);   /* overRead beyond lit buffer */\n"
        b"\n"
        b"    /* copy Literals */\n"
        b"    ZSTD_wildcopy(op, *litPtr, sequence.litLength);   /* note : oLitEnd <= oend-8 : no risk of overwrite beyond oend */\n"
        b"    op = oLitEnd;\n"
        b"    *litPtr = litEnd;   /* update for next sequence */\n",
    ),
    (
        b"            if (op < oend-8)\n"
        b"            {\n"
        b"                ZSTD_wildcopy(op, match, (oend-8) - op);\n"
        b"                match += (oend-8) - op;\n"
        b"                op = oend-8;\n"
        b"            }\n",
        b"            if (op < oend_8)\n"
        b"            {\n"
        b"                ZSTD_wildcopy(op, match, oend_8 - op);\n"
        b"                match += oend_8 - op;\n"
        b"                op = oend_8;\n"
        b"            }\n",
    ),
]

new = old
for before, after in edits:
    assert new.count(before) == 1
    new = new.replace(before, after)

child = here / "zstd.new.c"
child.write_bytes(new)
assert subprocess.check_output(["git", "hash-object", str(child)]).strip() == b"4b4909f2a349faaa97503dad1dfcf4455b8679ca"
print("Recovered exact parent and child Git blobs")
