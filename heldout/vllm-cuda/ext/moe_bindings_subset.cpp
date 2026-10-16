// Subset of vllm v0.31.0 csrc/libtorch_stable/moe/torch_bindings.cpp (verbatim schemas).
#include "core/registration.h"
#include "libtorch_stable/moe/moe_ops.h"

#include <torch/csrc/stable/library.h>

STABLE_TORCH_LIBRARY_FRAGMENT(_moe_C, m) {
  m.def(
      "topk_softmax(Tensor! topk_weights, Tensor! topk_indices, Tensor! "
      "token_expert_indices, Tensor gating_output, bool renormalize, Tensor? "
      "bias, Tensor? is_padding) -> ()");
  m.def(
      "topk_sigmoid(Tensor! topk_weights, Tensor! topk_indices, Tensor! "
      "token_expert_indices, Tensor gating_output, bool renormalize, "
      "Tensor? bias, float routed_scaling_factor, Tensor? is_padding) -> ()");
  m.def(
      "moe_align_block_size(Tensor topk_ids, int num_experts,"
      "                     int block_size, Tensor! sorted_token_ids,"
      "                     Tensor! experts_ids,"
      "                     Tensor! num_tokens_post_pad,"
      "                     Tensor? maybe_expert_map,"
      "                     Tensor(a!)? scatter_idx=None) -> ()");
  m.def(
      "batched_moe_align_block_size(int max_tokens_per_batch,"
      "                     int block_size, Tensor expert_num_tokens,"
      "                     Tensor! sorted_token_ids,"
      "                     Tensor! experts_ids,"
      "                     Tensor! num_tokens_post_pad) -> ()");
}

STABLE_TORCH_LIBRARY_IMPL(_moe_C, CUDA, m) {
  m.impl("topk_softmax", TORCH_BOX(&topk_softmax));
  m.impl("topk_sigmoid", TORCH_BOX(&topk_sigmoid));
  m.impl("moe_align_block_size", TORCH_BOX(&moe_align_block_size));
  m.impl("batched_moe_align_block_size",
         TORCH_BOX(&batched_moe_align_block_size));
}

REGISTER_EXTENSION(_moe_C_stable_libtorch)
