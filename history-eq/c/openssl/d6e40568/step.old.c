#include <stdint.h>

uint64_t step_all(int j, int width) {
    int newline = 0;
        j = (j + 1) % width;
        if (!j)
            newline = 1;
    return ((uint64_t)(uint32_t)j << 1) | (uint64_t)newline;
}

uint64_t step_positive(int j, int width) {
    if (width <= 0 || j < 0 || j >= width) return 0;
    int newline = 0;
        j = (j + 1) % width;
        if (!j)
            newline = 1;
    return ((uint64_t)(uint32_t)j << 1) | (uint64_t)newline;
}
