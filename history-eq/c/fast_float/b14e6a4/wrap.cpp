#include <cstdint>
#include "fast_float/fast_float.h"

static uint64_t run(uint64_t packed, unsigned n, unsigned field) {
  char input[8];
  for (unsigned i = 0; i < 8; ++i) input[i] = char(packed >> (8 * i));
  std::uint16_t value = 123;
  auto result = fast_float::from_chars(input, input + n, value, 10);
  if (field == 0) return unsigned(result.ec);
  if (field == 1) return unsigned(result.ptr - input);
  return value;
}

extern "C" uint64_t target_error(uint64_t packed) { return run(packed, 5, 0); }
extern "C" uint64_t target_consumed(uint64_t packed) { return run(packed, 5, 1); }
extern "C" uint64_t target_value(uint64_t packed) { return run(packed, 5, 2); }
extern "C" uint64_t probe(uint64_t packed, unsigned n) {
  return run(packed, n, 0) | (run(packed, n, 1) << 8) |
         (run(packed, n, 2) << 16);
}
