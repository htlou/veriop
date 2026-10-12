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
                        for (int blk = 0; blk < 2; blk++) {
                            const int32x4_t block_scale = {
                                (int32_t) q4sb_scales[blk][scale_offset],
                                (int32_t) q4sb_scales[blk][scale_offset],
                                (int32_t) q4sb_scales[blk][scale_offset + 1],
                                (int32_t) q4sb_scales[blk][scale_offset + 1],
                            };
                            acc[cp]     = vmlaq_s32(acc[cp], sb_acc[blk], block_scale);
                            acc[cp + 4] = vmlaq_s32(acc[cp + 4], sb_acc[blk + 2], block_scale);
                        }
    out[0] = acc[cp]; out[1] = acc[cp + 4];
}
