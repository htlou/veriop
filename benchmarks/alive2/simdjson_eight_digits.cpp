#include "simdjson/fallback/numberparsing_defs.h"
#include "simdjson/westmere/numberparsing_defs.h"
#include <cstdint>

// Westmere reads 16 bytes although its result uses only the first eight.
extern "C" uint32_t sj_eight_fallback(const uint8_t (&chars)[16]) {
  bool valid = true;
  for (int i = 0; i < 8; ++i) valid &= (uint8_t)(chars[i] - '0') <= 9;
  __builtin_assume(valid);
  return simdjson::fallback::numberparsing::parse_eight_digits_unrolled(chars);
}

extern "C" uint32_t sj_eight_westmere(const uint8_t (&chars)[16]) {
  bool valid = true;
  for (int i = 0; i < 8; ++i) valid &= (uint8_t)(chars[i] - '0') <= 9;
  __builtin_assume(valid);
  return simdjson::westmere::numberparsing::parse_eight_digits_unrolled(chars);
}
