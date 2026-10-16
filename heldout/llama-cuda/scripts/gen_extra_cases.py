"""Generate extra CONV_2D_DW cases for `test-backend-ops test --test-file` (generic op loader).

Covers configurations the built-in eval suite lacks: 5x5 kernels (the new fixed<5,5> path), dilation 2,
stride 3, batch > 1, the generic fallback (7x7, 1x1), and the official perf shapes; each for both
layouts (WHCN contiguous, CWHN channel-contiguous strides) and f32/f16 kernels.
Line format: op type ne0..3 n_params params... n_src {src_type ne0..3 nb0..3}... name
"""
OP, F32, F16 = 58, 0, 1  # GGML_OP_CONV_2D_DW, GGML_TYPE_F32, GGML_TYPE_F16 at the pinned commit
TS = {F32: 4, F16: 2}
cases = [  # W, H, C, N, K, stride, pad, dil
    (19, 13, 5, 2, 3, 1, 1, 1),
    (23, 17, 7, 1, 3, 2, 0, 2),
    (21, 9, 6, 3, 5, 1, 2, 1),
    (20, 20, 4, 1, 5, 1, 4, 2),
    (31, 29, 3, 2, 5, 3, 1, 1),
    (20, 18, 4, 1, 7, 1, 3, 1),   # generic fallback kernel
    (16, 12, 8, 2, 1, 1, 0, 1),   # generic fallback kernel
    (112, 112, 32, 1, 3, 1, 1, 1),  # official perf shape
    (56, 56, 128, 1, 5, 2, 2, 1),   # official perf shape
    (512, 512, 256, 1, 3, 1, 1, 1), # official perf shape
]
lines = []
for (W, H, C, N, K, s, p, d) in cases:
    OW = (W + 2 * p - d * (K - 1) - 1) // s + 1
    OH = (H + 2 * p - d * (K - 1) - 1) // s + 1
    for kt in (F32, F16):
        if W == 512 and kt == F16:
            continue
        for cwhn in (False, True):
            ts = TS[kt]
            if cwhn:
                knb = [C * ts, K * C * ts, C * ts, ts]  # as produced by the test's permute(cont(permute(kernel)))
                inb = [C * 4, W * C * 4, 4, W * H * C * 4]
            else:
                knb = [ts, K * ts, K * K * ts, K * K * ts]
                inb = [4, W * 4, W * H * 4, W * H * C * 4]
            src_k = [kt, K, K, 1, C] + knb
            src_i = [F32, W, H, C, N] + inb
            name = f'dw_{W}x{H}x{C}x{N}_k{K}_s{s}_p{p}_d{d}_{"f16" if kt == F16 else "f32"}_{"cwhn" if cwhn else "whcn"}'
            fields = [OP, F32, OW, OH, C, N, 6, s, s, p, p, d, d, 2] + src_k + src_i + [name]
            lines.append(' '.join(map(str, fields)))
print('\n'.join(lines))
