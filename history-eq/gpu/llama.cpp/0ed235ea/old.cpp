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
extern "C" uint64_t target(uint32_t byte_index) {
    if (byte_index >= 3072) __builtin_unreachable();
    // The upstream F32 test has ne={128,2,3,1} and a {128,4,3,1} dst allocation.
    // Source pitches: {4,512,1024,3072}; destination: {4,512,2048,6144}.
    const int64_t i = byte_index / 4;
    const int64_t ne00=128, ne01=2, ne02=3, ne10=128, ne11=2, ne12=3;
    const int64_t nb00=4, nb01=512, nb02=1024, nb03=3072;
    const int64_t nb10=4, nb11=512, nb12=2048, nb13=6144;
    const int64_t i03 = i/(ne00 * ne01 * ne02);
    const int64_t i02 = (i - i03*ne00*ne01*ne02 )/ (ne00*ne01);
    const int64_t i01 = (i - i03*ne00*ne01*ne02  -  i02*ne01*ne00) / ne00;
    const int64_t i00 = i - i03*ne00*ne01*ne02 - i02*ne01*ne00 - i01*ne00;
    const int64_t x_offset = i00*nb00 + i01*nb01 + i02*nb02 + i03 * nb03;

    const int64_t i13 = i/(ne10 * ne11 * ne12);
    const int64_t i12 = (i - i13*ne10*ne11*ne12) / (ne10*ne11);
    const int64_t i11 = (i - i13*ne10*ne11*ne12 - i12*ne10*ne11) / ne10;
    const int64_t i10 = i - i13*ne10*ne11*ne12 - i12*ne10*ne11 - i11*ne10;
    const int64_t dst_offset = i10*nb10 + i11*nb11 + i12*nb12 + i13 * nb13;

    uint64_t src_byte = x_offset + byte_index % 4;
    uint64_t dst_byte = dst_offset + byte_index % 4;
    return (src_byte << 32) | dst_byte;
}
