#include <stdint.h>
typedef int8_t int8x4_t __attribute__((ext_vector_type(4)));
static  inline int __vsubss4(const int a, const int b) {
    const int8x4_t va = reinterpret_cast<const int8x4_t&>(a);
    const int8x4_t vb = reinterpret_cast<const int8x4_t&>(b);
#if __has_builtin(__builtin_elementwise_sub_sat)
    const int8x4_t c = __builtin_elementwise_sub_sat(va, vb);
    return reinterpret_cast<const int &>(c);
#else
    int8x4_t c;
    int16_t tmp;
#pragma unroll
    for (int i = 0; i < 4; i++) {
        tmp = va[i] - vb[i];
        if(tmp > std::numeric_limits<int8_t>::max()) tmp = std::numeric_limits<int8_t>::max();
        if(tmp < std::numeric_limits<int8_t>::min()) tmp = std::numeric_limits<int8_t>::min();
        c[i] = tmp;
    }
    return reinterpret_cast<int &>(c);
#endif // __has_builtin(__builtin_elementwise_sub_sat)
}

static  inline int __vsub4(const int a, const int b) {
    // do some small modifications to a and b to make the subtraction not underflow
    const unsigned int a_large = a | 0x80808080;
    const unsigned int b_small = b & 0x7f7f7f7f;
    const unsigned int result_low_7bits = a_large - b_small;

    // if two ops share the same high bit, we should flip the high bit of the result
    const unsigned int should_flip_high_1bit = (a ^ ~b) & 0x80808080;

    return result_low_7bits ^ should_flip_high_1bit;
}


extern "C" uint32_t target_q4(uint32_t x) { return __vsub4(x & 0x0f0f0f0fu, 0x08080808u); }
extern "C" uint32_t target_q5(uint32_t x) { return __vsub4(x & 0x1f1f1f1fu, 0x10101010u); }
extern "C" uint32_t target_q3(uint32_t x) { return __vsub4(x & 0x07070707u, 0x04040404u); }
extern "C" uint32_t target_sc3_q6(uint32_t x) { return __vsub4(x & 0x3f3f3f3fu, 0x20202020u); }
extern "C" uint32_t target_q3_pair(uint32_t x, uint32_t y) { return __vsub4(x & 0x03030303u, y & 0x04040404u); }
extern "C" uint32_t target_unrestricted(uint32_t x, uint32_t y) { return __vsub4(x,y); }
