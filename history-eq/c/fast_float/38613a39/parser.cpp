#include <cstdint>
#include "fast_float/ascii_number.h"

extern "C" uint64_t target_parser_mantissa() {
  const char16_t input[] = {u'0', u'.', 0x840a, 0xc02c, 0xc004, 0x8101,
                            0x8100, 0xa000, 0xa000, 0xa025};
  auto parsed = fast_float::parse_number_string(
      input, input + 10, fast_float::parse_options_t<char16_t>{});
  return parsed.mantissa;
}
