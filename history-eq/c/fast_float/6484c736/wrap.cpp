#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

template <int Field> uint64_t parse_field(uint64_t packed) {
  char input[8];
  std::memcpy(input, &packed, 8);
  auto parsed = fast_float::parse_number_string(input, input + 8,
                                                fast_float::parse_options{});
  if constexpr (Field == 0) return parsed.mantissa;
  if constexpr (Field == 1) return uint64_t(parsed.exponent);
  if constexpr (Field == 2) return parsed.lastmatch ? uint64_t(parsed.lastmatch - input) : UINT64_MAX;
  if constexpr (Field == 3) return parsed.negative;
  if constexpr (Field == 4) return parsed.valid;
  if constexpr (Field == 5) return parsed.too_many_digits;
  if constexpr (Field == 6) return parsed.integer.ptr ? uint64_t(parsed.integer.ptr - input) : UINT64_MAX;
  if constexpr (Field == 7) return parsed.integer.len();
  if constexpr (Field == 8) return parsed.fraction.ptr ? uint64_t(parsed.fraction.ptr - input) : UINT64_MAX;
  if constexpr (Field == 9) return parsed.fraction.len();
}

extern "C" uint64_t target_mantissa(uint64_t x) { return parse_field<0>(x); }
extern "C" uint64_t target_exponent(uint64_t x) { return parse_field<1>(x); }
extern "C" uint64_t target_lastmatch(uint64_t x) { return parse_field<2>(x); }
extern "C" uint64_t target_negative(uint64_t x) { return parse_field<3>(x); }
extern "C" uint64_t target_valid(uint64_t x) { return parse_field<4>(x); }
extern "C" uint64_t target_many_digits(uint64_t x) { return parse_field<5>(x); }
extern "C" uint64_t target_integer_start(uint64_t x) { return parse_field<6>(x); }
extern "C" uint64_t target_integer_length(uint64_t x) { return parse_field<7>(x); }
extern "C" uint64_t target_fraction_start(uint64_t x) { return parse_field<8>(x); }
extern "C" uint64_t target_fraction_length(uint64_t x) { return parse_field<9>(x); }
