#include <cstdint>
#include <cstring>
#include <iterator>
#include "fast_float/ascii_number.h"

template <bool Offset> uint64_t scan_char(uint64_t bytes, uint64_t initial) {
  char input[8];
  std::memcpy(input, &bytes, 8);
  const char *p = input;
  const char *const end = input + 8;
  uint64_t value = initial;
#ifdef HISTORICAL_OLD
  while (std::distance(p, end) >= 8 &&
         fast_float::parse_if_eight_digits_unrolled(p, value)) {
    p += 8;
  }
#else
  fast_float::loop_parse_if_eight_digits(p, end, value);
#endif
  if constexpr (Offset) return uint64_t(p - input);
  return value;
}

template <bool Offset>
uint64_t scan_char16(uint64_t low, uint64_t high, uint64_t initial) {
  char16_t input[8];
  for (unsigned j = 0; j < 4; ++j) {
    input[j] = char16_t(low >> (16 * j));
    input[4 + j] = char16_t(high >> (16 * j));
  }
  const char16_t *p = input;
  const char16_t *const end = input + 8;
  uint64_t value = initial;
#ifdef HISTORICAL_OLD
  while (std::distance(p, end) >= 8 &&
         fast_float::parse_if_eight_digits_unrolled(p, value)) {
    p += 8;
  }
#else
  fast_float::loop_parse_if_eight_digits(p, end, value);
#endif
  if constexpr (Offset) return uint64_t(p - input);
  return value;
}

extern "C" uint64_t target_char_offset(uint64_t x, uint64_t i) {
  return scan_char<true>(x, i);
}
extern "C" uint64_t target_char_value(uint64_t x, uint64_t i) {
  return scan_char<false>(x, i);
}
extern "C" uint64_t target_char16_offset(uint64_t a, uint64_t b, uint64_t i) {
  return scan_char16<true>(a, b, i);
}
extern "C" uint64_t target_char16_value(uint64_t a, uint64_t b, uint64_t i) {
  return scan_char16<false>(a, b, i);
}
