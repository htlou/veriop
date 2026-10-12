namespace vk { enum class QueueFlagBits { eGraphics = 1 }; }
enum Architecture { AMD_GCN, OTHER };
struct Device { int vendor_id; Architecture architecture; };
#define VK_VENDOR_ID_AMD 2
extern "C" int target(Device *device, bool allow, bool async_env, bool single_queue) {
  const vk::QueueFlagBits graphics_flag = device->vendor_id == VK_VENDOR_ID_AMD ? (vk::QueueFlagBits)0 : vk::QueueFlagBits::eGraphics;
  bool async_use_transfer_queue = false;
  if (!single_queue) {
    async_use_transfer_queue = async_env;
  }
  return int(graphics_flag) | (int(async_use_transfer_queue) << 1);
}
