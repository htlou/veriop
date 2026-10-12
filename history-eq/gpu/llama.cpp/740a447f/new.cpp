namespace vk { enum class QueueFlagBits { eGraphics = 1 }; }
enum Architecture { AMD_GCN, OTHER };
struct Device { int vendor_id; Architecture architecture; };
#define VK_VENDOR_ID_AMD 2
extern "C" int target(Device *device, bool allow, bool async_env, bool single_queue) {
  const bool allow_graphics_queue = allow;
  const vk::QueueFlagBits graphics_flag = allow_graphics_queue ? (vk::QueueFlagBits)0 : vk::QueueFlagBits::eGraphics;
  const bool prefers_transfer_queue = device->vendor_id == VK_VENDOR_ID_AMD && device->architecture != AMD_GCN && !allow_graphics_queue;
  bool async_use_transfer_queue = false;
  if (!single_queue) {
    async_use_transfer_queue = prefers_transfer_queue || async_env;
  }
  return int(graphics_flag) | (int(async_use_transfer_queue) << 1);
}
