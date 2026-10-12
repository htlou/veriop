#include <cstdint>
#include "fast_float/decimal_to_binary.h"

extern "C" uint64_t target_mantissa(int64_t q, uint64_t w) {
  return fast_float::compute_float<fast_float::binary_format<double>>(q, w).mantissa;
}

extern "C" int32_t target_power2(int64_t q, uint64_t w) {
  return fast_float::compute_float<fast_float::binary_format<double>>(q, w).power2;
}
