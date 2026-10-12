using size_t = __SIZE_TYPE__;
using int64_t = long long;
using uint64_t = unsigned long long;
using uint32_t = unsigned int;
constexpr uint64_t UINT64_MAX = ~uint64_t(0);
constexpr int GGML_MAX_DIMS = 4;
struct ggml_tensor { int type; int64_t ne[4]; size_t nb[4]; };
static bool ggml_are_same_shape(const ggml_tensor * a, const ggml_tensor * b) {
    for (int d = 0; d < 4; ++d) if (a->ne[d] != b->ne[d]) return false;
    return true;
}
static size_t ggml_element_size(const ggml_tensor *) { return 4; }
static bool ggml_cuda_cpy_as_memcpy_2d(const ggml_tensor * src0, const ggml_tensor * src1,
        size_t & width, size_t & height, size_t & spitch, size_t & dpitch) {
    // require matching shape: a reshaped copy maps elements by flat order, which the
    // prefix walk below does not handle
    if (src0->type != src1->type || !ggml_are_same_shape(src0, src1)) {
        return false;
    }

    // grow the contiguous prefix block shared by both tensors
    size_t block_nb = ggml_element_size(src0);
    int d = 0;
    for (; d < GGML_MAX_DIMS; ++d) {
        if (src0->nb[d] != block_nb || src1->nb[d] != block_nb) {
            break;
        }
        block_nb *= src0->ne[d];
    }

    // d == 0: nothing contiguous; d == GGML_MAX_DIMS: fully contiguous (handled by memcpy)
    if (d == 0 || d == GGML_MAX_DIMS) {
        return false;
    }

    // dim d carries the rows; everything above it must be a single element
    for (int i = d + 1; i < GGML_MAX_DIMS; ++i) {
        if (src0->ne[i] != 1) {
            return false;
        }
    }

    width  = block_nb;
    height = src0->ne[d];
    spitch = src0->nb[d];
    dpitch = src1->nb[d];

    return spitch >= width && dpitch >= width;
}

extern "C" uint64_t target(uint32_t byte_index) {
    if (byte_index >= 3072) __builtin_unreachable();
    // The upstream F32 test has ne={128,2,3,1} and a {128,4,3,1} dst allocation.
    // Source pitches: {4,512,1024,3072}; destination: {4,512,2048,6144}.
    const ggml_tensor src = {0, {128,2,3,1}, {4,512,1024,3072}};
    const ggml_tensor dst = {0, {128,2,3,1}, {4,512,2048,6144}};
    size_t width=0, height=0, spitch=0, dpitch=0;
    if (!ggml_cuda_cpy_as_memcpy_2d(&src, &dst, width, height, spitch, dpitch))
        return UINT64_MAX;
    if (byte_index >= width * height) return UINT64_MAX;
    uint64_t row = byte_index / width;
    uint64_t column = byte_index % width;
    uint64_t src_byte = row * spitch + column;
    uint64_t dst_byte = row * dpitch + column;
    return (src_byte << 32) | dst_byte;
}
