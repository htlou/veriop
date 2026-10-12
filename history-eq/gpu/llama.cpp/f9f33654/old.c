#include <stdint.h>
uint32_t target(uint8_t b0, uint8_t b1, uint8_t b2, uint8_t b3, uint8_t b4, uint8_t b5, uint8_t b6, uint8_t b7, uint8_t b8, uint8_t b9, uint8_t b10, uint8_t b11, uint32_t is) {
    const uint8_t s[12] = {b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11};
    if (is >= 8) return 0;
    uint32_t sc, m;
    if (is < 4) {
        sc = s[is] & 0x3f;
        m = s[is + 4] & 0x3f;
    } else {
        sc = (s[is + 4] & 0x0f) | ((s[is - 4] & 0xc0) >> 2);
        m = (s[is + 4] >> 4) | ((s[is] & 0xc0) >> 2);
    }
    return sc | (m << 8);
}
