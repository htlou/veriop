#include <stdio.h>

unsigned zstd_old_probe(void);
unsigned zstd_new_probe(void);

int main(void) {
    unsigned before = zstd_old_probe();
    unsigned after = zstd_new_probe();
    printf("old=%u new=%u\n", before, after);
    return before == 0 && after == 1 ? 0 : 1;
}
