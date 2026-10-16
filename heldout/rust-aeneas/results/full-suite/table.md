| case | baseline | candidate | speedup (median) | per round | A/A ratio | flag |
|---|---:|---:|---:|---|---|---|
| decode_large_input/decode/3145728 | 1.15 ms | 754.60 µs | 1.524 | 1.531, 1.518 | 0.993 | faster |
| decode_large_input/decode/10485760 | 3.86 ms | 2.51 ms | 1.538 | 1.548, 1.528 | 0.994 | faster |
| decode_large_input/decode/31457280 | 15.05 ms | 10.35 ms | 1.454 | 1.486, 1.423 | 1.012 | faster |
| decode_large_input/decode_reuse_buf/3145728 | 1.15 ms | 749.48 µs | 1.537 | 1.543, 1.531 | 0.992 | faster |
| decode_large_input/decode_reuse_buf/10485760 | 3.87 ms | 2.49 ms | 1.552 | 1.562, 1.542 | 0.998 | faster |
| decode_large_input/decode_reuse_buf/31457280 | 15.43 ms | 10.56 ms | 1.461 | 1.491, 1.431 | 0.999 | faster |
| decode_large_input/decode_slice/3145728 | 1.13 ms | 709.29 µs | 1.589 | 1.596, 1.583 | 0.995 | faster |
| decode_large_input/decode_slice/10485760 | 3.76 ms | 2.37 ms | 1.590 | 1.598, 1.583 | 1.000 | faster |
| decode_large_input/decode_slice/31457280 | 14.06 ms | 9.54 ms | 1.474 | 1.476, 1.472 | 1.001 | faster |
| decode_large_input/decode_stream/3145728 | 1.29 ms | 926.16 µs | 1.389 | 1.391, 1.386 | 0.992 | faster |
| decode_large_input/decode_stream/10485760 | 4.33 ms | 3.21 ms | 1.350 | 1.340, 1.361 | 0.995 | faster |
| decode_large_input/decode_stream/31457280 | 17.84 ms | 16.17 ms | 1.103 | 1.113, 1.094 | 1.125 | faster |
| decode_small_input/decode/3 | 28.7 ns | 25.8 ns | 1.115 | 1.115, 1.115 | 0.999 | faster |
| decode_small_input/decode/50 | 48.0 ns | 40.3 ns | 1.191 | 1.194, 1.188 | 0.996 | faster |
| decode_small_input/decode/100 | 64.2 ns | 50.8 ns | 1.264 | 1.260, 1.269 | 0.998 | faster |
| decode_small_input/decode/500 | 213.4 ns | 146.3 ns | 1.459 | 1.472, 1.445 | 1.007 | faster |
| decode_small_input/decode/3072 | 1.18 µs | 773.3 ns | 1.529 | 1.544, 1.513 | 0.995 | faster |
| decode_small_input/decode_reuse_buf/3 | 13.6 ns | 11.4 ns | 1.196 | 1.191, 1.202 | 0.997 | faster |
| decode_small_input/decode_reuse_buf/50 | 47.9 ns | 26.5 ns | 1.813 | 2.388, 1.237 | 0.997 | faster |
| decode_small_input/decode_reuse_buf/100 | 90.8 ns | 35.8 ns | 2.529 | 1.363, 3.694 | 0.983 | faster |
| decode_small_input/decode_reuse_buf/500 | 194.9 ns | 129.0 ns | 1.511 | 1.526, 1.496 | 1.016 | faster |
| decode_small_input/decode_reuse_buf/3072 | 2.07 µs | 728.5 ns | 2.843 | 1.570, 4.116 | 1.001 | faster |
| decode_small_input/decode_slice/3 | 9.2 ns | 5.7 ns | 1.617 | 1.616, 1.617 | 0.998 | faster |
| decode_small_input/decode_slice/50 | 28.4 ns | 18.2 ns | 1.565 | 1.567, 1.563 | 0.999 | faster |
| decode_small_input/decode_slice/100 | 44.2 ns | 27.2 ns | 1.627 | 1.626, 1.629 | 0.998 | faster |
| decode_small_input/decode_slice/500 | 188.5 ns | 115.6 ns | 1.631 | 1.635, 1.628 | 0.995 | faster |
| decode_small_input/decode_slice/3072 | 1.11 µs | 679.3 ns | 1.627 | 1.624, 1.630 | 0.997 | faster |
| decode_small_input/decode_stream/3 | 46.1 ns | 38.8 ns | 1.187 | 1.074, 1.301 | 0.981 | faster |
| decode_small_input/decode_stream/50 | 64.1 ns | 54.4 ns | 1.180 | 1.097, 1.262 | 0.999 | faster |
| decode_small_input/decode_stream/100 | 80.9 ns | 64.7 ns | 1.250 | 1.182, 1.319 | 0.970 | faster |
| decode_small_input/decode_stream/500 | 233.7 ns | 161.1 ns | 1.450 | 1.403, 1.497 | 1.000 | faster |
| decode_small_input/decode_stream/3072 | 1.25 µs | 866.5 ns | 1.445 | 1.436, 1.454 | 0.996 | faster |
| encode_large_input/encode/3145728 | 1.46 ms | 1.53 ms | 0.955 | 0.957, 0.953 | 0.999 |  |
| encode_large_input/encode/10485760 | 4.87 ms | 5.13 ms | 0.951 | 0.960, 0.942 | 0.994 |  |
| encode_large_input/encode/31457280 | 31.82 ms | 32.30 ms | 0.985 | 1.005, 0.965 | 0.994 |  |
| encode_large_input/encode_display/3145728 | 1.51 ms | 1.58 ms | 0.961 | 0.962, 0.959 | 1.001 |  |
| encode_large_input/encode_display/10485760 | 6.02 ms | 6.17 ms | 0.976 | 0.992, 0.960 | 0.957 |  |
| encode_large_input/encode_display/31457280 | 35.85 ms | 36.05 ms | 0.995 | 1.009, 0.980 | 0.993 |  |
| encode_large_input/encode_reuse_buf/3145728 | 1.50 ms | 1.55 ms | 0.966 | 0.965, 0.968 | 1.000 |  |
| encode_large_input/encode_reuse_buf/10485760 | 6.00 ms | 6.14 ms | 0.978 | 1.012, 0.943 | 1.002 |  |
| encode_large_input/encode_reuse_buf/31457280 | 24.42 ms | 24.53 ms | 0.996 | 0.999, 0.992 | 0.986 |  |
| encode_large_input/encode_reuse_buf_stream/3145728 | 1.42 ms | 1.43 ms | 0.996 | 0.992, 0.999 | 1.002 |  |
| encode_large_input/encode_reuse_buf_stream/10485760 | 4.80 ms | 4.77 ms | 1.007 | 1.032, 0.981 | 0.960 |  |
| encode_large_input/encode_reuse_buf_stream/31457280 | 22.63 ms | 22.57 ms | 1.003 | 1.009, 0.997 | 0.984 |  |
| encode_large_input/encode_slice/3145728 | 1.34 ms | 1.35 ms | 0.993 | 0.994, 0.993 | 1.000 |  |
| encode_large_input/encode_slice/10485760 | 4.48 ms | 4.47 ms | 1.000 | 1.007, 0.994 | 0.999 |  |
| encode_large_input/encode_slice/31457280 | 18.35 ms | 19.54 ms | 0.942 | 0.889, 0.995 | 0.993 |  |
| encode_large_input/encode_string_reuse_buf_stream/3145728 | 1.52 ms | 1.56 ms | 0.972 | 0.980, 0.963 | 0.997 |  |
| encode_large_input/encode_string_reuse_buf_stream/10485760 | 5.11 ms | 5.26 ms | 0.972 | 1.004, 0.941 | 1.014 |  |
| encode_large_input/encode_string_reuse_buf_stream/31457280 | 24.67 ms | 25.03 ms | 0.986 | 0.997, 0.974 | 0.988 |  |
| encode_large_input/encode_string_stream/3145728 | 1.52 ms | 1.56 ms | 0.972 | 0.979, 0.964 | 0.993 |  |
| encode_large_input/encode_string_stream/10485760 | 5.12 ms | 5.28 ms | 0.972 | 1.018, 0.927 | 1.030 |  |
| encode_large_input/encode_string_stream/31457280 | 36.10 ms | 36.19 ms | 0.998 | 1.010, 0.985 | 0.989 |  |
| encode_small_input/encode/3 | 24.4 ns | 24.4 ns | 0.999 | 0.999, 1.000 | 1.921 |  |
| encode_small_input/encode/50 | 48.1 ns | 48.1 ns | 0.998 | 1.006, 0.991 | 1.008 |  |
| encode_small_input/encode/100 | 83.7 ns | 91.2 ns | 0.918 | 0.835, 1.000 | 1.005 |  |
| encode_small_input/encode/500 | 272.9 ns | 276.4 ns | 0.988 | 0.988, 0.987 | 1.002 |  |
| encode_small_input/encode/3072 | 1.45 µs | 1.51 µs | 0.956 | 0.958, 0.955 | 1.008 |  |
| encode_small_input/encode_display/3 | 41.5 ns | 41.0 ns | 1.011 | 1.012, 1.011 | 0.872 |  |
| encode_small_input/encode_display/50 | 63.1 ns | 62.5 ns | 1.009 | 1.004, 1.015 | 0.898 |  |
| encode_small_input/encode_display/100 | 88.9 ns | 97.4 ns | 0.921 | 0.832, 1.009 | 0.944 |  |
| encode_small_input/encode_display/500 | 274.9 ns | 281.4 ns | 0.977 | 0.978, 0.975 | 0.966 |  |
| encode_small_input/encode_display/3072 | 1.57 µs | 1.61 µs | 0.971 | 0.971, 0.972 | 1.011 |  |
| encode_small_input/encode_reuse_buf/3 | 24.7 ns | 20.3 ns | 1.213 | 0.986, 1.440 | 0.998 |  |
| encode_small_input/encode_reuse_buf/50 | 44.4 ns | 38.0 ns | 1.167 | 1.167, 1.166 | 0.934 | faster |
| encode_small_input/encode_reuse_buf/100 | 65.9 ns | 72.6 ns | 0.932 | 0.758, 1.106 | 0.959 |  |
| encode_small_input/encode_reuse_buf/500 | 256.3 ns | 257.9 ns | 0.994 | 0.978, 1.010 | 1.006 |  |
| encode_small_input/encode_reuse_buf/3072 | 1.45 µs | 1.50 µs | 0.970 | 0.971, 0.969 | 0.992 |  |
| encode_small_input/encode_reuse_buf_stream/3 | 21.9 ns | 22.5 ns | 0.972 | 1.041, 0.904 | 0.904 |  |
| encode_small_input/encode_reuse_buf_stream/50 | 52.8 ns | 54.1 ns | 0.976 | 1.029, 0.923 | 0.952 |  |
| encode_small_input/encode_reuse_buf_stream/100 | 69.1 ns | 70.7 ns | 0.977 | 0.982, 0.972 | 0.976 |  |
| encode_small_input/encode_reuse_buf_stream/500 | 247.2 ns | 247.0 ns | 1.001 | 0.989, 1.012 | 0.993 |  |
| encode_small_input/encode_reuse_buf_stream/3072 | 1.38 µs | 1.38 µs | 1.002 | 0.999, 1.006 | 0.993 |  |
| encode_small_input/encode_slice/3 | 6.0 ns | 6.0 ns | 0.999 | 0.998, 0.999 | 0.999 |  |
| encode_small_input/encode_slice/50 | 25.0 ns | 25.2 ns | 0.992 | 0.999, 0.986 | 0.998 |  |
| encode_small_input/encode_slice/100 | 46.2 ns | 46.5 ns | 0.993 | 1.003, 0.983 | 1.014 |  |
| encode_small_input/encode_slice/500 | 216.5 ns | 216.1 ns | 1.002 | 1.005, 1.000 | 1.000 |  |
| encode_small_input/encode_slice/3072 | 1.30 µs | 1.30 µs | 1.000 | 1.002, 0.998 | 1.000 |  |
| encode_small_input/encode_string_reuse_buf_stream/3 | 45.8 ns | 45.8 ns | 1.002 | 0.977, 1.027 | 0.904 |  |
| encode_small_input/encode_string_reuse_buf_stream/50 | 85.0 ns | 81.1 ns | 1.048 | 1.047, 1.049 | 0.931 | faster |
| encode_small_input/encode_string_reuse_buf_stream/100 | 103.4 ns | 100.5 ns | 1.029 | 1.026, 1.032 | 0.972 | faster |
| encode_small_input/encode_string_reuse_buf_stream/500 | 288.2 ns | 293.1 ns | 0.983 | 0.977, 0.989 | 0.988 |  |
| encode_small_input/encode_string_reuse_buf_stream/3072 | 1.50 µs | 1.53 µs | 0.977 | 0.976, 0.978 | 0.996 |  |
| encode_small_input/encode_string_stream/3 | 65.7 ns | 58.7 ns | 1.118 | 1.116, 1.121 | 0.872 | faster |
| encode_small_input/encode_string_stream/50 | 143.0 ns | 152.1 ns | 0.941 | 0.979, 0.903 | 1.041 |  |
| encode_small_input/encode_string_stream/100 | 163.1 ns | 177.7 ns | 0.920 | 0.875, 0.964 | 1.067 |  |
| encode_small_input/encode_string_stream/500 | 337.8 ns | 350.0 ns | 0.965 | 0.968, 0.962 | 0.964 |  |
| encode_small_input/encode_string_stream/3072 | 1.60 µs | 1.67 µs | 0.957 | 0.952, 0.961 | 1.002 |  |
