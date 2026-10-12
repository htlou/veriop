#include <stdbool.h>
#define GGML_TYPE_BF16 30
#define GGML_TYPE_F16 1
#define GGML_TYPE_F32 0
#define GGML_TYPE_IQ4_NL 20
#define GGML_TYPE_MXFP4 39
#define GGML_TYPE_Q2_K 10
#define GGML_TYPE_Q3_K 11
#define GGML_TYPE_Q4_0 2
#define GGML_TYPE_Q4_1 3
#define GGML_TYPE_Q4_K 12
#define GGML_TYPE_Q5_0 6
#define GGML_TYPE_Q5_1 7
#define GGML_TYPE_Q5_K 13
#define GGML_TYPE_Q6_K 14
#define GGML_TYPE_Q8_0 8
bool select_small_batch(int type_a, int type_b, int ne00, int ne11) {
    return (type_b == GGML_TYPE_F32 && (ne00%128 == 0) &&
        (
         (
          (
           type_a == GGML_TYPE_F32  || // TODO: helper function
           type_a == GGML_TYPE_F16  ||
           type_a == GGML_TYPE_Q4_0 ||
           type_a == GGML_TYPE_Q4_1 ||
           type_a == GGML_TYPE_Q5_0 ||
           type_a == GGML_TYPE_Q5_1 ||
           type_a == GGML_TYPE_Q8_0 ||
           type_a == GGML_TYPE_MXFP4 ||
           type_a == GGML_TYPE_IQ4_NL ||
           false) && (ne11 >= 2 && ne11 <= 8)
         ) ||
         (
          (
           type_a == GGML_TYPE_Q4_K ||
           type_a == GGML_TYPE_Q5_K ||
           type_a == GGML_TYPE_Q6_K ||
           false) && (ne11 >= 4 && ne11 <= 8)
         )
        )
       ) && (type_b == GGML_TYPE_F32 && (ne00%128 == 0) &&
        (
         (
          (
           type_a == GGML_TYPE_F32  || // TODO: helper function
           type_a == GGML_TYPE_F16  ||
           type_a == GGML_TYPE_BF16 ||
           type_a == GGML_TYPE_Q4_0 ||
           type_a == GGML_TYPE_Q4_1 ||
           type_a == GGML_TYPE_Q5_0 ||
           type_a == GGML_TYPE_Q5_1 ||
           type_a == GGML_TYPE_Q8_0 ||
           type_a == GGML_TYPE_MXFP4 ||
           type_a == GGML_TYPE_IQ4_NL ||
           false) && (ne11 >= 2 && ne11 <= 8)
         ) ||
         (
          (
           type_a == GGML_TYPE_Q4_K ||
           type_a == GGML_TYPE_Q5_K ||
           type_a == GGML_TYPE_Q6_K ||
           type_a == GGML_TYPE_Q2_K ||
           type_a == GGML_TYPE_Q3_K ||
           false) && (ne11 >= 4 && ne11 <= 8)
         )
        )
       );
}
bool select_bf16(void) { return select_small_batch(GGML_TYPE_BF16, GGML_TYPE_F32, 128, 4); }
bool select_q2_k(void) { return select_small_batch(GGML_TYPE_Q2_K, GGML_TYPE_F32, 128, 4); }
bool select_q3_k(void) { return select_small_batch(GGML_TYPE_Q3_K, GGML_TYPE_F32, 128, 4); }
