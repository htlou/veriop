// retry: only target_u32_api of wrap.c (identical definition)
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
T uint32_t target_u32_api(uint32_t n, uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_do(n, &x); }
/* sizeof differs between sides; record it as an observable (expected NOT_EQUIV, intended) */
