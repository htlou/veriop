"""Which implementation does each official benchmark actually time?

Recreates each benchmark's layer construction under the same
`default_vllm_config()` decorator and records which kernels run, via the
torch profiler (CUDA kernel names) for one call.
"""
import json
import sys

import torch
from torch.profiler import ProfilerActivity, profile

import vllm.model_executor.layers.activation  # noqa: F401
from vllm.benchmarks.lib.utils import default_vllm_config
from vllm.model_executor.custom_op import op_registry
from vllm.model_executor.layers.layernorm import RMSNorm
from vllm.model_executor.layers.rotary_embedding import get_rope
from vllm import _custom_ops as ops


def kernels(fn):
    fn()
    torch.cuda.synchronize()
    with profile(activities=[ProfilerActivity.CUDA]) as prof:
        fn()
        torch.cuda.synchronize()
    return sorted({e.name for e in prof.events() if e.device_type.name == 'CUDA'})


@default_vllm_config()
def main():
    torch.set_default_device('cuda')
    out = {}
    layer = RMSNorm(8192).to(dtype=torch.half)
    x = torch.randn(4096, 8192, dtype=torch.half)
    out['benchmark_layernorm (RMSNorm, no residual)'] = kernels(lambda: layer(x, None))
    r = torch.randn_like(x)
    out['benchmark_layernorm (RMSNorm, --add-residual)'] = kernels(lambda: layer(x, r))
    act = op_registry['silu_and_mul']()
    xa = torch.randn(128, 2 * 3072, dtype=torch.bfloat16)
    out['benchmark_activation custom (silu_and_mul)'] = kernels(lambda: act(xa))
    xr = torch.randn(128, 3072, dtype=torch.bfloat16)
    o = torch.empty_like(xr)
    out['benchmark_relu_squared custom'] = kernels(lambda: torch.ops._C.relu_squared(o, xr))
    xq = torch.randn(4096, 8192, dtype=torch.half)
    out['benchmark_quant (int8 dynamic)'] = kernels(lambda: ops.scaled_int8_quant(xq, None))
    rope = get_rope(128, 8192, True, {'partial_rotary_factor': 32 / 128}).to(
        dtype=torch.bfloat16, device='cuda')
    pos = torch.randint(0, 8192, (16, 512))
    q = torch.randn(16, 512, 32 * 128, dtype=torch.bfloat16)
    k = torch.randn_like(q)
    out['benchmark_rope vllm provider'] = kernels(lambda: rope.forward_cuda(pos, q.clone(), k.clone()))
    for name, ks in out.items():
        print(f'{name}:')
        for k_ in ks:
            print(f'    {k_[:150]}')
    json.dump(out, open(sys.argv[1], 'w'), indent=2)


if __name__ == '__main__':
    main()
