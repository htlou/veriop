#include <stdint.h>
#include <string.h>

template <typename UC> inline bool is_integer(UC c) {
  return (unsigned)(c - UC('0')) <= 9u;
}
inline bool is_made_of_four_digits_fast(uint32_t val) {
  return !((((val + 0x46464646) | (val - 0x30303030)) & 0x80808080));
}
inline uint32_t parse_four_digits_unrolled(uint32_t val) {
  val -= 0x30303030;
  val = (val * 10) + (val >> 8);
  return (((val & 0x00FF00FF) * 0x00640001) >> 16) & 0xFFFF;
}
inline uint32_t read4_to_u32(const char *chars) {
  uint32_t val;
  ::memcpy(&val, chars, sizeof(uint32_t));
  return val;
}
struct Result { uint64_t value; uint32_t consumed; };

extern "C" Result parse4(uint64_t initial, uint8_t b0, uint8_t b1,
                                      uint8_t b2, uint8_t b3, uint8_t b4,
                                      uint8_t b5, uint8_t b6) {
  char data[7] = {char(b0), char(b1), char(b2), char(b3), char(b4), char(b5), char(b6)};
  char const *p = data;
  char const *const pend = data + 4;
  uint64_t i = initial;
  if ((pend - p) >= 4) {
    uint32_t const val4 = read4_to_u32(p);
    if (is_made_of_four_digits_fast(val4)) {
      i = i * 10000 +
          parse_four_digits_unrolled(val4); // may overflow, that's ok
      p += 4;
    }
  }
    while ((p != pend) && is_integer(*p)) {
      uint8_t digit = uint8_t(*p - '0');
      ++p;
      i = i * 10 + digit; // in rare cases, this will overflow, but that's ok
    }
  return {i, uint32_t(p - data)};
}

extern "C" Result parse5(uint64_t initial, uint8_t b0, uint8_t b1,
                                      uint8_t b2, uint8_t b3, uint8_t b4,
                                      uint8_t b5, uint8_t b6) {
  char data[7] = {char(b0), char(b1), char(b2), char(b3), char(b4), char(b5), char(b6)};
  char const *p = data;
  char const *const pend = data + 5;
  uint64_t i = initial;
  if ((pend - p) >= 4) {
    uint32_t const val4 = read4_to_u32(p);
    if (is_made_of_four_digits_fast(val4)) {
      i = i * 10000 +
          parse_four_digits_unrolled(val4); // may overflow, that's ok
      p += 4;
    }
  }
    while ((p != pend) && is_integer(*p)) {
      uint8_t digit = uint8_t(*p - '0');
      ++p;
      i = i * 10 + digit; // in rare cases, this will overflow, but that's ok
    }
  return {i, uint32_t(p - data)};
}
