#include <cstdint>
#include <cstring>
#include "fast_float/fast_float.h"

template <typename T, int Field>
fastfloat_really_inline uint64_t parse_field(uint64_t packed) {
  char input[9];
  std::memcpy(input, &packed, 8);
  input[8] = '\0'; // the historical leading-zero loop may read at pend
  T value = 123;
  auto result = fast_float::parse_int_string<T, char>(input, input + 8, value, 10);
  if constexpr (Field == 0) return uint64_t(value);
  if constexpr (Field == 1) return uint64_t(result.ec);
  return result.ptr ? uint64_t(result.ptr - input) : UINT64_MAX;
}

extern "C" uint64_t target_u64_value(uint64_t x) { return parse_field<uint64_t, 0>(x); }
extern "C" uint64_t target_u64_error(uint64_t x) { return parse_field<uint64_t, 1>(x); }
extern "C" uint64_t target_u64_consumed(uint64_t x) { return parse_field<uint64_t, 2>(x); }
extern "C" uint64_t target_i64_value(uint64_t x) { return parse_field<int64_t, 0>(x); }
extern "C" uint64_t target_i64_error(uint64_t x) { return parse_field<int64_t, 1>(x); }
extern "C" uint64_t target_i64_consumed(uint64_t x) { return parse_field<int64_t, 2>(x); }
