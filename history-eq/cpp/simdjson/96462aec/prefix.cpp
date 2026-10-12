#include <stdint.h>

struct State {
  uint64_t value;
  uint8_t consumed;
  bool leading_zero;
};

static bool parse_digit(uint8_t c, uint64_t &i) {
  const uint8_t digit = uint8_t(c - '0');
  if (digit > 9) return false;
  i = 10 * i + digit;
  return true;
}

static State prefix(uint8_t c) {
  uint8_t input[2] = {c, 0};
  const uint8_t *p = input;
  uint64_t i = 0;
#ifdef HISTORICAL_OLD
  p += parse_digit(*p, i);
  bool leading_zero = (i == 0);
#else
  bool leading_zero;
  if (!parse_digit(*p, i)) { leading_zero = true; return {i, 0, leading_zero}; }
  p++;
  leading_zero = (i == 0);
#endif
  return {i, uint8_t(p - input), leading_zero};
}

extern "C" uint64_t target_value(uint8_t c) { return prefix(c).value; }
extern "C" uint8_t target_consumed(uint8_t c) { return prefix(c).consumed; }
extern "C" bool target_leading_zero(uint8_t c) { return prefix(c).leading_zero; }
