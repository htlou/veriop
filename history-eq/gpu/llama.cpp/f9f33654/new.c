#include <stdint.h>
static uint32_t load32le(const uint8_t *s) {
    return (uint32_t)s[0] | ((uint32_t)s[1] << 8) |
           ((uint32_t)s[2] << 16) | ((uint32_t)s[3] << 24);
}
uint32_t target(uint8_t b0, uint8_t b1, uint8_t b2, uint8_t b3, uint8_t b4, uint8_t b5, uint8_t b6, uint8_t b7, uint8_t b8, uint8_t b9, uint8_t b10, uint8_t b11, uint32_t is) {
    const uint8_t s[12] = {b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11};
    if (is >= 8) return 0;
    uint32_t scales[3] = {load32le(s), load32le(s + 4), load32le(s + 8)};
    uint32_t scalesoffs = (is & 3) * 8;
    uint32_t scidx0 = is < 4 ? 0 : 2;
    uint32_t scidxshift0 = scalesoffs;
    uint32_t scidxshift1 = is < 4 ? scalesoffs : scalesoffs + 2;
    uint32_t mbidx0 = is < 4 ? 1 : 2;
    uint32_t mbidxshift0 = is < 4 ? scalesoffs : scalesoffs + 4;
    uint32_t mbidxshift1 = is < 4 ? scalesoffs : scalesoffs + 2;
    uint32_t sc = ((scales[scidx0] >> scidxshift0) & 0x0f) |
                  ((scales[0] >> scidxshift1) & 0x30);
    uint32_t m = ((scales[mbidx0] >> mbidxshift0) & 0x0f) |
                 ((scales[1] >> mbidxshift1) & 0x30);
    return sc | (m << 8);
}
