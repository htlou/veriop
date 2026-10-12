#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

extern "C" uint64_t target_predicate(uint64_t packed) {
  return fast_float::is_made_of_eight_digits_fast(packed);
}

extern "C" uint64_t target_raw_value(uint64_t packed) {
  char input[8];
  std::memcpy(input, &packed, 8);
  return fast_float::parse_eight_digits_unrolled(input);
}

extern "C" uint64_t target_digit_value(uint64_t packed) {
  char input[8];
  std::memcpy(input, &packed, 8);
  for (char c : input) {
    if (c < '0' || c > '9') return UINT64_MAX;
  }
  return fast_float::parse_eight_digits_unrolled(input);
}

extern "C" uint64_t target_guarded_value(uint64_t packed) {
  if (!fast_float::is_made_of_eight_digits_fast(packed)) return UINT64_MAX;
  char input[8];
  std::memcpy(input, &packed, 8);
  return fast_float::parse_eight_digits_unrolled(input);
}

template <int Field> uint64_t parse_field(uint64_t packed) {
  char input[10] = {'0', '.'};
  std::memcpy(input + 2, &packed, 8);
  auto p = fast_float::parse_number_string(
      input, input + 10, fast_float::chars_format::general);
  if constexpr (Field == 0) return p.valid;
  if constexpr (Field == 1) return p.valid ? p.mantissa : UINT64_MAX;
  return p.valid && p.lastmatch ? uint64_t(p.lastmatch - input) : UINT64_MAX;
}

extern "C" uint64_t target_parser_valid(uint64_t x) { return parse_field<0>(x); }
extern "C" uint64_t target_parser_mantissa(uint64_t x) { return parse_field<1>(x); }
extern "C" uint64_t target_parser_consumed(uint64_t x) { return parse_field<2>(x); }
