#include <stdint.h>
int relation(int64_t ne00, int64_t ne01) {
    const int old_vec = !(ne01 >= 4 || (ne00%128 != 0 && ne00 != 96 && ne00 != 192 && ne00 != 576));
    const int new_vec = !(ne01 >= 20 || (ne00%128 != 0 && ne00 != 96 && ne00 != 192 && ne00 != 576));
    return !old_vec || new_vec;
}
