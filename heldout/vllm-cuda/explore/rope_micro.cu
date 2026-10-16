// Exploration microbenchmark (not the official metric): rope variants on the
// benchmark_rope largest shape (64x512 tokens, 48 heads, head 128, rot 32, bf16).
#include <cuda_bf16.h>
#include <cstdio>
#include <cstdint>
#include <vector>
typedef __nv_bfloat16 bf;
__global__ void base_k(const int64_t* pos, bf* q, bf* k, const bf* cache, int rot_dim, int64_t qs, int64_t ks, int64_t hs_stride, int nh, int nkv) {
  int t = blockIdx.x; int64_t p = pos[t]; const bf* c = cache + p * rot_dim; int ed = rot_dim / 2;
  for (int i = threadIdx.x; i < nh * ed; i += blockDim.x) {
    int h = i / ed, r = i % ed; bf* a = q + t * qs + h * hs_stride;
    float cf = __bfloat162float(c[r]), sf = __bfloat162float(c[ed + r]);
    float x = __bfloat162float(a[r]), y = __bfloat162float(a[ed + r]);
    a[r] = __float2bfloat16(x * cf - y * sf); a[ed + r] = __float2bfloat16(y * cf + x * sf);
  }
  for (int i = threadIdx.x; i < nkv * ed; i += blockDim.x) {
    int h = i / ed, r = i % ed; bf* a = k + t * ks + h * hs_stride;
    float cf = __bfloat162float(c[r]), sf = __bfloat162float(c[ed + r]);
    float x = __bfloat162float(a[r]), y = __bfloat162float(a[ed + r]);
    a[r] = __float2bfloat16(x * cf - y * sf); a[ed + r] = __float2bfloat16(y * cf + x * sf);
  }
}
// Vectorized: each thread handles V consecutive rot offsets of one head (ushort vector loads).
template <int V>
__global__ void vec_k(const int64_t* pos, bf* q, bf* k, const bf* cache, int rot_dim, int64_t qs, int64_t ks, int64_t hs_stride, int nh, int nkv, int tok_per_cta) {
  int ed = rot_dim / 2; int chunks = ed / V; int per_tok = (nh + nkv) * chunks;
  for (int tt = 0; tt < tok_per_cta; ++tt) {
  int t = blockIdx.x * tok_per_cta + tt;
  for (int i = threadIdx.x; i < per_tok; i += blockDim.x) {
    int hh = i / chunks, ch = i % chunks; bool isq = hh < nh; int h = isq ? hh : hh - nh;
    bf* a = isq ? q + t * qs + h * hs_stride : k + t * ks + h * hs_stride;
    int64_t p = pos[t]; const bf* c = cache + p * rot_dim;
    bf xv[V], yv[V], cv[V], sv[V];
    if constexpr (V == 4) {
      *(ushort4*)xv = *(const ushort4*)(a + ch * V); *(ushort4*)yv = *(const ushort4*)(a + ed + ch * V);
      *(ushort4*)cv = *(const ushort4*)(c + ch * V); *(ushort4*)sv = *(const ushort4*)(c + ed + ch * V);
    } else if constexpr (V == 8) {
      *(uint4*)xv = *(const uint4*)(a + ch * V); *(uint4*)yv = *(const uint4*)(a + ed + ch * V);
      *(uint4*)cv = *(const uint4*)(c + ch * V); *(uint4*)sv = *(const uint4*)(c + ed + ch * V);
    } else {
      #pragma unroll
      for (int j = 0; j < V; ++j) { xv[j] = a[ch*V+j]; yv[j] = a[ed+ch*V+j]; cv[j] = c[ch*V+j]; sv[j] = c[ed+ch*V+j]; }
    }
    bf xo[V], yo[V];
    #pragma unroll
    for (int j = 0; j < V; ++j) {
      float x = __bfloat162float(xv[j]), y = __bfloat162float(yv[j]), cf = __bfloat162float(cv[j]), sf = __bfloat162float(sv[j]);
      xo[j] = __float2bfloat16(x * cf - y * sf); yo[j] = __float2bfloat16(y * cf + x * sf);
    }
    if constexpr (V == 4) { *(ushort4*)(a + ch * V) = *(ushort4*)xo; *(ushort4*)(a + ed + ch * V) = *(ushort4*)yo; }
    else if constexpr (V == 8) { *(uint4*)(a + ch * V) = *(uint4*)xo; *(uint4*)(a + ed + ch * V) = *(uint4*)yo; }
    else {
      #pragma unroll
      for (int j = 0; j < V; ++j) { a[ch*V+j] = xo[j]; a[ed+ch*V+j] = yo[j]; }
    }
  }}
}
int main() {
  const int T = 64 * 512, nh = 48, hd = 128, rd = 32; size_t n = (size_t)T * nh * hd;
  bf *q, *k, *cache; int64_t* pos;
  cudaMalloc(&q, n * 2); cudaMalloc(&k, n * 2); cudaMalloc(&cache, 8192 * rd * 2); cudaMalloc(&pos, T * 8);
  std::vector<int64_t> hp(T); for (int i = 0; i < T; ++i) hp[i] = (i * 7919) % 8192;
  cudaMemcpy(pos, hp.data(), T * 8, cudaMemcpyHostToDevice);
  cudaMemset(q, 0, n * 2); cudaMemset(k, 0, n * 2); cudaMemset(cache, 0, 8192 * rd * 2);
  void* flush; cudaMalloc(&flush, 256 << 20);
  cudaEvent_t e0, e1; cudaEventCreate(&e0); cudaEventCreate(&e1);
  auto timeit = [&](const char* name, auto launch) {
    float best = 1e9, tot = 0; int R = 20;
    for (int r = 0; r < R + 3; ++r) {
      cudaMemsetAsync(flush, r, 256 << 20);
      cudaEventRecord(e0); launch(); cudaEventRecord(e1); cudaEventSynchronize(e1);
      float ms; cudaEventElapsedTime(&ms, e0, e1); if (r >= 3) { tot += ms; best = ms < best ? ms : best; }
    }
    printf("%-34s mean %8.1f us  best %8.1f us  (%s)\n", name, tot / R * 1000, best * 1000, cudaGetErrorString(cudaGetLastError()));
  };
  timeit("baseline scalar blk512", [&] { base_k<<<T, 512>>>(pos, q, k, cache, rd, nh * hd, nh * hd, hd, nh, nh); });
  timeit("copy q (clone-like) ", [&] { cudaMemcpyAsync(k, q, n * 2, cudaMemcpyDeviceToDevice); });
  for (int b : {64, 96, 128, 192, 256}) {
    char nm[64];
    snprintf(nm, 64, "vec4 blk%d", b); timeit(nm, [&] { vec_k<4><<<T, b>>>(pos, q, k, cache, rd, nh * hd, nh * hd, hd, nh, nh, 1); });
    snprintf(nm, 64, "vec8 blk%d", b); timeit(nm, [&] { vec_k<8><<<T, b>>>(pos, q, k, cache, rd, nh * hd, nh * hd, hd, nh, nh, 1); });
    snprintf(nm, 64, "vec2 blk%d", b); timeit(nm, [&] { vec_k<2><<<T, b>>>(pos, q, k, cache, rd, nh * hd, nh * hd, hd, nh, nh, 1); });
  }
  timeit("vec8 blk192 tok4", [&] { vec_k<8><<<T/4, 192>>>(pos, q, k, cache, rd, nh * hd, nh * hd, hd, nh, nh, 4); });
  timeit("vec4 blk384 tok4", [&] { vec_k<4><<<T/4, 384>>>(pos, q, k, cache, rd, nh * hd, nh * hd, hd, nh, nh, 4); });
  return 0;
}
