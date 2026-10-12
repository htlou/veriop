#include "fast_float/fast_float.h"

extern "C" int target_char() {
  const char input[] = "1.23456789";
  double value = 0;
  auto result = fast_float::from_chars(input, input + 10, value);
  return int(result.ec);
}

extern "C" int target_char16() {
  const char16_t input[] = u"1.23456789";
  double value = 0;
  auto result = fast_float::from_chars(input, input + 10, value);
  return int(result.ec);
}
