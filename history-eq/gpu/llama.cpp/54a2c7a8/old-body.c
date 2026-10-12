void ggml_vec_dot_q4_K_q8_K(int n, float * GGML_RESTRICT s, size_t bs, const void * GGML_RESTRICT vx, size_t bx, const void * GGML_RESTRICT vy, size_t by, int nrc) {
    assert(n % QK_K == 0);
    assert(nrc == 1);
    UNUSED(nrc);
    UNUSED(bx);
    UNUSED(by);
    UNUSED(bs);

    const block_q4_K * GGML_RESTRICT x = vx;
    const block_q8_K * GGML_RESTRICT y = vy;

    const int nb = n / QK_K;

    static const uint32_t kmask1 = 0x3f3f3f3f;
    static const uint32_t kmask2 = 0x0f0f0f0f;
    static const uint32_t kmask3 = 0x03030303;

    uint32_t utmp[4];

#ifdef __ARM_FEATURE_SVE
    float sumf = 0;
    for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        const int16x8_t q8sums = vpaddq_s16(vld1q_s16(y[i].bsums), vld1q_s16(y[i].bsums + 8));

        memcpy(utmp, x[i].scales, K_SCALE_SIZE);

        uint32x2_t mins8 = { 0 };
        mins8 = vset_lane_u32(utmp[1] & kmask1, mins8, 0);
        mins8 = vset_lane_u32(((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4), mins8, 1);

        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[0] &= kmask1;

        const int16x8_t mins = vreinterpretq_s16_u16(vmovl_u8(vreinterpret_u8_u32(mins8)));
        const int32x4_t prod = vaddq_s32(vmull_s16(vget_low_s16 (q8sums), vget_low_s16 (mins)),
                                         vmull_s16(vget_high_s16(q8sums), vget_high_s16(mins)));
        sumf -= dmin * vaddvq_s32(prod);

        const uint8_t * scales = (const uint8_t *)utmp;

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const int vector_length = ggml_cpu_get_sve_cnt()*8;
        const svuint8_t m4b = svdup_n_u8(0xf);
        const svint32_t mzero = svdup_n_s32(0);
        svint32_t sumi1 = svdup_n_s32(0);
        svint32_t sumi1_1 = svdup_n_s32(0);
        svint32_t sumi1_2 = svdup_n_s32(0);
        svint32_t sumi2 = svdup_n_s32(0);
        svint32_t sumi2_1 = svdup_n_s32(0);
        svint32_t sumi2_2 = svdup_n_s32(0);
        switch (vector_length) {
            case 128:
                {
                    for (int j = 0; j < QK_K/64; ++j) {
                        svint8_t q4bytes = svreinterpret_s8_u8(svand_u8_x(svptrue_b8(), svld1_u8(svptrue_b8(), q4), m4b));
                        svint8_t q8bytes = svld1_s8(svptrue_b8(), q8); q8 += 16;
                        sumi1_1 = svmla_n_s32_x(svptrue_b32(), sumi1_1, svdot_s32(mzero, q4bytes, q8bytes), scales[2*j+0]);
                        q4bytes = svreinterpret_s8_u8(svand_u8_x(svptrue_b8(), svld1_u8(svptrue_b8(), q4+16), m4b));
                        q8bytes = svld1_s8(svptrue_b8(), q8); q8 += 16;
                        sumi1_2 = svmla_n_s32_x(svptrue_b32(), sumi1_2, svdot_s32(mzero, q4bytes, q8bytes), scales[2*j+0]);

                        q4bytes = svreinterpret_s8_u8(svlsr_n_u8_x(svptrue_b8(), svld1_u8(svptrue_b8(), q4), 4));
                        q8bytes = svld1_s8(svptrue_b8(), q8); q8 += 16;
                        sumi2_1 = svmla_n_s32_x(svptrue_b32(), sumi2_1, svdot_s32(mzero, q4bytes, q8bytes), scales[2*j+1]);
                        q4bytes = svreinterpret_s8_u8(svlsr_n_u8_x(svptrue_b8(), svld1_u8(svptrue_b8(), q4+16), 4));
                        q8bytes = svld1_s8(svptrue_b8(), q8); q8 += 16;
                        sumi2_2 = svmla_n_s32_x(svptrue_b32(), sumi2_2, svdot_s32(mzero, q4bytes, q8bytes), scales[2*j+1]);
                        q4 += 32;
                    }
                    sumi1 = svadd_s32_x(svptrue_b32(), sumi1_1, sumi1_2);
                    sumi2 = svadd_s32_x(svptrue_b32(), sumi2_1, sumi2_2);
                    sumf += d * (svaddv_s32(svptrue_b32(), svadd_s32_x(svptrue_b32(), sumi1, sumi2)));
                } break;
            case 256:
            case 512:
                {
                    for (int j = 0; j < QK_K/64; ++j) {
                        const svuint8_t q4bits  = svld1_u8(svptrue_pat_b8(SV_VL32), q4); q4 += 32;
                        svint8_t q4bytes = svreinterpret_s8_u8(svand_u8_x(svptrue_pat_b8(SV_VL32), q4bits, m4b));
                        svint8_t q8bytes = svld1_s8(svptrue_pat_b8(SV_VL32), q8); q8 += 32;
                        sumi1 = svmla_n_s32_x(svptrue_pat_b32(SV_VL8), sumi1, svdot_s32(mzero, q4bytes, q8bytes), scales[2*j+0]);

                        q4bytes = svreinterpret_s8_u8(svlsr_n_u8_x(svptrue_pat_b8(SV_VL32), q4bits, 4));
                        q8bytes = svld1_s8(svptrue_pat_b8(SV_VL32), q8); q8 += 32;
                        sumi2 = svmla_n_s32_x(svptrue_pat_b32(SV_VL8), sumi2, svdot_s32(mzero, q4bytes, q8bytes), scales[2*j+1]);
                    }
                    sumf += d * (svaddv_s32(svptrue_pat_b32(SV_VL8), svadd_s32_x(svptrue_pat_b32(SV_VL8), sumi1, sumi2)));
                } break;
            default:
                assert(false && "Unsupported vector length");
                break;
        }
    }
    *s = sumf;
#elif defined __ARM_NEON
    const uint8x16_t m4b = vdupq_n_u8(0xf);
    const int32x4_t mzero = vdupq_n_s32(0);

    ggml_int8x16x2_t q4bytes;
    ggml_int8x16x2_t q8bytes;

    float sumf = 0;

    for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        const int16x8_t q8sums = vpaddq_s16(vld1q_s16(y[i].bsums), vld1q_s16(y[i].bsums + 8));

        memcpy(utmp, x[i].scales, 12);

        uint32x2_t mins8 = { 0 };
        mins8 = vset_lane_u32(utmp[1] & kmask1, mins8, 0);
        mins8 = vset_lane_u32(((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4), mins8, 1);

        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[0] &= kmask1;

        const int16x8_t mins = vreinterpretq_s16_u16(vmovl_u8(vreinterpret_u8_u32(mins8)));
        const int32x4_t prod = vaddq_s32(vmull_s16(vget_low_s16 (q8sums), vget_low_s16 (mins)),
                                         vmull_s16(vget_high_s16(q8sums), vget_high_s16(mins)));
        sumf -= dmin * vaddvq_s32(prod);

        const uint8_t * scales = (const uint8_t *)utmp;

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        int32_t sumi1 = 0;
        int32_t sumi2 = 0;

        for (int j = 0; j < QK_K/64; ++j) {
            const ggml_uint8x16x2_t q4bits = ggml_vld1q_u8_x2(q4); q4 += 32;

            q8bytes = ggml_vld1q_s8_x2(q8); q8 += 32;
            q4bytes.val[0] = vreinterpretq_s8_u8(vandq_u8  (q4bits.val[0], m4b));
            q4bytes.val[1] = vreinterpretq_s8_u8(vandq_u8  (q4bits.val[1], m4b));

            const int32x4_t p1 = ggml_vdotq_s32(ggml_vdotq_s32(mzero, q4bytes.val[0], q8bytes.val[0]), q4bytes.val[1], q8bytes.val[1]);
            sumi1 += vaddvq_s32(p1) * scales[2*j+0];

            q8bytes = ggml_vld1q_s8_x2(q8); q8 += 32;
            q4bytes.val[0] = vreinterpretq_s8_u8(vshrq_n_u8(q4bits.val[0], 4));
            q4bytes.val[1] = vreinterpretq_s8_u8(vshrq_n_u8(q4bits.val[1], 4));

            const int32x4_t p2 = ggml_vdotq_s32(ggml_vdotq_s32(mzero, q4bytes.val[0], q8bytes.val[0]), q4bytes.val[1], q8bytes.val[1]);

            sumi2 += vaddvq_s32(p2) * scales[2*j+1];
        }

        sumf += d * (sumi1 + sumi2);

    }

    *s = sumf;

#elif defined __wasm_simd128__
    const uint8_t * scales = (const uint8_t*)&utmp[0];
    float sumf = 0;

    for (int i = 0; i < nb; ++i) {
        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin); // Corrected sign

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        // Process scales and mins
        memcpy(utmp, x[i].scales, 12);
        utmp[3] = ((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4);
        const uint32_t uaux = utmp[1] & kmask1;
        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[2] = uaux;
        utmp[0] &= kmask1;

        // Sum mins * q8sums
        int32_t sumi = 0;
        const int16_t * GGML_RESTRICT q8sums = y[i].bsums;
        const uint8_t * m = (const uint8_t *)&utmp[2];
        for (int j = 0; j < 16; j += 2) {
            sumi += (q8sums[j] + q8sums[j+1]) * m[j/2];
        }
        sumf -= dmin * sumi;

        int32_t sumi1 = 0;
        int32_t sumi2 = 0;

        for (int j = 0; j < QK_K/64; ++j) {
            // Load 64 4-bit weights (32 bytes)
            const v128_t q4x0 = wasm_v128_load(q4);
            const v128_t q4x1 = wasm_v128_load(q4 + 16);
            q4 += 32;

            // Split into low/high nibbles
            const v128_t q4l0 = wasm_v128_and(q4x0, wasm_i8x16_splat(0x0F));
            const v128_t q4h0 = wasm_u8x16_shr(q4x0, 4);
            const v128_t q4l1 = wasm_v128_and(q4x1, wasm_i8x16_splat(0x0F));
            const v128_t q4h1 = wasm_u8x16_shr(q4x1, 4);

            // Load 64 8-bit values (64 bytes)
            const v128_t q8x0 = wasm_v128_load(q8);
            const v128_t q8x1 = wasm_v128_load(q8 + 16);
            const v128_t q8x2 = wasm_v128_load(q8 + 32);
            const v128_t q8x3 = wasm_v128_load(q8 + 48);
            q8 += 64;

            // Low nibble products
            v128_t vacc1 = wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_low_i8x16(q4l0),
                wasm_i16x8_extend_low_i8x16(q8x0)
            );
            vacc1 = wasm_i32x4_add(vacc1, wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_high_i8x16(q4l0),
                wasm_i16x8_extend_high_i8x16(q8x0)
            ));
            vacc1 = wasm_i32x4_add(vacc1, wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_low_i8x16(q4l1),
                wasm_i16x8_extend_low_i8x16(q8x1)
            ));
            vacc1 = wasm_i32x4_add(vacc1, wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_high_i8x16(q4l1),
                wasm_i16x8_extend_high_i8x16(q8x1)
            ));

            // High nibble products
            v128_t vacc2 = wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_low_i8x16(q4h0),
                wasm_i16x8_extend_low_i8x16(q8x2)
            );
            vacc2 = wasm_i32x4_add(vacc2, wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_high_i8x16(q4h0),
                wasm_i16x8_extend_high_i8x16(q8x2)
            ));
            vacc2 = wasm_i32x4_add(vacc2, wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_low_i8x16(q4h1),
                wasm_i16x8_extend_low_i8x16(q8x3)
            ));
            vacc2 = wasm_i32x4_add(vacc2, wasm_i32x4_dot_i16x8(
                wasm_i16x8_extend_high_i8x16(q4h1),
                wasm_i16x8_extend_high_i8x16(q8x3)
            ));

            // Accumulate scaled results
            int32_t vacc1_sum = wasm_i32x4_extract_lane(vacc1, 0) + wasm_i32x4_extract_lane(vacc1, 1) +
                                wasm_i32x4_extract_lane(vacc1, 2) + wasm_i32x4_extract_lane(vacc1, 3);
            sumi1 += vacc1_sum * scales[2*j];

            int32_t vacc2_sum = wasm_i32x4_extract_lane(vacc2, 0) + wasm_i32x4_extract_lane(vacc2, 1) +
                                wasm_i32x4_extract_lane(vacc2, 2) + wasm_i32x4_extract_lane(vacc2, 3);
            sumi2 += vacc2_sum * scales[2*j+1];
        }

        sumf += d * (sumi1 + sumi2);
    }

    *s = sumf;

