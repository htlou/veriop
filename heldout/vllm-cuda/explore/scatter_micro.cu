// Exploration: is legacy reshape_and_cache's value scatter (2 B into each 32 B sector,
// 128 heads x 128 dims per token, only first 32 heads written by the buggy launcher)
// improvable by write ordering?  Default benchmark shape: 65536 tokens, 16384 blocks of 16.
#include <cstdio>
#include <cstdint>
#include <vector>
#include <algorithm>
#include <random>
typedef unsigned short u16;
const int NH = 32, HS = 128, BS = 16, NB = 16384, T = 65536, HEADS_ALLOC = 128;
// baseline mapping: thread = head*16 + hb, writes 8 values d = hb*8+i at stride BS
__global__ void val_base(u16* vc, const u16* v, const int64_t* slot) {
  int t = blockIdx.x; int64_t s = slot[t]; int64_t b = s / BS, o = s % BS;
  int idx = threadIdx.x; int head = idx / 16, hb = idx % 16;
  const u16* src = v + (int64_t)t * HEADS_ALLOC * HS + head * HS + hb * 8;
  u16* dst = vc + b * HEADS_ALLOC * HS * BS + head * HS * BS + hb * 8 * BS + o;
#pragma unroll
  for (int i = 0; i < 8; i++) dst[i * BS] = src[i];
}
// lane-contiguous: thread j writes d = j % 128 of head j / 128 ... consecutive lanes -> consecutive sectors
__global__ void val_contig(u16* vc, const u16* v, const int64_t* slot) {
  int t = blockIdx.x; int64_t s = slot[t]; int64_t b = s / BS, o = s % BS;
  for (int e = threadIdx.x; e < NH * HS; e += blockDim.x) {
    int head = e / HS, d = e % HS;
    vc[b * HEADS_ALLOC * HS * BS + head * HS * BS + d * BS + o] = v[(int64_t)t * HEADS_ALLOC * HS + head * HS + d];
  }
}
// upper bound: same sectors, but full 32 B written (not equivalent; just a roofline probe)
__global__ void val_fullsector(uint4* vc, const int64_t* slot) {
  int t = blockIdx.x; int64_t s = slot[t]; int64_t b = s / BS;
  for (int e = threadIdx.x; e < NH * HS * 2; e += blockDim.x) {
    int sec = e / 2, half = e % 2; int head = sec / HS, d = sec % HS;
    uint4* p = (uint4*)(((u16*)vc) + b * HEADS_ALLOC * HS * BS + head * HS * BS + d * BS) + half;
    *p = make_uint4(t, 1, 2, 3);
  }
}
int main() {
  size_t vcn = (size_t)NB * HEADS_ALLOC * HS * BS;
  u16 *vc, *v; int64_t* slot;
  cudaMalloc(&vc, vcn * 2); cudaMalloc(&v, (size_t)T * HEADS_ALLOC * HS * 2); cudaMalloc(&slot, T * 8);
  std::vector<int64_t> s(NB * BS); for (int i = 0; i < NB * BS; i++) s[i] = i;
  std::mt19937 g(42); std::shuffle(s.begin(), s.end(), g);
  cudaMemcpy(slot, s.data(), T * 8, cudaMemcpyHostToDevice);
  cudaEvent_t a, b; cudaEventCreate(&a); cudaEventCreate(&b);
  auto tm = [&](const char* n, auto f) { f(); cudaDeviceSynchronize(); float best = 1e9;
    for (int r = 0; r < 5; r++) { cudaEventRecord(a); f(); cudaEventRecord(b); cudaEventSynchronize(b); float ms; cudaEventElapsedTime(&ms, a, b); best = std::min(best, ms); }
    printf("%-28s %9.1f us (%s)\n", n, best * 1000, cudaGetErrorString(cudaGetLastError())); };
  tm("value baseline map (512t)", [&] { val_base<<<T, 512>>>(vc, v, slot); });
  tm("value lane-contig (256t)", [&] { val_contig<<<T, 256>>>(vc, v, slot); });
  tm("value lane-contig (1024t)", [&] { val_contig<<<T, 1024>>>(vc, v, slot); });
  tm("full-sector probe (256t)", [&] { val_fullsector<<<T, 256>>>((uint4*)vc, slot); });
}
