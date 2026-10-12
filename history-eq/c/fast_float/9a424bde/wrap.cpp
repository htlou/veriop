#include <cstdint>
#include "fast_float/fast_float.h"

extern "C" uint32_t target_is_integer(uint8_t c) {
  return fast_float::is_integer(char(c));
}

extern "C" uint32_t target_parser_valid(uint8_t c) {
  char input[1] = {char(c)};
  return fast_float::parse_number_string(input, input + 1,
                                         fast_float::chars_format::general).valid;
}

extern "C" uint64_t target_parser_mantissa(uint8_t c) {
  char input[1] = {char(c)};
  auto parsed = fast_float::parse_number_string(input, input + 1,
                                                fast_float::chars_format::general);
  return parsed.valid ? parsed.mantissa : UINT64_MAX;
}
