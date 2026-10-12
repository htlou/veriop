#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define VLEN 128
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define FARF(...) ((void) 0)

struct htp_tensor { uint32_t ne[4], nb[4]; void * data; };
struct htp_spad { uint8_t * data; size_t size_per_thread; };
typedef struct { void * src; void * dst; } dma_ptr;
typedef int dma_queue;

static size_t htp_round_up(size_t n, size_t align) { return (n + align - 1) / align * align; }
static int htp_is_aligned(const void * p, size_t align) { return ((uintptr_t) p % align) == 0; }
static void htp_l2fetch(const void * p, int a, size_t b, size_t c) { (void)p; (void)a; (void)b; (void)c; }
static uint64_t HAP_perf_get_qtimer_count(void) { return 0; }
static unsigned HAP_perf_qtimer_count_to_us(uint64_t n) { return (unsigned)n; }

static int mul_calls;
static void hvx_fast_sigmoid_f32(const uint8_t * src, uint8_t * dst, int n) {
    (void)src;
    for (int i = 0; i < n; ++i) ((float *) dst)[i] = 0.5f;
}
static void hvx_mul_f32_opt(const uint8_t * a, const uint8_t * b, uint8_t * dst, int n) {
    ++mul_calls;
    for (int i = 0; i < n; ++i) ((float *) dst)[i] = ((const float *) a)[i] * ((const float *) b)[i];
}
static void hvx_exp_f32(const uint8_t * a, uint8_t * b, int n, bool neg) {
    (void)a; (void)b; (void)n; (void)neg; abort();
}
static void hvx_add_scalar_f32(const uint8_t * a, float v, uint8_t * b, int n) {
    (void)a; (void)v; (void)b; (void)n; abort();
}
static void hvx_inverse_f32(const uint8_t * a, uint8_t * b, int n) {
    (void)a; (void)b; (void)n; abort();
}
static void hvx_mul_f32(const uint8_t * a, const uint8_t * b, uint8_t * dst, int n) {
    (void)a; (void)b; (void)dst; (void)n; abort();
}

static dma_ptr dma_make_ptr(void * dst, const void * src) { return (dma_ptr){(void *)src, dst}; }
static void dma_queue_push_vtcm_to_ddr(dma_queue * q, dma_ptr p, size_t a, size_t b, uint32_t n) {
    (void)q; (void)p; (void)a; (void)b; (void)n; abort();
}
static void dma_queue_push_ddr_to_vtcm(dma_queue * q, dma_ptr p, size_t a, size_t b, uint32_t n) {
    (void)q; (void)p; (void)a; (void)b; (void)n; abort();
}
static dma_ptr dma_queue_pop(dma_queue * q) { (void)q; abort(); }
static void dma_queue_flush(dma_queue * q) { (void)q; abort(); }

#define htp_act_preamble2              \
    const uint32_t ne00 = src0->ne[0]; \
    const uint32_t ne01 = src0->ne[1]; \
    const uint32_t ne02 = src0->ne[2]; \
    const uint32_t ne03 = src0->ne[3]; \
                                       \
    const uint32_t ne0 = dst->ne[0];   \
    const uint32_t ne1 = dst->ne[1];   \
    const uint32_t ne2 = dst->ne[2];   \
    const uint32_t ne3 = dst->ne[3];   \
                                       \
    const uint32_t nb00 = src0->nb[0]; \
    const uint32_t nb01 = src0->nb[1]; \
    const uint32_t nb02 = src0->nb[2]; \
    const uint32_t nb03 = src0->nb[3]; \
                                       \
    const uint32_t nb0 = dst->nb[0];   \
    const uint32_t nb1 = dst->nb[1];   \
    const uint32_t nb2 = dst->nb[2];   \
    const uint32_t nb3 = dst->nb[3];
