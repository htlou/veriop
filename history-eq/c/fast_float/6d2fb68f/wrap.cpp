#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

extern "C" uint32_t target_float_bits(uint64_t mantissa, int32_t power2, bool negative) {
  fast_float::adjusted_mantissa am;
  am.mantissa = mantissa;
  am.power2 = power2;
  float value;
  fast_float::to_float(negative, am, value);
  uint32_t bits;
  std::memcpy(&bits, &value, sizeof(bits));
  return bits;
}

extern "C" uint64_t target_double_bits(uint64_t mantissa, int32_t power2, bool negative) {
  fast_float::adjusted_mantissa am;
  am.mantissa = mantissa;
  am.power2 = power2;
  double value;
  fast_float::to_float(negative, am, value);
  uint64_t bits;
  std::memcpy(&bits, &value, sizeof(bits));
  return bits;
}
