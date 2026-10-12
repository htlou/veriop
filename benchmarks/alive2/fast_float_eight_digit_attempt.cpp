#include "fast_float/ascii_number.h"
#include <cstdint>

extern "C" uint32_t fast_float_eight_scalar(uint64_t val) {
  bool valid = fast_float::is_made_of_eight_digits_fast(val);
  __builtin_assume(valid);
  uint32_t result = 0;
  for (int i = 0; i < 8; ++i) {
    result = result * 10 + uint8_t(val >> (i * 8)) - '0';
  }
  return result;
}

extern "C" uint32_t fast_float_eight_packed(uint64_t val) {
  bool valid = fast_float::is_made_of_eight_digits_fast(val);
  __builtin_assume(valid);
  return fast_float::parse_eight_digits_unrolled(val);
}
