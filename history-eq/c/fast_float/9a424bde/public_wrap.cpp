#include <cstdint>
#include "fast_float/fast_float.h"

extern "C" uint32_t target_public_error(uint8_t c) {
  char input[1] = {char(c)};
  double value = -1.0;
  return uint32_t(fast_float::from_chars(input, input + 1, value).ec);
}

extern "C" uint32_t target_public_consumed(uint8_t c) {
  char input[1] = {char(c)};
  double value = -1.0;
  return uint32_t(fast_float::from_chars(input, input + 1, value).ptr - input);
}
