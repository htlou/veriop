static inline float extract_lane(__attribute__((vector_size(16))) float v, int i) { return v[i]; }
static inline __attribute__((vector_size(16))) float reverse_lanes(__attribute__((vector_size(16))) float v) { return {v[3],v[2],v[1],v[0]}; }
#define vec_extract(v,i) extract_lane(v,i)
#define vec_reve(v) reverse_lanes(v)
typedef float float32x4_t __attribute__((vector_size(16)));
#define GGML_F32_ARR 8
#define vec_add(a,b) ((a)+(b))
extern "C" float reduce(float a,float b,float c,float d) { float32x4_t v={a,b,c,d}; float res;
    res = vec_extract(v, 0) +                    \
          vec_extract(v, 1) +                    \
          vec_extract(v, 2) +                    \
          vec_extract(v, 3);                     \
return res; }
