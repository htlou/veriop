// 8e9bf17: libdivide_mullhi_u64_vector reimplemented (SSE2/AVX2/AVX512). ISA chosen by
// -DLIBDIVIDE_SSE2 / -DLIBDIVIDE_AVX2 -mavx2 / -DLIBDIVIDE_AVX512 -mavx512f.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divq inline asm in the 64-bit generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))  /* wrapper-only: inline everything so Alive2 sees all code */
#if defined(LIBDIVIDE_AVX512)
typedef __m512i V;
#define SET1_64(x) _mm512_set1_epi64(x)
#elif defined(LIBDIVIDE_AVX2)
typedef __m256i V;
#define SET1_64(x) _mm256_set1_epi64x(x)
#else
typedef __m128i V;
#define SET1_64(x) _mm_set1_epi64x(x)
#endif
// raw: both operands fully symbolic
T V target_mullhi_u64_raw(V x, V y) { return libdivide_mullhi_u64_vector(x, y); }
// precond: y holds one 64-bit value repeated (documented assumption of the helper)
T V target_mullhi_u64_pre(V x, uint64_t y) { return libdivide_mullhi_u64_vector(x, SET1_64(y)); }
// api: public vector division entry points that reach the helper
T V target_u64_api(V n, uint64_t d) { if (!d) return n; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do_vector(n, &x); }
T V target_s64_api(V n, int64_t d) { if (!d) return n; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do_vector(n, &x); }
T V target_u64_bf_api(V n, uint64_t d) { if (d < 2) return n; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do_vector(n, &x); }
T V target_s64_bf_api(V n, int64_t d) { if (!d) return n; struct libdivide_s64_branchfree_t x = libdivide_s64_branchfree_gen(d); return libdivide_s64_branchfree_do_vector(n, &x); }
