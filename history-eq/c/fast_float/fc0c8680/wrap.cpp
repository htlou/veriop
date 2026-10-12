#include <cstdint>

// The historical fast_float.h blob is absent; only these option values are used
// by the extracted parser for this fixed scientific-notation input.
namespace fast_float {
enum class chars_format : uint8_t { scientific = 1, fixed = 4, general = 5 };
constexpr bool operator&(chars_format a, chars_format b) {
  return (uint8_t(a) & uint8_t(b)) != 0;
}
struct parse_options {
  chars_format format;
  char decimal_point;
};
}

#include "fast_float/ascii_number.h"

extern "C" long long target_exponent() {
  constexpr char input[] = "1e1000000";
  auto parsed = fast_float::parse_number_string(
      input, input + sizeof(input) - 1,
      {fast_float::chars_format::general, '.'});
  return parsed.exponent;
}
