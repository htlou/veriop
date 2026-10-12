/* Exact fallback bodies of ZSTD_copy16 in 64205b78 parent/child, with
 * ZSTD_memmove/ZSTD_memcpy expanded using zstd_deps.h's builtin definitions.
 * The ARM NEON, x86 SSE2, and Clang branches are unchanged by this commit. */
typedef unsigned char BYTE;

void zstd_old_copy16(void *dst, const void *src) {
    __builtin_memmove(dst, src, 16);
}

void zstd_new_copy16(void *dst, const void *src) {
    BYTE copy16_buf[16];
    __builtin_memcpy(copy16_buf, src, 16);
    __builtin_memcpy(dst, copy16_buf, 16);
}
