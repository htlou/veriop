void ggml_vec_dot_q6_K_q8_K(int n, float * GGML_RESTRICT s, size_t bs, const void * GGML_RESTRICT vx, size_t bx, const void * GGML_RESTRICT vy, size_t by, int nrc) {
    assert(n % QK_K == 0);
#ifdef __ARM_FEATURE_MATMUL_INT8
    assert((nrc == 2) || (nrc == 1));
#else
    assert(nrc == 1);
#endif
    UNUSED(nrc);
    UNUSED(bx);
    UNUSED(by);
    UNUSED(bs);

    const block_q6_K * GGML_RESTRICT x = vx;
    const block_q8_K * GGML_RESTRICT y = vy;

    const int nb = n / QK_K;

#if defined(__ARM_FEATURE_MATMUL_INT8)
    if (nrc == 2) {
        const block_q6_K * GGML_RESTRICT x0 = x;
        const block_q6_K * GGML_RESTRICT x1 = (const block_q6_K *) ((const uint8_t *)vx + bx);
        const block_q8_K * GGML_RESTRICT y0 = y;
        const block_q8_K * GGML_RESTRICT y1 = (const block_q8_K *) ((const uint8_t *)vy + by);

        float32x4_t vfsum = vdupq_n_f32(0.0f);

        for (int i = 0; i < nb; ++i, ++x0, ++x1, ++y0, ++y1) {
            const uint8_t * GGML_RESTRICT ql0 = x0->ql;
            const uint8_t * GGML_RESTRICT ql1 = x1->ql;
            const uint8_t * GGML_RESTRICT qh0 = x0->qh;
            const uint8_t * GGML_RESTRICT qh1 = x1->qh;
            const  int8_t * GGML_RESTRICT qy0 = y0->qs;
            const  int8_t * GGML_RESTRICT qy1 = y1->qs;

            const uint8x16_t mone = vdupq_n_u8(0x30);
            const uint8x16_t  m4b = vdupq_n_u8(0x0f);

            int32x4_t visum = vdupq_n_s32(0);

            // process 8 blocks per iteration, totally 16 blocks
            for (int j = 0; j < 2; ++j, qh0 += 32, ql0 += 64, qh1 += 32, ql1 += 64) {
                int8x16_t vx0[8], vx1[8];

                // de-quantize vx0[8]
                {
                    const uint8x16x2_t qh_bits = vld1q_u8_x2(qh0);
                    const uint8x16x4_t ql_bits = vld1q_u8_x4(ql0);

                    uint8x16_t q6h_0 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[0], 4));
                    uint8x16_t q6h_1 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[1], 4));
                    uint8x16_t q6h_2 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[0], 2));
                    uint8x16_t q6h_3 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[1], 2));

                    vx0[0] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[0], m4b), q6h_0));
                    vx0[1] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[1], m4b), q6h_1));
                    vx0[2] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[2], m4b), q6h_2));
                    vx0[3] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[3], m4b), q6h_3));

                    q6h_0 = vandq_u8(mone, qh_bits.val[0]);
                    q6h_1 = vandq_u8(mone, qh_bits.val[1]);
                    q6h_2 = vandq_u8(mone, vshrq_n_u8(qh_bits.val[0], 2));
                    q6h_3 = vandq_u8(mone, vshrq_n_u8(qh_bits.val[1], 2));

                    vx0[4] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[0], 4), q6h_0));
                    vx0[5] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[1], 4), q6h_1));
                    vx0[6] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[2], 4), q6h_2));
                    vx0[7] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[3], 4), q6h_3));
                }

                // de-quantize vx1[8]
                {
                    const uint8x16x2_t qh_bits = vld1q_u8_x2(qh1);
                    const uint8x16x4_t ql_bits = vld1q_u8_x4(ql1);

                    uint8x16_t q6h_0 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[0], 4));
                    uint8x16_t q6h_1 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[1], 4));
                    uint8x16_t q6h_2 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[0], 2));
                    uint8x16_t q6h_3 = vandq_u8(mone, vshlq_n_u8(qh_bits.val[1], 2));

                    vx1[0] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[0], m4b), q6h_0));
                    vx1[1] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[1], m4b), q6h_1));
                    vx1[2] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[2], m4b), q6h_2));
                    vx1[3] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(ql_bits.val[3], m4b), q6h_3));

                    q6h_0 = vandq_u8(mone, qh_bits.val[0]);
                    q6h_1 = vandq_u8(mone, qh_bits.val[1]);
                    q6h_2 = vandq_u8(mone, vshrq_n_u8(qh_bits.val[0], 2));
                    q6h_3 = vandq_u8(mone, vshrq_n_u8(qh_bits.val[1], 2));

                    vx1[4] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[0], 4), q6h_0));
                    vx1[5] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[1], 4), q6h_1));
                    vx1[6] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[2], 4), q6h_2));
                    vx1[7] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(ql_bits.val[3], 4), q6h_3));
                }

                // process 16 elements (one block with same scale) per iteration
                // - vx = concat(ql, qh) - 32
                // - r1,r2,r3,r4 = smmla(vx, vy)
                for (int k = 0; k < 8; ++k) {
                    const int blk = j * 8 + k;

                    const int8x16_t vy0 = vld1q_s8(qy0);
                    const int8x16_t vy1 = vld1q_s8(qy1);
                    qy0 += 16;
                    qy1 += 16;

                    const int32x4_t block_scale = {
                        x0->scales[blk],
                        x0->scales[blk],
                        x1->scales[blk],
                        x1->scales[blk],
                    };

                    // calculate four results at once with outer product
                    const int8x16_t vx_l = vreinterpretq_s8_s64(vzip1q_s64(vreinterpretq_s64_s8(vx0[k]), vreinterpretq_s64_s8(vx1[k])));
                    const int8x16_t vx_h = vreinterpretq_s8_s64(vzip2q_s64(vreinterpretq_s64_s8(vx0[k]), vreinterpretq_s64_s8(vx1[k])));
                    const int8x16_t vy_l = vreinterpretq_s8_s64(vzip1q_s64(vreinterpretq_s64_s8(vy0), vreinterpretq_s64_s8(vy1)));
                    const int8x16_t vy_h = vreinterpretq_s8_s64(vzip2q_s64(vreinterpretq_s64_s8(vy0), vreinterpretq_s64_s8(vy1)));
                    int32x4_t vr = vdupq_n_s32(0);
                    vr = vmmlaq_s32(vr, vx_l, vy_l);
                    vr = vmmlaq_s32(vr, vx_h, vy_h);

                    // apply block scale, will NOT overflow
                    // block_scale * sum_256(int6*int8) <= 2^(8+8+6+8) = 30 bits
                    visum = vmlaq_s32(visum, vr, block_scale);
                }
            }

            // adjust bias, apply superblock scale
            {
                int32_t bias[4];
#ifdef __ARM_FEATURE_SVE
                const svbool_t pg16_8 = svptrue_pat_b16(SV_VL8);
                const svbool_t pg8_8 = svptrue_pat_b8(SV_VL8);
                const svint16_t y0_q8sums_0 = svld1_s16(pg16_8, y0->bsums);
                const svint16_t y0_q8sums_1 = svld1_s16(pg16_8, y0->bsums + 8);
                const svint16_t y1_q8sums_0 = svld1_s16(pg16_8, y1->bsums);
                const svint16_t y1_q8sums_1 = svld1_s16(pg16_8, y1->bsums + 8);
                const svint16_t x0_q6scales_0 = svunpklo_s16(svld1_s8(pg8_8, x0->scales));
                const svint16_t x0_q6scales_1 = svunpklo_s16(svld1_s8(pg8_8, x0->scales + 8));
                const svint16_t x1_q6scales_0 = svunpklo_s16(svld1_s8(pg8_8, x1->scales));
                const svint16_t x1_q6scales_1 = svunpklo_s16(svld1_s8(pg8_8, x1->scales + 8));
                const svint64_t zero = svdup_n_s64(0);
                bias[0] = svaddv_s64(svptrue_b64(), svadd_s64_x(svptrue_b64(), svdot_s64(zero, y0_q8sums_0, x0_q6scales_0),
                                                                               svdot_s64(zero, y0_q8sums_1, x0_q6scales_1)));
                bias[1] = svaddv_s64(svptrue_b64(), svadd_s64_x(svptrue_b64(), svdot_s64(zero, y1_q8sums_0, x0_q6scales_0),
                                                                               svdot_s64(zero, y1_q8sums_1, x0_q6scales_1)));
                bias[2] = svaddv_s64(svptrue_b64(), svadd_s64_x(svptrue_b64(), svdot_s64(zero, y0_q8sums_0, x1_q6scales_0),
                                                                               svdot_s64(zero, y0_q8sums_1, x1_q6scales_1)));
                bias[3] = svaddv_s64(svptrue_b64(), svadd_s64_x(svptrue_b64(), svdot_s64(zero, y1_q8sums_0, x1_q6scales_0),
                                                                               svdot_s64(zero, y1_q8sums_1, x1_q6scales_1)));
#else
                // NEON doesn't support int16 dot product, fallback to separated mul and add
                const int16x8x2_t q8sums0 = vld1q_s16_x2(y0->bsums);
                const int16x8x2_t q8sums1 = vld1q_s16_x2(y1->bsums);

                int8x16_t scales_s8 = vld1q_s8(x0->scales);
                const int16x8x2_t q6scales0 = {{vmovl_s8(vget_low_s8(scales_s8)), vmovl_s8(vget_high_s8(scales_s8))}};
                scales_s8 = vld1q_s8(x1->scales);
                const int16x8x2_t q6scales1 = {{vmovl_s8(vget_low_s8(scales_s8)), vmovl_s8(vget_high_s8(scales_s8))}};

                int32x4_t prod;
                prod = vaddq_s32(vaddq_s32(vmull_s16(vget_low_s16 (q8sums0.val[0]), vget_low_s16 (q6scales0.val[0])),
                                           vmull_s16(vget_high_s16(q8sums0.val[0]), vget_high_s16(q6scales0.val[0]))),
                                 vaddq_s32(vmull_s16(vget_low_s16 (q8sums0.val[1]), vget_low_s16 (q6scales0.val[1])),
                                           vmull_s16(vget_high_s16(q8sums0.val[1]), vget_high_s16(q6scales0.val[1]))));
                bias[0] = vaddvq_s32(prod);
                prod = vaddq_s32(vaddq_s32(vmull_s16(vget_low_s16 (q8sums1.val[0]), vget_low_s16 (q6scales0.val[0])),
                                           vmull_s16(vget_high_s16(q8sums1.val[0]), vget_high_s16(q6scales0.val[0]))),
                                 vaddq_s32(vmull_s16(vget_low_s16 (q8sums1.val[1]), vget_low_s16 (q6scales0.val[1])),
                                           vmull_s16(vget_high_s16(q8sums1.val[1]), vget_high_s16(q6scales0.val[1]))));
                bias[1] = vaddvq_s32(prod);
                prod = vaddq_s32(vaddq_s32(vmull_s16(vget_low_s16 (q8sums0.val[0]), vget_low_s16 (q6scales1.val[0])),
                                           vmull_s16(vget_high_s16(q8sums0.val[0]), vget_high_s16(q6scales1.val[0]))),
                                 vaddq_s32(vmull_s16(vget_low_s16 (q8sums0.val[1]), vget_low_s16 (q6scales1.val[1])),
                                           vmull_s16(vget_high_s16(q8sums0.val[1]), vget_high_s16(q6scales1.val[1]))));
                bias[2] = vaddvq_s32(prod);
                prod = vaddq_s32(vaddq_s32(vmull_s16(vget_low_s16 (q8sums1.val[0]), vget_low_s16 (q6scales1.val[0])),
                                           vmull_s16(vget_high_s16(q8sums1.val[0]), vget_high_s16(q6scales1.val[0]))),
                                 vaddq_s32(vmull_s16(vget_low_s16 (q8sums1.val[1]), vget_low_s16 (q6scales1.val[1])),
                                           vmull_s16(vget_high_s16(q8sums1.val[1]), vget_high_s16(q6scales1.val[1]))));
                bias[3] = vaddvq_s32(prod);

#endif
                const int32x4_t vibias = vmulq_n_s32(vld1q_s32(bias), 32);

                const float32x4_t superblock_scale = {
                    GGML_FP16_TO_FP32(x0->d) * y0->d,
                    GGML_FP16_TO_FP32(x0->d) * y1->d,
                    GGML_FP16_TO_FP32(x1->d) * y0->d,
                    GGML_FP16_TO_FP32(x1->d) * y1->d,
                };

                visum = vsubq_s32(visum, vibias);
                vfsum = vmlaq_f32(vfsum, vcvtq_f32_s32(visum), superblock_scale);
            }
        }

        // vfsum = ABCD -> ACBD
        // AC -> s, BD -> (s+bs)
        vfsum = vzip1q_f32(vfsum, vextq_f32(vfsum, vfsum, 2));
        vst1_f32(s,      vget_low_f32 (vfsum));
        vst1_f32(s + bs, vget_high_f32(vfsum));

        return;
    }
