#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

template <int Field>
fastfloat_really_inline uint64_t check_int(uint64_t input) {
  char bytes[9];
  std::memcpy(bytes, &input, 8);
  bytes[8] = 0;
  uint64_t value = 123;
  auto r = fast_float::from_chars_advanced(bytes, bytes + 8, value,
                                            fast_float::parse_options_t<char>{});
  if constexpr (Field == 0) return uint64_t(r.ec);
  if constexpr (Field == 1) return r.ptr ? uint64_t(r.ptr - bytes) : UINT64_MAX;
  return value;
}

template <int Field>
fastfloat_really_inline uint64_t check_double(uint64_t input) {
  char bytes[9];
  std::memcpy(bytes, &input, 8);
  bytes[8] = 0;
  double value = 123.0;
  auto r = fast_float::from_chars_advanced(bytes, bytes + 8, value,
                                            fast_float::parse_options_t<char>{});
  if constexpr (Field == 0) return uint64_t(r.ec);
  if constexpr (Field == 1) return r.ptr ? uint64_t(r.ptr - bytes) : UINT64_MAX;
  uint64_t bits;
  std::memcpy(&bits, &value, 8);
  return bits;
}

extern "C" uint64_t target_int_error(uint64_t x) { return check_int<0>(x); }
extern "C" uint64_t target_int_consumed(uint64_t x) { return check_int<1>(x); }
extern "C" uint64_t target_int_value(uint64_t x) { return check_int<2>(x); }
extern "C" uint64_t target_double_error(uint64_t x) { return check_double<0>(x); }
extern "C" uint64_t target_double_consumed(uint64_t x) { return check_double<1>(x); }
extern "C" uint64_t target_double_bits(uint64_t x) { return check_double<2>(x); }
