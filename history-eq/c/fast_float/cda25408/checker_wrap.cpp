#include <cstdint>
#include "fast_float/fast_float.h"

fastfloat_really_inline void unpack(uint64_t lo, uint64_t hi, char16_t (&s)[8]) {
  for (int i = 0; i < 4; ++i) {
    s[i] = char16_t(lo >> (16 * i));
    s[i + 4] = char16_t(hi >> (16 * i));
  }
}

extern "C" uint64_t target_raw(uint64_t lo, uint64_t hi) {
  char16_t s[8];
  unpack(lo, hi, s);
  return fast_float::parse_eight_digits_unrolled(s);
}

extern "C" uint64_t target_raw_valid(uint64_t lo, uint64_t hi) {
  char16_t s[8];
  unpack(lo, hi, s);
  for (char16_t c : s) {
    if (c < u'0' || c > u'9') return UINT64_MAX;
  }
  return fast_float::parse_eight_digits_unrolled(s);
}

extern "C" uint64_t target_guarded_valid(uint64_t lo, uint64_t hi,
                                          uint64_t initial) {
  char16_t s[8];
  unpack(lo, hi, s);
  return fast_float::parse_if_eight_digits_unrolled(s, initial);
}

extern "C" uint64_t target_guarded_value(uint64_t lo, uint64_t hi,
                                          uint64_t initial) {
  char16_t s[8];
  unpack(lo, hi, s);
  fast_float::parse_if_eight_digits_unrolled(s, initial);
  return initial;
}