#endif

#ifdef __ARM_FEATURE_SVE
    const int vector_length = ggml_cpu_get_sve_cnt()*8;
    float sum = 0;
    svuint8_t m4b = svdup_n_u8(0xf);
    svint32_t vzero = svdup_n_s32(0);
    svuint8_t mone = svdup_n_u8(0x30);
    svint8_t q6bytes_1, q6bytes_2, q6bytes_3, q6bytes_4;
    svuint8_t q6h_1, q6h_2, q6h_3, q6h_4;

    for (int i = 0; i < nb; ++i) {
        const float d_all = GGML_FP16_TO_FP32(x[i].d);

        const uint8_t * GGML_RESTRICT q6 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const int8_t * GGML_RESTRICT scale = x[i].scales;

        const svbool_t pg16_8 = svptrue_pat_b16(SV_VL8);
        const svint16_t q8sums_1 = svld1_s16(pg16_8, y[i].bsums);
        const svint16_t q8sums_2 = svld1_s16(pg16_8, y[i].bsums + 8);
        const svint16_t q6scales_1 = svunpklo_s16(svld1_s8(svptrue_pat_b8(SV_VL8), scale));
        const svint16_t q6scales_2 = svunpklo_s16(svld1_s8(svptrue_pat_b8(SV_VL8), scale + 8));
        const svint64_t prod = svdup_n_s64(0);
        int32_t isum_mins = svaddv_s64(svptrue_b64(), svadd_s64_x(svptrue_b64(), svdot_s64(prod, q8sums_1, q6scales_1),
                                                                                 svdot_s64(prod, q8sums_2, q6scales_2)));
        int32_t isum = 0;

        switch (vector_length) {
            case 128:
                {
                    const svbool_t pg32_4 = svptrue_pat_b32(SV_VL4);
                    const svbool_t pg8_16 = svptrue_pat_b8(SV_VL16);
                    svint32_t isum_tmp = svdup_n_s32(0);
                    for (int j = 0; j < QK_K/128; ++j) {
                        svuint8_t qhbits_1 = svld1_u8(pg8_16, qh);
                        svuint8_t qhbits_2 = svld1_u8(pg8_16, qh+16);
                        qh += 32;
                        svuint8_t q6bits_1 = svld1_u8(pg8_16, q6);
                        svuint8_t q6bits_2 = svld1_u8(pg8_16, q6+16);
                        svuint8_t q6bits_3 = svld1_u8(pg8_16, q6+32);
                        svuint8_t q6bits_4 = svld1_u8(pg8_16, q6+48);
                        q6 += 64;
                        svint8_t q8bytes_1 = svld1_s8(pg8_16, q8);
                        svint8_t q8bytes_2 = svld1_s8(pg8_16, q8+16);
                        svint8_t q8bytes_3 = svld1_s8(pg8_16, q8+32);
                        svint8_t q8bytes_4 = svld1_s8(pg8_16, q8+48);
                        q8 += 64;

                        q6h_1 = svand_u8_x(pg16_8, mone, svlsl_n_u8_x(pg16_8, qhbits_1, 4));
                        q6h_2 = svand_u8_x(pg16_8, mone, svlsl_n_u8_x(pg16_8, qhbits_2, 4));
                        q6h_3 = svand_u8_x(pg16_8, mone, svlsl_n_u8_x(pg16_8, qhbits_1, 2));
                        q6h_4 = svand_u8_x(pg16_8, mone, svlsl_n_u8_x(pg16_8, qhbits_2, 2));
                        q6bytes_1 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svand_u8_x(pg8_16, q6bits_1, m4b), q6h_1));
                        q6bytes_2 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svand_u8_x(pg8_16, q6bits_2, m4b), q6h_2));
                        q6bytes_3 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svand_u8_x(pg8_16, q6bits_3, m4b), q6h_3));
                        q6bytes_4 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svand_u8_x(pg8_16, q6bits_4, m4b), q6h_4));
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_1, q8bytes_1), scale[0]);
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_2, q8bytes_2), scale[1]);
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_3, q8bytes_3), scale[2]);
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_4, q8bytes_4), scale[3]);

                        scale += 4;
                        q8bytes_1 = svld1_s8(pg8_16, q8);
                        q8bytes_2 = svld1_s8(pg8_16, q8+16);
                        q8bytes_3 = svld1_s8(pg8_16, q8+32);
                        q8bytes_4 = svld1_s8(pg8_16, q8+48);
                        q8 += 64;

                        q6h_1 = svand_u8_x(pg16_8, mone, qhbits_1);
                        q6h_2 = svand_u8_x(pg16_8, mone, qhbits_2);
                        q6h_3 = svand_u8_x(pg16_8, mone, svlsr_n_u8_x(pg16_8, qhbits_1, 2));
                        q6h_4 = svand_u8_x(pg16_8, mone, svlsr_n_u8_x(pg16_8, qhbits_2, 2));
                        q6bytes_1 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svlsr_n_u8_x(pg8_16, q6bits_1, 4), q6h_1));
                        q6bytes_2 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svlsr_n_u8_x(pg8_16, q6bits_2, 4), q6h_2));
                        q6bytes_3 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svlsr_n_u8_x(pg8_16, q6bits_3, 4), q6h_3));
                        q6bytes_4 = svreinterpret_s8_u8(svorr_u8_x(pg8_16, svlsr_n_u8_x(pg8_16, q6bits_4, 4), q6h_4));
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_1, q8bytes_1), scale[0]);
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_2, q8bytes_2), scale[1]);
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_3, q8bytes_3), scale[2]);
                        isum_tmp = svmla_n_s32_x(pg32_4, isum_tmp, svdot_s32(vzero, q6bytes_4, q8bytes_4), scale[3]);
                        scale += 4;
                    }
                    isum += svaddv_s32(pg32_4, isum_tmp);
                    sum += d_all * y[i].d * (isum - 32 * isum_mins);
                }
                break;
            case 256:
            case 512:
                {
                    const svbool_t pg8_2 = svptrue_pat_b8(SV_VL2);
                    const svbool_t pg32_8 = svptrue_pat_b32(SV_VL8);
                    const svbool_t pg8_32 = svptrue_pat_b8(SV_VL32);
                    svint32_t isum_tmp = svdup_n_s32(0);
                    for (int j = 0; j < QK_K/128; j++) {
                        svuint8_t qhbits_1 = svld1_u8(pg8_32, qh);
                        qh += 32;
                        svuint8_t q6bits_1 = svld1_u8(pg8_32, q6);
                        svuint8_t q6bits_2 = svld1_u8(pg8_32, q6+32);
                        q6 += 64;
                        svint8_t q8bytes_1 = svld1_s8(pg8_32, q8);
                        svint8_t q8bytes_2 = svld1_s8(pg8_32, q8+32);
                        svint8_t q8bytes_3 = svld1_s8(pg8_32, q8+64);
                        svint8_t q8bytes_4 = svld1_s8(pg8_32, q8+96);
                        q8 += 128;
                        q6h_1 = svand_u8_x(pg8_32, mone, svlsl_n_u8_x(pg8_32, qhbits_1, 4));
                        q6h_2 = svand_u8_x(pg8_32, mone, svlsl_n_u8_x(pg8_32, qhbits_1, 2));
                        q6h_3 = svand_u8_x(pg8_32, mone, qhbits_1);
                        q6h_4 = svand_u8_x(pg8_32, mone, svlsr_n_u8_x(pg8_32, qhbits_1, 2));
                        q6bytes_1 = svreinterpret_s8_u8(svorr_u8_x(pg8_32, svand_u8_x(pg8_32, q6bits_1, m4b), q6h_1));
                        q6bytes_2 = svreinterpret_s8_u8(svorr_u8_x(pg8_32, svand_u8_x(pg8_32, q6bits_2, m4b), q6h_2));
                        q6bytes_3 = svreinterpret_s8_u8(svorr_u8_x(pg8_32, svlsr_n_u8_x(pg8_32, q6bits_1, 4), q6h_3));
                        q6bytes_4 = svreinterpret_s8_u8(svorr_u8_x(pg8_32, svlsr_n_u8_x(pg8_32, q6bits_2, 4), q6h_4));

                        svint8_t scale_lane_1_tmp = svld1_s8(pg8_2, scale);
                        scale_lane_1_tmp= svzip1_s8(scale_lane_1_tmp, scale_lane_1_tmp);
                        scale_lane_1_tmp= svzip1_s8(scale_lane_1_tmp, scale_lane_1_tmp);
                        svint8_t scale_lane_2_tmp = svld1_s8(pg8_2, scale+2);
                        scale_lane_2_tmp = svzip1_s8(scale_lane_2_tmp, scale_lane_2_tmp);
                        scale_lane_2_tmp = svzip1_s8(scale_lane_2_tmp, scale_lane_2_tmp);
                        svint8_t scale_lane_3_tmp = svld1_s8(pg8_2, scale+4);
                        scale_lane_3_tmp = svzip1_s8(scale_lane_3_tmp, scale_lane_3_tmp);
                        scale_lane_3_tmp = svzip1_s8(scale_lane_3_tmp, scale_lane_3_tmp);
                        svint8_t scale_lane_4_tmp = svld1_s8(pg8_2, scale+6);
                        scale_lane_4_tmp = svzip1_s8(scale_lane_4_tmp, scale_lane_4_tmp);
                        scale_lane_4_tmp = svzip1_s8(scale_lane_4_tmp, scale_lane_4_tmp);
                        svint32_t scale_lane_1 = svunpklo_s32(svunpklo_s16(scale_lane_1_tmp));
                        svint32_t scale_lane_2 = svunpklo_s32(svunpklo_s16(scale_lane_2_tmp));
                        svint32_t scale_lane_3 = svunpklo_s32(svunpklo_s16(scale_lane_3_tmp));
                        svint32_t scale_lane_4 = svunpklo_s32(svunpklo_s16(scale_lane_4_tmp));

                        isum_tmp = svmla_s32_x(pg32_8, isum_tmp, svdot_s32(vzero, q6bytes_1, q8bytes_1), scale_lane_1);
                        isum_tmp = svmla_s32_x(pg32_8, isum_tmp, svdot_s32(vzero, q6bytes_2, q8bytes_2), scale_lane_2);
                        isum_tmp = svmla_s32_x(pg32_8, isum_tmp, svdot_s32(vzero, q6bytes_3, q8bytes_3), scale_lane_3);
                        isum_tmp = svmla_s32_x(pg32_8, isum_tmp, svdot_s32(vzero, q6bytes_4, q8bytes_4), scale_lane_4);
                        scale += 8;
                    }
                    isum += svaddv_s32(pg32_8, isum_tmp);
                    sum += d_all * y[i].d * (isum - 32 * isum_mins);
                }
                break;
            default:
                assert(false && "Unsupported vector length");
                break;
        }
    }

    *s = sum;