#elif defined __AVX2__

    const __m256i m4 = _mm256_set1_epi8(0xF);

    __m256 acc = _mm256_setzero_ps();
    __m128 acc_m = _mm_setzero_ps();

   for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = -y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        memcpy(utmp, x[i].scales, 12);
        utmp[3] = ((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4);
        const uint32_t uaux = utmp[1] & kmask1;
        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[2] = uaux;
        utmp[0] &= kmask1;

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const __m256i mins_and_scales = _mm256_cvtepu8_epi16(_mm_set_epi32(utmp[3], utmp[2], utmp[1], utmp[0]));

        const __m256i q8sums = _mm256_loadu_si256((const __m256i*)y[i].bsums);
        const __m128i q8s = _mm_hadd_epi16(_mm256_extracti128_si256(q8sums, 0), _mm256_extracti128_si256(q8sums, 1));
        const __m128i prod = _mm_madd_epi16(_mm256_extracti128_si256(mins_and_scales, 1), q8s);
        acc_m = _mm_fmadd_ps(_mm_set1_ps(dmin), _mm_cvtepi32_ps(prod), acc_m);

        const __m128i sc128  = _mm256_extracti128_si256(mins_and_scales, 0);
        const __m256i scales = MM256_SET_M128I(sc128, sc128);

        __m256i sumi = _mm256_setzero_si256();

        for (int j = 0; j < QK_K/64; ++j) {

            const __m256i scale_l = _mm256_shuffle_epi8(scales, get_scale_shuffle_k4(2*j+0));
            const __m256i scale_h = _mm256_shuffle_epi8(scales, get_scale_shuffle_k4(2*j+1));

            const __m256i q4bits = _mm256_loadu_si256((const __m256i*)q4); q4 += 32;
            const __m256i q4l = _mm256_and_si256(q4bits, m4);
            const __m256i q4h = _mm256_and_si256(_mm256_srli_epi16(q4bits, 4), m4);

            const __m256i q8l = _mm256_loadu_si256((const __m256i*)q8); q8 += 32;
            __m256i p16l = _mm256_maddubs_epi16(q4l, q8l);
            p16l = _mm256_madd_epi16(scale_l, p16l);

            const __m256i q8h = _mm256_loadu_si256((const __m256i*)q8); q8 += 32;
            __m256i p16h = _mm256_maddubs_epi16(q4h, q8h);
            p16h = _mm256_madd_epi16(scale_h, p16h);
            const __m256i sumj = _mm256_add_epi32(p16l, p16h);

            sumi = _mm256_add_epi32(sumi, sumj);
        }

        __m256 vd = _mm256_set1_ps(d);
        acc = _mm256_fmadd_ps(vd, _mm256_cvtepi32_ps(sumi), acc);

    }

    acc_m = _mm_add_ps(acc_m, _mm_movehl_ps(acc_m, acc_m));
    acc_m = _mm_add_ss(acc_m, _mm_movehdup_ps(acc_m));

    *s = hsum_float_8(acc) + _mm_cvtss_f32(acc_m);

