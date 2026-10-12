#include "sgemm.h"
#include "ggml-cpu-impl.h"
#include <cstdio>
#include <cstdlib>
extern "C" {
float ggml_table_f32_f16[1 << 16] = {};
void ggml_barrier(struct ggml_threadpool *) {}
void ggml_abort(const char *, int, const char *, ...) { std::abort(); }
void ggml_log_internal(enum ggml_log_level, const char *, ...) {}
}
int main(int argc, char **) {
    ggml_fp16_t A_f16[4*8] = {};
    float A_f32[4*8] = {};
    float B[2*8]; for (float & x : B) x = 1.0f;
    float C[2*4]; for (float & x : C) x = -1.0f;
    ggml_compute_params params = {}; params.ith = 0; params.nth = 1;
    bool handled = argc > 1 ? llamafile_sgemm(4,2,8,A_f32,8,B,8,C,4,0,1,GGML_TYPE_F32,GGML_TYPE_F32,GGML_TYPE_F32) : llamafile_sgemm(4,2,8,A_f16,8,B,8,C,4,0,1,GGML_TYPE_F16,GGML_TYPE_F32,GGML_TYPE_F32);
    for (float x : C) if (x != C[0]) std::abort();
    std::printf("handled=%d C0=%g C7=%g\n", int(handled), C[0], C[7]);
}