#elif __ARM_NEON
    float sum = 0;

    const uint8x16_t m4b = vdupq_n_u8(0xF);
    const int32x4_t  vzero = vdupq_n_s32(0);
    //const int8x16_t  m32s = vdupq_n_s8(32);

    const uint8x16_t mone = vdupq_n_u8(3);

    ggml_int8x16x4_t q6bytes;
    ggml_uint8x16x4_t q6h;

    for (int i = 0; i < nb; ++i) {

        const float d_all = GGML_FP16_TO_FP32(x[i].d);

        const uint8_t * GGML_RESTRICT q6 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const int8_t * GGML_RESTRICT scale = x[i].scales;

        const ggml_int16x8x2_t q8sums = ggml_vld1q_s16_x2(y[i].bsums);
        const int8x16_t scales = vld1q_s8(scale);
        const ggml_int16x8x2_t q6scales = {{vmovl_s8(vget_low_s8(scales)), vmovl_s8(vget_high_s8(scales))}};

        const int32x4_t prod = vaddq_s32(vaddq_s32(vmull_s16(vget_low_s16 (q8sums.val[0]), vget_low_s16 (q6scales.val[0])),
                                                   vmull_s16(vget_high_s16(q8sums.val[0]), vget_high_s16(q6scales.val[0]))),
                                         vaddq_s32(vmull_s16(vget_low_s16 (q8sums.val[1]), vget_low_s16 (q6scales.val[1])),
                                                   vmull_s16(vget_high_s16(q8sums.val[1]), vget_high_s16(q6scales.val[1]))));
        int32_t isum_mins = vaddvq_s32(prod);

        int32_t isum = 0;

        for (int j = 0; j < QK_K/128; ++j) {

            ggml_uint8x16x2_t qhbits = ggml_vld1q_u8_x2(qh); qh += 32;
            ggml_uint8x16x4_t q6bits = ggml_vld1q_u8_x4(q6); q6 += 64;
            ggml_int8x16x4_t q8bytes = ggml_vld1q_s8_x4(q8); q8 += 64;

            q6h.val[0] = vshlq_n_u8(vandq_u8(mone, qhbits.val[0]), 4);
            q6h.val[1] = vshlq_n_u8(vandq_u8(mone, qhbits.val[1]), 4);
            uint8x16_t shifted = vshrq_n_u8(qhbits.val[0], 2);
            q6h.val[2] = vshlq_n_u8(vandq_u8(mone, shifted), 4);
            shifted = vshrq_n_u8(qhbits.val[1], 2);
            q6h.val[3] = vshlq_n_u8(vandq_u8(mone, shifted), 4);

            //q6bytes.val[0] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[0], m4b), q6h.val[0])), m32s);
            //q6bytes.val[1] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[1], m4b), q6h.val[1])), m32s);
            //q6bytes.val[2] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[2], m4b), q6h.val[2])), m32s);
            //q6bytes.val[3] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[3], m4b), q6h.val[3])), m32s);
            q6bytes.val[0] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[0], m4b), q6h.val[0]));
            q6bytes.val[1] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[1], m4b), q6h.val[1]));
            q6bytes.val[2] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[2], m4b), q6h.val[2]));
            q6bytes.val[3] = vreinterpretq_s8_u8(vorrq_u8(vandq_u8(q6bits.val[3], m4b), q6h.val[3]));

            isum += vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[0], q8bytes.val[0])) * scale[0] +
                    vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[1], q8bytes.val[1])) * scale[1] +
                    vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[2], q8bytes.val[2])) * scale[2] +
                    vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[3], q8bytes.val[3])) * scale[3];

            scale += 4;

            q8bytes = ggml_vld1q_s8_x4(q8); q8 += 64;

            shifted = vshrq_n_u8(qhbits.val[0], 4);
            q6h.val[0] = vshlq_n_u8(vandq_u8(mone, shifted), 4);
            shifted = vshrq_n_u8(qhbits.val[1], 4);
            q6h.val[1] = vshlq_n_u8(vandq_u8(mone, shifted), 4);
            shifted = vshrq_n_u8(qhbits.val[0], 6);
            q6h.val[2] = vshlq_n_u8(vandq_u8(mone, shifted), 4);
            shifted = vshrq_n_u8(qhbits.val[1], 6);
            q6h.val[3] = vshlq_n_u8(vandq_u8(mone, shifted), 4);

            //q6bytes.val[0] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[0], 4), q6h.val[0])), m32s);
            //q6bytes.val[1] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[1], 4), q6h.val[1])), m32s);
            //q6bytes.val[2] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[2], 4), q6h.val[2])), m32s);
            //q6bytes.val[3] = vsubq_s8(vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[3], 4), q6h.val[3])), m32s);
            q6bytes.val[0] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[0], 4), q6h.val[0]));
            q6bytes.val[1] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[1], 4), q6h.val[1]));
            q6bytes.val[2] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[2], 4), q6h.val[2]));
            q6bytes.val[3] = vreinterpretq_s8_u8(vorrq_u8(vshrq_n_u8(q6bits.val[3], 4), q6h.val[3]));

            isum += vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[0], q8bytes.val[0])) * scale[0] +
                    vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[1], q8bytes.val[1])) * scale[1] +
                    vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[2], q8bytes.val[2])) * scale[2] +
                    vaddvq_s32(ggml_vdotq_s32(vzero, q6bytes.val[3], q8bytes.val[3])) * scale[3];
            scale += 4;
        }
        //sum += isum * d_all * y[i].d;
        sum += d_all * y[i].d * (isum - 32 * isum_mins);

    }
    *s = sum;