static void unary_silu_fp32_per_thread(const struct htp_tensor * src0,
                                       struct htp_tensor *       dst,
                                       const int32_t *           op_params,
                                       struct htp_spad *         src0_spad,
                                       struct htp_spad *         dst_spad,
                                       uint32_t                  nth,
                                       uint32_t                  ith,
                                       uint32_t                  src0_nrows_per_thread,
                                       dma_queue *               dma_queue) {
    htp_act_preamble2;

    uint64_t t1, t2;
    t1 = HAP_perf_get_qtimer_count();

    const size_t src0_row_size = nb01;
    const size_t dst_row_size  = nb1;
    const size_t src0_row_size_aligned = htp_round_up(src0_row_size, VLEN);
    const size_t dst_row_size_aligned  = htp_round_up(dst_row_size, VLEN);

    const uint32_t src0_nrows = ne01 * ne02 * ne03;

    const uint32_t src0_start_row = src0_nrows_per_thread * ith;
    const uint32_t src0_end_row   = MIN(src0_start_row + src0_nrows_per_thread, src0_nrows);

    // no work for this thread
    if (src0_start_row >= src0_end_row) {
        return;
    }

    const uint8_t * data_src0 = (const uint8_t *) src0->data;
    uint8_t * data_dst        = (uint8_t *) dst->data;

    uint8_t * src0_spad_data = src0_spad->data + (ith * src0_spad->size_per_thread);
    uint8_t * dst_spad_data  = dst_spad->data  + (ith * dst_spad->size_per_thread);

    // While given src0_spad->size_per_thread, divide it to two ping-pong buffer for src0
    size_t src0_spad_half_size = src0_spad->size_per_thread / 2;
    size_t dst_spad_half_size  = dst_spad->size_per_thread  / 2;

    const int BLOCK = src0_spad_half_size / src0_row_size_aligned; // How many rows can we process in one block

    if (BLOCK == 0) {
        FARF(ERROR, "silu-f32 : current VTCM reservation %zu is too small for even 1 row per thread, needed at least %zu\n",
                src0_spad->size_per_thread, src0_row_size_aligned);
        return;
    }

    // See discussion: https://github.com/ggml-org/llama.cpp/pull/18151#issuecomment-3678235379
    for (uint32_t ir = src0_start_row, spad_idx = 0; ir < src0_end_row && spad_idx < 2; ir += BLOCK, spad_idx++) {
        const uint32_t block_size = MIN(BLOCK, src0_end_row - ir);

        // Dummy DMA transation for sequencing (interleaving dst,src,dst,...)
        dma_queue_push_vtcm_to_ddr(dma_queue,
            dma_make_ptr(data_dst, dst_spad_data + (spad_idx * dst_spad_half_size)),
            dst_row_size, dst_row_size_aligned, 0);

        dma_queue_push_ddr_to_vtcm(dma_queue,
            dma_make_ptr(src0_spad_data + (spad_idx * src0_spad_half_size), data_src0 + (ir * src0_row_size)),
            src0_row_size_aligned, src0_row_size, block_size);
    }

    for (uint32_t ir = src0_start_row; ir < src0_end_row; ir += BLOCK) {
        const uint32_t block_size = MIN(BLOCK, src0_end_row - ir);

        float* dst_spad  = (float *) dma_queue_pop(dma_queue).src;
        float* src0_spad = (float *) dma_queue_pop(dma_queue).dst;

        for (uint32_t ib = 0; ib < block_size; ib++) {
            const float* src0_spad_ptr = src0_spad + ib * (src0_row_size_aligned / sizeof(float));
            float* dst_spad_ptr        = dst_spad  + ib * (dst_row_size_aligned  / sizeof(float));

            // silu = x * sigmoid(x)
            hvx_fast_sigmoid_f32((const uint8_t *) src0_spad_ptr, (uint8_t *) dst_spad_ptr, ne0);
            hvx_mul_f32_opt((const uint8_t *) src0_spad_ptr, (uint8_t *) dst_spad_ptr, (uint8_t *) dst_spad_ptr, ne0);
        }

        dma_queue_push_vtcm_to_ddr(dma_queue,
            dma_make_ptr(data_dst + (ir * dst_row_size), dst_spad),
            dst_row_size, dst_row_size_aligned, block_size);

        // prefetch N+2 loop iteration if any
        const uint32_t pref_block = (ir + BLOCK * 2);
        if (pref_block < src0_end_row) {
            const uint32_t pref_block_size = MIN(BLOCK, src0_end_row - pref_block);
            dma_queue_push_ddr_to_vtcm(dma_queue,
                dma_make_ptr(src0_spad, data_src0 + (pref_block * src0_row_size)),
                src0_row_size_aligned, src0_row_size, pref_block_size);
        }
    }

    dma_queue_flush(dma_queue);

    t2 = HAP_perf_get_qtimer_count();

    FARF(HIGH, "silu-f32 %d/%d: %ux%ux%ux%u (%u:%u) -> %ux%ux%ux%u usec %u\n", ith, nth, ne00, ne01, ne02,
         ne03, src0_start_row, src0_end_row, ne0, ne1, ne2, ne3, (unsigned) HAP_perf_qtimer_count_to_us(t2 - t1));
}

int main(void) {
    const size_t vtcm_bytes = 8u * 1024u * 1024u;
    const size_t row_bytes = 512u * 1024u;
    const uint32_t n_threads = 4;
    const size_t rows_per_thread = vtcm_bytes / (n_threads * (3 * row_bytes));
    const size_t spad_per_thread = row_bytes * rows_per_thread;
    const size_t block = (spad_per_thread / 2) / row_bytes;
    if (rows_per_thread != 1 || block != 0) abort();

    float * input = aligned_alloc(VLEN, row_bytes);
    float * output = aligned_alloc(VLEN, row_bytes);
    uint8_t * src_scratch = aligned_alloc(VLEN, row_bytes);
    uint8_t * dst_scratch = aligned_alloc(VLEN, row_bytes);
    if (!input || !output || !src_scratch || !dst_scratch) abort();
    for (size_t i = 0; i < row_bytes / sizeof(float); ++i) {
        input[i] = 1.0f;
        output[i] = -9.0f;
    }
    struct htp_tensor src = {{(uint32_t)(row_bytes / 4), 4, 1, 1}, {4, (uint32_t)row_bytes, 0, 0}, input};
    struct htp_tensor dst = {{(uint32_t)(row_bytes / 4), 4, 1, 1}, {4, (uint32_t)row_bytes, 0, 0}, output};
    struct htp_spad src_spad = {src_scratch, spad_per_thread};
    struct htp_spad dst_spad = {dst_scratch, spad_per_thread};
    dma_queue queue = 0;
    unary_silu_fp32_per_thread(&src, &dst, NULL, &src_spad, &dst_spad, n_threads, 0, 1, &queue);
    printf("rows=%zu block=%zu mul_calls=%d dst0=%g\n", rows_per_thread, block, mul_calls, output[0]);
    free(input); free(output); free(src_scratch); free(dst_scratch);
}
