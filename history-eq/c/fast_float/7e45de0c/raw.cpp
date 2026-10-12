#include "fast_float/float_common.h"

extern "C" bool target_raw_uppercase_expected() {
  const char actual[] = {'a'};
  const char expected[] = {'A'};
  return fast_float::fastfloat_strncasecmp(actual, expected, 1);
}
