#include <cstdint>
#include "fast_float/fast_float.h"

template <bool Error> uint64_t parse_twenty_digits(uint64_t low,
                                                    uint64_t high) {
  char input[20];
  input[0] = char('1' + (low & 7));
  for (unsigned j = 1; j < 16; ++j) {
    input[j] = char('0' + ((low >> (4 * j)) & 15) % 10);
  }
  for (unsigned j = 16; j < 20; ++j) {
    input[j] = char('0' + ((high >> (4 * (j - 16))) & 15) % 10);
  }
  uint64_t value = 0;
  auto result = fast_float::from_chars(input, input + 20, value, 10);
  if constexpr (Error) return uint64_t(result.ec);
  return value;
}

extern "C" uint64_t target_error(uint64_t low, uint64_t high) {
  return parse_twenty_digits<true>(low, high);
}
extern "C" uint64_t target_value(uint64_t low, uint64_t high) {
  return parse_twenty_digits<false>(low, high);
}
