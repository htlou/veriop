// Minimal diagnostic for the production kernel's by-value struct ABI.
// This is a verifier limitation reproducer, not a replacement kernel.
struct Params { int n; float *out; const float *input; };
extern "C" __global__ void aggregate_param(Params p) {
    int i = threadIdx.x;
    if (i < p.n) p.out[i] = p.input[i];
}

extern "C" __global__ void scalar_params(float *out, const float *input, int n) {
    int i = threadIdx.x;
    if (i < n) out[i] = input[i];
}
