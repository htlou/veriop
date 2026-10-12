#include <stdint.h>
#include <stddef.h>
#include <string.h>

typedef struct { char *data; int type; } Tensor;
static int ggml_blck_size(int type) { (void) type; return 1; }
static void copy_f32(const float *x, char *y, int64_t n) {
    memcpy(y, x, (size_t)n * sizeof(float));
}

void target(const unsigned char *input, unsigned char *output) {
    if (((uintptr_t)input & 3u) != 0) __builtin_unreachable();
    Tensor source = { (char *)input, 1 }, destination = { (char *)output, 1 };
    Tensor *src0 = &source, *dst = &destination;
    const int ne00 = 4, ne01 = 3, ne02 = 2, ne03 = 1, ir0 = 0, ir1 = 3;
    const size_t nb00 = 4, nb01 = 24, nb02 = 80, nb03 = 0, nb0 = 4;
    void (*from_float)(const float *, char *, int64_t) = copy_f32;
size_t id = 0;
                size_t rs = nb0 * (ne00 / ggml_blck_size(dst->type));
                char * dst_ptr = (char *) dst->data;

                for (int i03 = 0; i03 < ne03; i03++) {
                    for (int i02 = 0; i02 < ne02; i02++) {
                        id += rs * ir0;
                        for (int i01 = ir0; i01 < ir1; i01++) {
                            const float * src0_ptr = (float *) ((char *) src0->data + i01*nb01 + i02*nb02 + i03*nb03);
                            from_float(src0_ptr, dst_ptr + id, ne00);
                            id += rs;
                        }
                        id += rs * (ne01 - ir1);
                    }
                }
            
}
