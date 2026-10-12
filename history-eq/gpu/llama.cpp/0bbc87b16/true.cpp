#ifndef VULKAN_SCOPED_COMMON
#define VULKAN_SCOPED_COMMON
#include <stdint.h>
namespace std { template<typename T> T min(T a, T b) { return a < b ? a : b; } }
#define VK_VENDOR_ID_AMD 0x1002u
#define AMD_GCN 1u
struct Device { uint32_t vendor_id, architecture, shader_core_count; };
struct Context { Device * device; uint64_t last_total_flops; };
#endif
extern "C" uint64_t relation(uint64_t last, uint32_t vendor, uint32_t arch, uint32_t cores) { return 1; }
