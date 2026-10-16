"""Standalone replica of tests/kernels/core/test_activation.py::test_activation for
ReLUSquaredActivation (the upstream file cannot be collected with the subset
extension: its imports need CUTLASS MoE ops). Same parameters and tolerances,
plus the official benchmark's shapes; checks torch.ops._C.relu_squared against
the layer's forward_native and runs opcheck."""
import itertools, sys
import torch
from torch.library import opcheck
sys.path.append('/srv/home/hantaolou/code/veriop/heldout/vllm-cuda/vllm')  # for tests.kernels.allclose_default only
from tests.kernels.allclose_default import get_default_atol, get_default_rtol
from vllm.model_executor.layers.activation import ReLUSquaredActivation
from vllm.utils.torch_utils import set_random_seed
from vllm.benchmarks.lib.utils import default_vllm_config


@default_vllm_config()
def main():
  n = 0
  for num_tokens, d, dtype in itertools.product([7, 83, 2048, 1, 16, 64, 128, 256], [512, 13824, 3072, 9728, 12288],
                                               [torch.half, torch.bfloat16, torch.float]):
      set_random_seed(0)
      x = torch.randn(num_tokens, d, dtype=dtype, device='cuda')
      out = torch.empty_like(x)
      torch.ops._C.relu_squared(out, x)
      ref = ReLUSquaredActivation().forward_native(x)
      torch.testing.assert_close(out, ref, atol=get_default_atol(out), rtol=get_default_rtol(out))
      opcheck(torch.ops._C.relu_squared, (torch.empty_like(x), x))
      n += 1
  print(f'{n} cases passed')


main()
