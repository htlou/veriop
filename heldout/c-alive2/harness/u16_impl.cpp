// Explicit instantiation definitions of the uint16_t/char integer parser.
// This translation unit is compiled to LLVM IR; that exact IR is checked by
// Alive2 and then compiled (codegen only) into the object linked into the
// official benchmark. FF_HAS_SLOW is defined for the candidate headers.
#include "fast_float/fast_float.h"
#include <cstdint>
namespace fast_float {
template from_chars_result_t<char>
from_chars_int_advanced<std::uint16_t, char>(char const *, char const *,
                                             std::uint16_t &,
                                             parse_options_t<char>) noexcept;
#ifdef FF_HAS_SLOW
template from_chars_result_t<char>
from_chars_int_advanced_slow<std::uint16_t, char>(
    char const *, char const *, std::uint16_t &, parse_options_t<char>) noexcept;
#endif
} // namespace fast_float
