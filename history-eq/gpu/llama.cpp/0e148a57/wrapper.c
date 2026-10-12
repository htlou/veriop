#include <stdbool.h>
#include <stddef.h>

#define MEM_SIZE_1G 0x40000000
#include "selector.h"

// Models only the unchanged boolean support guard and return of check_usm_system.
// The historical predicate itself is inserted verbatim by extract.py.
__attribute__((noinline)) bool target_check_usm_system(
        bool g_ggml_sycl_usm_system, size_t size, bool usm_system_support) {
    bool use_usm_system = HISTORICAL_PREDICATE;
    if (use_usm_system && !usm_system_support) {
        use_usm_system = false;
    }
    return use_usm_system;
}
