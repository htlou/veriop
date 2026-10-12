#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

// Two 64-bit inputs cover all 8 char16_t code units on the pinned x86_64 target.
static void code_units(uint64_t low, uint64_t high, char16_t (&chars)[8]) {
  std::memcpy(chars, &low, 8);
  std::memcpy(chars + 4, &high, 8);
}

extern "C" bool target_char16_success(uint64_t low, uint64_t high, uint64_t initial) {
  char16_t chars[8];
  code_units(low, high, chars);
  return fast_float::parse_if_eight_digits_unrolled(chars, initial);
}

extern "C" uint64_t target_char16_value(uint64_t low, uint64_t high, uint64_t initial) {
  char16_t chars[8];
  code_units(low, high, chars);
  fast_float::parse_if_eight_digits_unrolled(chars, initial);
  return initial;
}

extern "C" uint64_t target_char16_packed(uint64_t low, uint64_t high) {
  char16_t chars[8];
  code_units(low, high, chars);
  return fast_float::simd_read8_to_u64(chars);
}

extern "C" bool target_char_success(uint64_t bytes, uint64_t initial) {
  char chars[8];
  std::memcpy(chars, &bytes, 8);
  return fast_float::parse_if_eight_digits_unrolled(chars, initial);
}

extern "C" uint64_t target_char_value(uint64_t bytes, uint64_t initial) {
  char chars[8];
  std::memcpy(chars, &bytes, 8);
  fast_float::parse_if_eight_digits_unrolled(chars, initial);
  return initial;
}
