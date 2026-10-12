#include "fast_float/float_common.h"
#include <cmath>
#include <cstring>
#include <limits>
namespace fast_float { namespace detail {
fastfloat_really_inline bool rounds_to_nearest() noexcept {
  // https://lemire.me/blog/2020/06/26/gcc-not-nearest/
#if (FLT_EVAL_METHOD != 1) && (FLT_EVAL_METHOD != 0)
  return false;
#endif
  // See
  // A fast function to check your floating-point rounding mode
  // https://lemire.me/blog/2022/11/16/a-fast-function-to-check-your-floating-point-rounding-mode/
  //
  // This function is meant to be equivalent to :
  // prior: #include <cfenv>
  //  return fegetround() == FE_TONEAREST;
  // However, it is expected to be much faster than the fegetround()
  // function call.
  //
  // The volatile keyword prevents the compiler from computing the function
  // at compile-time.
  // There might be other ways to prevent compile-time optimizations (e.g.,
  // asm). The value does not need to be std::numeric_limits<float>::min(), any
  // small value so that 1 + x should round to 1 would do (after accounting for
  // excess precision, as in 387 instructions).
  static float volatile fmin = std::numeric_limits<float>::min();
  float fmini = fmin; // we copy it so that it gets loaded at most once.
//
// Explanation:
// Only when fegetround() == FE_TONEAREST do we have that
// fmin + 1.0f == 1.0f - fmin.
//
// FE_UPWARD:
//  fmin + 1.0f > 1
//  1.0f - fmin == 1
//
// FE_DOWNWARD or  FE_TOWARDZERO:
//  fmin + 1.0f == 1
//  1.0f - fmin < 1
//
// Note: This may fail to be accurate if fast-math has been
// enabled, as rounding conventions may not apply.
#ifdef FASTFLOAT_VISUAL_STUDIO
#pragma warning(push)
//  todo: is there a VS warning?
//  see
//  https://stackoverflow.com/questions/46079446/is-there-a-warning-for-floating-point-equality-checking-in-visual-studio-2013
#elif defined(__clang__)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wfloat-equal"
#elif defined(__GNUC__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
#endif
  return (fmini + 1.0f == 1.0f - fmini);
#ifdef FASTFLOAT_VISUAL_STUDIO
#pragma warning(pop)
#elif defined(__clang__)
#pragma clang diagnostic pop
#elif defined(__GNUC__)
#pragma GCC diagnostic pop
#endif
}
} // namespace detail
template <typename T>
FASTFLOAT_CONSTEXPR20 bool
clinger_fast_path_impl(uint64_t mantissa, int64_t exponent, bool is_negative,
                       T &value) noexcept {
  // The implementation of the Clinger's fast path is convoluted because
  // we want round-to-nearest in all cases, irrespective of the rounding mode
  // selected on the thread.
  // We proceed optimistically, assuming that detail::rounds_to_nearest()
  // returns true.
  if (binary_format<T>::min_exponent_fast_path() <= exponent &&
      exponent <= binary_format<T>::max_exponent_fast_path()) {
    // Unfortunately, the conventional Clinger's fast path is only possible
    // when the system rounds to the nearest float.
    //
    // We expect the next branch to almost always be selected.
    // We could check it first (before the previous branch), but
    // there might be performance advantages at having the check
    // be last.
    if (!cpp20_and_in_constexpr() && detail::rounds_to_nearest()) {
      // We have that fegetround() == FE_TONEAREST.
      // Next is Clinger's fast path.
      if (mantissa <= binary_format<T>::max_mantissa_fast_path()) {
        value = T(mantissa);
        if (exponent < 0) {
          value = value / binary_format<T>::exact_power_of_ten(-exponent);
        } else {
          value = value * binary_format<T>::exact_power_of_ten(exponent);
        }
        if (is_negative) {
          value = -value;
        }
        return true;
      }
    } else {
      // We do not have that fegetround() == FE_TONEAREST.
      // Next is a modified Clinger's fast path, inspired by Jakub Jelínek's
      // proposal
      if (exponent >= 0 &&
          mantissa <= binary_format<T>::max_mantissa_fast_path(exponent)) {
#if defined(__clang__) || defined(FASTFLOAT_32BIT)
        // Clang may map 0 to -0.0 when fegetround() == FE_DOWNWARD
        if (mantissa == 0) {
          value = is_negative ? T(-0.) : T(0.);
          return true;
        }
#endif
        value = T(mantissa) * binary_format<T>::exact_power_of_ten(exponent);
        if (is_negative) {
          value = -value;
        }
        return true;
      }
    }
  }
  return false;
}
} // namespace fast_float
extern "C" unsigned long long target_ok(unsigned long long m, long long e, bool n) {
  double value = 123.0;
  return fast_float::clinger_fast_path_impl<double>(m, e, n, value);
}
extern "C" unsigned long long target_bits(unsigned long long m, long long e, bool n) {
  double value = 123.0;
  fast_float::clinger_fast_path_impl<double>(m, e, n, value);
  unsigned long long bits; std::memcpy(&bits, &value, sizeof(bits));
  return bits;
}
