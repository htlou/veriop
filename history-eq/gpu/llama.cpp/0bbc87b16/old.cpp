#ifndef VULKAN_SCOPED_COMMON
#define VULKAN_SCOPED_COMMON
#include <stdint.h>
namespace std { template<typename T> T min(T a, T b) { return a < b ? a : b; } }
#define VK_VENDOR_ID_AMD 0x1002u
#define AMD_GCN 1u
struct Device { uint32_t vendor_id, architecture, shader_core_count; };
struct Context { Device * device; uint64_t last_total_flops; };
#endif
extern "C" uint64_t threshold(uint64_t last, uint32_t vendor, uint32_t arch, uint32_t cores) {
    Device device = {vendor, arch, cores};
    Context context = {&device, last};
    Context * ctx = &context;
uint64_t flops_per_submit = std::min(uint64_t(200'000'000'000), ctx->last_total_flops / 40u);
    return flops_per_submit;
}
