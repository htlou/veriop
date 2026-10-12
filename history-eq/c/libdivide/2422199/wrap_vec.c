// SIMD variants of 2422199. Select ISA with -DLIBDIVIDE_SSE2/-DLIBDIVIDE_AVX2/-DLIBDIVIDE_AVX512
// (+ matching -m flags). Raw: symbolic magic/more. API: libdivide_*_gen(d), d != 0.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#if defined(LIBDIVIDE_AVX512)
typedef __m512i V;
#elif defined(LIBDIVIDE_AVX2)
typedef __m256i V;
#else
typedef __m128i V;
#endif
V target_u32_vec_raw(V n, uint32_t magic, uint8_t more) {
  struct libdivide_u32_t d = {magic, more}; return libdivide_u32_do_vector(n, &d); }
V target_u64_vec_raw(V n, uint64_t magic, uint8_t more) {
  struct libdivide_u64_t d = {magic, more}; return libdivide_u64_do_vector(n, &d); }
V target_u32_vec_api(V n, uint32_t d) {
  if (d == 0) return n;
  struct libdivide_u32_t den = libdivide_u32_gen(d); return libdivide_u32_do_vector(n, &den); }
V target_u64_vec_api(V n, uint64_t d) {
  if (d == 0) return n;
  struct libdivide_u64_t den = libdivide_u64_gen(d); return libdivide_u64_do_vector(n, &den); }
