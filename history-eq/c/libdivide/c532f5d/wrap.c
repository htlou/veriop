// c532f5d: "Port SSE2 code to AVX2 & AVX512".
//  * SSE2 unit: the existing SSE2 code was rewritten (srl via _mm_srli_*, SSE4.1 path removed);
//    the selection macro was renamed LIBDIVIDE_USE_SSE2 -> LIBDIVIDE_SSE2, so both are defined.
//  * AVX2/AVX512 units (new API, no pre-commit counterpart): cross-API harness comparing the new
//    vector entry point with the OLD scalar API applied lane by lane (side.h tells which side).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#include "side.h"
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
#if defined(UNIT_SSE2)
typedef __m128i V;
#define RAW1(ty, sty, mty) \
T V target_##ty##_raw(V n, mty m, uint8_t more) { struct libdivide_##ty##_t d = {m, more}; return libdivide_##ty##_do_vector(n, &d); } \
T V target_##ty##_bf_raw(V n, mty m, uint8_t more) { struct libdivide_##ty##_branchfree_t d = {m, more}; return libdivide_##ty##_branchfree_do_vector(n, &d); }
#define API1(ty, sty, lo) \
T V target_##ty##_api(V n, sty dv) { if (dv == 0) return n; struct libdivide_##ty##_t d = libdivide_##ty##_gen(dv); return libdivide_##ty##_do_vector(n, &d); } \
T V target_##ty##_bf_api(V n, sty dv) { if (dv == 0 || dv == lo) return n; struct libdivide_##ty##_branchfree_t d = libdivide_##ty##_branchfree_gen(dv); return libdivide_##ty##_branchfree_do_vector(n, &d); }
#ifdef PART_RAW
RAW1(u32, uint32_t, uint32_t) RAW1(s32, int32_t, int32_t) RAW1(u64, uint64_t, uint64_t) RAW1(s64, int64_t, int64_t)
#else
#ifdef ONLY_SBF
/* signed branchfree generator at this commit rejects d == +-1 (LIBDIVIDE_ERROR); restrict to that domain */
T V target_s32_bf_api(V n, int32_t dv) { if (dv == 0 || dv == 1 || dv == -1) return n; struct libdivide_s32_branchfree_t d = libdivide_s32_branchfree_gen(dv); return libdivide_s32_branchfree_do_vector(n, &d); }
T V target_s64_bf_api(V n, int64_t dv) { if (dv == 0 || dv == 1 || dv == -1) return n; struct libdivide_s64_branchfree_t d = libdivide_s64_branchfree_gen(dv); return libdivide_s64_branchfree_do_vector(n, &d); }
#else
API1(u32, uint32_t, 1) API1(s32, int32_t, 0) API1(u64, uint64_t, 1) API1(s64, int64_t, 0)
#endif
#endif
#else  /* cross-API lane-wise units */
#if defined(UNIT_AVX512)
typedef __m512i V;
#else
typedef __m256i V;
#endif
#if defined(LIBDIVIDE_SIDE_OLD)
#define LANES(ty, sty, lo, kind) \
T V target_##ty##kind##_lanewise(V n, sty dv) { if (dv == 0 || dv == lo || (SBF_PM1 && (sty)-dv == lo)) return n; \
  struct libdivide_##ty##kind##_t d = libdivide_##ty##kind##_gen(dv); sty a[sizeof(V)/sizeof(sty)]; memcpy(a, &n, sizeof(V)); \
  for (unsigned i = 0; i < sizeof(V)/sizeof(sty); i++) a[i] = libdivide_##ty##kind##_do(a[i], &d); V r; memcpy(&r, a, sizeof(V)); return r; }
#else
#define LANES(ty, sty, lo, kind) \
T V target_##ty##kind##_lanewise(V n, sty dv) { if (dv == 0 || dv == lo || (SBF_PM1 && (sty)-dv == lo)) return n; \
  struct libdivide_##ty##kind##_t d = libdivide_##ty##kind##_gen(dv); return libdivide_##ty##kind##_do_vector(n, &d); }
#endif
/* domain: d != 0; unsigned branchfree d != 1; signed branchfree d != +-1 (generator rejects them at this commit) */
#ifdef ONLY_SBF
#define SBF_PM1 1
LANES(s32, int32_t, 1, _branchfree) LANES(s64, int64_t, 1, _branchfree)
#else
#define SBF_PM1 0
LANES(u32, uint32_t, 0, ) LANES(s32, int32_t, 0, ) LANES(u64, uint64_t, 0, ) LANES(s64, int64_t, 0, )
LANES(u32, uint32_t, 1, _branchfree) LANES(s32, int32_t, 0, _branchfree) LANES(u64, uint64_t, 1, _branchfree) LANES(s64, int64_t, 0, _branchfree)
#endif
#endif
