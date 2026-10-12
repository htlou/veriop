// 31f1e42: argument order of libdivide_mullhi_* swapped in *_do_raw / *_branchfree_do.
// All of these are public API; magic/more fully symbolic.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "libdivide.h"
uint16_t target_u16_do_raw(uint16_t n, uint16_t m, uint8_t more) { return libdivide_u16_do_raw(n, m, more); }
uint32_t target_u32_do_raw(uint32_t n, uint32_t m, uint8_t more) { return libdivide_u32_do_raw(n, m, more); }
uint64_t target_u64_do_raw(uint64_t n, uint64_t m, uint8_t more) { return libdivide_u64_do_raw(n, m, more); }
int16_t target_s16_do_raw(int16_t n, int16_t m, uint8_t more) { return libdivide_s16_do_raw(n, m, more); }
int32_t target_s32_do_raw(int32_t n, int32_t m, uint8_t more) { return libdivide_s32_do_raw(n, m, more); }
int64_t target_s64_do_raw(int64_t n, int64_t m, uint8_t more) { return libdivide_s64_do_raw(n, m, more); }
uint16_t target_u16_bf(uint16_t n, uint16_t m, uint8_t more) { struct libdivide_u16_branchfree_t d = {m, more}; return libdivide_u16_branchfree_do(n, &d); }
uint32_t target_u32_bf(uint32_t n, uint32_t m, uint8_t more) { struct libdivide_u32_branchfree_t d = {m, more}; return libdivide_u32_branchfree_do(n, &d); }
uint64_t target_u64_bf(uint64_t n, uint64_t m, uint8_t more) { struct libdivide_u64_branchfree_t d = {m, more}; return libdivide_u64_branchfree_do(n, &d); }
int16_t target_s16_bf(int16_t n, int16_t m, uint8_t more) { struct libdivide_s16_branchfree_t d = {m, more}; return libdivide_s16_branchfree_do(n, &d); }
int32_t target_s32_bf(int32_t n, int32_t m, uint8_t more) { struct libdivide_s32_branchfree_t d = {m, more}; return libdivide_s32_branchfree_do(n, &d); }
int64_t target_s64_bf(int64_t n, int64_t m, uint8_t more) { struct libdivide_s64_branchfree_t d = {m, more}; return libdivide_s64_branchfree_do(n, &d); }
