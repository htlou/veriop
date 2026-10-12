#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#define QK_K 256
#define GGML_RESTRICT __restrict__
#define UNUSED(x) (void)(x)
using ggml_half = uint16_t;
static inline float half_to_float(ggml_half bits) {
    assert(bits == 0x3c00);
    return 1.0f;
}
#define GGML_CPU_FP16_TO_FP32(x) half_to_float(x)
struct block_q6_K {
    uint8_t ql[128], qh[64];
    int8_t scales[16];
    ggml_half d;
};
struct block_q8_K {
    float d;
    int8_t qs[256];
    int16_t bsums[16];
};
struct block_q6_Kx8 {
    ggml_half d[8];
    int8_t scales[128];
    uint8_t ql[1024], qh[512];
};
static_assert(sizeof(block_q6_K) == 210);
static_assert(sizeof(block_q8_K) == 292);
static_assert(sizeof(block_q6_Kx8) == 1680);
void ggml_vec_dot_q6_K_q8_K_generic(int n, float * GGML_RESTRICT s, size_t bs, const void * GGML_RESTRICT vx, size_t bx, const void * GGML_RESTRICT vy, size_t by, int nrc) {
    assert(n % QK_K == 0);
    assert(nrc == 1);
    UNUSED(nrc);
    UNUSED(bx);
    UNUSED(by);
    UNUSED(bs);

    const block_q6_K * GGML_RESTRICT x = (const block_q6_K *) vx;
    const block_q8_K * GGML_RESTRICT y = (const block_q8_K *) vy;

    const int nb = n / QK_K;

    int8_t  aux8[QK_K];
    int16_t aux16[8];
    float   sums [8];
    int32_t aux32[8];
    memset(sums, 0, 8*sizeof(float));

    float sumf = 0;
    for (int i = 0; i < nb; ++i) {
        const uint8_t * GGML_RESTRICT q4 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const  int8_t * GGML_RESTRICT q8 = y[i].qs;
        memset(aux32, 0, 8*sizeof(int32_t));
        int8_t * GGML_RESTRICT a = aux8;
        for (int j = 0; j < QK_K; j += 128) {
            for (int l = 0; l < 32; ++l) {
                a[l +  0] = (int8_t)((q4[l +  0] & 0xF) | (((qh[l] >> 0) & 3) << 4)) - 32;
                a[l + 32] = (int8_t)((q4[l + 32] & 0xF) | (((qh[l] >> 2) & 3) << 4)) - 32;
                a[l + 64] = (int8_t)((q4[l +  0] >>  4) | (((qh[l] >> 4) & 3) << 4)) - 32;
                a[l + 96] = (int8_t)((q4[l + 32] >>  4) | (((qh[l] >> 6) & 3) << 4)) - 32;
            }
            a  += 128;
            q4 += 64;
            qh += 32;
        }
        a = aux8;
        int is = 0;
        for (int j = 0; j < QK_K/16; ++j) {
            int scale = x[i].scales[is++];
            for (int l = 0; l < 8; ++l) aux16[l] = q8[l] * a[l];
            for (int l = 0; l < 8; ++l) aux32[l] += scale * aux16[l];
            q8 += 8; a += 8;
            for (int l = 0; l < 8; ++l) aux16[l] = q8[l] * a[l];
            for (int l = 0; l < 8; ++l) aux32[l] += scale * aux16[l];
            q8 += 8; a += 8;
        }
        const float d = GGML_CPU_FP16_TO_FP32(x[i].d) * y[i].d;
        for (int l = 0; l < 8; ++l) sums[l] += d * aux32[l];
    }
    for (int l = 0; l < 8; ++l) sumf += sums[l];
    *s = sumf;
}
static block_q6_Kx8 make_block_q6_Kx8(block_q6_K * in, unsigned int blck_size_interleave) {
    block_q6_Kx8  out;
    constexpr int n_blocks = 8;  // Kx8
    for (int i = 0; i < n_blocks; i++) {
        out.d[i] = in[i].d;
    }

    const int end_ls = QK_K * 4 / blck_size_interleave;
    // Interleave Q6_K quants by taking 8 bytes at a time
    for (int i = 0; i < end_ls; ++i) {
        int src_id     = i % n_blocks;
        int src_offset = (i / n_blocks) * blck_size_interleave;
        int dst_offset = i * blck_size_interleave;

        uint64_t elem_ls;
        memcpy(&elem_ls, &in[src_id].ql[src_offset], sizeof(uint64_t));
        memcpy(&out.ql[dst_offset], &elem_ls, sizeof(uint64_t));
    }

    // Interleave high bits using same 8-byte pattern as low bits
    const int end_hs = end_ls / 2;
    for (int i = 0; i < end_hs; ++i) {
        int src_id     = i % n_blocks;
        int src_offset = (i / n_blocks) * blck_size_interleave;
        int dst_offset = i * blck_size_interleave;

        uint64_t elem_hs;
        memcpy(&elem_hs, &in[src_id].qh[src_offset], sizeof(uint64_t));
        memcpy(&out.qh[dst_offset], &elem_hs, sizeof(uint64_t));
    }

    // The below logic is designed so as to unpack and rearrange scales in Q6_K
    // The output Q6_Kx8 structure interleaves the 8 bit scales in the same fashion as the quants
    // Q6_K structure has an 8-bit scale per 16 elements -> 16 scales
    // scales: [0 bl0 0 bl1 ... 0 bl7][1 bl0 ... 1 bl7] ... [15 bl0 ... 15 bl7]  (bl = block)
    constexpr int n_scales = QK_K / 16;

    for (int i = 0; i < n_blocks; i++) {
        for (int j = 0; j < n_scales; j++) {
            out.scales[j * n_blocks + i] = in[i].scales[j];
        }
    }

    return out;
}
void ggml_gemv_q6_K_8x8_q8_K_generic(int n, float * GGML_RESTRICT s, size_t bs, const void * GGML_RESTRICT vx, const void * GGML_RESTRICT vy, int nr, int nc) {
    constexpr int qk = QK_K;
    const int nb = n / qk;
    const int ncols_interleaved = 8;
    const int blocklen = 8;

    assert(n % qk == 0);
    assert(nc % ncols_interleaved == 0);

    UNUSED(bs);
    UNUSED(nr);

    float sumf[8];

    const block_q8_K * a_ptr = (const block_q8_K *) vy;
    for (int x = 0; x < nc / ncols_interleaved; x++) {
        const block_q6_Kx8 * b_ptr = (const block_q6_Kx8 *) vx + (x * nb);

        for (int j = 0; j < ncols_interleaved; j++) {
            sumf[j] = 0.0f;
        }

        for (int l = 0; l < nb; l++) {


            for (int k = 0; k < 16; k++) {
                // k = 0.. 7 weights 0-63 low, 64-127 high
                // k = 8..15 weights 128-191 low, 192-255 high
                const int base_l = (k / 8) * 128 + (k % 8) * 8;
                const int base_h = base_l + 64;

                const int scale_idx_l = base_l / 16;
                const int scale_idx_h = base_h / 16;

                // Bit shift cycles 0,2,4,6 for each 32-value group within a 128-value half
                const int qh_shift_l = ((base_l % 128) / 32) * 2;
                const int qh_shift_h = ((base_h % 128) / 32) * 2;

                // qh_half: offset to the correct 32-byte half (0 or 32)
                const int qh_half_l = (base_l / 128) * 32;
                const int qh_half_h = (base_h / 128) * 32;

                for (int j = 0; j < ncols_interleaved; j++) {
                    // Interleaved scales
                    const int8_t scale_l = b_ptr[l].scales[scale_idx_l * 8 + j];
                    const int8_t scale_h = b_ptr[l].scales[scale_idx_h * 8 + j];

                    int sumi_l = 0;
                    int sumi_h = 0;

                    for (int i = 0; i < blocklen; i++) {
                        const int ql_pos = k * 64 + j * 8 + i;
                        const int l_4    = b_ptr[l].ql[ql_pos] & 0xF;
                        const int hi_4   = (b_ptr[l].ql[ql_pos] >> 4) & 0xF;

                        // qh indexing with 8-byte interleaving (like q5_K)
                        const int qh_byte_l   = qh_half_l + ((base_l + i) % 32);
                        const int qh_chunk_l  = qh_byte_l / 8;
                        const int qh_pos_l    = qh_byte_l % 8;
                        const int qh_offset_l = qh_chunk_l * 64 + j * 8 + qh_pos_l;
                        const int hi_2_l      = (b_ptr[l].qh[qh_offset_l] >> qh_shift_l) & 0x3;

                        const int qh_byte_h   = qh_half_h + ((base_h + i) % 32);
                        const int qh_chunk_h  = qh_byte_h / 8;
                        const int qh_pos_h    = qh_byte_h % 8;
                        const int qh_offset_h = qh_chunk_h * 64 + j * 8 + qh_pos_h;
                        const int hi_2_h      = (b_ptr[l].qh[qh_offset_h] >> qh_shift_h) & 0x3;

                        const int q_l = ((hi_2_l << 4) | l_4) - 32;
                        const int q_h = ((hi_2_h << 4) | hi_4) - 32;

                        const int8_t a_l = a_ptr[l].qs[base_l + i];
                        const int8_t a_h = a_ptr[l].qs[base_h + i];

                        sumi_l += q_l * a_l;
                        sumi_h += q_h * a_h;
                    }

                    sumf[j] +=
                        (sumi_l * scale_l + sumi_h * scale_h) * GGML_CPU_FP16_TO_FP32(b_ptr[l].d[j]) * a_ptr[l].d;
                }
            }
        }

        for (int j = 0; j < ncols_interleaved; j++) {
            s[x * ncols_interleaved + j] = sumf[j];
        }
    }
}

