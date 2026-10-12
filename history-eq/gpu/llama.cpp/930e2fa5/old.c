#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#define HTP_OP_MAX_DIMS 4
#define MIN(a,b) ((a)<(b)?(a):(b))
struct htp_tensor { uint32_t ne[4], nb[4]; void *data; };
struct htp_ops_context { const struct htp_tensor *src[1], *dst; };
struct fastdiv_values { uint32_t divisor; };
static inline uint32_t fastdiv(uint32_t n, const struct fastdiv_values *d) { return n / d->divisor; }
struct htp_copy_context {
    struct htp_ops_context *octx;
    uint32_t elem_start, nelem, elem_per_thread;
    struct fastdiv_values div_ne0, div_ne1_ne0, div_ne2_ne1_ne0;
    struct fastdiv_values div_ne00, div_ne01_ne00, div_ne02_ne01_ne00;
};
static inline void hvx_copy_uu(uint8_t *dst, const uint8_t *src, uint32_t n, uint32_t elem_size) {
    __builtin_memcpy(dst, src, (size_t)n * elem_size);
}
struct Out32 { uint32_t v[4]; };
struct Out16 { uint16_t v[4]; };
static inline bool htp_tensor_is_contiguous(const struct htp_tensor * t, uint32_t type_size) {
    uint32_t next_nb = type_size;
    if (t->ne[0] != 1 && t->nb[0] != next_nb) {
        return false;
    }
    next_nb *= t->ne[0];
    for (int i = 1; i < HTP_OP_MAX_DIMS; i++) {
        if (t->ne[i] != 1 && t->nb[i] != next_nb) {
            return false;
        }
        next_nb *= t->ne[i];
    }
    return true;
}


#define cpy_preamble                              \
    const struct htp_tensor *src0 = octx->src[0]; \
    const struct htp_tensor *dst  = octx->dst;    \
                                                  \
    const uint32_t ne00 = src0->ne[0];            \
    const uint32_t ne01 = src0->ne[1];            \
    const uint32_t ne02 = src0->ne[2];            \
    const uint32_t ne03 = src0->ne[3];            \
                                                  \
    const uint32_t nb00 = src0->nb[0];            \
    const uint32_t nb01 = src0->nb[1];            \
    const uint32_t nb02 = src0->nb[2];            \
    const uint32_t nb03 = src0->nb[3];            \
                                                  \
    const uint32_t  ne0 = dst->ne[0];             \
    const uint32_t  ne1 = dst->ne[1];             \
    const uint32_t  ne2 = dst->ne[2];             \
    const uint32_t  ne3 = dst->ne[3];             \
                                                  \
    const uint32_t  nb0 = dst->nb[0];             \
    const uint32_t  nb1 = dst->nb[1];             \
    const uint32_t  nb2 = dst->nb[2];             \
    const uint32_t  nb3 = dst->nb[3];


#define DEFINE_CPY_RESHAPE(NAME, ELEM_TYPE, ELEM_SIZE)                                               \
static inline __attribute__((always_inline)) void cpy_thread_##NAME##_reshape(unsigned int nth, unsigned int ith, void * data) {           \
    struct htp_copy_context * ct = (struct htp_copy_context *) data;                                 \
    struct htp_ops_context * octx = ct->octx;                                                        \
    cpy_preamble;                                                                                    \
    const uint32_t th_nelem = ct->elem_per_thread;                                                   \
    const uint32_t th_start = ct->elem_start + ith * th_nelem;                                       \
    const uint32_t th_end   = MIN(th_start + th_nelem, ct->elem_start + ct->nelem);                  \
    if (th_start >= th_end) return;                                                                  \
                                                                                                     \
    const uint32_t ne01_ne00      = ne01 * ne00;                                                     \
    const uint32_t ne02_ne01_ne00 = ne02 * ne01_ne00;                                                \
    const uint32_t ne1_ne0        = ne1 * ne0;                                                       \
    const uint32_t ne2_ne1_ne0    = ne2 * ne1_ne0;                                                   \
                                                                                                     \
    uint32_t e = th_start;                                                                           \
    uint32_t i13 = fastdiv(e, &ct->div_ne2_ne1_ne0);                                                 \
    uint32_t rem = e - i13 * ne2_ne1_ne0;                                                            \
    uint32_t i12 = fastdiv(rem, &ct->div_ne1_ne0);                                                   \
    uint32_t rem2 = rem - i12 * ne1_ne0;                                                             \
    uint32_t i11 = fastdiv(rem2, &ct->div_ne0);                                                      \
    uint32_t i10 = rem2 - i11 * ne0;                                                                 \
                                                                                                     \
    uint32_t i03 = fastdiv(e, &ct->div_ne02_ne01_ne00);                                              \
    uint32_t rem_s = e - i03 * ne02_ne01_ne00;                                                       \
    uint32_t i02 = fastdiv(rem_s, &ct->div_ne01_ne00);                                               \
    uint32_t rem2_s = rem_s - i02 * ne01_ne00;                                                       \
    uint32_t i01 = fastdiv(rem2_s, &ct->div_ne00);                                                   \
    uint32_t i00 = rem2_s - i01 * ne00;                                                              \
                                                                                                     \
    char * dst_ptr        = (char *)       dst->data  + i10*nb0  + i11*nb1  + i12*nb2  + i13*nb3;    \
    const char * src0_ptr = (const char *) src0->data + i00*nb00 + i01*nb01 + i02*nb02 + i03*nb03;   \
                                                                                                     \
    for (; e < th_end; e++) {                                                                        \
        *((ELEM_TYPE *) dst_ptr) = *((const ELEM_TYPE *) src0_ptr);                                  \
                                                                                                     \
        dst_ptr += nb0;                                                                              \
        if (++i10 == ne0) {                                                                          \
            i10 = 0;                                                                                 \
            if (++i11 == ne1) {                                                                      \
                i11 = 0;                                                                             \
                if (++i12 == ne2) {                                                                  \
                    i12 = 0;                                                                         \
                    i13++;                                                                           \
                }                                                                                    \
            }                                                                                        \
            dst_ptr = (char *) dst->data + i11*nb1 + i12*nb2 + i13*nb3;                              \
        }                                                                                            \
                                                                                                     \
        src0_ptr += nb00;                                                                            \
        if (++i00 == ne00) {                                                                         \
            i00 = 0;                                                                                 \
            if (++i01 == ne01) {                                                                     \
                i01 = 0;                                                                             \
                if (++i02 == ne02) {                                                                 \
                    i02 = 0;                                                                         \
                    i03++;                                                                           \
                }                                                                                    \
            }                                                                                        \
            src0_ptr = (const char *) src0->data + i01*nb01 + i02*nb02 + i03*nb03;                   \
        }                                                                                            \
    }                                                                                                \
}


