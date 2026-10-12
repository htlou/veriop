// Unit-level instantiation TU for fast_float: loop-light internal entry points called through noinline wrappers
// so that Alive2 sees small units (parse_number_string loops are not inlined into them).
#include "fast_float/fast_float.h"
#include <cstdint>
extern "C" {
#ifdef FF_HAVE_ADV
#define NOINL __attribute__((noinline))
NOINL fast_float::from_chars_result_t<char> ff_adv_f64(fast_float::parsed_number_string_t<char> *pns, double *v) {
  return fast_float::from_chars_advanced(*pns, *v); }
NOINL fast_float::from_chars_result_t<char> ff_adv_f32(fast_float::parsed_number_string_t<char> *pns, float *v) {
  return fast_float::from_chars_advanced(*pns, *v); }
#endif
#ifdef FF_HAVE_CF
NOINL fast_float::adjusted_mantissa ff_cf_f64(int64_t q, uint64_t w) { return fast_float::compute_float<fast_float::binary_format<double>>(q, w); }
NOINL fast_float::adjusted_mantissa ff_cf_f32(int64_t q, uint64_t w) { return fast_float::compute_float<fast_float::binary_format<float>>(q, w); }
#endif
}
