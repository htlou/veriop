// Fixed instantiation TU for fast_float: from_chars for float/double (+ chars_format variants).
#include "fast_float/fast_float.h"
#include <cstddef>
extern "C" {
#define FF_ENTRY(NAME, T, FMT) \
  const char *NAME(const char *first, const char *last, T *out) { \
    auto r = fast_float::from_chars(first, last, *out, FMT); \
    return r.ec == std::errc() ? r.ptr : nullptr; }
FF_ENTRY(ff_f64_general, double, fast_float::chars_format::general)
FF_ENTRY(ff_f32_general, float, fast_float::chars_format::general)
FF_ENTRY(ff_f64_fixed, double, fast_float::chars_format::fixed)
FF_ENTRY(ff_f32_fixed, float, fast_float::chars_format::fixed)
FF_ENTRY(ff_f64_sci, double, fast_float::chars_format::scientific)
FF_ENTRY(ff_f32_sci, float, fast_float::chars_format::scientific)
const char *ff_f64_default(const char *first, const char *last, double *out) {
  auto r = fast_float::from_chars(first, last, *out);
  return r.ec == std::errc() ? r.ptr : nullptr; }
const char *ff_f32_default(const char *first, const char *last, float *out) {
  auto r = fast_float::from_chars(first, last, *out);
  return r.ec == std::errc() ? r.ptr : nullptr; }
#ifdef FF_HAVE_INT
#define FF_INT(NAME, T) \
  const char *NAME##_b10(const char *first, const char *last, T *out) { \
    auto r = fast_float::parse_int_string(first, last, *out, 10); \
    return r.ec == std::errc() ? r.ptr : nullptr; } \
  const char *NAME##_bN(const char *first, const char *last, T *out, int base) { \
    auto r = fast_float::parse_int_string(first, last, *out, base); \
    return r.ec == std::errc() ? r.ptr : nullptr; }
FF_INT(ff_i64, long long)
FF_INT(ff_u64, unsigned long long)
FF_INT(ff_i32, int)
FF_INT(ff_u32, unsigned)
#endif
}
