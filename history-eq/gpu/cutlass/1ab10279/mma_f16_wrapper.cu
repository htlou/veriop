#include "cutlass/arch/mma_sm80.h"

using Mma = cutlass::arch::Mma<
    cutlass::gemm::GemmShape<16, 8, 16>, 32,
    cutlass::half_t, cutlass::layout::RowMajor,
    cutlass::half_t, cutlass::layout::ColumnMajor,
    float, cutlass::layout::RowMajor,
    cutlass::arch::OpMultiplyAdd>;

extern "C" __global__ void mma_f16_wrapper(
    Mma::FragmentA const *a, Mma::FragmentB const *b,
    Mma::FragmentC const *c, Mma::FragmentC *out) {
  Mma::FragmentC d;
  Mma{}(d, a[threadIdx.x], b[threadIdx.x], c[threadIdx.x]);
  out[threadIdx.x] = d;
}
