#include "conv2d-dw.cuh"
#include "convert.cuh"

struct conv_params {
    int in_w, in_h;
    int out_w, out_h;
    int kernel_w, kernel_h;
    int stride_x, stride_y;
    int padding_x, padding_y;
    int dilation_x, dilation_y;
    int channels, batches;
};

struct kernel_bounds {
    int y_min, y_max;
    int x_min, x_max;
};

__device__ __forceinline__ kernel_bounds calculate_kernel_bounds(int out_x, int out_y, const conv_params & params) {
    kernel_bounds bounds;
    bounds.y_min = max(0, (params.padding_y - out_y * params.stride_y + params.dilation_y - 1) / params.dilation_y);
    bounds.y_max =
        min(params.kernel_h,
            (params.in_h + params.padding_y - out_y * params.stride_y + params.dilation_y - 1) / params.dilation_y);
    bounds.x_min = max(0, (params.padding_x - out_x * params.stride_x + params.dilation_x - 1) / params.dilation_x);
    bounds.x_max =
        min(params.kernel_w,
            (params.in_w + params.padding_x - out_x * params.stride_x + params.dilation_x - 1) / params.dilation_x);
    return bounds;
}

__device__ __forceinline__ int calculate_input_coord(int out_coord, int kern_coord, int stride, int dilation, int padding) {
    return out_coord * stride + kern_coord * dilation - padding;
}

struct whcn_layout {
    __device__ static int input_index(int n, int c, int y, int x, const conv_params & params) {
        return n * (params.channels * params.in_w * params.in_h) + c * params.in_w * params.in_h + y * params.in_w + x;
    }

    __device__ static int kernel_index(int c, int ky, int kx, const conv_params & params) {
        return c * params.kernel_h * params.kernel_w + ky * params.kernel_w + kx;
    }

    __device__ static int output_index(int n, int c, int y, int x, const conv_params & params) {
        return n * (params.channels * params.out_w * params.out_h) + c * params.out_w * params.out_h +
               y * params.out_w + x;
    }

    __device__ static void unpack_indices(int global_idx, const conv_params & params, int & n, int & c, int & out_y,
                                          int & out_x) {
        out_x = global_idx % params.out_w;
        out_y = (global_idx / params.out_w) % params.out_h;
        c     = (global_idx / (params.out_w * params.out_h)) % params.channels;
        n     = global_idx / (params.out_w * params.out_h * params.channels);
    }
};

struct cwhn_layout {
    __device__ static int input_index(int n, int c, int y, int x, const conv_params & params) {
        return n * (params.channels * params.in_w * params.in_h) + (y * params.in_w + x) * params.channels + c;
    }

    __device__ static int kernel_index(int c, int ky, int kx, const conv_params & params) {
        return (ky * params.kernel_w + kx) * params.channels + c;
    }

    __device__ static int output_index(int n, int c, int y, int x, const conv_params & params) {
        return n * (params.channels * params.out_w * params.out_h) + y * (params.out_w * params.channels) +
               x * params.channels + c;
    }

    __device__ static void unpack_indices(int global_idx, const conv_params & params, int & n, int & c, int & out_y,
                                          int & out_x) {
        c     = global_idx % params.channels;
        out_x = (global_idx / params.channels) % params.out_w;
        out_y = (global_idx / (params.channels * params.out_w)) % params.out_h;
        n     = global_idx / (params.channels * params.out_w * params.out_h);
    }
};

template <typename T, typename Layout>
__global__ void conv2d_dw_kernel(const float * __restrict__ input, const T * __restrict__ kernel, float * __restrict__ output,
                                 const int in_w, const int in_h, const int out_w, const int out_h,
                                 const int kernel_w, const int kernel_h, const int stride_x, const int stride_y,
                                 const int padding_x, const int padding_y, const int dilation_x, const int dilation_y,
                                 const int channels, const int batches) {
    const int global_idx     = blockIdx.x * blockDim.x + threadIdx.x;
    const int total_elements = batches * channels * out_h * out_w;

    if (global_idx >= total_elements) {
        return;
    }

    conv_params params = { in_w,     in_h,      out_w,     out_h,      kernel_w,   kernel_h, stride_x,
                           stride_y, padding_x, padding_y, dilation_x, dilation_y, channels, batches };

    int batch_idx, channel_idx, out_y_idx, out_x_idx;
    Layout::unpack_indices(global_idx, params, batch_idx, channel_idx, out_y_idx, out_x_idx);

    float accumulator = 0.0f;
    kernel_bounds bounds = calculate_kernel_bounds(out_x_idx, out_y_idx, params);

    for (int kern_y = bounds.y_min; kern_y < bounds.y_max; ++kern_y) {
        int in_y_idx = calculate_input_coord(out_y_idx, kern_y, params.stride_y, params.dilation_y, params.padding_y);

        for (int kern_x = bounds.x_min; kern_x < bounds.x_max; ++kern_x) {
            int in_x_idx = calculate_input_coord(out_x_idx, kern_x, params.stride_x, params.dilation_x, params.padding_x);

            const float input_val  = input[Layout::input_index(batch_idx, channel_idx, in_y_idx, in_x_idx, params)];
            const T     kernel_val = kernel[Layout::kernel_index(channel_idx, kern_y, kern_x, params)];

            accumulator += input_val * ggml_cuda_cast<float>(kernel_val);
        }
    }

    output[Layout::output_index(batch_idx, channel_idx, out_y_idx, out_x_idx, params)] = accumulator;
}

