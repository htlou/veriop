// retry wrapper generated from wrap.c: only target_u64_bf_recover_api (definitions identical)
// b031fb3: unsigned branchfree: generator stores more & SHIFT_MASK, do drops the mask,
// recover re-adds ADD_MARKER. Build with -DLIBDIVIDE_USE_SSE2=1 to also emit the vector entry points.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
// raw (internal contract of the struct changed): symbolic magic/more
// api: branchfree divider for d >= 2 (d == 1 unsupported by the branchfree algorithm)
T uint64_t target_u64_bf_recover_api(uint64_t d) { if (d < 2) return 0; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_recover(&x); }
#if LIBDIVIDE_USE_SSE2
#endif