#elif defined __AVX__

    const __m128i m4 = _mm_set1_epi8(0xF);
    const __m128i m2 = _mm_set1_epi8(0x2);

    __m256 acc = _mm256_setzero_ps();
    __m128 acc_m = _mm_setzero_ps();

   for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = -y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        memcpy(utmp, x[i].scales, 12);
        utmp[3] = ((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4);
        const uint32_t uaux = utmp[1] & kmask1;
        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[2] = uaux;
        utmp[0] &= kmask1;

        const __m128i utmps = _mm_set_epi32(utmp[3], utmp[2], utmp[1], utmp[0]);
        const __m128i scales = _mm_cvtepu8_epi16(utmps);
        const __m128i mins = _mm_cvtepu8_epi16(_mm_unpackhi_epi64(utmps, utmps));

        const __m128i q8sums_0 = _mm_loadu_si128((const __m128i*)&y[i].bsums[0]);
        const __m128i q8sums_1 = _mm_loadu_si128((const __m128i*)&y[i].bsums[8]);
        const __m128i q8s = _mm_hadd_epi16(q8sums_0, q8sums_1);
        const __m128i prod = _mm_madd_epi16(mins, q8s);
        acc_m = _mm_add_ps(_mm_mul_ps(_mm_set1_ps(dmin), _mm_cvtepi32_ps(prod)), acc_m);

        __m128i sumi_0 = _mm_setzero_si128();
        __m128i sumi_1 = _mm_setzero_si128();

        __m128i shuffle = _mm_set1_epi16(0x0100);
        for (int j = 0; j < QK_K/64; ++j) {

            const __m128i scale_l = _mm_shuffle_epi8(scales, shuffle);
            shuffle = _mm_add_epi16(shuffle, m2);
            const __m128i scale_h = _mm_shuffle_epi8(scales, shuffle);
            shuffle = _mm_add_epi16(shuffle, m2);

            __m128i q4bits = _mm_loadu_si128((const __m128i*)q4); q4 += 16;
            const __m128i q4l_0 = _mm_and_si128(q4bits, m4);
            const __m128i q4h_0 = _mm_and_si128(_mm_srli_epi16(q4bits, 4), m4);
            q4bits = _mm_loadu_si128((const __m128i*)q4); q4 += 16;
            const __m128i q4l_1 = _mm_and_si128(q4bits, m4);
            const __m128i q4h_1 = _mm_and_si128(_mm_srli_epi16(q4bits, 4), m4);

            const __m128i q8l_0 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            __m128i p16l = _mm_maddubs_epi16(q4l_0, q8l_0);
            p16l = _mm_madd_epi16(scale_l, p16l);
            sumi_0 = _mm_add_epi32(sumi_0, p16l);
            const __m128i q8l_1 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            p16l = _mm_maddubs_epi16(q4l_1, q8l_1);
            p16l = _mm_madd_epi16(scale_l, p16l);
            sumi_1 = _mm_add_epi32(sumi_1, p16l);

            const __m128i q8h_0 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            __m128i p16h = _mm_maddubs_epi16(q4h_0, q8h_0);
            p16h = _mm_madd_epi16(scale_h, p16h);
            sumi_0 = _mm_add_epi32(sumi_0, p16h);
            const __m128i q8h_1 = _mm_loadu_si128((const __m128i*)q8); q8 += 16;
            p16h = _mm_maddubs_epi16(q4h_1, q8h_1);
            p16h = _mm_madd_epi16(scale_h, p16h);
            sumi_1 = _mm_add_epi32(sumi_1, p16h);

        }

        __m256 vd = _mm256_set1_ps(d);
        __m256i sumi = MM256_SET_M128I(sumi_1, sumi_0);
        acc = _mm256_add_ps(_mm256_mul_ps(vd, _mm256_cvtepi32_ps(sumi)), acc);

    }

    acc_m = _mm_add_ps(acc_m, _mm_movehl_ps(acc_m, acc_m));
    acc_m = _mm_add_ss(acc_m, _mm_movehdup_ps(acc_m));

    *s = hsum_float_8(acc) + _mm_cvtss_f32(acc_m);

