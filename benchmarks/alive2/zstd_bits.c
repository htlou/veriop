#include "bits.h"

/* The pinned zstd header requires a nonzero operand for all four helpers. */
unsigned zstd_clz_fallback(unsigned value) {
    __builtin_assume(value != 0);
    return ZSTD_countLeadingZeros32_fallback(value);
}

unsigned zstd_clz_builtin(unsigned value) {
    __builtin_assume(value != 0);
    return ZSTD_countLeadingZeros32(value);
}

unsigned zstd_ctz_fallback(unsigned value) {
    __builtin_assume(value != 0);
    return ZSTD_countTrailingZeros32_fallback(value);
}

unsigned zstd_ctz_builtin(unsigned value) {
    __builtin_assume(value != 0);
    return ZSTD_countTrailingZeros32(value);
}
