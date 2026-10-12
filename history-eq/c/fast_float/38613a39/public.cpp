#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

extern "C" uint64_t target_public_bits() {
  const char16_t input[] = {u'0', u'.', 0x840a, 0xc02c, 0xc004, 0x8101,
                            0x8100, 0xa000, 0xa000, 0xa025};
  double value = 0;
  (void)fast_float::from_chars(input, input + 10, value);
  uint64_t bits;
  std::memcpy(&bits, &value, sizeof(bits));
  return bits;
}
