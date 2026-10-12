#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__
#include "libdivide.h"
uint32_t target_u32_api(uint32_t numer, uint32_t d) {
  if (d == 0) return 0;
  struct libdivide_u32_t den = libdivide_u32_gen(d); return libdivide_u32_do(numer, &den); }
uint64_t target_u64_api(uint64_t numer, uint64_t d) {
  if (d == 0) return 0;
  struct libdivide_u64_t den = libdivide_u64_gen(d); return libdivide_u64_do(numer, &den); }