// Same thread->output mapping and accumulation order as conv2d_dw_kernel, specialized for a compile-time kernel size:
//  - the tap loops are fully unrolled, so all in-bounds taps are issued independently instead of one
//    runtime-bounded iteration at a time; a tap contributes iff its input coordinate is inside the image,
//    which is exactly the [min, max) range computed by calculate_kernel_bounds;
//  - the flat output index is decomposed with three unsigned divisions instead of four signed div/mod chains
//    (global_idx >= 0, and for both layouts the output offset is global_idx itself).
template <typename T, bool cwhn, int KW, int KH>
__global__ void conv2d_dw_kernel_fixed(const float * __restrict__ input, const T * __restrict__ kernel, float * __restrict__ output,
                                       const int in_w, const int in_h, const int out_w, const int out_h,
                                       const int kernel_w, const int kernel_h, const int stride_x, const int stride_y,
                                       const int padding_x, const int padding_y, const int dilation_x, const int dilation_y,
                                       const int channels, const int batches) {
    const int global_idx     = blockIdx.x * blockDim.x + threadIdx.x;
    const int total_elements = batches * channels * out_h * out_w;

    GGML_UNUSED_VARS(kernel_w, kernel_h); // same signature as conv2d_dw_kernel; KW == kernel_w, KH == kernel_h

    if (global_idx >= total_elements) {
        return;
    }

    const unsigned int idx = global_idx;
    int out_x_idx, out_y_idx, channel_idx;
    const float * in_base; // input pointer at (n, c, 0, 0) for whcn, (n, 0, 0, c) for cwhn
    int in_step_x, in_step_y; // element strides of x and y in the input
    if constexpr (!cwhn) {
        const unsigned int q1    = idx / (unsigned int) out_w;  // n*C*OH + c*OH + y
        const unsigned int plane = q1 / (unsigned int) out_h;   // n*C + c
        out_x_idx   = idx - q1 * out_w;
        out_y_idx   = q1 - plane * out_h;
        channel_idx = plane % (unsigned int) channels;
        in_base     = input + (size_t) plane * (in_w * in_h);
        in_step_x   = 1;
        in_step_y   = in_w;
    } else {
        const unsigned int q1 = idx / (unsigned int) channels;  // n*OH*OW + y*OW + x
        const unsigned int q2 = q1 / (unsigned int) out_w;      // n*OH + y
        const unsigned int n  = q2 / (unsigned int) out_h;
        channel_idx = idx - q1 * channels;
        out_x_idx   = q1 - q2 * out_w;
        out_y_idx   = q2 - n * out_h;
        in_base     = input + (size_t) n * (channels * in_w * in_h) + channel_idx;
        in_step_x   = channels;
        in_step_y   = channels * in_w;
    }

    const int in_y0 = out_y_idx * stride_y - padding_y;
    const int in_x0 = out_x_idx * stride_x - padding_x;

    float accumulator = 0.0f;

#pragma unroll
    for (int kern_y = 0; kern_y < KH; ++kern_y) {
        const int in_y_idx = in_y0 + kern_y * dilation_y;
#pragma unroll
        for (int kern_x = 0; kern_x < KW; ++kern_x) {
            const int in_x_idx = in_x0 + kern_x * dilation_x;
            if (in_y_idx >= 0 && in_y_idx < in_h && in_x_idx >= 0 && in_x_idx <= in_w) { // MUTANT: off-by-one
                const float input_val  = in_base[in_y_idx * in_step_y + in_x_idx * in_step_x];
                const T     kernel_val = cwhn ? kernel[(kern_y * KW + kern_x) * channels + channel_idx]
                                              : kernel[channel_idx * (KH * KW) + kern_y * KW + kern_x];

                accumulator += input_val * ggml_cuda_cast<float>(kernel_val);
            }
        }
    }

    output[global_idx] = accumulator;
}

