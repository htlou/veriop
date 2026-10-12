#include <cstdint>
#include <cstring>
#include "fast_float/parse_number.h"

template <int Field> uint64_t parse_field(uint64_t input) {
  char text[8];
  std::memcpy(text, &input, 8);
  double value = 0;
  auto result = fast_float::detail::parse_infnan(
      text, text + 8, value, fast_float::chars_format::general);
  if constexpr (Field == 0) {
    uint64_t bits;
    std::memcpy(&bits, &value, 8);
    return bits;
  }
  if constexpr (Field == 1) return uint64_t(result.ptr - text);
  if constexpr (Field == 2) return uint64_t(result.ec);
}

extern "C" uint64_t target_value(uint64_t x) { return parse_field<0>(x); }
extern "C" uint64_t target_offset(uint64_t x) { return parse_field<1>(x); }
extern "C" uint64_t target_error(uint64_t x) { return parse_field<2>(x); }
