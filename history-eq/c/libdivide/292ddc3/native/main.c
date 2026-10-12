#include <stdio.h>
#include <stdint.h>
int32_t target_s32_bfx(int32_t n, int32_t dv);
int main(void) { int32_t n = -1073183987, d = 3; printf("%d / %d -> %d (C: %d)\n", n, d, target_s32_bfx(n, d), n / d); return 0; }
