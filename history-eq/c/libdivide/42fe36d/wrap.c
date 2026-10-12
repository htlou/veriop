// 42fe36d: _BitScanReverse/_BitScanForward(64) for MSVC in count_leading/trailing_zeros*.
// clang --target=x86_64-pc-windows-msvc -fms-extensions (defines _MSC_VER, _WIN64; not __GNUC__).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <intrin.h>
/* modeling assumption (both sides): emulate cl.exe, which defines neither __clang__ nor
   __has_builtin (so libdivide selects neither GCC-style asm nor __builtin_clz/ctz). */
#undef __clang__
#undef __has_builtin
#include "libdivide.h"
#define T __attribute__((flatten))
#ifndef PART_API
T int32_t target_clz32(uint32_t v) { return libdivide__count_leading_zeros32(v); }
T int32_t target_clz64(uint64_t v) { return libdivide__count_leading_zeros64(v); }
T int32_t target_ctz32(uint32_t v) { return libdivide__count_trailing_zeros32(v); }
T int32_t target_ctz64(uint64_t v) { return libdivide__count_trailing_zeros64(v); }
/* precond: callers in the library never pass 0 (generators require d != 0) */
T int32_t target_clz32_nz(uint32_t v) { if (!v) return 0; return libdivide__count_leading_zeros32(v); }
T int32_t target_clz64_nz(uint64_t v) { if (!v) return 0; return libdivide__count_leading_zeros64(v); }
T int32_t target_ctz32_nz(uint32_t v) { if (!v) return 0; return libdivide__count_trailing_zeros32(v); }
T int32_t target_ctz64_nz(uint64_t v) { if (!v) return 0; return libdivide__count_trailing_zeros64(v); }
#else
T uint32_t target_u32_api(uint32_t n, uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_do(n, &x); }
T int32_t target_s32_api(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_t x = libdivide_s32_gen(d); return libdivide_s32_do(n, &x); }
T uint64_t target_u64_api(uint64_t n, uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64_api(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
#endif
