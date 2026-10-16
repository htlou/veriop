// Compile/run check of the patched header: uint16_t/char and other types, all
// standards; C++20 additionally checks constant evaluation (fast path skipped).
#include "fast_float/fast_float.h"
#include <cstdint>
#include <cstdio>
#include <cstring>
#if __cplusplus >= 202002L
constexpr uint16_t ce_parse(const char *s, size_t n) {
  uint16_t v = 0; fast_float::from_chars(s, s + n, v); return v; }
static_assert(ce_parse("12345,678", 9) == 12345, "constexpr u16");
static_assert(ce_parse("9999,123", 8) == 9999, "constexpr u16 4 digits");
// note: "0042," is rejected in constant evaluation by clang for the *stock*
// header too (chdigit table of unknown bound) -- pre-existing, not tested here.
#endif
int main() {
  const char *s = "65535,65536,1234,  7,-1,0x10,099999999";
  uint16_t v = 0; uint8_t b = 0; int i = 0; unsigned long long u = 0;
  auto r = fast_float::from_chars(s, s + strlen(s), v);
  bool ok = (v == 65535 && r.ptr == s + 5 && r.ec == std::errc());
  r = fast_float::from_chars(s + 6, s + strlen(s), v);
  ok &= (r.ec == std::errc::result_out_of_range && r.ptr == s + 11);
  r = fast_float::from_chars(s + 12, s + strlen(s), v);
  ok &= (v == 1234 && r.ptr == s + 16);
  ok &= fast_float::from_chars(s + 17, s + strlen(s), v).ec == std::errc::invalid_argument;
  ok &= fast_float::from_chars("200", "200" + 3, b).ec == std::errc() && b == 200;
  ok &= fast_float::from_chars("-123", "-123" + 4, i).ec == std::errc() && i == -123;
  ok &= fast_float::from_chars("ffff", "ffff" + 4, v, 16).ec == std::errc() && v == 0xffff;
  ok &= fast_float::from_chars("18446744073709551615", "18446744073709551615" + 20, u).ec == std::errc();
  std::printf(ok ? "compile_check OK\n" : "compile_check FAIL\n");
  return ok ? 0 : 1;
}
