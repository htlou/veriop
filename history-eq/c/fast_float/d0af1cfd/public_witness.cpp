#include <cstdint>
#include <cstdio>
#include "fast_float/fast_float.h"

template <typename UC> void check(const char *name, UC code_unit) {
  UC input[1] = {code_unit};
  std::uint16_t value = 123;
  auto result = fast_float::from_chars(input, input + 1, value, 10);
  std::printf("%s code=%04x error=%d consumed=%td value=%u\n", name,
              unsigned(code_unit), int(result.ec), result.ptr - input,
              unsigned(value));
}

int main() {
  check("char", char('0'));
  check("char16", char16_t(0x0130));
  check("char32", char32_t(0x0130));
  check("wchar", wchar_t(0x0130));
}
