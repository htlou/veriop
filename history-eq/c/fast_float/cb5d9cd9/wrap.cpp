#include <cstdint>
#include "fast_float/ascii_number.h"

template <int Field> __attribute__((always_inline)) inline uint64_t parse_field(uint64_t packed) {
  char input[9];
  for (unsigned i = 0; i < 8; ++i) input[i] = char(packed >> (8 * i));
  input[8] = 0;
#ifdef USE_CHILD_FAST_PATH
  auto parsed = fast_float::parse_number_string<false, char>(
      input, input + 8, fast_float::parse_options{}, false);
#else
  auto parsed = fast_float::parse_number_string<false, char>(
      input, input + 8, fast_float::parse_options{});
#endif
  if constexpr (Field == 0) return parsed.mantissa;
  if constexpr (Field == 1) return uint64_t(parsed.exponent);
  if constexpr (Field == 2)
    return parsed.lastmatch ? uint64_t(parsed.lastmatch - input) : UINT64_MAX;
  if constexpr (Field == 3) return parsed.negative;
  if constexpr (Field == 4) return parsed.valid;
  if constexpr (Field == 5) return parsed.too_many_digits;
  if constexpr (Field == 6) return uint64_t(parsed.error);
}

extern "C" uint64_t target_mantissa(uint64_t p) { return parse_field<0>(p); }
extern "C" uint64_t target_exponent(uint64_t p) { return parse_field<1>(p); }
extern "C" uint64_t target_consumed(uint64_t p) { return parse_field<2>(p); }
extern "C" uint64_t target_negative(uint64_t p) { return parse_field<3>(p); }
extern "C" uint64_t target_valid(uint64_t p) { return parse_field<4>(p); }
extern "C" uint64_t target_too_many_digits(uint64_t p) { return parse_field<5>(p); }
extern "C" uint64_t target_error(uint64_t p) { return parse_field<6>(p); }