#elif defined __AVX2__

    const __m256i m4 = _mm256_set1_epi8(0xF);
    const __m256i m2 = _mm256_set1_epi8(3);
    const __m256i m32s = _mm256_set1_epi8(32);

    __m256 acc = _mm256_setzero_ps();

    for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);

        const uint8_t * GGML_RESTRICT q4 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const __m128i scales = _mm_loadu_si128((const __m128i*)x[i].scales);

        __m256i sumi = _mm256_setzero_si256();

        int is = 0;

        for (int j = 0; j < QK_K/128; ++j) {

            const __m128i scale_0 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 0));
            const __m128i scale_1 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 1));
            const __m128i scale_2 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 2));
            const __m128i scale_3 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 3));
            is += 4;

            const __m256i q4bits1 = _mm256_loadu_si256((const __m256i*)q4); q4 += 32;
            const __m256i q4bits2 = _mm256_loadu_si256((const __m256i*)q4); q4 += 32;
            const __m256i q4bitsH = _mm256_loadu_si256((const __m256i*)qh); qh += 32;

            const __m256i q4h_0 = _mm256_slli_epi16(_mm256_and_si256(q4bitsH, m2), 4);
            const __m256i q4h_1 = _mm256_slli_epi16(_mm256_and_si256(_mm256_srli_epi16(q4bitsH, 2), m2), 4);
            const __m256i q4h_2 = _mm256_slli_epi16(_mm256_and_si256(_mm256_srli_epi16(q4bitsH, 4), m2), 4);
            const __m256i q4h_3 = _mm256_slli_epi16(_mm256_and_si256(_mm256_srli_epi16(q4bitsH, 6), m2), 4);

            const __m256i q4_0 = _mm256_or_si256(_mm256_and_si256(q4bits1, m4), q4h_0);
            const __m256i q4_1 = _mm256_or_si256(_mm256_and_si256(q4bits2, m4), q4h_1);
            const __m256i q4_2 = _mm256_or_si256(_mm256_and_si256(_mm256_srli_epi16(q4bits1, 4), m4), q4h_2);
            const __m256i q4_3 = _mm256_or_si256(_mm256_and_si256(_mm256_srli_epi16(q4bits2, 4), m4), q4h_3);

            const __m256i q8_0 = _mm256_loadu_si256((const __m256i*)q8); q8 += 32;
            const __m256i q8_1 = _mm256_loadu_si256((const __m256i*)q8); q8 += 32;
            const __m256i q8_2 = _mm256_loadu_si256((const __m256i*)q8); q8 += 32;
            const __m256i q8_3 = _mm256_loadu_si256((const __m256i*)q8); q8 += 32;

            __m256i q8s_0 = _mm256_maddubs_epi16(m32s, q8_0);
            __m256i q8s_1 = _mm256_maddubs_epi16(m32s, q8_1);
            __m256i q8s_2 = _mm256_maddubs_epi16(m32s, q8_2);
            __m256i q8s_3 = _mm256_maddubs_epi16(m32s, q8_3);

            __m256i p16_0 = _mm256_maddubs_epi16(q4_0, q8_0);
            __m256i p16_1 = _mm256_maddubs_epi16(q4_1, q8_1);
            __m256i p16_2 = _mm256_maddubs_epi16(q4_2, q8_2);
            __m256i p16_3 = _mm256_maddubs_epi16(q4_3, q8_3);

            p16_0 = _mm256_sub_epi16(p16_0, q8s_0);
            p16_1 = _mm256_sub_epi16(p16_1, q8s_1);
            p16_2 = _mm256_sub_epi16(p16_2, q8s_2);
            p16_3 = _mm256_sub_epi16(p16_3, q8s_3);

            p16_0 = _mm256_madd_epi16(_mm256_cvtepi8_epi16(scale_0), p16_0);
            p16_1 = _mm256_madd_epi16(_mm256_cvtepi8_epi16(scale_1), p16_1);
            p16_2 = _mm256_madd_epi16(_mm256_cvtepi8_epi16(scale_2), p16_2);
            p16_3 = _mm256_madd_epi16(_mm256_cvtepi8_epi16(scale_3), p16_3);

            sumi = _mm256_add_epi32(sumi, _mm256_add_epi32(p16_0, p16_1));
            sumi = _mm256_add_epi32(sumi, _mm256_add_epi32(p16_2, p16_3));

        }

        acc = _mm256_fmadd_ps(_mm256_broadcast_ss(&d), _mm256_cvtepi32_ps(sumi), acc);
    }

    *s = hsum_float_8(acc);