template <typename T, typename Layout>
static void conv2d_dw_cuda(const float * x_d, const T * w_d, float * y_d, const int in_w, const int in_h, const int out_w,
                           const int out_h, const int kernel_w, const int kernel_h, const int stride_x, const int stride_y,
                           const int padding_x, const int padding_y, const int dilation_x, const int dilation_y,
                           const int channels, const int batches, const int blocks, cudaStream_t st) {
    if (kernel_w == 3 && kernel_h == 3) {
        conv2d_dw_kernel_fixed<T, std::is_same_v<Layout, cwhn_layout>, 3, 3><<<blocks, CUDA_CONV2D_DW_BLOCK_SIZE, 0, st>>>(
            x_d, w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x, stride_y, padding_x, padding_y,
            dilation_x, dilation_y, channels, batches);
    } else if (kernel_w == 5 && kernel_h == 5) {
        conv2d_dw_kernel_fixed<T, std::is_same_v<Layout, cwhn_layout>, 5, 5><<<blocks, CUDA_CONV2D_DW_BLOCK_SIZE, 0, st>>>(
            x_d, w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x, stride_y, padding_x, padding_y,
            dilation_x, dilation_y, channels, batches);
    } else {
        conv2d_dw_kernel<T, Layout><<<blocks, CUDA_CONV2D_DW_BLOCK_SIZE, 0, st>>>(
            x_d, w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x, stride_y, padding_x, padding_y,
            dilation_x, dilation_y, channels, batches);
    }
}

void ggml_cuda_op_conv2d_dw(ggml_backend_cuda_context & ctx, ggml_tensor * dst) {
    const ggml_tensor * kernel = dst->src[0];
    const ggml_tensor * input  = dst->src[1];

    GGML_ASSERT(kernel->type == GGML_TYPE_F16 || kernel->type == GGML_TYPE_F32);
    GGML_ASSERT(input->type == GGML_TYPE_F32 && dst->type == GGML_TYPE_F32);
    const void *  w_d = kernel->data;
    const float * x_d = (const float *) input->data;
    float *       y_d = (float *) dst->data;

    const int32_t * p          = (const int32_t *) dst->op_params;
    const int       stride_x   = p[0];
    const int       stride_y   = p[1];
    const int       padding_x  = p[2];
    const int       padding_y  = p[3];
    const int       dilation_x = p[4];
    const int       dilation_y = p[5];

    const int in_w     = input->ne[0];
    const int in_h     = input->ne[1];
    const int kernel_w = kernel->ne[0];
    const int kernel_h = kernel->ne[1];
    const int out_w    = dst->ne[0];
    const int out_h    = dst->ne[1];
    const int channels = dst->ne[2];
    const int batches  = dst->ne[3];

    cudaStream_t st = ctx.stream();

    const int total  = batches * channels * out_h * out_w;
    const int blocks = (total + CUDA_CONV2D_DW_BLOCK_SIZE - 1) / CUDA_CONV2D_DW_BLOCK_SIZE;

    if (ggml_is_contiguous(input)) {
        if (kernel->type == GGML_TYPE_F16) {
            conv2d_dw_cuda<half, whcn_layout>(x_d, (const half *) w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x,
                stride_y, padding_x, padding_y, dilation_x, dilation_y, channels, batches, blocks, st);
        } else {
            conv2d_dw_cuda<float, whcn_layout>(x_d, (const float *) w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x,
                stride_y, padding_x, padding_y, dilation_x, dilation_y, channels, batches, blocks, st);
        }
    } else if (ggml_is_contiguous_channels(input)) {
        if (kernel->type == GGML_TYPE_F16) {
            conv2d_dw_cuda<half, cwhn_layout>(x_d, (const half *) w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x,
                stride_y, padding_x, padding_y, dilation_x, dilation_y, channels, batches, blocks, st);
        } else {
            conv2d_dw_cuda<float, cwhn_layout>(x_d, (const float *) w_d, y_d, in_w, in_h, out_w, out_h, kernel_w, kernel_h, stride_x,
                stride_y, padding_x, padding_y, dilation_x, dilation_y, channels, batches, blocks, st);
        }
    } else {
        GGML_ABORT("Unsupported memory layout for conv_2d_dw");
    }
}
