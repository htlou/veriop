#include <stdint.h>
#include <arm_neon.h>

/* read8_to_u64<char16_t> when FASTFLOAT_HAS_SIMD was false. */
uint64_t old_read8(const uint16_t *chars) {
    uint64_t val = 0;
    for (int i = 0; i < 8; ++i) {
        val |= (uint64_t)(uint8_t)(*chars) << (i * 8);
        ++chars;
    }
    return val;
}

/* simd_read8_to_u64(char16_t*) selected by the new macro on AArch64. */
uint64_t new_read8(const uint16_t *chars) {
    uint16x8_t data = vld1q_u16(chars);
    uint8x8_t packed = vmovn_u16(data);
    return vget_lane_u64(vreinterpret_u64_u8(packed), 0);
}

uint64_t new_read8_bad(const uint16_t *chars) {
    return new_read8(chars) ^ 1;
}
