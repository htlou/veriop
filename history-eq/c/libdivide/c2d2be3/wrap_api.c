// c2d2be3 API level: generators are the only callers that consume the remainder.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: select portable (non-divq) path on both sides */
#include "libdivide.h"
uint64_t target_u64_api(uint64_t n, uint64_t d) {
  if (d == 0) return 0;
  struct libdivide_u64_t den = libdivide_u64_gen(d); return libdivide_u64_do(n, &den); }
int64_t target_s64_api(int64_t n, int64_t d) {
  if (d == 0) return 0;
  struct libdivide_s64_t den = libdivide_s64_gen(d); return libdivide_s64_do(n, &den); }
uint64_t target_u64_bf_api(uint64_t n, uint64_t d) {
  if (d == 0 || d == 1) return 0;
  struct libdivide_u64_branchfree_t den = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do(n, &den); }
int64_t target_s64_bf_api(int64_t n, int64_t d) {
  if (d == 0) return 0;
  struct libdivide_s64_branchfree_t den = libdivide_s64_branchfree_gen(d); return libdivide_s64_branchfree_do(n, &den); }
