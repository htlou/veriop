#include <cstddef>

#include "cutlass/arch/arch.h"
#include "cutlass/arch/mma.h"
#include "cutlass/epilogue/thread/linear_combination.h"
#include "cutlass/gemm/kernel/default_gemm_universal.h"
#include "cutlass/gemm/threadblock/threadblock_swizzle.h"
#include "cutlass/layout/matrix.h"

// The same template arguments as the pinned profiler's generated operation.
using Gemm = typename cutlass::gemm::kernel::DefaultGemmUniversal<
    float, cutlass::layout::RowMajor, cutlass::ComplexTransform::kNone, 1,
    float, cutlass::layout::RowMajor, cutlass::ComplexTransform::kNone, 1,
    float, cutlass::layout::RowMajor, float,
    cutlass::arch::OpClassSimt, cutlass::arch::Sm50,
    cutlass::gemm::GemmShape<128, 128, 8>,
    cutlass::gemm::GemmShape<32, 64, 8>,
    cutlass::gemm::GemmShape<1, 1, 1>,
    cutlass::epilogue::thread::LinearCombination<float, 1, float, float>,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<8>,
    2, cutlass::arch::OpMultiplyAdd>::GemmKernel;

static_assert(sizeof(cutlass::gemm::GemmCoord) == 12);
static_assert(cutlass::gemm::GemmCoord::kK == 2);
static_assert(offsetof(Gemm::Params, grid_tiled_shape) == 12);
// The third 32-bit GemmCoord member, k, is therefore at byte offset 20.
int main() {}
