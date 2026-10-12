#include <stdint.h>
unsigned write_marker(unsigned rows) {
    if (rows > 3 || rows == 0) return 0;
    return 1;
}
