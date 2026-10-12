#include <cstdint>
#include "fast_float/fast_float.h"

extern "C" uint64_t target_eight_digits(uint32_t packed) {
  char input[8];
  for (unsigned j = 0; j < 8; ++j) {
    const uint32_t nibble = (packed >> (4 * j)) & 15;
    input[j] = char('0' + (nibble < 10 ? nibble : nibble - 6));
  }
  auto parsed = fast_float::parse_number_string(input, input + 8,
                                                fast_float::parse_options{});
  return parsed.mantissa;
}