#elif defined __AVX__

    const __m128i m3 = _mm_set1_epi8(3);
    const __m128i m15 = _mm_set1_epi8(15);

    __m256 acc = _mm256_setzero_ps();

    for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);

        const uint8_t * GGML_RESTRICT q4 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        // handle the q6_k -32 offset separately using bsums
        const __m128i q8sums_0 = _mm_loadu_si128((const __m128i*)y[i].bsums);
        const __m128i q8sums_1 = _mm_loadu_si128((const __m128i*)y[i].bsums + 1);
        const __m128i scales = _mm_loadu_si128((const __m128i*)x[i].scales);
        const __m128i scales_16_0 = _mm_cvtepi8_epi16(scales);
        const __m128i scales_16_1 = _mm_cvtepi8_epi16(_mm_bsrli_si128(scales, 8));
        const __m128i q8sclsub_0 = _mm_slli_epi32(_mm_madd_epi16(q8sums_0, scales_16_0), 5);
        const __m128i q8sclsub_1 = _mm_slli_epi32(_mm_madd_epi16(q8sums_1, scales_16_1), 5);

        __m128i sumi_0 = _mm_setzero_si128();
        __m128i sumi_1 = _mm_setzero_si128();

        int is = 0;

        for (int j = 0; j < QK_K/128; ++j) {

            const __m128i q4bitsH_0 = _mm_loadu_si128((const __m128i*)qh); qh += 16;
            const __m128i q4bitsH_1 = _mm_loadu_si128((const __m128i*)qh); qh += 16;

            const __m128i q4h_0 = _mm_slli_epi16(_mm_and_si128(q4bitsH_0, m3), 4);
            const __m128i q4h_1 = _mm_slli_epi16(_mm_and_si128(q4bitsH_1, m3), 4);
            const __m128i q4h_2 = _mm_slli_epi16(_mm_and_si128(q4bitsH_0, _mm_set1_epi8(12)), 2);
            const __m128i q4h_3 = _mm_slli_epi16(_mm_and_si128(q4bitsH_1, _mm_set1_epi8(12)), 2);
            const __m128i q4h_4 = _mm_and_si128(q4bitsH_0, _mm_set1_epi8(48));
            const __m128i q4h_5 = _mm_and_si128(q4bitsH_1, _mm_set1_epi8(48));
            const __m128i q4h_6 = _mm_srli_epi16(_mm_and_si128(q4bitsH_0, _mm_set1_epi8(-64)), 2);
            const __m128i q4h_7 = _mm_srli_epi16(_mm_and_si128(q4bitsH_1, _mm_set1_epi8(-64)), 2);

            const __m128i q4bits1_0 = _mm_loadu_si128((const __m128i*)q4); q4 += 16;
            const __m128i q4bits1_1 = _mm_loadu_si128((const __m128i*)q4); q4 += 16;
            const __m128i q4bits2_0 = _mm_loadu_si128((const __m128i*)q4); q4 += 16;
            const __m128i q4bits2_1 = _mm_loadu_si128((const __m128i*)q4); q4 += 16;

            const __m128i q4_0 = _mm_or_si128(_mm_and_si128(q4bits1_0, m15), q4h_0);
            const __m128i q4_1 = _mm_or_si128(_mm_and_si128(q4bits1_1, m15), q4h_1);
            const __m128i q4_2 = _mm_or_si128(_mm_and_si128(q4bits2_0, m15), q4h_2);
            const __m128i q4_3 = _mm_or_si128(_mm_and_si128(q4bits2_1, m15), q4h_3);
            const __m128i q4_4 = _mm_or_si128(_mm_and_si128(_mm_srli_epi16(q4bits1_0, 4), m15), q4h_4);
            const __m128i q4_5 = _mm_or_si128(_mm_and_si128(_mm_srli_epi16(q4bits1_1, 4), m15), q4h_5);
            const __m128i q4_6 = _mm_or_si128(_mm_and_si128(_mm_srli_epi16(q4bits2_0, 4), m15), q4h_6);
            const __m128i q4_7 = _mm_or_si128(_mm_and_si128(_mm_srli_epi16(q4bits2_1, 4), m15), q4h_7);

            const __m128i q8_0 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_1 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_2 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_3 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_4 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_5 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_6 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            const __m128i q8_7 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;

            __m128i p16_0 = _mm_maddubs_epi16(q4_0, q8_0);
            __m128i p16_1 = _mm_maddubs_epi16(q4_1, q8_1);
            __m128i p16_2 = _mm_maddubs_epi16(q4_2, q8_2);
            __m128i p16_3 = _mm_maddubs_epi16(q4_3, q8_3);
            __m128i p16_4 = _mm_maddubs_epi16(q4_4, q8_4);
            __m128i p16_5 = _mm_maddubs_epi16(q4_5, q8_5);
            __m128i p16_6 = _mm_maddubs_epi16(q4_6, q8_6);
            __m128i p16_7 = _mm_maddubs_epi16(q4_7, q8_7);

            const __m128i scale_0 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 0));
            const __m128i scale_1 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 1));
            const __m128i scale_2 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 2));
            const __m128i scale_3 = _mm_shuffle_epi8(scales, get_scale_shuffle(is + 3));
            is += 4;

            p16_0 = _mm_madd_epi16(_mm_cvtepi8_epi16(scale_0), p16_0);
            p16_1 = _mm_madd_epi16(_mm_cvtepi8_epi16(_mm_bsrli_si128(scale_0, 8)), p16_1);
            p16_2 = _mm_madd_epi16(_mm_cvtepi8_epi16(scale_1), p16_2);
            p16_3 = _mm_madd_epi16(_mm_cvtepi8_epi16(_mm_bsrli_si128(scale_1, 8)), p16_3);
            p16_4 = _mm_madd_epi16(_mm_cvtepi8_epi16(scale_2), p16_4);
            p16_5 = _mm_madd_epi16(_mm_cvtepi8_epi16(_mm_bsrli_si128(scale_2, 8)), p16_5);
            p16_6 = _mm_madd_epi16(_mm_cvtepi8_epi16(scale_3), p16_6);
            p16_7 = _mm_madd_epi16(_mm_cvtepi8_epi16(_mm_bsrli_si128(scale_3, 8)), p16_7);

            sumi_0 = _mm_add_epi32(sumi_0, _mm_add_epi32(p16_0, p16_2));
            sumi_1 = _mm_add_epi32(sumi_1, _mm_add_epi32(p16_1, p16_3));
            sumi_0 = _mm_add_epi32(sumi_0, _mm_add_epi32(p16_4, p16_6));
            sumi_1 = _mm_add_epi32(sumi_1, _mm_add_epi32(p16_5, p16_7));

        }

        sumi_0 = _mm_sub_epi32(sumi_0, q8sclsub_0);
        sumi_1 = _mm_sub_epi32(sumi_1, q8sclsub_1);
        const __m256i sumi = MM256_SET_M128I(sumi_1, sumi_0);
        acc = _mm256_add_ps(_mm256_mul_ps(_mm256_set1_ps(d), _mm256_cvtepi32_ps(sumi)), acc);
    }

    *s = hsum_float_8(acc);

#elif defined __wasm_simd128__
    int8_t aux8[QK_K] __attribute__((aligned(16)));
    int32_t aux32[8] __attribute__((aligned(16))) = {0};
    float sums[8] __attribute__((aligned(16))) = {0};

    for (int i = 0; i < nb; ++i) {
        // Unpack 6-bit quantized data into aux8 (unchanged)
        const uint8_t * GGML_RESTRICT q4 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        int8_t * a = aux8;
        for (int j = 0; j < QK_K; j += 128) {
            for (int l = 0; l < 32; ++l) {
                a[l +  0] = (int8_t)((q4[l +  0] & 0xF) | (((qh[l] >> 0) & 3) << 4)) - 32;
                a[l + 32] = (int8_t)((q4[l + 32] & 0xF) | (((qh[l] >> 2) & 3) << 4)) - 32;
                a[l + 64] = (int8_t)((q4[l +  0] >>  4) | (((qh[l] >> 4) & 3) << 4)) - 32;
                a[l + 96] = (int8_t)((q4[l + 32] >>  4) | (((qh[l] >> 6) & 3) << 4)) - 32;
            }
            a += 128;
            q4 += 64;
            qh += 32;
        }

        const int8_t * GGML_RESTRICT a_ptr = aux8;
        const int8_t * GGML_RESTRICT q8 = y[i].qs;
        v128_t acc0 = wasm_i32x4_splat(0);
        v128_t acc1 = wasm_i32x4_splat(0);

        for (int j = 0; j < QK_K/16; ++j) {
            const int scale = x[i].scales[j];
            const v128_t vscale = wasm_i32x4_splat(scale);

            // Load 16 elements from a and q8
            const v128_t a_vec = wasm_v128_load(a_ptr);
            const v128_t q8_vec = wasm_v128_load(q8);

            // Process low 8 elements
            v128_t a_low = wasm_i16x8_extend_low_i8x16(a_vec);
            v128_t q8_low = wasm_i16x8_extend_low_i8x16(q8_vec);
            v128_t prod_low = wasm_i16x8_mul(a_low, q8_low);
            v128_t prod_lo_lo = wasm_i32x4_extend_low_i16x8(prod_low);
            v128_t prod_lo_hi = wasm_i32x4_extend_high_i16x8(prod_low);

            // Process high 8 elements
            v128_t a_high = wasm_i16x8_extend_high_i8x16(a_vec);
            v128_t q8_high = wasm_i16x8_extend_high_i8x16(q8_vec);
            v128_t prod_high = wasm_i16x8_mul(a_high, q8_high);
            v128_t prod_hi_lo = wasm_i32x4_extend_low_i16x8(prod_high);
            v128_t prod_hi_hi = wasm_i32x4_extend_high_i16x8(prod_high);

            // Scale and accumulate
            prod_lo_lo = wasm_i32x4_mul(prod_lo_lo, vscale);
            prod_lo_hi = wasm_i32x4_mul(prod_lo_hi, vscale);
            prod_hi_lo = wasm_i32x4_mul(prod_hi_lo, vscale);
            prod_hi_hi = wasm_i32x4_mul(prod_hi_hi, vscale);

            acc0 = wasm_i32x4_add(acc0, wasm_i32x4_add(prod_lo_lo, prod_hi_lo));
            acc1 = wasm_i32x4_add(acc1, wasm_i32x4_add(prod_lo_hi, prod_hi_hi));

            a_ptr += 16;
            q8 += 16;
        }

        // Store accumulated results
        wasm_v128_store(&aux32[0], acc0);
        wasm_v128_store(&aux32[4], acc1);

        const float d = GGML_FP16_TO_FP32(x[i].d) * y[i].d;
        for (int l = 0; l < 8; ++l) {
            sums[l] += d * aux32[l];
        }
    }

    // Sum final results
    float sumf = 0;
    for (int l = 0; l < 8; ++l) {
        sumf += sums[l];
    }
    *s = sumf;

