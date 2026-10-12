float lane_reduce(float a, float b, float c, float d) {
    float acc1 = 0.0f;
    float acc2 = 0.0f;
    acc1 = a + acc1;
    acc2 = b + acc2;
    acc1 = c + acc1;
    acc2 = d + acc2;
    return acc1 + acc2;
}

float lane_reduce_fixed(void) {
    const float large = 4.0f * 65504.0f * 65504.0f;
    return lane_reduce(large, 4.0f, -large, 4.0f);
}
