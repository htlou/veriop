// Subset of vllm v0.31.0 csrc/libtorch_stable/torch_bindings.cpp.
// Schemas below are copied verbatim from the upstream file so that the
// official benchmark scripts (which call torch.ops._C.<op>) run unmodified.
// Only the ops whose kernels are compiled into this subset extension are
// registered; everything else in upstream _C_stable_libtorch is absent.
#include "libtorch_stable/ops.h"
#include "cuda_utils.h"
#include "core/registration.h"

#include <torch/csrc/stable/library.h>

STABLE_TORCH_LIBRARY_FRAGMENT(_C, ops) {
  ops.def(
      "rms_norm(Tensor! result, Tensor input, Tensor? weight, float epsilon) "
      "-> "
      "()");
  ops.def(
      "fused_add_rms_norm(Tensor! input, Tensor! residual, Tensor? weight, "
      "float epsilon) -> ()");
  ops.def(
      "rotary_embedding(Tensor positions, Tensor! query,"
      "                 Tensor!? key, int head_size,"
      "                 Tensor cos_sin_cache, bool is_neox, int "
      "rope_dim_offset=0, bool inverse=False) -> ()");
  ops.def("silu_and_mul(Tensor! result, Tensor input) -> ()");
  ops.def("mul_and_silu(Tensor! out, Tensor input) -> ()");
  ops.def(
      "silu_and_mul_with_clamp(Tensor! result, Tensor input, float limit, "
      "float alpha=1.0, float beta=0.0) -> ()");
  ops.def("gelu_and_mul(Tensor! out, Tensor input) -> ()");
  ops.def("gelu_tanh_and_mul(Tensor! out, Tensor input) -> ()");
  ops.def("fatrelu_and_mul(Tensor! out, Tensor input, float threshold) -> ()");
  ops.def(
      "swigluoai_and_mul(Tensor! out, Tensor input, float alpha=1.702, float "
      "limit=7.0) "
      "-> ()");
  ops.def("gelu_new(Tensor! out, Tensor input) -> ()");
  ops.def("gelu_fast(Tensor! out, Tensor input) -> ()");
  ops.def("gelu_quick(Tensor! out, Tensor input) -> ()");
  ops.def("relu_squared(Tensor! out, Tensor input) -> ()");
  ops.def(
      "static_scaled_int8_quant(Tensor! result, Tensor input, Tensor scale,"
      "Tensor? azp) -> ()");
  ops.def(
      "dynamic_scaled_int8_quant(Tensor! result, Tensor input, Tensor! scale, "
      "Tensor!? azp) -> ()");
  ops.def(
      "vocab_parallel_embedding(Tensor! out, Tensor input_ids, Tensor weight, "
      "int org_vocab_start_index, int org_vocab_end_index, "
      "int num_org_vocab_padding, int added_vocab_start_index, "
      "int added_vocab_end_index) -> ()");
}

STABLE_TORCH_LIBRARY_IMPL(_C, CUDA, ops) {
  ops.impl("rms_norm", TORCH_BOX(&rms_norm));
  ops.impl("fused_add_rms_norm", TORCH_BOX(&fused_add_rms_norm));
  ops.impl("rotary_embedding", TORCH_BOX(&rotary_embedding));
  ops.impl("silu_and_mul", TORCH_BOX(&silu_and_mul));
  ops.impl("mul_and_silu", TORCH_BOX(&mul_and_silu));
  ops.impl("gelu_and_mul", TORCH_BOX(&gelu_and_mul));
  ops.impl("gelu_tanh_and_mul", TORCH_BOX(&gelu_tanh_and_mul));
  ops.impl("fatrelu_and_mul", TORCH_BOX(&fatrelu_and_mul));
  ops.impl("swigluoai_and_mul", TORCH_BOX(&swigluoai_and_mul));
  ops.impl("gelu_new", TORCH_BOX(&gelu_new));
  ops.impl("gelu_fast", TORCH_BOX(&gelu_fast));
  ops.impl("gelu_quick", TORCH_BOX(&gelu_quick));
  ops.impl("relu_squared", TORCH_BOX(&relu_squared));
  ops.impl("silu_and_mul_with_clamp", TORCH_BOX(&silu_and_mul_clamp));
  ops.impl("static_scaled_int8_quant", TORCH_BOX(&static_scaled_int8_quant));
  ops.impl("dynamic_scaled_int8_quant", TORCH_BOX(&dynamic_scaled_int8_quant));
  ops.impl("vocab_parallel_embedding", TORCH_BOX(&vocab_parallel_embedding));
}