#elif defined __riscv_xtheadvector

    const uint8_t * scales = (const uint8_t*)&utmp[0];
    const uint8_t * mins   = (const uint8_t*)&utmp[2];

    float sumf = 0;

    for (int i = 0; i < nb; ++i) {
        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        int tmp, tmp2, sumi;
        __asm__ __volatile__(
            "li %[t1], 12\n\t"
            "th.vsetvli zero, %[t1], e8, m1\n\t"
            "th.vlb.v v1, (%[s6b])\n\t" // {aux[0], aux[1], aux[2]}
            "li %[t1], 4\n\t"
            "th.vsetvli zero, %[t1], e32, m1\n\t"
            "th.vslidedown.vi v2, v1, 2\n\t"
            "th.vmv.v.v v3, v2\n\t"
            "th.vslideup.vi v2, v3, 1\n\t" // {aux[2], aux[2]}
            "li %[t1], 2\n\t"
            "th.vsetvli zero, %[t1], e32, m1\n\t"
            "th.vmv.v.i v4, 4\n\t"
            "th.vand.vx v8, v1, %[kmask1]\n\t"
            "th.vslide1up.vx v5, v4, zero\n\t" // {0, 4}
            "th.vsrl.vi v6, v1, 6\n\t"
            "th.vsrl.vv v7, v2, v5\n\t"
            "th.vand.vx v0, v6, %[kmask3]\n\t"
            "th.vand.vx v2, v7, %[kmask2]\n\t"
            "th.vsll.vi v6, v0, 4\n\t"
            "li %[t2], 8\n\t"
            "addi %[t1], %[utmp], 4\n\t"
            "th.vor.vv v1, v6, v2\n\t"
            "th.vssw.v v8, (%[utmp]), %[t2]\n\t"
            "th.vssw.v v1, (%[t1]), %[t2]\n\t"
            "th.vsetvli zero, zero, e32, m2\n\t" // vl == 8
            "th.vlw.v v2, (%[bsums])\n\t"
            "th.vsetvli zero, %[t2], e16, m1\n\t"
            "th.vnsrl.vi v0, v2, 0\n\t"
            "th.vnsrl.vi v1, v2, 16\n\t"
            "th.vadd.vv v2, v0, v1\n\t"
            "th.vlbu.v v4, (%[mins])\n\t"
            "th.vwmul.vv v6, v4, v2\n\t"
            "th.vmv.v.x v0, zero\n\t"
            "th.vsetvli zero, %[t2], e32, m2\n\t"
            "th.vredsum.vs v0, v6, v0\n\t"
            "th.vmv.x.s %[sumi], v0"
            : [t1] "=&r" (tmp), [t2] "=&r" (tmp2), [sumi] "=&r" (sumi)
            : [bsums] "r" (y[i].bsums), [mins] "r" (mins), [utmp] "r" (utmp)
            , [s6b] "r" (x[i].scales), [kmask1] "r" (kmask1)
            , [kmask2] "r" (kmask2), [kmask3] "r" (kmask3)
            : "memory"
            , "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7"
            , "v8", "v9", "v10", "v11", "v12", "v13", "v14", "v15"
            , "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23"
            , "v24", "v25", "v26", "v27", "v28", "v29", "v30", "v31"
        );
        sumf -= dmin * sumi;

        const uint8_t * restrict q4 = x[i].qs;
        const int8_t  * restrict q8 = y[i].qs;

        sumi = 0;
        const uint8_t * scale = scales;

        for (int j = 0; j < QK_K/128; ++j) {
            int vl128 = 128, vl64 = 64, vl32 = 32;
            __asm__ __volatile__(
                "th.vsetvli zero, %[vl128], e8, m8\n\t"
                "th.vlb.v v8, (%[q8])\n\t"
                "th.vsetvli zero, %[vl64], e8, m4\n\t"
                "th.vlb.v v0, (%[q4])\n\t"
                "th.vsrl.vi v4, v0, 4\n\t"
                "th.vand.vi v0, v0, 0xF\n\t"
                "th.vsetvli zero, %[vl32], e8, m2\n\t"
                "th.vwmul.vv v28, v6, v14\n\t"
                "th.vwmul.vv v20, v4, v10\n\t"
                "th.vwmul.vv v24, v2, v12\n\t"
                "th.vwmul.vv v16, v0, v8\n\t"
                "li %[tmp], 4\n\t"
                "th.vsetvli zero, %[tmp], e32, m1\n\t"
                "th.vlbu.v v1, (%[scale])\n\t"
                "th.vmv.v.x v0, zero\n\t"
                "th.vsetvli zero, %[vl32], e16, m4\n\t"
                "th.vwredsum.vs v6, v24, v0\n\t"
                "th.vwredsum.vs v7, v28, v0\n\t"
                "th.vwredsum.vs v4, v16, v0\n\t"
                "th.vwredsum.vs v5, v20, v0\n\t"
                "th.vsetvli zero, %[tmp], e32, m1\n\t"
                "th.vslideup.vi v6, v7, 1\n\t"
                "th.vslideup.vi v4, v5, 1\n\t"
                "th.vslideup.vi v4, v6, 2\n\t"
                "th.vmul.vv v8, v4, v1\n\t"
                "th.vredsum.vs v0, v8, v0\n\t"
                "th.vmv.x.s %[tmp], v0\n\t"
                "add %[sumi], %[sumi], %[tmp]"
                : [tmp] "=&r" (tmp), [sumi] "+&r" (sumi)
                : [vl128] "r" (vl128), [vl64] "r" (vl64), [vl32] "r" (vl32)
                , [q4] "r" (q4), [q8] "r" (q8), [scale] "r" (scale)
                : "memory"
                , "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7"
                , "v8", "v9", "v10", "v11", "v12", "v13", "v14", "v15"
                , "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23"
                , "v24", "v25", "v26", "v27", "v28", "v29", "v30", "v31"
            );

            q4 += 64;    q8 += 128;    scale += 4;
        }

        sumf += d * sumi;

    }

    *s = sumf;

