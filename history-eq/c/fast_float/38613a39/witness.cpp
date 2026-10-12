#include <cstdint>
#include <cstdio>
#include <cstring>
#include "fast_float/fast_float.h"

int main() {
  const char16_t input[] = {u'0', u'.', 0x840a, 0xc02c, 0xc004, 0x8101,
                            0x8100, 0xa000, 0xa000, 0xa025};
  const auto parsed = fast_float::parse_number_string(
      input, input + 10, fast_float::parse_options_t<char16_t>{});
  double value = 0;
  const auto result = fast_float::from_chars(input, input + 10, value);
  uint64_t bits;
  std::memcpy(&bits, &value, sizeof(bits));
  std::printf("parsed valid=%d mantissa=%llu exponent=%lld consumed=%td\n",
              int(parsed.valid), (unsigned long long)parsed.mantissa,
              (long long)parsed.exponent, parsed.lastmatch - input);
  std::printf("public error=%d consumed=%td bits=%016llx\n",
              int(result.ec), result.ptr - input, (unsigned long long)bits);
}
