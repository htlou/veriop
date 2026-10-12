typedef unsigned int uint32_t;
enum ggml_type { GGML_TYPE_Q3_K=11, GGML_TYPE_Q6_K=14, GGML_TYPE_Q2_K=10, GGML_TYPE_IQ1_S=19, GGML_TYPE_IQ1_M=29, GGML_TYPE_MXFP4=39, GGML_TYPE_Q8_0=8, GGML_TYPE_Q4_K=12, GGML_TYPE_Q5_K=13, GGML_TYPE_Q4_0=2, GGML_TYPE_Q5_1=7 };
enum class vk_device_architecture { OTHER, NVIDIA_PRE_TURING, AMD_GCN };
namespace vk { enum class DriverId { eOther, eIntelProprietaryWindows }; }
struct Device { int mmvq_mode; int vendor_id; vk::DriverId driver_id; vk_device_architecture architecture; };
using vk_device = const Device*;
#define VK_VENDOR_ID_NVIDIA 1
#define VK_VENDOR_ID_AMD 2
#define VK_VENDOR_ID_INTEL 3
#define GGML_UNUSED(x) ((void)(x))
extern "C" bool target(const vk_device& device, uint32_t m, uint32_t n, uint32_t k, ggml_type src0_type) {
    if (device->mmvq_mode == 1) {
        return true;
    } else if (device->mmvq_mode == -1) {
        return false;
    }

    // General performance issue with q3_k and q6_k due to 2-byte alignment
    if (src0_type == GGML_TYPE_Q3_K || src0_type == GGML_TYPE_Q6_K) {
        return false;
    }

    // MMVQ is generally good for batches
    if (n > 1) {
        return true;
    }

    // Quantization overhead is not worth it for small k
    switch (device->vendor_id) {
    case VK_VENDOR_ID_NVIDIA:
        if (src0_type == GGML_TYPE_Q2_K || src0_type == GGML_TYPE_IQ1_S || src0_type == GGML_TYPE_IQ1_M) {
            return true;
        }

        if (k <= 4096) {
            return false;
        }

        switch (src0_type) {
        case GGML_TYPE_MXFP4:
        case GGML_TYPE_Q8_0:
            return device->architecture == vk_device_architecture::NVIDIA_PRE_TURING;
        default:
            return true;
        }
    case VK_VENDOR_ID_AMD:
        if (k < 2048) {
            return false;
        }

        switch (src0_type) {
        case GGML_TYPE_Q8_0:
            return device->architecture == vk_device_architecture::AMD_GCN;
        default:
            return true;
        }
    case VK_VENDOR_ID_INTEL:
        if (k < 2048) {
            return false;
        }

        if (device->driver_id == vk::DriverId::eIntelProprietaryWindows) {
            // Intel Windows proprietary driver tuning
            switch (src0_type) {
            case GGML_TYPE_MXFP4:
            case GGML_TYPE_Q4_K:
            case GGML_TYPE_Q5_K:
                return false;
            default:
                return true;
            }
        }

        switch (src0_type) {
        // From tests on A770 Linux, may need more tuning
        case GGML_TYPE_Q4_0:
        case GGML_TYPE_Q5_1:
            return false;
        default:
            return true;
        }
    default:
        return true;
    }

    GGML_UNUSED(m);
}

