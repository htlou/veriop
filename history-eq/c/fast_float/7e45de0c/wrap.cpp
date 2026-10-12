#include <cstdint>
#include "fast_float/float_common.h"

template <typename UC, int Which>
bool compare_literal(uint32_t a, uint32_t b, uint32_t c, uint32_t d,
                     uint32_t e) {
  UC actual[5] = {UC(a), UC(b), UC(c), UC(d), UC(e)};
  if constexpr (Which == 0) {
#ifdef HISTORICAL_OLD
    return fast_float::fastfloat_strncasecmp3(actual,
                                              fast_float::str_const_nan<UC>());
#else
    return fast_float::fastfloat_strncasecmp(actual,
                                             fast_float::str_const_nan<UC>(), 3);
#endif
  } else if constexpr (Which == 1) {
#ifdef HISTORICAL_OLD
    return fast_float::fastfloat_strncasecmp3(actual,
                                              fast_float::str_const_inf<UC>());
#else
    return fast_float::fastfloat_strncasecmp(actual,
                                             fast_float::str_const_inf<UC>(), 3);
#endif
  } else {
#ifdef HISTORICAL_OLD
    return fast_float::fastfloat_strncasecmp5(actual,
                                              fast_float::str_const_inf<UC>() + 3);
#else
    return fast_float::fastfloat_strncasecmp(actual,
                                             fast_float::str_const_inf<UC>() + 3,
                                             5);
#endif
  }
}

#define TARGET(Type, Tag)                                                        \
  extern "C" bool target_##Tag##_nan(uint32_t a, uint32_t b, uint32_t c,         \
                                      uint32_t d, uint32_t e) {                  \
    return compare_literal<Type, 0>(a, b, c, d, e);                             \
  }                                                                             \
  extern "C" bool target_##Tag##_inf(uint32_t a, uint32_t b, uint32_t c,         \
                                      uint32_t d, uint32_t e) {                  \
    return compare_literal<Type, 1>(a, b, c, d, e);                             \
  }                                                                             \
  extern "C" bool target_##Tag##_inity(uint32_t a, uint32_t b, uint32_t c,       \
                                        uint32_t d, uint32_t e) {                \
    return compare_literal<Type, 2>(a, b, c, d, e);                             \
  }

TARGET(char, char)
TARGET(char8_t, char8)
TARGET(char16_t, char16)
TARGET(char32_t, char32)
TARGET(wchar_t, wchar)
