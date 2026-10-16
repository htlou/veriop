"""ops.reshape_and_cache on fixed inputs (incl. padded slot -1, >512-chunk head counts); dump caches."""
import itertools, sys, random
import torch
from vllm import _custom_ops as ops
res = {}
g = torch.Generator(device='cuda').manual_seed(0)
for dtype, nh, hs, bs, T in itertools.product([torch.bfloat16, torch.float16, torch.float32], [1, 8, 32, 40, 128],
                                              [64, 80, 128, 256], [16, 32], [1, 7, 300]):
    x = 16 // torch.tensor([], dtype=dtype).element_size()
    nb = (T // bs + 4) * 2
    key = torch.randn(T, nh, hs, device='cuda', generator=g).to(dtype)
    val = torch.randn(T, nh, hs, device='cuda', generator=g).to(dtype)
    kc = torch.full((nb, nh, hs // x, bs, x), 7, dtype=dtype, device='cuda')
    vc = torch.full((nb, nh, hs, bs), 7, dtype=dtype, device='cuda')
    random.seed(T * 131 + nh)
    slots = random.sample(range(nb * bs), T)
    if T > 1: slots[1] = -1
    sm = torch.tensor(slots, dtype=torch.long, device='cuda')
    one = torch.ones(1, dtype=torch.float32, device='cuda')
    ops.reshape_and_cache(key, val, kc, vc, sm, 'auto', one, one)
    res[f'{dtype}-{nh}-{hs}-{bs}-{T}'] = (kc.cpu(), vc.cpu())
torch.save(res, sys.argv[1]); print(len(res), 'cases')
