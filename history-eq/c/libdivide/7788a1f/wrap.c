// 7788a1f: SSE2 unsigned branchfree vector paths drop the shift mask (generator already masks since b031fb3).
// recover re-adds ADD_MARKER. Build with -DLIBDIVIDE_USE_SSE2=1 to also emit the vector entry points.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
// raw: symbolic magic/more (vector entry points)
#if LIBDIVIDE_USE_SSE2
T __m128i target_u32_bf_vec_raw(__m128i n, uint32_t m, uint8_t more) { struct libdivide_u32_branchfree_t d = {m, more}; return libdivide_u32_branchfree_do_vector(n, &d); }
T __m128i target_u64_bf_vec_raw(__m128i n, uint64_t m, uint8_t more) { struct libdivide_u64_branchfree_t d = {m, more}; return libdivide_u64_branchfree_do_vector(n, &d); }
#endif
#if LIBDIVIDE_USE_SSE2
T __m128i target_u32_bf_vec_api(__m128i n, uint32_t d) { if (d < 2) return n; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return libdivide_u32_branchfree_do_vector(n, &x); }
T __m128i target_u64_bf_vec_api(__m128i n, uint64_t d) { if (d < 2) return n; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do_vector(n, &x); }
#endif
