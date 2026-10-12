#include <arm_neon.h>
extern "C" void changed_scale_block(
    int8_t s00, int8_t s01, int8_t s10, int8_t s11,
    int32x4_t b0, int32x4_t b1, int32x4_t b2, int32x4_t b3,
    int32x4_t a0, int32x4_t a1, int32x4_t out[2]) {
    constexpr int cp = 0;
    int8_t q4sb_scales[2][8] = {};
    q4sb_scales[0][2 * cp] = s00; q4sb_scales[0][2 * cp + 1] = s01;
    q4sb_scales[1][2 * cp] = s10; q4sb_scales[1][2 * cp + 1] = s11;
    int32x4_t sb_acc[4] = {b0, b1, b2, b3};
    int32x4_t acc[8] = {}; acc[cp] = a0; acc[cp + 4] = a1;
                        // Scales[i] corresponds to column i
                        const int scale_offset = cp * 2;
                        const int32_t scale_00 = q4sb_scales[0][scale_offset];
                        const int32_t scale_01 = q4sb_scales[0][scale_offset + 1];
                        const int32_t scale_10 = q4sb_scales[1][scale_offset];
                        const int32_t scale_11 = q4sb_scales[1][scale_offset + 1];
                        const int32x4_t block_scale_0 = vcombine_s32(vdup_n_s32(scale_00), vdup_n_s32(scale_01));
                        const int32x4_t block_scale_1 = vcombine_s32(vdup_n_s32(scale_10), vdup_n_s32(scale_11));

                        acc[cp]     = vmlaq_s32(acc[cp], sb_acc[0], block_scale_0);
                        acc[cp + 4] = vmlaq_s32(acc[cp + 4], sb_acc[2], block_scale_0);
                        acc[cp]     = vmlaq_s32(acc[cp], sb_acc[1], block_scale_1);
                        acc[cp + 4] = vmlaq_s32(acc[cp + 4], sb_acc[3], block_scale_1);
    out[0] = acc[cp]; out[1] = acc[cp + 4];
}
