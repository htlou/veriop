// 947f8b2: #pragma pack(1) on all divider structs (memory/bandwidth optimization).
// raw: divider passed by pointer from the caller (layout/alignment visible);
// api: generator + do with a local divider; array: dividers stored in a caller array.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
T uint32_t target_u32_do_ptr(uint32_t n, const struct libdivide_u32_t *d) { return libdivide_u32_do(n, d); }
T int32_t target_s32_do_ptr(int32_t n, const struct libdivide_s32_t *d) { return libdivide_s32_do(n, d); }
T uint64_t target_u64_do_ptr(uint64_t n, const struct libdivide_u64_t *d) { return libdivide_u64_do(n, d); }
T int64_t target_s64_do_ptr(int64_t n, const struct libdivide_s64_t *d) { return libdivide_s64_do(n, d); }
T uint32_t target_u32_api(uint32_t n, uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_do(n, &x); }
T int32_t target_s32_api(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_t x = libdivide_s32_gen(d); return libdivide_s32_do(n, &x); }
T uint64_t target_u64_api(uint64_t n, uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64_api(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
/* sizeof differs between sides; record it as an observable (expected NOT_EQUIV, intended) */
T uint32_t target_sizeof_u32_t(void) { return (uint32_t)sizeof(struct libdivide_u32_t); }