#elif defined __riscv_v

    const uint8_t * scales = (const uint8_t*)&utmp[0];
    const uint8_t * mins   = (const uint8_t*)&utmp[2];

    float sumf = 0;
    const int vector_length = __riscv_vlenb() * 8;

    switch (vector_length) {
    case 256:
        for (int i = 0; i < nb; ++i) {

            size_t vl = 8;

            const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
            const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

            vint16mf2_t q8sums_0 = __riscv_vlse16_v_i16mf2(y[i].bsums, 4, vl);
            vint16mf2_t q8sums_1 = __riscv_vlse16_v_i16mf2(y[i].bsums+1, 4, vl);
            vint16mf2_t q8sums   = __riscv_vadd_vv_i16mf2(q8sums_0, q8sums_1, vl);

            memcpy(utmp, x[i].scales, 12);
            utmp[3] = ((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4);
            const uint32_t uaux = utmp[1] & kmask1;
            utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
            utmp[2] = uaux;
            utmp[0] &= kmask1;

            vuint8mf4_t mins8  = __riscv_vle8_v_u8mf4(mins, vl);
            vint16mf2_t v_mins = __riscv_vreinterpret_v_u16mf2_i16mf2(__riscv_vzext_vf2_u16mf2(mins8, vl));
            vint32m1_t  prod   = __riscv_vwmul_vv_i32m1(q8sums, v_mins, vl);

            vint32m1_t sumi = __riscv_vredsum_vs_i32m1_i32m1(prod, __riscv_vmv_v_x_i32m1(0, 1), vl);
            sumf -= dmin * __riscv_vmv_x_s_i32m1_i32(sumi);

            const uint8_t * GGML_RESTRICT q4 = x[i].qs;
            const int8_t  * GGML_RESTRICT q8 = y[i].qs;

            vl = 32;

            int32_t sum_1 = 0;
            int32_t sum_2 = 0;

            vint16m1_t vzero = __riscv_vmv_v_x_i16m1(0, 1);

            for (int j = 0; j < QK_K/64; ++j) {
                // load Q4
                vuint8m1_t q4_x = __riscv_vle8_v_u8m1(q4, vl);

                // load Q8 and multiply it with lower Q4 nibble
                vint8m1_t  q8_0 = __riscv_vle8_v_i8m1(q8, vl);
                vint8m1_t  q4_0 = __riscv_vreinterpret_v_u8m1_i8m1(__riscv_vand_vx_u8m1(q4_x, 0x0F, vl));
                vint16m2_t qv_0 = __riscv_vwmul_vv_i16m2(q4_0, q8_0, vl);
                vint16m1_t vs_0 = __riscv_vredsum_vs_i16m2_i16m1(qv_0, vzero, vl);

                sum_1 += __riscv_vmv_x_s_i16m1_i16(vs_0) * scales[2*j+0];

                // load Q8 and multiply it with upper Q4 nibble
                vint8m1_t  q8_1 = __riscv_vle8_v_i8m1(q8+32, vl);
                vint8m1_t  q4_1 = __riscv_vreinterpret_v_u8m1_i8m1(__riscv_vsrl_vx_u8m1(q4_x, 0x04, vl));
                vint16m2_t qv_1 = __riscv_vwmul_vv_i16m2(q4_1, q8_1, vl);
                vint16m1_t vs_1 = __riscv_vredsum_vs_i16m2_i16m1(qv_1, vzero, vl);

                sum_2 += __riscv_vmv_x_s_i16m1_i16(vs_1) * scales[2*j+1];

                q4 += 32;    q8 += 64;

            }

            sumf += d*(sum_1 + sum_2);

        }
        break;
    case 128:
        for (int i = 0; i < nb; ++i) {
            const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
            const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

            int tmp, tmp2, sumi;
            __asm__ __volatile__(
                "vsetivli zero, 12, e8, m1\n\t"
                "vle8.v v1, (%[s6b])\n\t" // {aux[0], aux[1], aux[2]}
                "vsetivli zero, 4, e32, m1\n\t"
                "vslidedown.vi v2, v1, 2\n\t"
                "vmv1r.v v3, v2\n\t"
                "vslideup.vi v2, v3, 1\n\t" // {aux[2], aux[2]}
                "vsetivli zero, 2, e32, m1\n\t"
                "vmv.v.i v4, 4\n\t"
                "vand.vx v8, v1, %[kmask1]\n\t"
                "vslide1up.vx v5, v4, zero\n\t" // {0, 4}
                "vsrl.vi v6, v1, 6\n\t"
                "vsrl.vv v7, v2, v5\n\t"
                "vand.vx v0, v6, %[kmask3]\n\t"
                "vand.vx v2, v7, %[kmask2]\n\t"
                "vsll.vi v6, v0, 4\n\t"
                "li %[t2], 8\n\t"
                "addi %[t1], %[utmp], 4\n\t"
                "vor.vv v1, v6, v2\n\t"
                "vsse32.v v8, (%[utmp]), %[t2]\n\t"
                "vsse32.v v1, (%[t1]), %[t2]\n\t"
                "vsetivli zero, 8, e16, m1\n\t"
                "vle32.v v2, (%[bsums])\n\t"
                "vnsrl.wi v0, v2, 0\n\t"
                "vnsrl.wi v1, v2, 16\n\t"
                "vadd.vv v2, v0, v1\n\t"
                "vle8.v v3, (%[mins])\n\t"
                "vzext.vf2 v4, v3\n\t"
                "vwmul.vv v6, v4, v2\n\t"
                "vmv.v.x v0, zero\n\t"
                "vsetivli zero, 8, e32, m2\n\t"
                "vredsum.vs v0, v6, v0\n\t"
                "vmv.x.s %[sumi], v0"
                : [t1] "=&r" (tmp), [t2] "=&r" (tmp2), [sumi] "=&r" (sumi)
                : [bsums] "r" (y[i].bsums), [mins] "r" (mins), [utmp] "r" (utmp)
                , [s6b] "r" (x[i].scales), [kmask1] "r" (kmask1)
                , [kmask2] "r" (kmask2), [kmask3] "r" (kmask3)
                : "memory"
                , "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7"
                , "v8", "v9", "v10", "v11", "v12", "v13", "v14", "v15"
                , "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23"
                , "v24", "v25", "v26", "v27", "v28", "v29", "v30", "v31"
            );
            sumf -= dmin * sumi;

            const uint8_t * restrict q4 = x[i].qs;
            const int8_t  * restrict q8 = y[i].qs;

            sumi = 0;
            const uint8_t * scale = scales;

            for (int j = 0; j < QK_K/128; ++j) {
                int vl128 = 128, vl64 = 64, vl32 = 32;
                __asm__ __volatile__(
                    "vsetvli zero, %[vl128], e8, m8\n\t"
                    "vle8.v v8, (%[q8])\n\t"
                    "vsetvli zero, %[vl64], e8, m4\n\t"
                    "vle8.v v0, (%[q4])\n\t"
                    "vsrl.vi v4, v0, 4\n\t"
                    "vand.vi v0, v0, 0xF\n\t"
                    "vsetvli zero, %[vl32], e8, m2\n\t"
                    "vwmul.vv v28, v6, v14\n\t"
                    "vwmul.vv v20, v4, v10\n\t"
                    "vwmul.vv v24, v2, v12\n\t"
                    "vwmul.vv v16, v0, v8\n\t"
                    "vsetivli zero, 4, e32, m1\n\t"
                    "vle8.v v2, (%[scale])\n\t"
                    "vmv.v.x v0, zero\n\t"
                    "vzext.vf4 v1, v2\n\t"
                    "vsetvli zero, %[vl32], e16, m4\n\t"
                    "vwredsum.vs v6, v24, v0\n\t"
                    "vwredsum.vs v7, v28, v0\n\t"
                    "vwredsum.vs v4, v16, v0\n\t"
                    "vwredsum.vs v5, v20, v0\n\t"
                    "vsetivli zero, 4, e32, m1\n\t"
                    "vslideup.vi v6, v7, 1\n\t"
                    "vslideup.vi v4, v5, 1\n\t"
                    "vslideup.vi v4, v6, 2\n\t"
                    "vmul.vv v8, v4, v1\n\t"
                    "vredsum.vs v0, v8, v0\n\t"
                    "vmv.x.s %[tmp], v0\n\t"
                    "add %[sumi], %[sumi], %[tmp]"
                    : [tmp] "=&r" (tmp), [sumi] "+&r" (sumi)
                    : [vl128] "r" (vl128), [vl64] "r" (vl64), [vl32] "r" (vl32)
                    , [q4] "r" (q4), [q8] "r" (q8), [scale] "r" (scale)
                    : "memory"
                    , "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7"
                    , "v8", "v9", "v10", "v11", "v12", "v13", "v14", "v15"
                    , "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23"
                    , "v24", "v25", "v26", "v27", "v28", "v29", "v30", "v31"
                );

                q4 += 64;    q8 += 128;    scale += 4;
            }

            sumf += d * sumi;
        }
        break;
    default:
        assert(false && "Unsupported vector length");
        break;
    }

    *s = sumf;

#elif defined(__POWER9_VECTOR__)
    const vector signed char lowMask = vec_splats((signed char)0xF);
    const vector signed char lowMask1 = vec_splats((int8_t)0x3f);
    const vector signed char lowMask2 = vec_splats((int8_t)0x30);
    const vector int v0 = vec_splats((int32_t)0);
    const vector unsigned char v2 = vec_splats((uint8_t)2);
    const vector unsigned char v4 = vec_splats((unsigned char)0x4);

    vector float vsumf0 = vec_splats(0.0f);
    vector float vsumf1 = vec_splats(0.0f);
    vector float vsumf2 = vec_splats(0.0f);
    vector float vsumf3 = vec_splats(0.0f);

    for (int i = 0; i < nb; ++i) {
        vector float vxd = vec_splats(GGML_FP16_TO_FP32(x[i].d));
        vector float vyd = vec_splats(y[i].d);
        vector float vd = vec_mul(vxd, vyd);

        vector float vxmin = vec_splats(GGML_FP16_TO_FP32(x[i].dmin));
        vector float vdmin = vec_mul(vxmin, vyd);

        vector signed short q8ysums0 = vec_xl( 0, y[i].bsums);
        vector signed short q8ysums1 = vec_xl(16, y[i].bsums);

        UNUSED(kmask1);
        UNUSED(kmask2);
        UNUSED(kmask3);
        UNUSED(utmp);

        vector signed char u0 = (vector signed char)vec_xl_len(x[i].scales, 8);
        vector signed char u1 = vec_and(vec_sr(u0, v2), lowMask2);
        vector signed char u2 = (vector signed char)vec_xl_len(x[i].scales + 8, 4);
        vector signed char u3 = vec_sr(u2, v4);

        vector signed char u30 = u1;
        vector signed char u31 = (vector signed char)vec_mergeh((vector signed int)vec_and(u2, lowMask), (vector signed int)u3);

        u1 = vec_and(u0, lowMask1);
        u2 = vec_or(u30, u31);

        vector signed char utmps = (vector signed char)vec_mergeh((vector signed int)u1, (vector signed int)u2);

        vector signed short vscales = vec_unpackh(utmps);
        vector signed short q4xmins = vec_unpackl(utmps);
        vector signed short q4xmins0 = vec_mergeh(q4xmins, q4xmins);
        vector signed short q4xmins1 = vec_mergel(q4xmins, q4xmins);

        vector signed int prod0 = vec_mule(q4xmins0, q8ysums0);
        vector signed int prod1 = vec_mule(q4xmins1, q8ysums1);
        vector signed int prod2 = vec_mulo(q4xmins0, q8ysums0);
        vector signed int prod3 = vec_mulo(q4xmins1, q8ysums1);

        vsumf0 = vec_nmsub(vec_ctf(prod0, 0), vdmin, vsumf0);
        vsumf1 = vec_nmsub(vec_ctf(prod1, 0), vdmin, vsumf1);
        vsumf2 = vec_nmsub(vec_ctf(prod2, 0), vdmin, vsumf2);
        vsumf3 = vec_nmsub(vec_ctf(prod3, 0), vdmin, vsumf3);

        vector signed int vsumi0 = v0;
        vector signed int vsumi1 = v0;
        vector signed int vsumi2 = v0;
        vector signed int vsumi3 = v0;

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        for (int j = 0; j < QK_K/64; j+=2) {
            __builtin_prefetch(q4, 0, 1);
            __builtin_prefetch(q8, 0, 1);

            vector signed char qxs0 = (vector signed char)vec_xl( 0, q4);
            vector signed char qxs1 = (vector signed char)vec_xl(16, q4);
            vector signed char qxs2 = (vector signed char)vec_xl(32, q4);
            vector signed char qxs3 = (vector signed char)vec_xl(48, q4);
            q4 += 64;

            vector unsigned char q4x00 = (vector unsigned char)vec_and(qxs0, lowMask);
            vector unsigned char q4x01 = (vector unsigned char)vec_sr(qxs0, v4);
            vector unsigned char q4x10 = (vector unsigned char)vec_and(qxs1, lowMask);
            vector unsigned char q4x11 = (vector unsigned char)vec_sr(qxs1, v4);
            vector unsigned char q4x20 = (vector unsigned char)vec_and(qxs2, lowMask);
            vector unsigned char q4x21 = (vector unsigned char)vec_sr(qxs2, v4);
            vector unsigned char q4x30 = (vector unsigned char)vec_and(qxs3, lowMask);
            vector unsigned char q4x31 = (vector unsigned char)vec_sr(qxs3, v4);

            vector signed char q8y00 = vec_xl(  0, q8);
            vector signed char q8y10 = vec_xl( 16, q8);
            vector signed char q8y01 = vec_xl( 32, q8);
            vector signed char q8y11 = vec_xl( 48, q8);
            vector signed char q8y20 = vec_xl( 64, q8);
            vector signed char q8y30 = vec_xl( 80, q8);
            vector signed char q8y21 = vec_xl( 96, q8);
            vector signed char q8y31 = vec_xl(112, q8);
            q8 += 128;

            vector signed int qv00 = vec_msum(q8y00, q4x00, v0);
            vector signed int qv01 = vec_msum(q8y01, q4x01, v0);
            vector signed int qv10 = vec_msum(q8y10, q4x10, v0);
            vector signed int qv11 = vec_msum(q8y11, q4x11, v0);
            vector signed int qv20 = vec_msum(q8y20, q4x20, v0);
            vector signed int qv21 = vec_msum(q8y21, q4x21, v0);
            vector signed int qv30 = vec_msum(q8y30, q4x30, v0);
            vector signed int qv31 = vec_msum(q8y31, q4x31, v0);

            vector signed int vscales_h = vec_unpackh(vscales);
            vector signed int vs0 = vec_splat(vscales_h, 0);
            vector signed int vs1 = vec_splat(vscales_h, 1);
            vector signed int vs2 = vec_splat(vscales_h, 2);
            vector signed int vs3 = vec_splat(vscales_h, 3);
            vscales = vec_sld(vscales, vscales, 8);

            vsumi0 = vec_add(vec_mul(qv00, vs0), vsumi0);
            vsumi1 = vec_add(vec_mul(qv01, vs1), vsumi1);
            vsumi2 = vec_add(vec_mul(qv20, vs2), vsumi2);
            vsumi3 = vec_add(vec_mul(qv21, vs3), vsumi3);

            vsumi0 = vec_add(vec_mul(qv10, vs0), vsumi0);
            vsumi1 = vec_add(vec_mul(qv11, vs1), vsumi1);
            vsumi2 = vec_add(vec_mul(qv30, vs2), vsumi2);
            vsumi3 = vec_add(vec_mul(qv31, vs3), vsumi3);
        }

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

    __m256 acc = (__m256)__lasx_xvldi(0);
    __m128 acc_m = (__m128)__lsx_vldi(0);

   for (int i = 0; i < nb; ++i) {

        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = -y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        memcpy(utmp, x[i].scales, 12);
        utmp[3] = ((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4);
        const uint32_t uaux = utmp[1] & kmask1;
        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[2] = uaux;
        utmp[0] &= kmask1;

        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const int8_t  * GGML_RESTRICT q8 = y[i].qs;

        const __m128i mins_and_scales128 = lsx_set_w(utmp[3], utmp[2], utmp[1], utmp[0]);
        const __m128i mins128 = __lsx_vexth_h_b(mins_and_scales128);
        const __m128i scales128 = __lsx_vsllwil_h_b(mins_and_scales128, 0);

        const __m256i q8sums = __lasx_xvld((const __m256i*)y[i].bsums, 0);
        const __m128i q8s = lsx_hadd_h(lasx_extracti128(q8sums, 0), lasx_extracti128(q8sums, 1));
        const __m128i prod = lsx_madd_h(mins128, q8s);
        acc_m = __lsx_vfmadd_s(__lsx_vreplfr2vr_s(dmin), __lsx_vffint_s_w(prod), acc_m);

        const __m256i scales = lasx_insertf128(scales128, scales128);

        __m256i sumi = __lasx_xvldi(0);

        for (int j = 0; j < QK_K/64; ++j) {

            const __m256i scale_l = lasx_xvrepl128vei_h(scales, 2 * j + 0);
            const __m256i scale_h = lasx_xvrepl128vei_h(scales, 2 * j + 1);

            const __m256i q4bits = __lasx_xvld((const __m256i*)q4, 0); q4 += 32;
            const __m256i q4l = __lasx_xvandi_b(q4bits, 0xf);
            const __m256i q4h = __lasx_xvsrli_b(q4bits, 4);

            const __m256i q8l = __lasx_xvld((const __m256i*)q8, 0); q8 += 32;
            __m256i p16l = lasx_madd_h_b(q4l, q8l);
            p16l = lasx_madd_h(scale_l, p16l);

            const __m256i q8h = __lasx_xvld((const __m256i*)q8, 0); q8 += 32;
            __m256i p16h = lasx_madd_h_b(q4h, q8h);
            p16h = lasx_madd_h(scale_h, p16h);
            const __m256i sumj = __lasx_xvadd_w(p16l, p16h);

            sumi = __lasx_xvadd_w(sumi, sumj);
        }

        __m256 vd = __lasx_xvreplfr2vr_s(d);
        acc = __lasx_xvfmadd_s(vd, __lasx_xvffint_s_w(sumi), acc);

    }

    acc_m = __lsx_vfadd_s(acc_m, (__m128)__lsx_vpermi_w((__m128i)acc_m, (__m128i)acc_m, 0xee));
    __m128i tmp1 = __lsx_vinsgr2vr_w(__lsx_vldi(0), __lsx_vpickve2gr_w((__m128i)acc_m, 1), 0);
    acc_m = __lsx_vfadd_s(acc_m, (__m128)tmp1);


    *s = hsum_float_8(acc) + ((v4f32)acc_m)[0];
#elif defined(__VXE__) || defined(__VXE2__)
    const uint8x16_t v_lm = vec_splat_u8(0x0F);
    const int32x4_t v_z = vec_splat_s32(0);

    uint8x16_t v_x[2];
    int8x16_t  v_xl[2];
    int8x16_t  v_y[2];

    float sumf = 0;

    for (int i = 0; i < nb; ++i) {
        const float d = y[i].d * GGML_FP16_TO_FP32(x[i].d);
        const float dmin = y[i].d * GGML_FP16_TO_FP32(x[i].dmin);

        const int16x8_t v_ysumsl = vec_xl(0 , y[i].bsums);
        const int16x8_t v_ysumsh = vec_xl(16, y[i].bsums);
        const int16x8_t v_ysums = vec_padd_s16(v_ysumsl, v_ysumsh);

        memcpy(utmp, x[i].scales, 12);

        uint32x4_t v_mins8 = { 0 };
        v_mins8 = vec_insert(utmp[1] & kmask1, v_mins8, 0);
        v_mins8 = vec_insert(((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4), v_mins8, 1);

        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[0] &= kmask1;

        const int16x8_t v_minsh = (int16x8_t)vec_unpackh((uint8x16_t)v_mins8);

        const int32x4_t v_minso = vec_mulo(v_ysums, v_minsh);
        const int32x4_t v_minse = vec_mule(v_ysums, v_minsh);
        const int32x4_t v_mins = v_minso + v_minse;
        sumf -= dmin * (v_mins[0] + v_mins[1] + v_mins[2] + v_mins[3]);

        const uint8_t * scales = (const uint8_t *)utmp;
        const uint8_t * GGML_RESTRICT x0 = x[i].qs;
        const int8_t  * GGML_RESTRICT y0 = y[i].qs;

        int32_t sumi1 = 0;
        int32_t sumi2 = 0;

        for (int j = 0; j < QK_K/64; ++j) {
            v_x[0] = vec_xl(0 , x0);
            v_x[1] = vec_xl(16, x0);
            x0 += 32;

            v_y[0] = vec_xl(0 , y0);
            v_y[1] = vec_xl(16, y0);
            y0 += 32;

            v_xl[0] = (int8x16_t)vec_and(v_x[0], v_lm);
            v_xl[1] = (int8x16_t)vec_and(v_x[1], v_lm);

            const int32x4_t p1 = ggml_vec_dot(ggml_vec_dot(v_z, v_xl[0], v_y[0]), v_xl[1], v_y[1]);
            sumi1 += (p1[0] + p1[1] + p1[2] + p1[3]) * scales[2*j+0];

            v_y[0] = vec_xl(0 , y0);
            v_y[1] = vec_xl(16, y0);
            y0 += 32;

            v_xl[0] = (int8x16_t)vec_sr(v_x[0], 4);
            v_xl[1] = (int8x16_t)vec_sr(v_x[1], 4);

            const int32x4_t p2 = ggml_vec_dot(ggml_vec_dot(v_z, v_xl[0], v_y[0]), v_xl[1], v_y[1]);
            sumi2 += (p2[0] + p2[1] + p2[2] + p2[3]) * scales[2*j+1];
        }

        sumf += d * (sumi1 + sumi2);
    }

    *s = sumf;
#else

    const uint8_t * scales = (const uint8_t*)&utmp[0];
    const uint8_t * mins   = (const uint8_t*)&utmp[2];

    int8_t  aux8[QK_K];
    int16_t aux16[8];
    float   sums [8];
    int32_t aux32[8];
    memset(sums, 0, 8*sizeof(float));

    float sumf = 0;
    for (int i = 0; i < nb; ++i) {
        const uint8_t * GGML_RESTRICT q4 = x[i].qs;
        const  int8_t * GGML_RESTRICT q8 = y[i].qs;
        memset(aux32, 0, 8*sizeof(int32_t));
        int8_t * GGML_RESTRICT a = aux8;
        for (int j = 0; j < QK_K/64; ++j) {
            for (int l = 0; l < 32; ++l) a[l] = (int8_t)(q4[l] & 0xF);
            a += 32;
            for (int l = 0; l < 32; ++l) a[l] = (int8_t)(q4[l]  >> 4);
            a += 32; q4 += 32;
        }
        memcpy(utmp, x[i].scales, 12);
        utmp[3] = ((utmp[2] >> 4) & kmask2) | (((utmp[1] >> 6) & kmask3) << 4);
        const uint32_t uaux = utmp[1] & kmask1;
        utmp[1] = (utmp[2] & kmask2) | (((utmp[0] >> 6) & kmask3) << 4);
        utmp[2] = uaux;
        utmp[0] &= kmask1;

        int sumi = 0;
        for (int j = 0; j < QK_K/16; ++j) sumi += y[i].bsums[j] * mins[j/2];
        a = aux8;
        int is = 0;
        for (int j = 0; j < QK_K/32; ++j) {
            int32_t scale = scales[is++];
            for (int l = 0; l < 8; ++l) aux16[l] = q8[l] * a[l];
            for (int l = 0; l < 8; ++l) aux32[l] += scale * aux16[l];
            q8 += 8; a += 8;
            for (int l = 0; l < 8; ++l) aux16[l] = q8[l] * a[l];
            for (int l = 0; l < 8; ++l) aux32[l] += scale * aux16[l];
            q8 += 8; a += 8;
            for (int l = 0; l < 8; ++l) aux16[l] = q8[l] * a[l];
            for (int l = 0; l < 8; ++l) aux32[l] += scale * aux16[l];
            q8 += 8; a += 8;
            for (int l = 0; l < 8; ++l) aux16[l] = q8[l] * a[l];
            for (int l = 0; l < 8; ++l) aux32[l] += scale * aux16[l];
            q8 += 8; a += 8;
        }
        const float d = GGML_FP16_TO_FP32(x[i].d) * y[i].d;
        for (int l = 0; l < 8; ++l) sums[l] += d * aux32[l];
        const float dmin = GGML_FP16_TO_FP32(x[i].dmin) * y[i].d;
        sumf -= dmin * sumi;
    }
    for (int l = 0; l < 8; ++l) sumf += sums[l];
    *s = sumf;
#endif
}
