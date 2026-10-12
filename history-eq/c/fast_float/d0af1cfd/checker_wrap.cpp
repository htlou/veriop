#include <cstdint>
#include "fast_float/fast_float.h"

template <int Field>
fastfloat_really_inline uint64_t parse_field(uint16_t code_unit) {
  char16_t input[1] = {char16_t(code_unit)};
  uint16_t value = 123;
  auto result = fast_float::parse_int_string<uint16_t, char16_t>(
      input, input + 1, value, fast_float::parse_options_t<char16_t>{});
  if constexpr (Field == 0) return uint64_t(result.ec);
  if constexpr (Field == 1) return result.ptr ? uint64_t(result.ptr - input) : UINT64_MAX;
  return value;
}

extern "C" uint64_t target_error(uint16_t c) { return parse_field<0>(c); }
extern "C" uint64_t target_consumed(uint16_t c) { return parse_field<1>(c); }
extern "C" uint64_t target_value(uint16_t c) { return parse_field<2>(c); }
