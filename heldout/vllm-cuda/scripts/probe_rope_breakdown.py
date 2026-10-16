"""Per-kernel GPU time inside benchmark_rope's vLLM-provider lambda (torch profiler)."""
import itertools, json, sys
import torch
from torch.profiler import ProfilerActivity, profile
from vllm.benchmarks.lib.utils import default_vllm_config
from vllm.model_executor.layers.rotary_embedding import get_rope

@default_vllm_config()
def main():
    res = []
    for bs, sl, nh in [(b, s, h) for b in [1, 4, 16, 64] for s in [64, 128, 256, 512] for h in [32, 48]]:
        head_size, rotary_dim = 128, 32
        rope = get_rope(head_size, 8192, True, {"partial_rotary_factor": rotary_dim / head_size})
        rope = rope.to(dtype=torch.bfloat16, device='cuda')
        positions = torch.randint(0, 8192, (bs, sl), device='cuda')
        q = torch.randn((bs, sl, nh * head_size), dtype=torch.bfloat16, device='cuda')
        k = torch.randn_like(q)
        fn = lambda: rope.forward_cuda(positions, q.clone(), k.clone())
        for _ in range(5): fn()
        torch.cuda.synchronize()
        with profile(activities=[ProfilerActivity.CUDA]) as prof:
            for _ in range(20): fn()
            torch.cuda.synchronize()
        tot = {}
        for e in prof.events():
            if e.device_type.name == 'CUDA':
                key = 'rope' if 'rotary' in e.name else ('copy' if ('copy' in e.name.lower() or 'Memcpy' in e.name) else e.name[:60])
                tot[key] = tot.get(key, 0) + e.device_time / 20
        res.append(dict(shape=[bs, sl, nh], us=tot))
        print(bs, sl, nh, {k: round(v, 2) for k, v in tot.items()})
    json.dump(res, open(sys.argv[1], 'w'), indent=1)
main()