#elif defined __riscv_v_intrinsic

    const int vector_length = __riscv_vlenb() * 8;
    float sumf = 0;

    switch (vector_length) {
    case 256:
        for (int i = 0; i < nb; ++i) {

            const float d = GGML_FP16_TO_FP32(x[i].d) * y[i].d;

            const uint8_t * GGML_RESTRICT q6 = x[i].ql;
            const uint8_t * GGML_RESTRICT qh = x[i].qh;
            const  int8_t * GGML_RESTRICT q8 = y[i].qs;

            const int8_t * GGML_RESTRICT scale = x[i].scales;

            size_t vl;

            vint32m1_t vzero = __riscv_vmv_v_x_i32m1(0, 1);

            int sum_t = 0;
            int is = 0;

            for (int j = 0; j < QK_K/128; ++j) {

                vl = 32;

                // load qh
                vuint8m1_t qh_x = __riscv_vle8_v_u8m1(qh, vl);

                // load Q6
                vuint8m1_t q6_0 = __riscv_vle8_v_u8m1(q6, vl);
                vuint8m1_t q6_1 = __riscv_vle8_v_u8m1(q6+32, vl);

                vuint8m1_t q6a_0 = __riscv_vand_vx_u8m1(q6_0, 0x0F, vl);
                vuint8m1_t q6a_1 = __riscv_vand_vx_u8m1(q6_1, 0x0F, vl);
                vuint8m1_t q6s_0 = __riscv_vsrl_vx_u8m1(q6_0, 0x04, vl);
                vuint8m1_t q6s_1 = __riscv_vsrl_vx_u8m1(q6_1, 0x04, vl);

                vuint8m1_t qh_0 = __riscv_vand_vx_u8m1(qh_x, 0x03, vl);
                vuint8m1_t qh_1 = __riscv_vand_vx_u8m1(__riscv_vsrl_vx_u8m1(qh_x, 0x2, vl), 0x03 , vl);
                vuint8m1_t qh_2 = __riscv_vand_vx_u8m1(__riscv_vsrl_vx_u8m1(qh_x, 0x4, vl), 0x03 , vl);
                vuint8m1_t qh_3 = __riscv_vand_vx_u8m1(__riscv_vsrl_vx_u8m1(qh_x, 0x6, vl), 0x03 , vl);

                vuint8m1_t qhi_0 = __riscv_vor_vv_u8m1(q6a_0, __riscv_vsll_vx_u8m1(qh_0, 0x04, vl), vl);
                vuint8m1_t qhi_1 = __riscv_vor_vv_u8m1(q6a_1, __riscv_vsll_vx_u8m1(qh_1, 0x04, vl), vl);
                vuint8m1_t qhi_2 = __riscv_vor_vv_u8m1(q6s_0, __riscv_vsll_vx_u8m1(qh_2, 0x04, vl), vl);
                vuint8m1_t qhi_3 = __riscv_vor_vv_u8m1(q6s_1, __riscv_vsll_vx_u8m1(qh_3, 0x04, vl), vl);

                vint8m1_t a_0 = __riscv_vsub_vx_i8m1(__riscv_vreinterpret_v_u8m1_i8m1(qhi_0), 32, vl);
                vint8m1_t a_1 = __riscv_vsub_vx_i8m1(__riscv_vreinterpret_v_u8m1_i8m1(qhi_1), 32, vl);
                vint8m1_t a_2 = __riscv_vsub_vx_i8m1(__riscv_vreinterpret_v_u8m1_i8m1(qhi_2), 32, vl);
                vint8m1_t a_3 = __riscv_vsub_vx_i8m1(__riscv_vreinterpret_v_u8m1_i8m1(qhi_3), 32, vl);

                // load Q8 and take product
                vint16m2_t va_q_0 = __riscv_vwmul_vv_i16m2(a_0, __riscv_vle8_v_i8m1(q8, vl), vl);
                vint16m2_t va_q_1 = __riscv_vwmul_vv_i16m2(a_1, __riscv_vle8_v_i8m1(q8+32, vl), vl);
                vint16m2_t va_q_2 = __riscv_vwmul_vv_i16m2(a_2, __riscv_vle8_v_i8m1(q8+64, vl), vl);
                vint16m2_t va_q_3 = __riscv_vwmul_vv_i16m2(a_3, __riscv_vle8_v_i8m1(q8+96, vl), vl);

                vl = 16;

                vint32m2_t vaux_0 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_0, 0), scale[is+0], vl);
                vint32m2_t vaux_1 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_0, 1), scale[is+1], vl);
                vint32m2_t vaux_2 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_1, 0), scale[is+2], vl);
                vint32m2_t vaux_3 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_1, 1), scale[is+3], vl);
                vint32m2_t vaux_4 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_2, 0), scale[is+4], vl);
                vint32m2_t vaux_5 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_2, 1), scale[is+5], vl);
                vint32m2_t vaux_6 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_3, 0), scale[is+6], vl);
                vint32m2_t vaux_7 = __riscv_vwmul_vx_i32m2(__riscv_vget_v_i16m2_i16m1(va_q_3, 1), scale[is+7], vl);

                vint32m1_t isum0 = __riscv_vredsum_vs_i32m2_i32m1(__riscv_vadd_vv_i32m2(vaux_0, vaux_1, vl), vzero, vl);
                vint32m1_t isum1 = __riscv_vredsum_vs_i32m2_i32m1(__riscv_vadd_vv_i32m2(vaux_2, vaux_3, vl), isum0, vl);
                vint32m1_t isum2 = __riscv_vredsum_vs_i32m2_i32m1(__riscv_vadd_vv_i32m2(vaux_4, vaux_5, vl), isum1, vl);
                vint32m1_t isum3 = __riscv_vredsum_vs_i32m2_i32m1(__riscv_vadd_vv_i32m2(vaux_6, vaux_7, vl), isum2, vl);

                sum_t += __riscv_vmv_x_s_i32m1_i32(isum3);

                q6 += 64;   qh += 32;   q8 += 128;   is=8;

            }

            sumf += d * sum_t;

        }
        break;
    case 128:
        for (int i = 0; i < nb; ++i) {

            const float d = GGML_FP16_TO_FP32(x[i].d) * y[i].d;

            const uint8_t * restrict q6 = x[i].ql;
            const uint8_t * restrict qh = x[i].qh;
            const  int8_t * restrict q8 = y[i].qs;

            const int8_t * restrict scale = x[i].scales;

            int sum_t = 0;
            int t0;

            for (int j = 0; j < QK_K/128; ++j) {
                __asm__ __volatile__(
                    "vsetvli zero, %[vl32], e8, m2\n\t"
                    "vle8.v v4, (%[qh])\n\t"
                    "vsll.vi v0, v4, 4\n\t"
                    "vsll.vi v2, v4, 2\n\t"
                    "vsrl.vi v6, v4, 2\n\t"
                    "vsetvli zero, %[vl64], e8, m4\n\t"
                    "vle8.v v8, (%[q6])\n\t"
                    "vsrl.vi v12, v8, 4\n\t"
                    "vand.vi v8, v8, 0xF\n\t"
                    "vsetvli zero, %[vl128], e8, m8\n\t"
                    "vand.vx v0, v0, %[mask]\n\t"
                    "vor.vv v8, v8, v0\n\t"
                    "vle8.v v0, (%[q8])\n\t"
                    "vsub.vx v8, v8, %[vl32]\n\t"
                    "vsetvli zero, %[vl64], e8, m4\n\t"
                    "vwmul.vv v16, v0, v8\n\t"
                    "vwmul.vv v24, v4, v12\n\t"
                    "vsetivli zero, 16, e16, m2\n\t"
                    "vmv.v.x v0, zero\n\t"
                    "vwredsum.vs v10, v16, v0\n\t"
                    "vwredsum.vs v9, v18, v0\n\t"
                    "vwredsum.vs v8, v20, v0\n\t"
                    "vwredsum.vs v7, v22, v0\n\t"
                    "vwredsum.vs v11, v24, v0\n\t"
                    "vwredsum.vs v12, v26, v0\n\t"
                    "vwredsum.vs v13, v28, v0\n\t"
                    "vwredsum.vs v14, v30, v0\n\t"
                    "vsetivli zero, 4, e32, m1\n\t"
                    "vslideup.vi v10, v9, 1\n\t"
                    "vslideup.vi v8, v7, 1\n\t"
                    "vslideup.vi v11, v12, 1\n\t"
                    "vslideup.vi v13, v14, 1\n\t"
                    "vslideup.vi v10, v8, 2\n\t"
                    "vslideup.vi v11, v13, 2\n\t"
                    "vsetivli zero, 8, e32, m2\n\t"
                    "vle8.v v2, (%[scale])\n\t"
                    "vsext.vf4 v4, v2\n\t"
                    "vmul.vv v2, v4, v10\n\t"
                    "vredsum.vs v0, v2, v0\n\t"
                    "vmv.x.s %[t0], v0\n\t"
                    "add %[sumi], %[sumi], %[t0]"
                    : [sumi] "+&r" (sum_t), [t0] "=&r" (t0)
                    : [qh] "r" (qh), [q6] "r" (q6), [q8] "r" (q8), [scale] "r" (scale)
                    , [vl32] "r" (32), [vl64] "r" (64), [vl128] "r" (128)
                    , [mask] "r" (0x30)
                    : "memory"
                    , "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7"
                    , "v8", "v9", "v10", "v11", "v12", "v13", "v14", "v15"
                    , "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23"
                    , "v24", "v25", "v26", "v27", "v28", "v29", "v30", "v31"
                );
                q6 += 64;   qh += 32;   q8 += 128;   scale += 8;
            }

            sumf += d * sum_t;

        }
        break;
    default:
        assert(false && "Unsupported vector length");
        break;
    }

    *s = sumf;

