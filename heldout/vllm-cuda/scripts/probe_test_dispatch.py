"""Which rotary kernel does test_pos_encoding's bf16 NeoX path launch?"""
import torch
from torch.profiler import ProfilerActivity, profile
from vllm.benchmarks.lib.utils import default_vllm_config
from vllm.model_executor.layers.rotary_embedding import get_rope

@default_vllm_config()
def main():
    for hs, rd, shape in [(64, None, 'flat'), (80, 32, 'padded'), (120, None, 'batch'), (256, 32, 'flat')]:
        rope = get_rope(hs, 8192, True, {"partial_rotary_factor": (rd or hs) / hs}).to(dtype=torch.bfloat16, device='cuda')
        pos = torch.randint(0, 8192, (5, 11), device='cuda')
        if shape == 'flat':
            q = torch.randn(5, 11, 17 * hs, dtype=torch.bfloat16, device='cuda')
        elif shape == 'batch':
            q = torch.randn(5, 11, 17, hs, dtype=torch.bfloat16, device='cuda')
        else:
            q = torch.randn(5, 11, 17, hs + 64, dtype=torch.bfloat16, device='cuda')[..., :hs]
        k = torch.randn_like(q)
        with profile(activities=[ProfilerActivity.CUDA]) as prof:
            rope.forward_cuda(pos, q, k); torch.cuda.synchronize()
        print(hs, rd, shape, sorted({e.name[:60] for e in prof.events() if e.device_type.name == 'CUDA' and 'rotary' in e.name}))
main()