STABLE_TORCH_LIBRARY_FRAGMENT(_C_cuda_utils, cuda_utils) {
  cuda_utils.def("get_device_attribute(int attribute, int device_id) -> int");
  cuda_utils.def(
      "get_max_shared_memory_per_block_device_attribute(int device_id) -> int");
}

STABLE_TORCH_LIBRARY_IMPL(_C_cuda_utils, CompositeExplicitAutograd,
                          cuda_utils) {
  cuda_utils.impl("get_device_attribute", TORCH_BOX(&get_device_attribute));
  cuda_utils.impl("get_max_shared_memory_per_block_device_attribute",
                  TORCH_BOX(&get_max_shared_memory_per_block_device_attribute));
}

STABLE_TORCH_LIBRARY_FRAGMENT(_C_cache_ops, ops) {
  ops.def(
      "reshape_and_cache(Tensor key, Tensor value,"
      "                  Tensor! key_cache, Tensor! value_cache,"
      "                  Tensor slot_mapping,"
      "                  str kv_cache_dtype,"
      "                  Tensor k_scale, Tensor v_scale) -> ()");
  ops.def(
      "reshape_and_cache_flash(Tensor key, Tensor value,"
      "                        Tensor! key_cache,"
      "                        Tensor! value_cache,"
      "                        Tensor slot_mapping,"
      "                        str kv_cache_dtype,"
      "                        Tensor k_scale, Tensor v_scale) -> ()");
}

STABLE_TORCH_LIBRARY_FRAGMENT(_C_cache_ops, ops) {
  ops.def(
      "gather_and_maybe_dequant_cache(Tensor src_cache, Tensor! dst, "
      "                               Tensor block_table, Tensor cu_seq_lens, "
      "                               Tensor token_to_seq, "
      "                               int num_tokens, "
      "                               str kv_cache_dtype, "
      "                               Tensor scale, Tensor? seq_starts) -> ()");
  ops.def(
      "cp_gather_cache(Tensor src_cache, Tensor! dst, Tensor block_table, "
      "Tensor cu_seq_lens, int batch_size, Tensor? seq_starts) -> ()");
  ops.def(
      "cp_gather_and_upconvert_fp8_kv_cache(Tensor src_cache, Tensor! dst, "
      "Tensor block_table, Tensor workspace_starts, int batch_size, Tensor? "
      "seq_starts, Tensor? host_cache=None, Tensor? host_row_ids=None, Tensor? "
      "device_row_ids=None) -> ()");
  ops.def("concat_mla_q(Tensor ql_nope, Tensor q_pe, Tensor! q_out) -> ()");
}

STABLE_TORCH_LIBRARY_IMPL(_C_cache_ops, CUDA, ops) {
  ops.impl("gather_and_maybe_dequant_cache",
           TORCH_BOX(&gather_and_maybe_dequant_cache));
  ops.impl("cp_gather_cache", TORCH_BOX(&cp_gather_cache));
  ops.impl("cp_gather_and_upconvert_fp8_kv_cache",
           TORCH_BOX(&cp_gather_and_upconvert_fp8_kv_cache));
  ops.impl("concat_mla_q", TORCH_BOX(&concat_mla_q));
}

