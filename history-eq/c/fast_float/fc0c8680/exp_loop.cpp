#include <cstdint>

#ifndef EXP_LIMIT
#error Define EXP_LIMIT from the historical source being checked.
#endif

static bool is_integer(char c) noexcept { return c >= '0' && c <= '9'; }

extern "C" int target_exponent_digits() noexcept {
  constexpr char digits[] = "1000000";
  const char *p = digits;
  const char *pend = digits + sizeof(digits) - 1;
  int exp_number = 0;
  while ((p != pend) && is_integer(*p)) {
    uint8_t digit = uint8_t(*p - '0');
    if (exp_number < EXP_LIMIT) {
      exp_number = 10 * exp_number + digit;
    }
    ++p;
  }
  return exp_number;
}