#elif defined(__POWER9_VECTOR__)
    const vector signed char lowMask = vec_splats((signed char)0xF);
    const vector int v0 = vec_splats((int32_t)0);
    const vector unsigned char v2 = vec_splats((unsigned char)0x2);
    const vector unsigned char v3 = vec_splats((unsigned char)0x3);
    const vector unsigned char v4 = vec_splats((unsigned char)0x4);
    const vector unsigned char v6 = vec_splats((unsigned char)0x6);
    const vector signed char off = vec_splats((signed char)0x20);

    vector float vsumf0 = vec_splats(0.0f);
    vector float vsumf1 = vec_splats(0.0f);
    vector float vsumf2 = vec_splats(0.0f);
    vector float vsumf3 = vec_splats(0.0f);

    for (int i = 0; i < nb; ++i) {
        vector float vxd = vec_splats(GGML_FP16_TO_FP32(x[i].d));
        vector float vyd = vec_splats(y[i].d);
        vector float vd = vec_mul(vxd, vyd);

        vector signed int vsumi0 = v0;
        vector signed int vsumi1 = v0;
        vector signed int vsumi2 = v0;
        vector signed int vsumi3 = v0;
        vector signed int vsumi4 = v0;
        vector signed int vsumi5 = v0;
        vector signed int vsumi6 = v0;
        vector signed int vsumi7 = v0;

        const uint8_t * GGML_RESTRICT q6 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const int8_t  * GGML_RESTRICT qs = x[i].scales;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        for (int j = 0; j < QK_K/128; ++j) {
            __builtin_prefetch(q6, 0, 0);
            __builtin_prefetch(qh, 0, 0);
            __builtin_prefetch(q8, 0, 0);

            vector signed char qxs0 = (vector signed char)vec_xl( 0, q6);
            vector signed char qxs1 = (vector signed char)vec_xl(16, q6);
            vector signed char qxs2 = (vector signed char)vec_xl(32, q6);
            vector signed char qxs3 = (vector signed char)vec_xl(48, q6);
            q6 += 64;

            vector signed char qxs00 = vec_and(qxs0, lowMask);
            vector signed char qxs01 = vec_sr(qxs0, v4);
            vector signed char qxs10 = vec_and(qxs1, lowMask);
            vector signed char qxs11 = vec_sr(qxs1, v4);
            vector signed char qxs20 = vec_and(qxs2, lowMask);
            vector signed char qxs21 = vec_sr(qxs2, v4);
            vector signed char qxs30 = vec_and(qxs3, lowMask);
            vector signed char qxs31 = vec_sr(qxs3, v4);

            vector signed char qxhs0 = (vector signed char)vec_xl( 0, qh);
            vector signed char qxhs1 = (vector signed char)vec_xl(16, qh);
            qh += 32;

            vector signed char qxh00 = vec_sl(vec_and((vector signed char)v3, qxhs0), v4);
            vector signed char qxh01 = vec_sl(vec_and((vector signed char)v3, vec_sr(qxhs0, v4)), v4);
            vector signed char qxh10 = vec_sl(vec_and((vector signed char)v3, qxhs1), v4);
            vector signed char qxh11 = vec_sl(vec_and((vector signed char)v3, vec_sr(qxhs1, v4)), v4);
            vector signed char qxh20 = vec_sl(vec_and((vector signed char)v3, vec_sr(qxhs0, v2)), v4);
            vector signed char qxh21 = vec_sl(vec_and((vector signed char)v3, vec_sr(qxhs0, v6)), v4);
            vector signed char qxh30 = vec_sl(vec_and((vector signed char)v3, vec_sr(qxhs1, v2)), v4);
            vector signed char qxh31 = vec_sl(vec_and((vector signed char)v3, vec_sr(qxhs1, v6)), v4);

            vector signed char q6x00 = vec_sub(vec_or(qxh00, qxs00), off);
            vector signed char q6x01 = vec_sub(vec_or(qxh01, qxs01), off);
            vector signed char q6x10 = vec_sub(vec_or(qxh10, qxs10), off);
            vector signed char q6x11 = vec_sub(vec_or(qxh11, qxs11), off);
            vector signed char q6x20 = vec_sub(vec_or(qxh20, qxs20), off);
            vector signed char q6x21 = vec_sub(vec_or(qxh21, qxs21), off);
            vector signed char q6x30 = vec_sub(vec_or(qxh30, qxs30), off);
            vector signed char q6x31 = vec_sub(vec_or(qxh31, qxs31), off);

            vector signed char q8y00 = vec_xl(  0, q8);
            vector signed char q8y10 = vec_xl( 16, q8);
            vector signed char q8y20 = vec_xl( 32, q8);
            vector signed char q8y30 = vec_xl( 48, q8);
            vector signed char q8y01 = vec_xl( 64, q8);
            vector signed char q8y11 = vec_xl( 80, q8);
            vector signed char q8y21 = vec_xl( 96, q8);
            vector signed char q8y31 = vec_xl(112, q8);
            q8 += 128;

            vector signed short qv00 = vec_add(vec_mule(q6x00, q8y00), vec_mulo(q6x00, q8y00));
            vector signed short qv10 = vec_add(vec_mule(q6x10, q8y10), vec_mulo(q6x10, q8y10));
            vector signed short qv20 = vec_add(vec_mule(q6x20, q8y20), vec_mulo(q6x20, q8y20));
            vector signed short qv30 = vec_add(vec_mule(q6x30, q8y30), vec_mulo(q6x30, q8y30));
            vector signed short qv01 = vec_add(vec_mule(q6x01, q8y01), vec_mulo(q6x01, q8y01));
            vector signed short qv11 = vec_add(vec_mule(q6x11, q8y11), vec_mulo(q6x11, q8y11));
            vector signed short qv21 = vec_add(vec_mule(q6x21, q8y21), vec_mulo(q6x21, q8y21));
            vector signed short qv31 = vec_add(vec_mule(q6x31, q8y31), vec_mulo(q6x31, q8y31));

            vector signed short vscales = vec_unpackh(vec_xl_len(qs, 8));
            qs += 8;

            vector signed short vs0 = vec_splat(vscales, 0);
            vector signed short vs1 = vec_splat(vscales, 1);
            vector signed short vs2 = vec_splat(vscales, 2);
            vector signed short vs3 = vec_splat(vscales, 3);
            vector signed short vs4 = vec_splat(vscales, 4);
            vector signed short vs5 = vec_splat(vscales, 5);
            vector signed short vs6 = vec_splat(vscales, 6);
            vector signed short vs7 = vec_splat(vscales, 7);

            vsumi0 = vec_msum(qv00, vs0, vsumi0);
            vsumi1 = vec_msum(qv01, vs4, vsumi1);
            vsumi2 = vec_msum(qv10, vs1, vsumi2);
            vsumi3 = vec_msum(qv11, vs5, vsumi3);
            vsumi4 = vec_msum(qv20, vs2, vsumi4);
            vsumi5 = vec_msum(qv21, vs6, vsumi5);
            vsumi6 = vec_msum(qv30, vs3, vsumi6);
            vsumi7 = vec_msum(qv31, vs7, vsumi7);
        }

        vsumi0 = vec_add(vsumi0, vsumi4);
        vsumi1 = vec_add(vsumi1, vsumi5);
        vsumi2 = vec_add(vsumi2, vsumi6);
        vsumi3 = vec_add(vsumi3, vsumi7);

        vsumf0 = vec_madd(vec_ctf(vsumi0, 0), vd, vsumf0);
        vsumf1 = vec_madd(vec_ctf(vsumi1, 0), vd, vsumf1);
        vsumf2 = vec_madd(vec_ctf(vsumi2, 0), vd, vsumf2);
        vsumf3 = vec_madd(vec_ctf(vsumi3, 0), vd, vsumf3);
    }

    vsumf0 = vec_add(vsumf0, vsumf2);
    vsumf1 = vec_add(vsumf1, vsumf3);

    vsumf0 = vec_add(vsumf0, vsumf1);

    vsumf0 = vec_add(vsumf0, vec_sld(vsumf0, vsumf0, 4));
    vsumf0 = vec_add(vsumf0, vec_sld(vsumf0, vsumf0, 8));

    *s = vec_extract(vsumf0, 0);