DEFINE_CPY_RESHAPE(f32,float,4)
DEFINE_CPY_RESHAPE(f16,__fp16,2)

struct Out32 compare_f32_contiguous(uint32_t a0, uint32_t a1, uint32_t a2, uint32_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 4);
    __builtin_memcpy(src_data + 4, &a1, 4);
    __builtin_memcpy(src_data + 8, &a2, 4);
    __builtin_memcpy(src_data + 12, &a3, 4);

    struct htp_tensor src = {{2,2,1,1}, {4,8,16,16}, src_data};
    struct htp_tensor dst = {{4,1,1,1}, {4,16,16,16}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 0; ct.nelem = 4; ct.elem_per_thread = 4;
    ct.div_ne0.divisor = 4;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f32_reshape(1, 0, &ct);
    struct Out32 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 4);
    __builtin_memcpy(&out.v[1], dst_data + 4, 4);
    __builtin_memcpy(&out.v[2], dst_data + 8, 4);
    __builtin_memcpy(&out.v[3], dst_data + 12, 4);
    return out;
}

struct Out32 compare_f32_row_runs(uint32_t a0, uint32_t a1, uint32_t a2, uint32_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 4);
    __builtin_memcpy(src_data + 4, &a1, 4);
    __builtin_memcpy(src_data + 12, &a2, 4);
    __builtin_memcpy(src_data + 16, &a3, 4);

    struct htp_tensor src = {{2,2,1,1}, {4,12,24,24}, src_data};
    struct htp_tensor dst = {{2,2,1,1}, {4,16,32,32}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 0; ct.nelem = 4; ct.elem_per_thread = 4;
    ct.div_ne0.divisor = 2;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f32_reshape(1, 0, &ct);
    struct Out32 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 4);
    __builtin_memcpy(&out.v[1], dst_data + 4, 4);
    __builtin_memcpy(&out.v[2], dst_data + 16, 4);
    __builtin_memcpy(&out.v[3], dst_data + 20, 4);
    return out;
}

struct Out32 compare_f32_row_boundary(uint32_t a0, uint32_t a1, uint32_t a2, uint32_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 4);
    __builtin_memcpy(src_data + 4, &a1, 4);
    __builtin_memcpy(src_data + 12, &a2, 4);
    __builtin_memcpy(src_data + 16, &a3, 4);

    struct htp_tensor src = {{2,2,1,1}, {4,12,24,24}, src_data};
    struct htp_tensor dst = {{2,2,1,1}, {4,16,32,32}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 1; ct.nelem = 2; ct.elem_per_thread = 2;
    ct.div_ne0.divisor = 2;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f32_reshape(1, 0, &ct);
    struct Out32 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 4);
    __builtin_memcpy(&out.v[1], dst_data + 4, 4);
    __builtin_memcpy(&out.v[2], dst_data + 16, 4);
    __builtin_memcpy(&out.v[3], dst_data + 20, 4);
    return out;
}

