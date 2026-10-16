// Force-included (-include) into the unmodified official benchmark source so
// that it calls the separately compiled, Alive2-checked instantiation instead
// of instantiating (and possibly inlining) its own copy.
#include "fast_float/fast_float.h"
#include <cstdint>
namespace fast_float {
extern template from_chars_result_t<char>
from_chars_int_advanced<std::uint16_t, char>(char const *, char const *,
                                             std::uint16_t &,
                                             parse_options_t<char>) noexcept;
#ifdef FF_HAS_SLOW
extern template from_chars_result_t<char>
from_chars_int_advanced_slow<std::uint16_t, char>(
    char const *, char const *, std::uint16_t &, parse_options_t<char>) noexcept;
#endif
} // namespace fast_float
