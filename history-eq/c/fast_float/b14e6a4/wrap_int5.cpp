#include <cstdint>
#include "fast_float/ascii_number.h"

extern "C" std::uint64_t target_int5(std::uint64_t packed) {
    char input[5];
    for (unsigned i = 0; i < 5; ++i) input[i] = char(packed >> (8 * i));
    std::uint16_t value = 123;
    auto result = fast_float::parse_int_string<std::uint16_t, char>(
        input, input + 5, value,
        fast_float::parse_options_t<char>(fast_float::chars_format::general, '.', 10));
    return (std::uint64_t(value) << 32) |
           (std::uint64_t(result.ptr - input) << 16) |
           std::uint16_t(unsigned(result.ec));
}
