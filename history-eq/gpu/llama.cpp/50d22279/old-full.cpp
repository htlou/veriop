static inline float extract_lane(__attribute__((vector_size(16))) float v, int i) { return v[i]; }
static inline __attribute__((vector_size(16))) float reverse_lanes(__attribute__((vector_size(16))) float v) { return {v[3],v[2],v[1],v[0]}; }
#define vec_extract(v,i) extract_lane(v,i)
#define vec_reve(v) reverse_lanes(v)
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
extern "C" float old_reduce(float a,float b,float c,float d) { float32x4_t x[8]={{a,b,c,d}}; float res; GGML_F32x4_REDUCE(res,x); return res; }
