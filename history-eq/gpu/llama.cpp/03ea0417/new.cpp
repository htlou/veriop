using uint32_t = unsigned int;
extern "C" uint32_t target(uint32_t a0, uint32_t a1) {
    const uint32_t src[5] = {a0, a1, 0, 0, 0};
    const uint32_t offset_src=1, i_src1=0, i_src2=0, i_src3=0;
    const uint32_t stride_src1=5, stride_src2=5, stride_src3=5;
    const uint32_t i_src_row = offset_src + i_src1 * stride_src1 + i_src2 * stride_src2 + i_src3 * stride_src3;
    const uint32_t col_idx=0;
    const uint32_t vec_index = i_src_row/4 + col_idx;
    return src[4*vec_index]; // lane zero of array<vec4<f32>>
}
