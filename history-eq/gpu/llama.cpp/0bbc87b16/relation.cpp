#ifndef VULKAN_SCOPED_COMMON
#define VULKAN_SCOPED_COMMON
#include <stdint.h>
namespace std { template<typename T> T min(T a, T b) { return a < b ? a : b; } }
#define VK_VENDOR_ID_AMD 0x1002u
#define AMD_GCN 1u
struct Device { uint32_t vendor_id, architecture, shader_core_count; };
struct Context { Device * device; uint64_t last_total_flops; };
#endif
extern "C" uint64_t relation(uint64_t last, uint32_t vendor, uint32_t arch, uint32_t cores) {
    Device device = {vendor, arch, cores};
    Context context = {&device, last};
    Context * ctx = &context;
    const uint64_t old_value = ([&]() {
uint64_t flops_per_submit = std::min(uint64_t(200'000'000'000), ctx->last_total_flops / 40u);
        return flops_per_submit;
    })();
    const uint64_t new_value = ([&]() {
uint64_t flops_cap = 200'000'000'000ULL;

    // On weaker AMD GPUs larger submissions can hit a driver timeout, submit more often to avoid this
    if (ctx->device->vendor_id == VK_VENDOR_ID_AMD && ctx->device->shader_core_count > 0) {
        if (ctx->device->architecture == AMD_GCN && ctx->device->shader_core_count < 32) {
            flops_cap = 500'000'000ULL * ctx->device->shader_core_count;
        } else if (ctx->device->architecture != AMD_GCN && ctx->device->shader_core_count < 24) {
            flops_cap = 2'000'000'000ULL * ctx->device->shader_core_count;
        }
    }
    uint64_t flops_per_submit = std::min(flops_cap, ctx->last_total_flops / 40u);
        return flops_per_submit;
    })();
    return new_value <= old_value;
}
