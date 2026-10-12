// Diagnostic: legal inline PTX emitted by FP16 helpers in the production module.
extern "C" __global__ void braced_conversion(float *out, const unsigned short *in) {
    unsigned short h = in[threadIdx.x];
    float f;
    asm("{ cvt.f32.f16 %0, %1;}" : "=f"(f) : "h"(h));
    out[threadIdx.x] = f;
}
