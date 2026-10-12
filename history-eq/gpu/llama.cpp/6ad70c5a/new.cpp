#include <arm_neon.h>
extern "C" void changed_scale_block(
    int cp, const int8_t in_scales[2][8],
    const int32x4_t in_sb_acc[4], int32x4_t out_acc[8]) {
    int8_t q4sb_scales[2][8];
    int32x4_t sb_acc[4], acc[8];
    for (int i = 0; i < 2; ++i)
        for (int j = 0; j < 8; ++j) q4sb_scales[i][j] = in_scales[i][j];
    for (int i = 0; i < 4; ++i) sb_acc[i] = in_sb_acc[i];
    for (int i = 0; i < 8; ++i) acc[i] = out_acc[i];
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
    for (int i = 0; i < 8; ++i) out_acc[i] = acc[i];
}