static uint32_t state = 0x6b384f93u;
static uint32_t next() {
    state ^= state << 13;
    state ^= state >> 17;
    state ^= state << 5;
    return state;
}
int main() {
    for (int trial = 0; trial < 100000; trial++) {
        block_q6_K weights[8] = {};
        block_q8_K activation = {};
        float reference[8] = {}, candidate[8] = {};
        for (int row = 0; row < 8; row++) {
            weights[row].d = 0x3c00;
            for (auto &v : weights[row].ql) v = next() & 255;
            for (auto &v : weights[row].qh) v = next() & 255;
            for (auto &v : weights[row].scales) v = (int)(next() % 7) - 3;
        }
        activation.d = 0.7f;
        for (auto &v : activation.qs) v = (int)(next() % 7) - 3;
        for (int row = 0; row < 8; row++) {
            ggml_vec_dot_q6_K_q8_K_generic(256, &reference[row], 0, &weights[row], 0, &activation, 0, 1);
        }
        block_q6_Kx8 packed = make_block_q6_Kx8(weights, 8);
        ggml_gemv_q6_K_8x8_q8_K_generic(256, candidate, 0, &packed, &activation, 1, 8);
        for (int row = 0; row < 8; row++) {
            uint32_t a, b;
            memcpy(&a, &reference[row], 4);
            memcpy(&b, &candidate[row], 4);
            if (a != b) {
                printf("trial=%d row=%d old=%08x new=%08x old_float=%a new_float=%a\n",
                       trial, row, a, b, reference[row], candidate[row]);
                return 0;
            }
        }
    }
    puts("no difference in 100000 trials");
    return 1;
}
