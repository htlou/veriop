"""Check the exact historical sequence bodies on a defined short-tail error path."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
old = (here / "zstd.old.c").read_text()
new = (here / "zstd.new.c").read_text()
assert subprocess.check_output(["git", "hash-object", str(here / "zstd.old.c")]).strip() == b"63ae947dca3c6d7c5414ffbef128bb84cee679a4"
assert subprocess.check_output(["git", "hash-object", str(here / "zstd.new.c")]).strip() == b"4b4909f2a349faaa97503dad1dfcf4455b8679ca"

def section(source, start, end):
    assert source.count(start) == source.count(end) == 1
    return source[source.index(start):source.index(end)]

helpers = section(old, "static void   ZSTD_copy4", "/* **************************************\n*  Local structures")
assert helpers == section(new, "static void   ZSTD_copy4", "/* **************************************\n*  Local structures")

def body(source, name):
    raw = section(source, "static size_t ZSTD_execSequence(", "static size_t ZSTD_decompressSequences(")
    return raw.replace("static size_t ZSTD_execSequence(",
                       f"static inline __attribute__((always_inline)) size_t {name}(", 1)

prefix = """#include <stddef.h>
#include <stdint.h>
#include <string.h>
typedef unsigned char BYTE;
typedef struct { size_t litLength, offset, matchLength; } seq_t;
/* Both historical paths return the same dstSize_tooSmall error. */
#define ERROR(x) ((size_t)-1)
"""
def wrapper_for(name):
    return """
unsigned char zstd_NAME_observe(unsigned char first) {
    BYTE dst[16];
    BYTE lit[16] = {0};
    memset(dst, 0xa5, sizeof dst);
    lit[0] = first;
    const BYTE *litptr = lit;
    seq_t seq = {9, 1, 1};
    size_t result = zstd_NAME_execSequence(dst, seq, &litptr, lit + sizeof lit, dst, dst + sizeof dst);
    return result == (size_t)-1 ? dst[0] : 0;
}
""".replace("NAME", name)

native = """
#ifdef NATIVE_TEST
#include <assert.h>
int main(void) {
    assert(zstd_old_observe(0x3c) == 0x3c);
    assert(zstd_new_observe(0x3c) == 0xa5);
    return 0;
}
#endif
"""
target = here / "error_path.c"
target.write_text(prefix + helpers + body(old, "zstd_old_execSequence") +
                  body(new, "zstd_new_execSequence") + wrapper_for("old") +
                  wrapper_for("new") + native)
print("Extracted exact old/new function bodies and shared memory helpers")
