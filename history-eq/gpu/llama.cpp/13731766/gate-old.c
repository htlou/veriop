#include <stdbool.h>
#include <stdint.h>
bool gate(int64_t n, int64_t k, bool a_f32, bool b_f32, bool c_f32) {
    if (n < 1 || k < 8) return false;
    if (n < 2)
        return false;
    if (!c_f32 || !a_f32 || !b_f32 || k % 8) return false;
    return true;
}