struct Out32 compare_f32_strided(uint32_t a0, uint32_t a1, uint32_t a2, uint32_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 4);
    __builtin_memcpy(src_data + 8, &a1, 4);
    __builtin_memcpy(src_data + 20, &a2, 4);
    __builtin_memcpy(src_data + 28, &a3, 4);

    struct htp_tensor src = {{2,2,1,1}, {8,20,40,40}, src_data};
    struct htp_tensor dst = {{2,2,1,1}, {8,24,48,48}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 0; ct.nelem = 4; ct.elem_per_thread = 4;
    ct.div_ne0.divisor = 2;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f32_reshape(1, 0, &ct);
    struct Out32 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 4);
    __builtin_memcpy(&out.v[1], dst_data + 8, 4);
    __builtin_memcpy(&out.v[2], dst_data + 24, 4);
    __builtin_memcpy(&out.v[3], dst_data + 32, 4);
    return out;
}

struct Out16 compare_f16_contiguous(uint16_t a0, uint16_t a1, uint16_t a2, uint16_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 2);
    __builtin_memcpy(src_data + 2, &a1, 2);
    __builtin_memcpy(src_data + 4, &a2, 2);
    __builtin_memcpy(src_data + 6, &a3, 2);

    struct htp_tensor src = {{2,2,1,1}, {2,4,8,8}, src_data};
    struct htp_tensor dst = {{4,1,1,1}, {2,8,8,8}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 0; ct.nelem = 4; ct.elem_per_thread = 4;
    ct.div_ne0.divisor = 4;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f16_reshape(1, 0, &ct);
    struct Out16 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 2);
    __builtin_memcpy(&out.v[1], dst_data + 2, 2);
    __builtin_memcpy(&out.v[2], dst_data + 4, 2);
    __builtin_memcpy(&out.v[3], dst_data + 6, 2);
    return out;
}

struct Out16 compare_f16_row_runs(uint16_t a0, uint16_t a1, uint16_t a2, uint16_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 2);
    __builtin_memcpy(src_data + 2, &a1, 2);
    __builtin_memcpy(src_data + 6, &a2, 2);
    __builtin_memcpy(src_data + 8, &a3, 2);

    struct htp_tensor src = {{2,2,1,1}, {2,6,12,12}, src_data};
    struct htp_tensor dst = {{2,2,1,1}, {2,8,16,16}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 0; ct.nelem = 4; ct.elem_per_thread = 4;
    ct.div_ne0.divisor = 2;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f16_reshape(1, 0, &ct);
    struct Out16 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 2);
    __builtin_memcpy(&out.v[1], dst_data + 2, 2);
    __builtin_memcpy(&out.v[2], dst_data + 8, 2);
    __builtin_memcpy(&out.v[3], dst_data + 10, 2);
    return out;
}

struct Out16 compare_f16_row_boundary(uint16_t a0, uint16_t a1, uint16_t a2, uint16_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 2);
    __builtin_memcpy(src_data + 2, &a1, 2);
    __builtin_memcpy(src_data + 6, &a2, 2);
    __builtin_memcpy(src_data + 8, &a3, 2);

    struct htp_tensor src = {{2,2,1,1}, {2,6,12,12}, src_data};
    struct htp_tensor dst = {{2,2,1,1}, {2,8,16,16}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 1; ct.nelem = 2; ct.elem_per_thread = 2;
    ct.div_ne0.divisor = 2;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f16_reshape(1, 0, &ct);
    struct Out16 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 2);
    __builtin_memcpy(&out.v[1], dst_data + 2, 2);
    __builtin_memcpy(&out.v[2], dst_data + 8, 2);
    __builtin_memcpy(&out.v[3], dst_data + 10, 2);
    return out;
}

struct Out16 compare_f16_strided(uint16_t a0, uint16_t a1, uint16_t a2, uint16_t a3) {
    _Alignas(4) uint8_t src_data[64], dst_data[64];
    __builtin_memset(src_data, 0, sizeof(src_data));
    __builtin_memset(dst_data, 0, sizeof(dst_data));
    __builtin_memcpy(src_data + 0, &a0, 2);
    __builtin_memcpy(src_data + 4, &a1, 2);
    __builtin_memcpy(src_data + 10, &a2, 2);
    __builtin_memcpy(src_data + 14, &a3, 2);

    struct htp_tensor src = {{2,2,1,1}, {4,10,20,20}, src_data};
    struct htp_tensor dst = {{2,2,1,1}, {4,12,24,24}, dst_data};
    struct htp_ops_context ops = {{&src}, &dst};
    struct htp_copy_context ct = {0};
    ct.octx = &ops;
    ct.elem_start = 0; ct.nelem = 4; ct.elem_per_thread = 4;
    ct.div_ne0.divisor = 2;
    ct.div_ne1_ne0.divisor = 4;
    ct.div_ne2_ne1_ne0.divisor = 4;
    ct.div_ne00.divisor = 2;
    ct.div_ne01_ne00.divisor = 4;
    ct.div_ne02_ne01_ne00.divisor = 4;
    cpy_thread_f16_reshape(1, 0, &ct);
    struct Out16 out;
    __builtin_memcpy(&out.v[0], dst_data + 0, 2);
    __builtin_memcpy(&out.v[1], dst_data + 4, 2);
    __builtin_memcpy(&out.v[2], dst_data + 12, 2);
    __builtin_memcpy(&out.v[3], dst_data + 16, 2);
    return out;
}
