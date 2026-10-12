#include <algorithm>
#include <cstdint>
#include <cstring>
#include "fast_float/float_common.h"
#include "fast_float/parse_number.h"

#ifndef ONLY_OFFSET
// Four input bytes are symbolic; the second operand is unrestricted here.
extern "C" bool target_raw_u8(uint32_t actual, uint32_t expected) {
  unsigned char a[4], b[4];
  std::memcpy(a, &actual, 4);
  std::memcpy(b, &expected, 4);
  return fast_float::fastfloat_strncasecmp(a, b, 4);
}

// The library calls this helper with a fixed lowercase ASCII literal.
extern "C" bool target_literal_inf(uint32_t actual) {
  unsigned char a[4];
  std::memcpy(a, &actual, 4);
  constexpr unsigned char expected[4] = {'i', 'n', 'f', 'i'};
  return fast_float::fastfloat_strncasecmp(a, expected, 4);
}
#endif

#ifndef ONLY_RAW
struct Parsed {
  uint64_t bits;
  uint32_t offset;
  uint32_t error;
};

static Parsed parse_infnan(uint64_t input) {
  char text[8];
  std::memcpy(text, &input, 8);
  double value = 0;
  auto result = fast_float::detail::parse_infnan(
      text, text + 8, value, fast_float::chars_format::general);
  uint64_t bits;
  std::memcpy(&bits, &value, 8);
  return {bits, uint32_t(result.ptr - text), uint32_t(result.ec)};
}

#ifndef ONLY_OFFSET
extern "C" uint64_t target_infnan_value(uint64_t input) {
  return parse_infnan(input).bits;
}
#endif
extern "C" uint32_t target_infnan_offset(uint64_t input) {
  return parse_infnan(input).offset;
}
#ifndef ONLY_OFFSET
extern "C" uint32_t target_infnan_error(uint64_t input) {
  return parse_infnan(input).error;
}
#endif
#endif
