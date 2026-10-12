// 79b0338: s32 branchfree_do decides "power of 2" from the SHIFT_PATH bit instead of magic == 0.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: disable divl inline asm in the generator (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
T int32_t target_s32_bf_do_raw(int32_t n, int32_t m, uint8_t more) { struct libdivide_s32_branchfree_t d = {m, more}; return libdivide_s32_branchfree_do(n, &d); }
T int32_t target_s32_bf_api(int32_t n, int32_t d) { if (d == 0) return 0; struct libdivide_s32_branchfree_t x = libdivide_s32_branchfree_gen(d); return libdivide_s32_branchfree_do(n, &x); }
T int32_t target_s32_bf_api_not_pm1(int32_t n, int32_t d) { if (d == 0 || d == 1 || d == -1) return 0; struct libdivide_s32_branchfree_t x = libdivide_s32_branchfree_gen(d); return libdivide_s32_branchfree_do(n, &x); }
