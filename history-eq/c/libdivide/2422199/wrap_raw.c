#include "libdivide.h"
uint32_t target_u32_do(uint32_t numer, uint32_t magic, uint8_t more) {
  struct libdivide_u32_t d = {magic, more}; return libdivide_u32_do(numer, &d); }
uint64_t target_u64_do(uint64_t numer, uint64_t magic, uint8_t more) {
  struct libdivide_u64_t d = {magic, more}; return libdivide_u64_do(numer, &d); }
