#include "fast_float/float_common.h"
#include <cstdint>

template <typename UC>
bool nan3(uint32_t a, uint32_t b, uint32_t c) {
  const UC actual[] = {UC(a), UC(b), UC(c)};
  return fast_float::fastfloat_strncasecmp(actual, fast_float::str_const_nan<UC>(), 3);
}

template <typename UC>
bool inf3(uint32_t a, uint32_t b, uint32_t c) {
  const UC actual[] = {UC(a), UC(b), UC(c)};
  return fast_float::fastfloat_strncasecmp(actual, fast_float::str_const_inf<UC>(), 3);
}

template <typename UC>
bool inity5(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) {
  const UC actual[] = {UC(a), UC(b), UC(c), UC(d), UC(e)};
  return fast_float::fastfloat_strncasecmp(actual, fast_float::str_const_inf<UC>() + 3, 5);
}

extern "C" bool nan3_char(uint32_t a, uint32_t b, uint32_t c) { return nan3<char>(a,b,c); }
extern "C" bool inf3_char(uint32_t a, uint32_t b, uint32_t c) { return inf3<char>(a,b,c); }
extern "C" bool inity5_char(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) { return inity5<char>(a,b,c,d,e); }
extern "C" bool nan3_u16(uint32_t a, uint32_t b, uint32_t c) { return nan3<char16_t>(a,b,c); }
extern "C" bool inf3_u16(uint32_t a, uint32_t b, uint32_t c) { return inf3<char16_t>(a,b,c); }
extern "C" bool inity5_u16(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) { return inity5<char16_t>(a,b,c,d,e); }
extern "C" bool nan3_u32(uint32_t a, uint32_t b, uint32_t c) { return nan3<char32_t>(a,b,c); }
extern "C" bool inf3_u32(uint32_t a, uint32_t b, uint32_t c) { return inf3<char32_t>(a,b,c); }
extern "C" bool inity5_u32(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) { return inity5<char32_t>(a,b,c,d,e); }
extern "C" bool nan3_wchar(uint32_t a, uint32_t b, uint32_t c) { return nan3<wchar_t>(a,b,c); }
extern "C" bool inf3_wchar(uint32_t a, uint32_t b, uint32_t c) { return inf3<wchar_t>(a,b,c); }
extern "C" bool inity5_wchar(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) { return inity5<wchar_t>(a,b,c,d,e); }
#ifdef __cpp_char8_t
extern "C" bool nan3_u8(uint32_t a, uint32_t b, uint32_t c) { return nan3<char8_t>(a,b,c); }
extern "C" bool inf3_u8(uint32_t a, uint32_t b, uint32_t c) { return inf3<char8_t>(a,b,c); }
extern "C" bool inity5_u8(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) { return inity5<char8_t>(a,b,c,d,e); }
#endif
