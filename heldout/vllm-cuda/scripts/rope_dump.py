"""Run torch.ops._C.rotary_embedding on fixed random inputs; save outputs.

usage: rope_dump.py OUT.pt  (PYTHONPATH selects baseline or candidate build)
Compare two dumps with rope_compare.py (bitwise).
"""
import itertools, sys
import torch
import vllm._custom_ops  # noqa: F401  (loads the _C extension)
import vllm.platforms  # noqa: F401

res = {}
g = torch.Generator(device='cuda').manual_seed(0)
cases = []
for dtype, cdt, neox, (nh, nkv), hs, rd, ntok, offs, inv, with_key in itertools.product(
        [torch.bfloat16, torch.float16, torch.float32], [None, torch.float32], [True, False],
        [(32, 32), (48, 48), (32, 8), (8, 1)], [128, 64], [32, 128], [1, 7, 333],
        [0, 16], [False, True], [True, False]):
    if rd + offs > hs:
        continue
    cases.append((dtype, cdt or dtype, neox, nh, nkv, hs, rd, ntok, offs, inv, with_key))
for c in cases:
    dtype, cdt, neox, nh, nkv, hs, rd, ntok, offs, inv, with_key = c
    pos = torch.randint(0, 4096, (ntok,), device='cuda', generator=g)
    cache = torch.randn(4096, rd, device='cuda', generator=g).to(cdt)
    q = torch.randn(ntok, nh * hs, device='cuda', generator=g).to(dtype)
    k = torch.randn(ntok, nkv * hs, device='cuda', generator=g).to(dtype)
    torch.ops._C.rotary_embedding(pos, q, k if with_key else None, hs, cache, neox, offs, inv)
    res[str(c)] = (q.cpu(), k.cpu())
torch.save(res, sys.argv[1])
print(len(res), 'cases')