STABLE_TORCH_LIBRARY_IMPL(_C_cache_ops, CUDA, ops) {
  ops.impl("reshape_and_cache", TORCH_BOX(&reshape_and_cache));
  ops.impl("reshape_and_cache_flash", TORCH_BOX(&reshape_and_cache_flash));
}

#ifdef VERIOP_QUANT_OPS
STABLE_TORCH_LIBRARY_FRAGMENT(_C, ops) {
  ops.def(
      "per_token_group_fp8_quant(Tensor input, Tensor! output_q, Tensor! "
      "output_s, "
      "int group_size, float eps, float fp8_min, float fp8_max, bool "
      "scale_ue8m0, bool dummy_is_scale_transposed, bool dummy_is_tma_aligned "
      ") -> ()");
  ops.def(
      "per_token_group_fp8_quant_packed(Tensor input, Tensor! output_q, "
      "Tensor! output_s_packed, int group_size, float eps, float fp8_min, "
      "float fp8_max) -> ()");
  ops.def(
      "per_token_group_quant_int8(Tensor input, Tensor! output_q, Tensor! "
      "output_s, int group_size, float eps, float int8_min, float int8_max) -> "
      "()");
  ops.def(
      "static_scaled_fp8_quant(Tensor! result, Tensor input, Tensor scale, "
      "int[]? group_shape=None) -> ()");
  ops.def(
      "dynamic_scaled_fp8_quant(Tensor! result, Tensor input, Tensor! scale) "
      "-> "
      "()");
  ops.def(
      "dynamic_per_token_scaled_fp8_quant(Tensor! result, Tensor input, "
      "Tensor! scale, Tensor? scale_ub) -> "
      "()");
}
STABLE_TORCH_LIBRARY_IMPL(_C, CUDA, ops) {
  ops.impl("per_token_group_fp8_quant", TORCH_BOX(&per_token_group_quant_fp8));
  ops.impl("per_token_group_fp8_quant_packed", TORCH_BOX(&per_token_group_quant_8bit_packed));
  ops.impl("per_token_group_quant_int8", TORCH_BOX(&per_token_group_quant_int8));
  ops.impl("static_scaled_fp8_quant", TORCH_BOX(&static_scaled_fp8_quant));
  ops.impl("dynamic_scaled_fp8_quant", TORCH_BOX(&dynamic_scaled_fp8_quant));
  ops.impl("dynamic_per_token_scaled_fp8_quant", TORCH_BOX(&dynamic_per_token_scaled_fp8_quant));
}
#endif

#ifdef VERIOP_CUTLASS_CAPABILITY_STUBS
// Import-time shim (survey builds only): the CUTLASS GEMM kernels are not built
// here, so their capability queries report "unsupported". Upstream schemas.
static bool veriop_unsupported(int64_t) { return false; }
STABLE_TORCH_LIBRARY_FRAGMENT(_C, ops) {
  ops.def("cutlass_scaled_mm_supports_fp8(int cuda_device_capability) -> bool");
  ops.def("cutlass_group_gemm_supported(int cuda_device_capability) -> bool");
  ops.def("cutlass_scaled_mm_supports_block_fp8(int cuda_device_capability) -> bool");
  ops.def("cutlass_scaled_mm_supports_fp4(int cuda_device_capability) -> bool");
}
STABLE_TORCH_LIBRARY_IMPL(_C, CompositeExplicitAutograd, ops) {
  ops.impl("cutlass_scaled_mm_supports_fp8", TORCH_BOX(&veriop_unsupported));
  ops.impl("cutlass_group_gemm_supported", TORCH_BOX(&veriop_unsupported));
  ops.impl("cutlass_scaled_mm_supports_block_fp8", TORCH_BOX(&veriop_unsupported));
  ops.impl("cutlass_scaled_mm_supports_fp4", TORCH_BOX(&veriop_unsupported));
}
#endif

REGISTER_EXTENSION(_C_stable_libtorch)
