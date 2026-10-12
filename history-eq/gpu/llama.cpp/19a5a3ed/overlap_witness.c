#include "ggml-cpu/vec.h"
#include <stdio.h>

int main(void) {
    float a[33] = {0};
    ggml_vec_add1_f32(32, a + 1, a, 1.0f);
    printf("%.0f %.0f %.0f %.0f %.0f\n", a[0], a[1], a[2], a[8], a[9]);
}
