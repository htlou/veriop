#include "selector.h"

unsigned target_q8_gate(unsigned runtime_bytes, unsigned cached_bytes) {
    __builtin_assume(runtime_bytes >= 16u && runtime_bytes % 16u == 0u);
    __builtin_assume(cached_bytes >= 16u && cached_bytes % 16u == 0u);
    return Q8_GATE(runtime_bytes, cached_bytes);
}

unsigned target_gemv_gate(unsigned runtime_bytes, unsigned cached_bytes) {
    __builtin_assume(runtime_bytes >= 16u && runtime_bytes % 16u == 0u);
    __builtin_assume(cached_bytes >= 16u && cached_bytes % 16u == 0u);
    return GEMV_GATE(runtime_bytes, cached_bytes);
}

unsigned target_gemv_assert_survives(unsigned runtime_bytes, unsigned cached_bytes,
                                     unsigned has_sve) {
    __builtin_assume(runtime_bytes >= 16u && runtime_bytes % 16u == 0u);
    __builtin_assume(cached_bytes >= 16u && cached_bytes % 16u == 0u);
    return !(GEMV_GATE(runtime_bytes, cached_bytes) && has_sve);
}

unsigned target_q8_gate_stable(unsigned runtime_bytes, unsigned cached_bytes) {
    __builtin_assume(runtime_bytes >= 16u && runtime_bytes % 16u == 0u);
    __builtin_assume(cached_bytes == runtime_bytes);
    return Q8_GATE(runtime_bytes, cached_bytes);
}

unsigned target_gemv_gate_stable(unsigned runtime_bytes, unsigned cached_bytes) {
    __builtin_assume(runtime_bytes >= 16u && runtime_bytes % 16u == 0u);
    __builtin_assume(cached_bytes == runtime_bytes);
    return GEMV_GATE(runtime_bytes, cached_bytes);
}

unsigned target_gemv_assert_survives_stable(unsigned runtime_bytes,
                                            unsigned cached_bytes, unsigned has_sve) {
    __builtin_assume(runtime_bytes >= 16u && runtime_bytes % 16u == 0u);
    __builtin_assume(cached_bytes == runtime_bytes);
    return !(GEMV_GATE(runtime_bytes, cached_bytes) && has_sve);
}
