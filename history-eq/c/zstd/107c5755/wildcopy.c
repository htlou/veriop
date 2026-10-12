#include <stddef.h>
#include <string.h>

typedef unsigned char BYTE;
static void ZSTD_copy8(void* dst, const void* src) { memcpy(dst, src, 8); }
#define COPY8(d,s) { ZSTD_copy8(d,s); d+=8; s+=8; }

void zstd_old_wildcopy(void* dst, const void* src, size_t length) {
    const BYTE* ip = (const BYTE*)src;
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + length;
    while (op < oend) COPY8(op, ip);
}

void zstd_new_wildcopy(void* dst, const void* src, size_t length) {
    const BYTE* ip = (const BYTE*)src;
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + length;
    do COPY8(op, ip) while (op < oend);
}

unsigned zstd_old_probe(void) {
    BYTE src[8] = {1};
    BYTE dst[8] = {0};
    zstd_old_wildcopy(dst, src, 0);
    return dst[0];
}

unsigned zstd_new_probe(void) {
    BYTE src[8] = {1};
    BYTE dst[8] = {0};
    zstd_new_wildcopy(dst, src, 0);
    return dst[0];
}
