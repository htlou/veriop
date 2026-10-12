#include <stdint.h>

static bool four_digits(uint32_t packed) {
#ifdef HISTORICAL_OLD
  for (unsigned j = 0; j < 4; ++j) {
    const uint8_t digit = uint8_t((packed >> (8 * j)) - '0');
    if (digit > 9) return false;
  }
  return true;
#else
  return !(((packed + 0x46464646u) | (packed - 0x30303030u)) & 0x80808080u);
#endif
}

extern "C" bool target_guard(uint32_t packed) { return four_digits(packed); }

extern "C" uint32_t target_value(uint32_t packed) {
  if (!four_digits(packed)) return 0;
#ifdef HISTORICAL_OLD
  uint32_t value = 0;
  for (unsigned j = 0; j < 4; ++j) {
    value = value * 10 + uint8_t((packed >> (8 * j)) - '0');
  }
  return value;
#else
  uint32_t value = packed - 0x30303030u;
  value = value * 10 + (value >> 8);
  return (((value & 0x00FF00FFu) * 0x00640001u) >> 16) & 0xFFFFu;
#endif
}

extern "C" uint64_t target_update(uint32_t packed, uint64_t i) {
  if (!four_digits(packed)) return i;
#ifdef HISTORICAL_OLD
  for (unsigned j = 0; j < 4; ++j) {
    i = i * 10 + uint8_t((packed >> (8 * j)) - '0');
  }
  return i;
#else
  return i * 10000 + target_value(packed);
#endif
}
