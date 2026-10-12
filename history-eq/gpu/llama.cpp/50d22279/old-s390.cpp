#include <vecintrin.h>
typedef float float32x4_t __attribute__((vector_size(16)));
#define GGML_F32_ARR 8
#define vec_add(a,b) ((a)+(b))
#define GGML_F32x4_REDUCE(res, x)                   \
{                                                   \
    int offset = GGML_F32_ARR >> 1;                 \
    for (int i = 0; i < offset; ++i) {              \
        x[i] = vec_add(x[i], x[offset + i]);        \
    }                                               \
    offset >>= 1;                                   \
    for (int i = 0; i < offset; ++i) {              \
        x[i] = vec_add(x[i], x[offset + i]);        \
    }                                               \
    offset >>= 1;                                   \
    for (int i = 0; i < offset; ++i) {              \
        x[i] = vec_add(x[i], x[offset + i]);        \
    }                                               \
    res = vec_extract(x[0], 0) +                    \
          vec_extract(x[0], 1) +                    \
          vec_extract(x[0], 2) +                    \
          vec_extract(x[0], 3);                     \
}
extern "C" float reduce(float a,float b,float c,float d) { float32x4_t x[8]={{a,b,c,d}}; float res; GGML_F32x4_REDUCE(res,x); return res; }
