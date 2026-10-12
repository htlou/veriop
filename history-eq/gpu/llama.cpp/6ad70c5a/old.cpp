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
    for (int i = 0; i < 8; ++i) out_acc[i] = acc[i];
}
