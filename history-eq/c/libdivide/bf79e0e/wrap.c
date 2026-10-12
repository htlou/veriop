// bf79e0e: libdivide_mullhi_u64_flat_vector (SSE2) replaced. Build with -DLIBDIVIDE_USE_SSE2.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divq inline asm in the 64-bit generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))  /* wrapper-only: inline everything so Alive2 sees all code */
typedef __m128i V;
T V target_mullhi_u64_raw(V x, V y) { return libdivide_mullhi_u64_flat_vector(x, y); }
T V target_mullhi_u64_pre(V x, uint64_t y) { return libdivide_mullhi_u64_flat_vector(x, _mm_set1_epi64x(y)); }
T V target_u64_api(V n, uint64_t d) { if (!d) return n; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do_vector(n, &x); }
T V target_s64_api(V n, int64_t d) { if (!d) return n; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do_vector(n, &x); }
T V target_u64_bf_api(V n, uint64_t d) { if (d < 2) return n; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do_vector(n, &x); }
T V target_s64_bf_api(V n, int64_t d) { if (!d) return n; struct libdivide_s64_branchfree_t x = libdivide_s64_branchfree_gen(d); return libdivide_s64_branchfree_do_vector(n, &x); }
