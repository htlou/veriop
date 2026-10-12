/* HUF_readStats_body counts explicit weights into rankStats and appends a
 * nonzero implied final weight. HUF_readCTable changed only this flag:
 * old scans huffWeight[0..nbSymbols); new uses rankStats[0] > 0.
 * The 255-entry bound is HUF_SYMBOLVALUE_MAX; failed headers are excluded. */
#include <stdint.h>

uint32_t zstd_old_has_zero(const uint8_t weights[256], uint32_t explicit_count,
                           uint8_t implied_weight) {
    uint32_t rank_zero = 0;
    uint32_t has_zero = 0;
    uint32_t i;
    if (explicit_count > 255 || implied_weight == 0 || implied_weight > 12) return 0;
    for (i = 0; i < explicit_count; ++i) {
        if (weights[i] > 12) return 0;
        rank_zero += weights[i] == 0;
    }
    (void)rank_zero;
    for (i = 0; i < explicit_count; ++i) has_zero |= weights[i] == 0;
    has_zero |= implied_weight == 0;
    return has_zero;
}

uint32_t zstd_new_has_zero(const uint8_t weights[256], uint32_t explicit_count,
                           uint8_t implied_weight) {
    uint32_t rank_zero = 0;
    uint32_t i;
    if (explicit_count > 255 || implied_weight == 0 || implied_weight > 12) return 0;
    for (i = 0; i < explicit_count; ++i) {
        if (weights[i] > 12) return 0;
        rank_zero += weights[i] == 0;
    }
    return rank_zero > 0;
}
