# Final verification sub-check summary

All sub-checks pass: **True**

| family | PASS | FAIL | MISSING | per-case Alive2 time (old=>new + new=>old, summed over fmt splits) |
|---|---|---|---|---|
| V1 | 2 | 0 | 0 | min 0 s, median 1 s, max 1 s, total 0.00 CPU-h |
| V3 | 1 | 0 | 0 | - |
| P | 1 | 0 | 0 | - |
| V2 | 99 | 0 | 0 | min 12 s, median 205 s, max 738 s, total 5.64 CPU-h |
| V2G | 99 | 0 | 0 | min 14 s, median 200 s, max 669 s, total 5.47 CPU-h |

Cases closed through fmt-bit splits (the unsplit run was abandoned or timed out): v2_s5_z1_L16, v2_s5_z4_L11, v2_s5_z5_L10, v2_s5_z5_L14, v2_s4_z1_L11, v2_s4_z2_L10, v2_s4_z2_L11, v2_s4_z2_L12, v2_s4_z2_L15, v2_s4_z3_L15, v2_s5_z1_L15_h, v2_s5_z2_L8_h, v2_s5_z2_L11_h, v2_s5_z2_L15_h, v2_s5_z3_L10_h, v2_s5_z4_L14_h, v2_s5_z4_L15_h, v2_s5_z5_L11_h, v2_s5_z5_L14_h, v2_s4_z1_L13_h, v2_s4_z2_L8_h, v2_s4_z3_L9_h, v2_s4_z4_L9_h, v2_s4_z4_L11_h

