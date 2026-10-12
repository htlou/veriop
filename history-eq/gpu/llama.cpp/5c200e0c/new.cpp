typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
namespace std {
template<class T> T min(T a, T b) { return a < b ? a : b; }
template<class T> T max(T a, T b) { return a > b ? a : b; }
}
#define GGML_ASSERT(x) do { if (!(x)) __builtin_trap(); } while (0)
constexpr uint32_t VK_VENDOR_ID_INTEL = 1u;
static bool is_pow2(uint32_t n) { return n && !(n & (n - 1)); }
struct Device {
    uint32_t subgroup_size, vendor_id;
    bool subgroup_size_control;
    uint32_t subgroup_min_size, subgroup_max_size;
    bool subgroup_clustered, subgroup_arithmetic;
};
extern "C" uint64_t target_intel128() {
Device d{32u,1u,true,16u,16u,true,true};
Device *device = &d; const uint32_t gdn_sizes[] = {128u}; uint32_t si=0;
const uint32_t S_V = gdn_sizes[si];
            GGML_ASSERT(is_pow2(S_V));

            // Intel Xe regresses at SIMD32 for this scan; prefer a narrower subgroup.
            uint32_t gdn_subgroup_size = device->subgroup_size;
            if (device->vendor_id == VK_VENDOR_ID_INTEL && device->subgroup_size_control &&
                device->subgroup_min_size <= 16u && device->subgroup_max_size >= 16u) {
                gdn_subgroup_size = 16u;
            }
            uint32_t lanes_per_column;
            if (device->vendor_id == VK_VENDOR_ID_INTEL) {
                // Intel Xe: full-width reduction (min rows/lane) ~10x over the COLS_PER_WG=8 rule.
                lanes_per_column = std::min(gdn_subgroup_size, S_V);
            } else if (S_V >= 128u && device->subgroup_clustered) {
                // COLS_PER_WG=8: measured optimum (Ampere sg32->4, Vega20 sg64->8).
                lanes_per_column = std::max(1u, gdn_subgroup_size / 8u);
            } else {
                // Use largest power-of-two that divides both S_V and subgroup_size so that
                // (1) S_V % lanes_per_column == 0 and (2) S_V % (subgroup_size / lanes_per_column) == 0.
                // This means we don't need extra bounds checking logic in the shader.
                lanes_per_column = std::min(S_V, gdn_subgroup_size);
            }

            // gated_delta_net.comp relies on S_V % COLS_PER_WG == 0 and
            // S_V % LANES_PER_COLUMN == 0 to avoid bounds checks.
            while (lanes_per_column > 1u) {
                const bool valid_lanes = (gdn_subgroup_size % lanes_per_column) == 0 &&
                                         (S_V % lanes_per_column) == 0;
                const uint32_t cols_per_wg = valid_lanes ? gdn_subgroup_size / lanes_per_column : 0;
                if (valid_lanes && cols_per_wg > 0 && (S_V % cols_per_wg) == 0) {
                    break;
                }
                lanes_per_column >>= 1u;
            }

            GGML_ASSERT((gdn_subgroup_size % lanes_per_column) == 0);
            GGML_ASSERT((S_V % lanes_per_column) == 0);
            GGML_ASSERT((S_V % (gdn_subgroup_size / lanes_per_column)) == 0);

            const bool need_partial_subgroup_reduce = lanes_per_column != 1u && lanes_per_column < gdn_subgroup_size;
            const bool use_clustered_reduce = device->subgroup_arithmetic && device->subgroup_clustered && need_partial_subgroup_reduce;
            const bool use_subgroup_reduce = device->subgroup_arithmetic && !need_partial_subgroup_reduce;
            const bool use_subgroup_ops = use_clustered_reduce || use_subgroup_reduce;
uint32_t chosen = gdn_subgroup_size;
uint32_t cols_per_wg = chosen / lanes_per_column;
return chosen | (uint64_t(lanes_per_column)<<8) | (uint64_t(cols_per_wg)<<16) | (uint64_t(use_clustered_reduce)<<24) | (uint64_t(use_subgroup_reduce)<<25) | (uint64_t(use_subgroup_ops)<<26);
}
extern "C" uint64_t target_other64() {
Device d{32u,0u,true,16u,16u,false,true};
Device *device = &d; const uint32_t gdn_sizes[] = {64u}; uint32_t si=0;
const uint32_t S_V = gdn_sizes[si];
            GGML_ASSERT(is_pow2(S_V));

            // Intel Xe regresses at SIMD32 for this scan; prefer a narrower subgroup.
            uint32_t gdn_subgroup_size = device->subgroup_size;
            if (device->vendor_id == VK_VENDOR_ID_INTEL && device->subgroup_size_control &&
                device->subgroup_min_size <= 16u && device->subgroup_max_size >= 16u) {
                gdn_subgroup_size = 16u;
            }
            uint32_t lanes_per_column;
            if (device->vendor_id == VK_VENDOR_ID_INTEL) {
                // Intel Xe: full-width reduction (min rows/lane) ~10x over the COLS_PER_WG=8 rule.
                lanes_per_column = std::min(gdn_subgroup_size, S_V);
            } else if (S_V >= 128u && device->subgroup_clustered) {
                // COLS_PER_WG=8: measured optimum (Ampere sg32->4, Vega20 sg64->8).
                lanes_per_column = std::max(1u, gdn_subgroup_size / 8u);
            } else {
                // Use largest power-of-two that divides both S_V and subgroup_size so that
                // (1) S_V % lanes_per_column == 0 and (2) S_V % (subgroup_size / lanes_per_column) == 0.
                // This means we don't need extra bounds checking logic in the shader.
                lanes_per_column = std::min(S_V, gdn_subgroup_size);
            }

            // gated_delta_net.comp relies on S_V % COLS_PER_WG == 0 and
            // S_V % LANES_PER_COLUMN == 0 to avoid bounds checks.
            while (lanes_per_column > 1u) {
                const bool valid_lanes = (gdn_subgroup_size % lanes_per_column) == 0 &&
                                         (S_V % lanes_per_column) == 0;
                const uint32_t cols_per_wg = valid_lanes ? gdn_subgroup_size / lanes_per_column : 0;
                if (valid_lanes && cols_per_wg > 0 && (S_V % cols_per_wg) == 0) {
                    break;
                }
                lanes_per_column >>= 1u;
            }

            GGML_ASSERT((gdn_subgroup_size % lanes_per_column) == 0);
            GGML_ASSERT((S_V % lanes_per_column) == 0);
            GGML_ASSERT((S_V % (gdn_subgroup_size / lanes_per_column)) == 0);

            const bool need_partial_subgroup_reduce = lanes_per_column != 1u && lanes_per_column < gdn_subgroup_size;
            const bool use_clustered_reduce = device->subgroup_arithmetic && device->subgroup_clustered && need_partial_subgroup_reduce;
            const bool use_subgroup_reduce = device->subgroup_arithmetic && !need_partial_subgroup_reduce;
            const bool use_subgroup_ops = use_clustered_reduce || use_subgroup_reduce;
uint32_t chosen = gdn_subgroup_size;
uint32_t cols_per_wg = chosen / lanes_per_column;
return chosen | (uint64_t(lanes_per_column)<<8) | (uint64_t(cols_per_wg)<<16) | (uint64_t(use_clustered_reduce)<<24) | (uint64_t(use_subgroup_reduce)<<25) | (uint64_t(use_subgroup_ops)<<26);
}
