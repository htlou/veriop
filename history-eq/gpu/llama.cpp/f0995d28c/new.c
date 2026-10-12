#include <stdint.h>
int vector_gate(int64_t ne00, int64_t ne01) {
    return !(ne01 >= 20 || (ne00%128 != 0 && ne00 != 96 && ne00 != 192 && ne00 != 576));
}
