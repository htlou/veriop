#include <cstdint>
#include "fast_float/ascii_number.h"

template <int Field> uint64_t parse_field(uint64_t packed) {
  char input[5];
  for (unsigned i = 0; i < 5; ++i) {
    input[i] = char(packed >> (8 * i));
  }
  auto parsed = fast_float::parse_number_string<false, char>(
      input, input + 5, fast_float::parse_options{});
  if constexpr (Field == 0) return parsed.mantissa;
  if constexpr (Field == 1) return uint64_t(parsed.exponent);
  if constexpr (Field == 2) return uint64_t(parsed.lastmatch - input);
  if constexpr (Field == 3) return parsed.integer.len();
  if constexpr (Field == 4) return parsed.fraction.len();
  if constexpr (Field == 5) return uint64_t(parsed.error);
  if constexpr (Field == 6) return parsed.valid;
  if constexpr (Field == 7) return parsed.negative;
  if constexpr (Field == 8) return parsed.too_many_digits;
  if constexpr (Field == 9) return parsed.integer.ptr ? uint64_t(parsed.integer.ptr - input) : UINT64_MAX;
  if constexpr (Field == 10) return parsed.fraction.ptr ? uint64_t(parsed.fraction.ptr - input) : UINT64_MAX;
}

extern "C" uint64_t target_mantissa(uint64_t p) { return parse_field<0>(p); }
extern "C" uint64_t target_exponent(uint64_t p) { return parse_field<1>(p); }
extern "C" uint64_t target_consumed(uint64_t p) { return parse_field<2>(p); }
extern "C" uint64_t target_integer_length(uint64_t p) { return parse_field<3>(p); }
extern "C" uint64_t target_fraction_length(uint64_t p) { return parse_field<4>(p); }
extern "C" uint64_t target_error(uint64_t p) { return parse_field<5>(p); }
extern "C" uint64_t target_valid(uint64_t p) { return parse_field<6>(p); }
extern "C" uint64_t target_negative(uint64_t p) { return parse_field<7>(p); }
extern "C" uint64_t target_too_many_digits(uint64_t p) { return parse_field<8>(p); }
extern "C" uint64_t target_integer_offset(uint64_t p) { return parse_field<9>(p); }
extern "C" uint64_t target_fraction_offset(uint64_t p) { return parse_field<10>(p); }
