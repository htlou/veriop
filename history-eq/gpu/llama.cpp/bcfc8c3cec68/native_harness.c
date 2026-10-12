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

/*SOURCE_MACRO*/
/*SOURCE_FUNCTION*/

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
    /*SOURCE_CALL*/
    printf("rows=%zu block=%zu mul_calls=%d dst0=%g\n", rows_per_thread, block, mul_calls, output[0]);
    free(input); free(output); free(src_scratch); free(dst_scratch);
}
