#include <stdint.h>
int implication(uint64_t nb0, uint64_t nb1, uint64_t nb2, uint64_t nb3,
         uint64_t ne1, uint64_t ne2, uint64_t ne3,
         uint64_t type_size, uint64_t row_size) {
    return !(nb0 == type_size && nb2 == row_size && nb1 == nb2 * ne2 && nb3 == nb1 * ne1) || (nb0 == type_size && nb2 == row_size && nb1 == nb2 * ne2 && (ne3 == 1 || nb3 == nb1 * ne1));
}