| check | unroll | verdict | seconds | runs (fmt splits) |
|---|---|---|---|---|
| v1a | 0 | PASS | 0.4 | v1a |
| v1b | 0 | PASS | 0.7 | v1b |
| v3 | - | PASS | - | v3 |
| partition | - | PASS | - | partition |
| v2_s5_z0_L8 | 0 | PASS | 81.4 | v2_s5_z0_L8 |
| v2_s5_z0_L9 | 0 | PASS | 33.4 | v2_s5_z0_L9 |
| v2_s5_z0_L10 | 0 | PASS | 92.2 | v2_s5_z0_L10 |
| v2_s5_z0_L11 | 0 | PASS | 41.8 | v2_s5_z0_L11 |
| v2_s5_z0_L12 | 0 | PASS | 103.3 | v2_s5_z0_L12 |
| v2_s5_z0_L13 | 0 | PASS | 85.7 | v2_s5_z0_L13 |
| v2_s5_z0_L14 | 0 | PASS | 98.3 | v2_s5_z0_L14 |
| v2_s5_z0_L15 | 0 | PASS | 103.0 | v2_s5_z0_L15 |
| v2_s5_z0_L16 | 0 | PASS | 163.0 | v2_s5_z0_L16 |
| v2_s5_z1_L8 | 1 | PASS | 18.2 | v2_s5_z1_L8 |
| v2_s5_z1_L9 | 1 | PASS | 14.8 | v2_s5_z1_L9 |
| v2_s5_z1_L10 | 1 | PASS | 44.5 | v2_s5_z1_L10 |
| v2_s5_z1_L11 | 1 | PASS | 19.1 | v2_s5_z1_L11 |
| v2_s5_z1_L12 | 1 | PASS | 20.4 | v2_s5_z1_L12 |
| v2_s5_z1_L13 | 1 | PASS | 269.3 | v2_s5_z1_L13 |
| v2_s5_z1_L14 | 1 | PASS | 18.1 | v2_s5_z1_L14 |
| v2_s5_z1_L15 | 1 | PASS | 11.8 | v2_s5_z1_L15 |
| v2_s5_z1_L16 | 1 | PASS | 33.6 | v2_s5_z1_L16_w0 v2_s5_z1_L16_w1 |
| v2_s5_z2_L8 | 3 | PASS | 224.1 | v2_s5_z2_L8 |
| v2_s5_z2_L9 | 3 | PASS | 261.0 | v2_s5_z2_L9 |
| v2_s5_z2_L10 | 3 | PASS | 315.1 | v2_s5_z2_L10 |
| v2_s5_z2_L11 | 3 | PASS | 240.6 | v2_s5_z2_L11 |
| v2_s5_z2_L12 | 3 | PASS | 274.9 | v2_s5_z2_L12 |
| v2_s5_z2_L13 | 3 | PASS | 240.2 | v2_s5_z2_L13 |
| v2_s5_z2_L14 | 3 | PASS | 283.9 | v2_s5_z2_L14 |
| v2_s5_z2_L15 | 3 | PASS | 315.9 | v2_s5_z2_L15 |
| v2_s5_z2_L16 | 3 | PASS | 319.8 | v2_s5_z2_L16 |
| v2_s5_z3_L8 | 3 | PASS | 331.1 | v2_s5_z3_L8 |
| v2_s5_z3_L9 | 3 | PASS | 289.7 | v2_s5_z3_L9 |
| v2_s5_z3_L10 | 3 | PASS | 256.7 | v2_s5_z3_L10 |
| v2_s5_z3_L11 | 3 | PASS | 237.2 | v2_s5_z3_L11 |
| v2_s5_z3_L12 | 3 | PASS | 203.2 | v2_s5_z3_L12 |
| v2_s5_z3_L13 | 3 | PASS | 238.0 | v2_s5_z3_L13 |
| v2_s5_z3_L14 | 3 | PASS | 201.1 | v2_s5_z3_L14 |
| v2_s5_z3_L15 | 3 | PASS | 312.5 | v2_s5_z3_L15 |
| v2_s5_z3_L16 | 3 | PASS | 291.9 | v2_s5_z3_L16 |
| v2_s5_z4_L8 | 4 | PASS | 335.9 | v2_s5_z4_L8 |
| v2_s5_z4_L9 | 4 | PASS | 171.7 | v2_s5_z4_L9 |
| v2_s5_z4_L10 | 4 | PASS | 238.3 | v2_s5_z4_L10 |
| v2_s5_z4_L11 | 4 | PASS | 400.4 | v2_s5_z4_L11_w0 v2_s5_z4_L11_w1 |
| v2_s5_z4_L12 | 4 | PASS | 205.4 | v2_s5_z4_L12 |
| v2_s5_z4_L13 | 4 | PASS | 226.7 | v2_s5_z4_L13 |
| v2_s5_z4_L14 | 4 | PASS | 257.2 | v2_s5_z4_L14 |
| v2_s5_z4_L15 | 4 | PASS | 237.0 | v2_s5_z4_L15 |
| v2_s5_z4_L16 | 4 | PASS | 239.9 | v2_s5_z4_L16 |
| v2_s5_z5_L8 | 5 | PASS | 36.2 | v2_s5_z5_L8 |
| v2_s5_z5_L9 | 5 | PASS | 76.7 | v2_s5_z5_L9 |
| v2_s5_z5_L10 | 5 | PASS | 71.6 | v2_s5_z5_L10_w0 v2_s5_z5_L10_w1 |
| v2_s5_z5_L11 | 5 | PASS | 33.3 | v2_s5_z5_L11 |
| v2_s5_z5_L12 | 5 | PASS | 26.9 | v2_s5_z5_L12 |
| v2_s5_z5_L13 | 5 | PASS | 71.3 | v2_s5_z5_L13 |
| v2_s5_z5_L14 | 5 | PASS | 132.3 | v2_s5_z5_L14_w0 v2_s5_z5_L14_w1 |
| v2_s5_z5_L15 | 5 | PASS | 50.3 | v2_s5_z5_L15 |
| v2_s5_z5_L16 | 5 | PASS | 59.9 | v2_s5_z5_L16 |
| v2_s4_z0_L8 | 0 | PASS | 48.4 | v2_s4_z0_L8 |
| v2_s4_z0_L9 | 0 | PASS | 32.0 | v2_s4_z0_L9 |
| v2_s4_z0_L10 | 0 | PASS | 171.9 | v2_s4_z0_L10 |
| v2_s4_z0_L11 | 0 | PASS | 32.9 | v2_s4_z0_L11 |
| v2_s4_z0_L12 | 0 | PASS | 47.7 | v2_s4_z0_L12 |
| v2_s4_z0_L13 | 0 | PASS | 69.9 | v2_s4_z0_L13 |
| v2_s4_z0_L14 | 0 | PASS | 99.3 | v2_s4_z0_L14 |
| v2_s4_z0_L15 | 0 | PASS | 97.2 | v2_s4_z0_L15 |
| v2_s4_z0_L16 | 0 | PASS | 197.6 | v2_s4_z0_L16 |
| v2_s4_z1_L8 | 3 | PASS | 238.5 | v2_s4_z1_L8 |
| v2_s4_z1_L9 | 3 | PASS | 464.1 | v2_s4_z1_L9 |
| v2_s4_z1_L10 | 3 | PASS | 396.8 | v2_s4_z1_L10 |
| v2_s4_z1_L11 | 3 | PASS | 490.1 | v2_s4_z1_L11_w0 v2_s4_z1_L11_w1 |
| v2_s4_z1_L12 | 3 | PASS | 306.8 | v2_s4_z1_L12 |
| v2_s4_z1_L13 | 3 | PASS | 279.3 | v2_s4_z1_L13 |
| v2_s4_z1_L14 | 3 | PASS | 285.6 | v2_s4_z1_L14 |
| v2_s4_z1_L15 | 3 | PASS | 339.5 | v2_s4_z1_L15 |
| v2_s4_z1_L16 | 3 | PASS | 737.9 | v2_s4_z1_L16 |
| v2_s4_z2_L8 | 2 | PASS | 244.4 | v2_s4_z2_L8 |
| v2_s4_z2_L9 | 2 | PASS | 297.8 | v2_s4_z2_L9 |
| v2_s4_z2_L10 | 2 | PASS | 661.2 | v2_s4_z2_L10_f0 v2_s4_z2_L10_f1 v2_s4_z2_L10_w1 |
| v2_s4_z2_L11 | 2 | PASS | 422.3 | v2_s4_z2_L11_w0 v2_s4_z2_L11_w1 |
| v2_s4_z2_L12 | 2 | PASS | 430.4 | v2_s4_z2_L12_w0 v2_s4_z2_L12_w1 |
| v2_s4_z2_L13 | 2 | PASS | 204.7 | v2_s4_z2_L13 |
| v2_s4_z2_L14 | 2 | PASS | 390.9 | v2_s4_z2_L14 |
| v2_s4_z2_L15 | 2 | PASS | 425.9 | v2_s4_z2_L15_w0 v2_s4_z2_L15_w1 |
| v2_s4_z2_L16 | 2 | PASS | 312.2 | v2_s4_z2_L16 |
| v2_s4_z3_L8 | 3 | PASS | 201.7 | v2_s4_z3_L8 |
| v2_s4_z3_L9 | 3 | PASS | 321.5 | v2_s4_z3_L9 |
| v2_s4_z3_L10 | 3 | PASS | 326.9 | v2_s4_z3_L10 |
| v2_s4_z3_L11 | 3 | PASS | 219.2 | v2_s4_z3_L11 |
| v2_s4_z3_L12 | 3 | PASS | 204.1 | v2_s4_z3_L12 |
| v2_s4_z3_L13 | 3 | PASS | 498.8 | v2_s4_z3_L13 |
| v2_s4_z3_L14 | 3 | PASS | 315.0 | v2_s4_z3_L14 |
| v2_s4_z3_L15 | 3 | PASS | 414.9 | v2_s4_z3_L15_w0 v2_s4_z3_L15_w1 |
| v2_s4_z3_L16 | 3 | PASS | 234.4 | v2_s4_z3_L16 |
| v2_s4_z4_L8 | 4 | PASS | 69.4 | v2_s4_z4_L8 |
| v2_s4_z4_L9 | 4 | PASS | 38.5 | v2_s4_z4_L9 |
| v2_s4_z4_L10 | 4 | PASS | 333.4 | v2_s4_z4_L10 |
| v2_s4_z4_L11 | 4 | PASS | 68.2 | v2_s4_z4_L11 |
| v2_s4_z4_L12 | 4 | PASS | 54.9 | v2_s4_z4_L12 |
| v2_s4_z4_L13 | 4 | PASS | 90.9 | v2_s4_z4_L13 |
| v2_s4_z4_L14 | 4 | PASS | 25.8 | v2_s4_z4_L14 |
| v2_s4_z4_L15 | 4 | PASS | 93.2 | v2_s4_z4_L15 |
| v2_s4_z4_L16 | 4 | PASS | 125.1 | v2_s4_z4_L16 |
| v2_s5_z0_L8_h | 0 | PASS | 39.4 | v2_s5_z0_L8_h |
| v2_s5_z0_L9_h | 0 | PASS | 14.7 | v2_s5_z0_L9_h |
| v2_s5_z0_L10_h | 0 | PASS | 141.9 | v2_s5_z0_L10_h |
| v2_s5_z0_L11_h | 0 | PASS | 29.0 | v2_s5_z0_L11_h |
| v2_s5_z0_L12_h | 0 | PASS | 50.4 | v2_s5_z0_L12_h |
| v2_s5_z0_L13_h | 0 | PASS | 53.3 | v2_s5_z0_L13_h |
| v2_s5_z0_L14_h | 0 | PASS | 60.5 | v2_s5_z0_L14_h |
| v2_s5_z0_L15_h | 0 | PASS | 163.8 | v2_s5_z0_L15_h |
| v2_s5_z0_L16_h | 0 | PASS | 87.3 | v2_s5_z0_L16_h |
| v2_s5_z1_L8_h | 1 | PASS | 25.7 | v2_s5_z1_L8_h |
| v2_s5_z1_L9_h | 1 | PASS | 14.1 | v2_s5_z1_L9_h |
| v2_s5_z1_L10_h | 1 | PASS | 16.7 | v2_s5_z1_L10_h |
| v2_s5_z1_L11_h | 1 | PASS | 19.6 | v2_s5_z1_L11_h |
| v2_s5_z1_L12_h | 1 | PASS | 44.3 | v2_s5_z1_L12_h |
| v2_s5_z1_L13_h | 1 | PASS | 19.2 | v2_s5_z1_L13_h |
| v2_s5_z1_L14_h | 1 | PASS | 59.9 | v2_s5_z1_L14_h |
| v2_s5_z1_L15_h | 1 | PASS | 43.2 | v2_s5_z1_L15_w0_h v2_s5_z1_L15_w1_h |
| v2_s5_z1_L16_h | 1 | PASS | 20.1 | v2_s5_z1_L16_h |
| v2_s5_z2_L8_h | 3 | PASS | 668.8 | v2_s5_z2_L8_w0_h v2_s5_z2_L8_f2_h v2_s5_z2_L8_f3_h |
| v2_s5_z2_L9_h | 3 | PASS | 203.8 | v2_s5_z2_L9_h |
| v2_s5_z2_L10_h | 3 | PASS | 289.9 | v2_s5_z2_L10_h |
| v2_s5_z2_L11_h | 3 | PASS | 503.7 | v2_s5_z2_L11_w0_h v2_s5_z2_L11_w1_h |
| v2_s5_z2_L12_h | 3 | PASS | 291.0 | v2_s5_z2_L12_h |
| v2_s5_z2_L13_h | 3 | PASS | 280.1 | v2_s5_z2_L13_h |
| v2_s5_z2_L14_h | 3 | PASS | 293.0 | v2_s5_z2_L14_h |
| v2_s5_z2_L15_h | 3 | PASS | 664.7 | v2_s5_z2_L15_w0_h v2_s5_z2_L15_w1_h |
| v2_s5_z2_L16_h | 3 | PASS | 395.5 | v2_s5_z2_L16_h |
| v2_s5_z3_L8_h | 3 | PASS | 201.6 | v2_s5_z3_L8_h |
| v2_s5_z3_L9_h | 3 | PASS | 248.7 | v2_s5_z3_L9_h |
| v2_s5_z3_L10_h | 3 | PASS | 589.7 | v2_s5_z3_L10_w0_h v2_s5_z3_L10_w1_h |
| v2_s5_z3_L11_h | 3 | PASS | 200.1 | v2_s5_z3_L11_h |
| v2_s5_z3_L12_h | 3 | PASS | 355.1 | v2_s5_z3_L12_h |
| v2_s5_z3_L13_h | 3 | PASS | 230.8 | v2_s5_z3_L13_h |
| v2_s5_z3_L14_h | 3 | PASS | 205.1 | v2_s5_z3_L14_h |
| v2_s5_z3_L15_h | 3 | PASS | 226.8 | v2_s5_z3_L15_h |
| v2_s5_z3_L16_h | 3 | PASS | 235.6 | v2_s5_z3_L16_h |
| v2_s5_z4_L8_h | 4 | PASS | 333.8 | v2_s5_z4_L8_h |
| v2_s5_z4_L9_h | 4 | PASS | 250.7 | v2_s5_z4_L9_h |
| v2_s5_z4_L10_h | 4 | PASS | 224.0 | v2_s5_z4_L10_h |
| v2_s5_z4_L11_h | 4 | PASS | 320.5 | v2_s5_z4_L11_h |
| v2_s5_z4_L12_h | 4 | PASS | 274.2 | v2_s5_z4_L12_h |
| v2_s5_z4_L13_h | 4 | PASS | 252.5 | v2_s5_z4_L13_h |
| v2_s5_z4_L14_h | 4 | PASS | 413.2 | v2_s5_z4_L14_w0_h v2_s5_z4_L14_w1_h |
| v2_s5_z4_L15_h | 4 | PASS | 453.9 | v2_s5_z4_L15_w0_h v2_s5_z4_L15_w1_h |
| v2_s5_z4_L16_h | 4 | PASS | 291.5 | v2_s5_z4_L16_h |
| v2_s5_z5_L8_h | 5 | PASS | 52.4 | v2_s5_z5_L8_h |
| v2_s5_z5_L9_h | 5 | PASS | 82.8 | v2_s5_z5_L9_h |
| v2_s5_z5_L10_h | 5 | PASS | 67.3 | v2_s5_z5_L10_h |
| v2_s5_z5_L11_h | 5 | PASS | 59.2 | v2_s5_z5_L11_w0_h v2_s5_z5_L11_w1_h |
| v2_s5_z5_L12_h | 5 | PASS | 45.8 | v2_s5_z5_L12_h |
| v2_s5_z5_L13_h | 5 | PASS | 58.9 | v2_s5_z5_L13_h |
| v2_s5_z5_L14_h | 5 | PASS | 84.5 | v2_s5_z5_L14_w0_h v2_s5_z5_L14_w1_h |
| v2_s5_z5_L15_h | 5 | PASS | 41.7 | v2_s5_z5_L15_h |
| v2_s5_z5_L16_h | 5 | PASS | 51.3 | v2_s5_z5_L16_h |
| v2_s4_z0_L8_h | 0 | PASS | 20.4 | v2_s4_z0_L8_h |
| v2_s4_z0_L9_h | 0 | PASS | 19.6 | v2_s4_z0_L9_h |
| v2_s4_z0_L10_h | 0 | PASS | 46.5 | v2_s4_z0_L10_h |
| v2_s4_z0_L11_h | 0 | PASS | 23.6 | v2_s4_z0_L11_h |
| v2_s4_z0_L12_h | 0 | PASS | 23.3 | v2_s4_z0_L12_h |
| v2_s4_z0_L13_h | 0 | PASS | 43.3 | v2_s4_z0_L13_h |
| v2_s4_z0_L14_h | 0 | PASS | 87.4 | v2_s4_z0_L14_h |
| v2_s4_z0_L15_h | 0 | PASS | 50.1 | v2_s4_z0_L15_h |
| v2_s4_z0_L16_h | 0 | PASS | 64.8 | v2_s4_z0_L16_h |
| v2_s4_z1_L8_h | 3 | PASS | 233.0 | v2_s4_z1_L8_h |
| v2_s4_z1_L9_h | 3 | PASS | 348.9 | v2_s4_z1_L9_h |
| v2_s4_z1_L10_h | 3 | PASS | 448.1 | v2_s4_z1_L10_h |
| v2_s4_z1_L11_h | 3 | PASS | 581.3 | v2_s4_z1_L11_h |
| v2_s4_z1_L12_h | 3 | PASS | 277.7 | v2_s4_z1_L12_h |
| v2_s4_z1_L13_h | 3 | PASS | 606.9 | v2_s4_z1_L13_w0_h v2_s4_z1_L13_w1_h |
| v2_s4_z1_L14_h | 3 | PASS | 399.7 | v2_s4_z1_L14_h |
| v2_s4_z1_L15_h | 3 | PASS | 331.1 | v2_s4_z1_L15_h |
| v2_s4_z1_L16_h | 3 | PASS | 339.4 | v2_s4_z1_L16_h |
| v2_s4_z2_L8_h | 2 | PASS | 532.0 | v2_s4_z2_L8_w0_h v2_s4_z2_L8_f2_h v2_s4_z2_L8_f3_h |
| v2_s4_z2_L9_h | 2 | PASS | 203.6 | v2_s4_z2_L9_h |
| v2_s4_z2_L10_h | 2 | PASS | 290.1 | v2_s4_z2_L10_h |
| v2_s4_z2_L11_h | 2 | PASS | 181.4 | v2_s4_z2_L11_h |
| v2_s4_z2_L12_h | 2 | PASS | 264.5 | v2_s4_z2_L12_h |
| v2_s4_z2_L13_h | 2 | PASS | 288.3 | v2_s4_z2_L13_h |
| v2_s4_z2_L14_h | 2 | PASS | 219.4 | v2_s4_z2_L14_h |
| v2_s4_z2_L15_h | 2 | PASS | 272.6 | v2_s4_z2_L15_h |
| v2_s4_z2_L16_h | 2 | PASS | 210.1 | v2_s4_z2_L16_h |
| v2_s4_z3_L8_h | 3 | PASS | 194.1 | v2_s4_z3_L8_h |
| v2_s4_z3_L9_h | 3 | PASS | 416.2 | v2_s4_z3_L9_w0_h v2_s4_z3_L9_w1_h |
| v2_s4_z3_L10_h | 3 | PASS | 335.6 | v2_s4_z3_L10_h |
| v2_s4_z3_L11_h | 3 | PASS | 197.2 | v2_s4_z3_L11_h |
| v2_s4_z3_L12_h | 3 | PASS | 247.8 | v2_s4_z3_L12_h |
| v2_s4_z3_L13_h | 3 | PASS | 157.3 | v2_s4_z3_L13_h |
| v2_s4_z3_L14_h | 3 | PASS | 183.2 | v2_s4_z3_L14_h |
| v2_s4_z3_L15_h | 3 | PASS | 254.4 | v2_s4_z3_L15_h |
| v2_s4_z3_L16_h | 3 | PASS | 211.2 | v2_s4_z3_L16_h |
| v2_s4_z4_L8_h | 4 | PASS | 49.3 | v2_s4_z4_L8_h |
| v2_s4_z4_L9_h | 4 | PASS | 200.1 | v2_s4_z4_L9_w0_h v2_s4_z4_L9_f2_h v2_s4_z4_L9_f3_h |
| v2_s4_z4_L10_h | 4 | PASS | 48.5 | v2_s4_z4_L10_h |
| v2_s4_z4_L11_h | 4 | PASS | 97.3 | v2_s4_z4_L11_w0_h v2_s4_z4_L11_w1_h |
| v2_s4_z4_L12_h | 4 | PASS | 35.7 | v2_s4_z4_L12_h |
| v2_s4_z4_L13_h | 4 | PASS | 52.7 | v2_s4_z4_L13_h |
| v2_s4_z4_L14_h | 4 | PASS | 89.4 | v2_s4_z4_L14_h |
| v2_s4_z4_L15_h | 4 | PASS | 92.0 | v2_s4_z4_L15_h |
| v2_s4_z4_L16_h | 4 | PASS | 80.7 | v2_s4_z4_L16_h |

## Negative controls (must be rejected)

| control | rejected | reason |
|---|---|---|
| neg_unroll_s5_z5_L12 | True | fwd: ERROR: [sink-check] unroll bound not proved sufficient |
| neg_mutant_s5_z0_L8_d65536 | True | fwd: ERROR: Source is more defined than target |
