#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

extern "C" uint64_t target_digit_value(uint64_t packed) {
  char input[8];
  std::memcpy(input, &packed, 8);
  for (unsigned j = 0; j < 8; ++j) {
    if (input[j] < '0' || input[j] > '9') return 0;
  }
#ifdef HISTORICAL_OLD
  return fast_float::parse_eight_digits_unrolled(input);
#else
  uint64_t value = 0;
  for (unsigned j = 0; j < 8; ++j) {
    value = value * 10 + uint64_t(input[j] - '0');
  }
  return value;
#endif
}
