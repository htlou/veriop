float lane_reduce(float a, float b, float c, float d) {
    float acc = 0.0f;
    acc = a + acc;
    acc = b + acc;
    acc = c + acc;
    acc = d + acc;
    return acc;
}

float lane_reduce_fixed(void) {
    const float large = 4.0f * 65504.0f * 65504.0f;
    return lane_reduce(large, 4.0f, -large, 4.0f);
}
