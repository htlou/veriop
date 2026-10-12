#include <stdint.h>

// One coefficient's contribution to poly_tomsg, copied from the two
// historical versions. The enclosing loop merely packs eight such bits.
uint32_t raw_old_bit(int16_t coeff) {
    uint16_t t;
    t = coeff;
    t += ((int16_t)t >> 15) & 3329;
    t = (((t << 1) + 3329 / 2) / 3329) & 1;
    return t;
}

uint32_t raw_new_bit(int16_t coeff) {
    uint32_t t;
    t = coeff;
    t <<= 1;
    t += 1665;
    t *= 80635;
    t >>= 28;
    t &= 1;
    return t;
}

uint32_t old_bit_reduced(int16_t coeff) {
    __builtin_assume(coeff >= -1664 && coeff <= 1664);
    return raw_old_bit(coeff);
}

uint32_t new_bit_reduced(int16_t coeff) {
    __builtin_assume(coeff >= -1664 && coeff <= 1664);
    return raw_new_bit(coeff);
}

// Unchanged historical reduce.c body. Prove its output meets the condition
// used above for every int16_t input on the selected C/LLVM target.
int16_t historical_barrett_reduce(int16_t a) {
    int16_t t;
    const int16_t v = ((1 << 26) + 3329 / 2) / 3329;
    t = ((int32_t)v * a + (1 << 25)) >> 26;
    t *= 3329;
    return a - t;
}

int barrett_bad(int16_t a) {
    int16_t x = historical_barrett_reduce(a);
    return x < -1664 || x > 1664;
}

int barrett_zero(int16_t a) {
    (void)a;
    return 0;
}
