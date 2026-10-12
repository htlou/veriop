// ce682f2: __umulh/__mulh for MSVC x64 in libdivide__mullhi_u64/_s64.
// clang --target=x86_64-pc-windows-msvc -fms-extensions emulating cl.exe.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <intrin.h>
/* modeling assumption (both sides): emulate cl.exe (no __clang__, no __has_builtin). */
#undef __clang__
#undef __has_builtin
#include "libdivide.h"
#define T __attribute__((flatten))
T uint64_t target_mullhi_u64(uint64_t x, uint64_t y) { return libdivide__mullhi_u64(x, y); }
T int64_t target_mullhi_s64(int64_t x, int64_t y) { return libdivide__mullhi_s64(x, y); }
T uint64_t target_u64_api(uint64_t n, uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64_api(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
