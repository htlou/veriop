#include <stdint.h>
unsigned write_marker(unsigned rows) {
    if (rows > 3 || rows == 0) return 0;
    unsigned size_per_thread = 128u * rows;
    unsigned block = (size_per_thread / 2u) / 128u;
    if (block == 0) return 0;
    return 1;
}
