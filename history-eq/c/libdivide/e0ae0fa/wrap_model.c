// e0ae0fa: libdivide_128_div_64_to_64 uses _udiv128 on MSVC x64 (_MSC_VER >= 1920).
// Compiled with clang --target=x86_64-pc-windows-msvc -fms-extensions (clang defines _MSC_VER=1933).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <intrin.h>
#include <immintrin.h>
/* modeling assumption (both sides): emulate cl.exe, which defines neither __clang__ nor
   __has_builtin, so libdivide does not select GCC-style inline asm / __builtin_clz. */
#undef __clang__
#undef __has_builtin
#ifdef MODEL_UDIV128
/* supplementary MODEL (not the real intrinsic): _udiv128 per MS docs = 128/64 unsigned division,
   quotient must fit in 64 bits (else hardware #DE); modeled with __uint128_t. */
static inline unsigned __int64 _udiv128(unsigned __int64 hi, unsigned __int64 lo, unsigned __int64 d, unsigned __int64 *r) {
  unsigned __int128 n = ((unsigned __int128)hi << 64) | lo; unsigned __int64 q = (unsigned __int64)(n / d); *r = (unsigned __int64)(n - (unsigned __int128)q * d); return q; }
#endif
#include "libdivide.h"
#define T __attribute__((flatten))
T uint64_t target_raw_quot(uint64_t hi, uint64_t lo, uint64_t den) { uint64_t r; return libdivide_128_div_64_to_64(hi, lo, den, &r); }
T uint64_t target_raw_rem(uint64_t hi, uint64_t lo, uint64_t den) { uint64_t r; (void)libdivide_128_div_64_to_64(hi, lo, den, &r); return r; }
T uint64_t target_pre_quot(uint64_t hi, uint64_t lo, uint64_t den) { if (!(hi < den)) return 0; uint64_t r; return libdivide_128_div_64_to_64(hi, lo, den, &r); }
T uint64_t target_pre_rem(uint64_t hi, uint64_t lo, uint64_t den) { if (!(hi < den)) return 0; uint64_t r; (void)libdivide_128_div_64_to_64(hi, lo, den, &r); return r; }
T uint64_t target_u64_gen_magic(uint64_t d) { if (d == 0) return 0; return libdivide_u64_gen(d).magic; }
T uint8_t target_u64_gen_more(uint64_t d) { if (d == 0) return 0; return libdivide_u64_gen(d).more; }
T uint64_t target_u64_api(uint64_t n, uint64_t d) { if (d == 0) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64_api(int64_t n, int64_t d) { if (d == 0) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