#elif defined __loongarch_asx

    const __m256i m32s = __lasx_xvreplgr2vr_b(32);

    __m256 acc = (__m256)__lasx_xvldi(0);

    for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);

        const uint8_t * GGML_RESTRICT q4 = x[i].ql;
        const uint8_t * GGML_RESTRICT qh = x[i].qh;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const __m128i scales128 = __lsx_vld((const __m128i*)x[i].scales, 0);
        const v16i8 shuffle_mask = {0, 2, 4, 6, 8, 10, 12, 14, 1, 3, 5, 7, 9, 11, 13, 15};
        const __m256i scales_shuffled = lasx_ext8_16(__lsx_vshuf_b(scales128, scales128, (__m128i)shuffle_mask));

        __m256i sumi = __lasx_xvldi(0);

        for (int j = 0; j < QK_K/128; ++j) {

            const __m256i q4bits1 = __lasx_xvld((const __m256i*)q4, 0); q4 += 32;
            const __m256i q4bits2 = __lasx_xvld((const __m256i*)q4, 0); q4 += 32;
            const __m256i q4bitsH = __lasx_xvld((const __m256i*)qh, 0); qh += 32;

            const __m256i q4h_0 = __lasx_xvslli_b(__lasx_xvandi_b(q4bitsH, 3), 4);
            const __m256i q4h_1 = __lasx_xvslli_b(__lasx_xvandi_b(q4bitsH, 3 << 2), 2);
            const __m256i q4h_2 = __lasx_xvandi_b(q4bitsH, 3 << 4);
            const __m256i q4h_3 = __lasx_xvsrli_b(__lasx_xvandi_b(q4bitsH, 3 << 6), 2);

            const __m256i q4_0 = __lasx_xvor_v(__lasx_xvandi_b(q4bits1, 0xf), q4h_0);
            const __m256i q4_1 = __lasx_xvor_v(__lasx_xvandi_b(q4bits2, 0xf), q4h_1);
            const __m256i q4_2 = __lasx_xvor_v(__lasx_xvsrli_b(q4bits1, 4), q4h_2);
            const __m256i q4_3 = __lasx_xvor_v(__lasx_xvsrli_b(q4bits2, 4), q4h_3);

            const __m256i q8_0 = __lasx_xvld((const __m256i*)q8, 0); q8 += 32;
            const __m256i q8_1 = __lasx_xvld((const __m256i*)q8, 0); q8 += 32;
            const __m256i q8_2 = __lasx_xvld((const __m256i*)q8, 0); q8 += 32;
            const __m256i q8_3 = __lasx_xvld((const __m256i*)q8, 0); q8 += 32;

            __m256i p16_0 = lasx_madd_h_b(__lasx_xvsub_b(q4_0, m32s), q8_0);
            __m256i p16_1 = lasx_madd_h_b(__lasx_xvsub_b(q4_1, m32s), q8_1);
            __m256i p16_2 = lasx_madd_h_b(__lasx_xvsub_b(q4_2, m32s), q8_2);
            __m256i p16_3 = lasx_madd_h_b(__lasx_xvsub_b(q4_3, m32s), q8_3);

            p16_0 = lasx_madd_h(lasx_xvrepl128vei_h(scales_shuffled, 4 * j + 0), p16_0);
            p16_1 = lasx_madd_h(lasx_xvrepl128vei_h(scales_shuffled, 4 * j + 1), p16_1);
            p16_2 = lasx_madd_h(lasx_xvrepl128vei_h(scales_shuffled, 4 * j + 2), p16_2);
            p16_3 = lasx_madd_h(lasx_xvrepl128vei_h(scales_shuffled, 4 * j + 3), p16_3);

            sumi = __lasx_xvadd_w(sumi, __lasx_xvadd_w(p16_0, p16_1));
            sumi = __lasx_xvadd_w(sumi, __lasx_xvadd_w(p16_2, p16_3));
        }

        acc = __lasx_xvfmadd_s((__m256)__lasx_xvreplfr2vr_s(d), __lasx_xvffint_s_w(sumi), acc);
    }

    *s = hsum_float_8(acc);
#elif defined(__VXE__) || defined(__VXE2__)
    float sum = 0;

    // Lower 4-bit and upper 2-bit masks
    const uint8x16_t v_lm = vec_splat_u8(0x0F);
    const uint8x16_t v_um = vec_splat_u8(0x03);

    const int32x4_t v_z = vec_splat_s32(0);

    int8x16_t  q6b[4];
    uint8x16_t q6h[4];

    uint8x16_t v_xl[4];
    uint8x16_t v_xh[2];
    int8x16_t  v_y[4];

    for (int i = 0; i < nb; ++i) {
        const float d_all = GGML_FP16_TO_FP32(x[i].d);

        const uint8_t * GGML_RESTRICT x0l = x[i].ql;
        const uint8_t * GGML_RESTRICT x0h = x[i].qh;
        const int8_t  * GGML_RESTRICT y0 = y[i].qs;

        const int8_t  * GGML_RESTRICT scale = x[i].scales;

        const int16x8_t v_ysumsl = vec_xl(0 , y[i].bsums);
        const int16x8_t v_ysumsh = vec_xl(16, y[i].bsums);

        const int8x16_t v_scale  = vec_xl(0, scale);
        const int16x8_t v_scalel = vec_unpackh(v_scale);
        const int16x8_t v_scaleh = vec_unpackl(v_scale);

        const int32x4_t v_minslo = vec_mulo(v_ysumsl, v_scalel);
        const int32x4_t v_minsle = vec_mule(v_ysumsl, v_scalel);
        const int32x4_t v_minsho = vec_mulo(v_ysumsh, v_scaleh);
        const int32x4_t v_minshe = vec_mule(v_ysumsh, v_scaleh);
        const int32x4_t v_mins = v_minslo + v_minsle + v_minsho + v_minshe;

        const int32_t mins = v_mins[0] + v_mins[1] + v_mins[2] + v_mins[3];

        int32_t isum = 0;
        for (int j = 0; j < QK_K/128; ++j) {
            // Load model upper 2 bits
            v_xh[0] = vec_xl(0 , x0h);
            v_xh[1] = vec_xl(16, x0h);
            x0h += 32;

            // Load model lower 4 bits
            v_xl[0] = vec_xl(0 , x0l);
            v_xl[1] = vec_xl(16, x0l);
            v_xl[2] = vec_xl(32, x0l);
            v_xl[3] = vec_xl(48, x0l);
            x0l += 64;

            // Load activation quants
            v_y[0] = vec_xl(0 , y0);
            v_y[1] = vec_xl(16, y0);
            v_y[2] = vec_xl(32, y0);
            v_y[3] = vec_xl(48, y0);
            y0 += 64;

            q6h[0] = vec_sl(vec_and(v_um, v_xh[0]), 4);
            q6h[1] = vec_sl(vec_and(v_um, v_xh[1]), 4);
            uint8x16_t shifted = vec_sr(v_xh[0], 2);
            q6h[2] = vec_sl(vec_and(v_um, shifted), 4);
            shifted = vec_sr(v_xh[1], 2);
            q6h[3] = vec_sl(vec_and(v_um, shifted), 4);

            q6b[0] = (int8x16_t)(vec_or(vec_and(v_xl[0], v_lm), q6h[0]));
            q6b[1] = (int8x16_t)(vec_or(vec_and(v_xl[1], v_lm), q6h[1]));
            q6b[2] = (int8x16_t)(vec_or(vec_and(v_xl[2], v_lm), q6h[2]));
            q6b[3] = (int8x16_t)(vec_or(vec_and(v_xl[3], v_lm), q6h[3]));

            int32x4_t summs0 = ggml_vec_dot(v_z, q6b[0], v_y[0]);
            int32x4_t summs1 = ggml_vec_dot(v_z, q6b[1], v_y[1]);
            int32x4_t summs2 = ggml_vec_dot(v_z, q6b[2], v_y[2]);
            int32x4_t summs3 = ggml_vec_dot(v_z, q6b[3], v_y[3]);

            isum += (summs0[0] + summs0[1] + summs0[2] + summs0[3]) * scale[0] +
                    (summs1[0] + summs1[1] + summs1[2] + summs1[3]) * scale[1] +
                    (summs2[0] + summs2[1] + summs2[2] + summs2[3]) * scale[2] +
                    (summs3[0] + summs3[1] + summs3[2] + summs3[3]) * scale[3];

            scale += 4;


            // Load activation quants
            v_y[0] = vec_xl(0 , y0);
            v_y[1] = vec_xl(16, y0);
            v_y[2] = vec_xl(32, y0);
            v_y[3] = vec_xl(48, y0);
            y0 += 64;

            shifted = vec_sr(v_xh[0], 4);
            q6h[0] = vec_sl(vec_and(v_um, shifted), 4);
            shifted = vec_sr(v_xh[1], 4);
            q6h[1] = vec_sl(vec_and(v_um, shifted), 4);
            shifted = vec_sr(v_xh[0], 6);
            q6h[2] = vec_sl(vec_and(v_um, shifted), 4);
            shifted = vec_sr(v_xh[1], 6);
            q6h[3] = vec_sl(vec_and(v_um, shifted), 4);

            q6b[0] = (int8x16_t)(vec_or(vec_sr(v_xl[0], 4), q6h[0]));
            q6b[1] = (int8x16_t)(vec_or(vec_sr(v_xl[1], 4), q6h[1]));
            q6b[2] = (int8x16_t)(vec_or(vec_sr(v_xl[2], 4), q6h[2]));
            q6b[3] = (int8x16_t)(vec_or(vec_sr(v_xl[3], 4), q6h[3]));

            summs0 = ggml_vec_dot(v_z, q6b[0], v_y[0]);
            summs1 = ggml_vec_dot(v_z, q6b[1], v_y[1]);
            summs2 = ggml_vec_dot(v_z, q6b[2], v_y[2]);
            summs3 = ggml_vec_dot(v_z, q6b[3], v_y[3]);

            isum += (summs0[0] + summs0[1] + summs0[2] + summs0[3]) * scale[0] +
                    (summs1[0] + summs1[1] + summs1[2] + summs1[3]) * scale[1] +
                    (summs2[0] + summs2[1] + summs2[2] + summs2[3]) * scale[2] +
                    (summs3[0] + summs3[1] + summs3[2] + summs3[3]) * scale[3];

            scale += 4;
        }

        sum += d_all * y[i].d * (isum - 32 * mins);
    }

    *s = sum;
#else

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
        const float d = GGML_FP16_TO_FP32(x[i].d) * y[i].d;
        for (int l = 0; l < 8; ++l) sums[l] += d * aux32[l];
    }
    for (int l = 0; l < 8; ++l) sumf += sums[l];
    *s = sumf;
#endif
}
