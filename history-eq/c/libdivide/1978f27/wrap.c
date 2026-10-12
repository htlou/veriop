// 1978f27: 16-bit SSE2/AVX2 vector division implemented with SIMD instead of the per-lane
// SIMPLE_VECTOR_DIVISION fallback. Build with -DLIBDIVIDE_SSE2 -DLIBDIVIDE_AVX2 -mavx2.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#include "libdivide.h"
#define T __attribute__((flatten))
#define RAW(V, sfx) \
T V target_u16_raw_##sfx(V n, uint16_t m, uint8_t more) { struct libdivide_u16_t d = {m, more}; return libdivide_u16_do_##sfx(n, &d); } \
T V target_u16bf_raw_##sfx(V n, uint16_t m, uint8_t more) { struct libdivide_u16_branchfree_t d = {m, more}; return libdivide_u16_branchfree_do_##sfx(n, &d); } \
T V target_s16_raw_##sfx(V n, int16_t m, uint8_t more) { struct libdivide_s16_t d = {m, more}; return libdivide_s16_do_##sfx(n, &d); } \
T V target_s16bf_raw_##sfx(V n, int16_t m, uint8_t more) { struct libdivide_s16_branchfree_t d = {m, more}; return libdivide_s16_branchfree_do_##sfx(n, &d); }
#define API(V, sfx) \
T V target_u16_api_##sfx(V n, uint16_t dv) { if (!dv) return n; struct libdivide_u16_t d = libdivide_u16_gen(dv); return libdivide_u16_do_##sfx(n, &d); } \
T V target_u16bf_api_##sfx(V n, uint16_t dv) { if (dv < 2) return n; struct libdivide_u16_branchfree_t d = libdivide_u16_branchfree_gen(dv); return libdivide_u16_branchfree_do_##sfx(n, &d); } \
T V target_s16_api_##sfx(V n, int16_t dv) { if (!dv) return n; struct libdivide_s16_t d = libdivide_s16_gen(dv); return libdivide_s16_do_##sfx(n, &d); } \
T V target_s16bf_api_##sfx(V n, int16_t dv) { if (!dv) return n; struct libdivide_s16_branchfree_t d = libdivide_s16_branchfree_gen(dv); return libdivide_s16_branchfree_do_##sfx(n, &d); }
#if defined(PART_RAW)
#ifdef DO128
RAW(__m128i, vec128)
#endif
#ifdef DO256
RAW(__m256i, vec256)
#endif
#else
#ifdef DO128
API(__m128i, vec128)
#endif
#ifdef DO256
API(__m256i, vec256)
#endif
#endif
