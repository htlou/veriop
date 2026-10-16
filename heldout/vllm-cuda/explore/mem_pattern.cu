// Exploration: memory-pattern floor for the rope access pattern (64B of every 256B head, read+write).
#include <cstdio>
#include <cstdint>
__global__ void touch64(uint4* q, uint4* k, int heads, int64_t tok_stride_vec) {
  // each token: heads x 4 uint4 (64B) at head stride 16 uint4 (256B)
  int t = blockIdx.x; int n = heads * 4 * 2;
  for (int i = threadIdx.x; i < n; i += blockDim.x) {
    uint4* base = (i < heads * 4) ? q : k; int ii = i % (heads * 4);
    uint4* p = base + t * tok_stride_vec + (ii / 4) * 16 + (ii % 4);
    uint4 v = *p; v.x ^= 1; *p = v;
  }
}
__global__ void touch_full(uint4* q, uint4* k, int heads, int64_t tok_stride_vec) {
  int t = blockIdx.x; int n = heads * 16 * 2;
  for (int i = threadIdx.x; i < n; i += blockDim.x) {
    uint4* base = (i < heads * 16) ? q : k; int ii = i % (heads * 16);
    uint4* p = base + t * tok_stride_vec + ii;
    uint4 v = *p; v.x ^= 1; *p = v;
  }
}
int main() {
  const int T = 64 * 512, nh = 48; size_t n = (size_t)T * nh * 128 * 2;
  uint4 *q, *k; cudaMalloc(&q, n); cudaMalloc(&k, n); cudaMemset(q, 0, n); cudaMemset(k, 0, n);
  void* flush; cudaMalloc(&flush, 256 << 20);
  cudaEvent_t e0, e1; cudaEventCreate(&e0); cudaEventCreate(&e1);
  auto timeit = [&](const char* name, auto launch) {
    float tot = 0; int R = 20;
    for (int r = 0; r < R + 3; ++r) { cudaMemsetAsync(flush, r, 256 << 20); cudaEventRecord(e0); launch(); cudaEventRecord(e1); cudaEventSynchronize(e1);
      float ms; cudaEventElapsedTime(&ms, e0, e1); if (r >= 3) tot += ms; }
    printf("%-28s %8.1f us\n", name, tot / R * 1000);
  };
  int64_t sv = nh * 16;
  for (int b : {128, 256, 384}) { char nm[64]; snprintf(nm, 64, "touch 64B/256B blk%d", b); timeit(nm, [&] { touch64<<<T, b>>>(q, k, nh, sv); }); }
  for (int b : {256, 512}) { char nm[64]; snprintf(nm, 64, "touch full rows blk%d", b); timeit(nm, [&] { touch_full<<<T, b>>>(q, k, nh, sv); }); }
}
