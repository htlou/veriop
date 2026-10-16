"""torch.ops._C.relu_squared on fixed inputs (incl. +-0, inf, nan); save outputs.
Compare two dumps bitwise with relu_compare.py."""
import itertools, sys
import torch
import vllm._custom_ops  # noqa: F401
import vllm.platforms  # noqa: F401
res = {}
g = torch.Generator(device='cuda').manual_seed(0)
for dtype, T, d in itertools.product([torch.float32, torch.bfloat16, torch.float16],
                                     [1, 2, 7, 16, 64, 83, 128, 256, 257, 1024],
                                     [512, 3072, 4096, 4100, 9728, 12288, 13824, 16384, 65536]):
    x = (torch.randn(T, d, device='cuda', generator=g) * 1e3).to(dtype)
    x.view(-1)[:4] = torch.tensor([0.0, -0.0, float('inf'), float('nan')], dtype=dtype)
    out = torch.full_like(x, 7.0)
    torch.ops._C.relu_squared(out, x)
    res[f'{dtype}-{T}-{d}'] = out.cpu()
torch.save(res, sys.argv[1]); print(len(res), 'cases')
