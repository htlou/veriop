#include "fast_float/float_common.h"
#include <cstdint>

extern "C" int ff_lz_generic(uint64_t value) {
  bool nonzero = value != 0;
  __builtin_assume(nonzero);
  return fast_float::leading_zeroes_generic(value);
}

extern "C" int ff_lz_builtin(uint64_t value) {
  bool nonzero = value != 0;
  __builtin_assume(nonzero);
  return fast_float::leading_zeroes(value);
}

extern "C" int ff_tz_generic(uint32_t value) {
  return fast_float::countr_zero_generic_32(value);
}

extern "C" int ff_tz_builtin(uint32_t value) {
  return fast_float::countr_zero_32(value);
}
