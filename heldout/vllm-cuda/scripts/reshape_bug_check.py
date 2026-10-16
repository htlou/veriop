"""GPU check of the legacy reshape_and_cache head-coverage bug (baseline build).
Writes key/value for N tokens into a zero-initialised cache and counts, per head,
how many cache entries equal the reference."""
import json, sys
import torch
from vllm import _custom_ops as ops

res = {}
for nh in [32, 64, 128]:
    hs, bs, x, T = 128, 16, 8, 64
    key = torch.randn(T, nh, hs, dtype=torch.bfloat16, device='cuda')
    val = torch.randn_like(key)
    nb = 16
    kc = torch.zeros(nb, nh, hs // x, bs, x, dtype=torch.bfloat16, device='cuda')
    vc = torch.zeros(nb, nh, hs, bs, dtype=torch.bfloat16, device='cuda')
    slots = torch.randperm(nb * bs, device='cuda')[:T]
    one = torch.ones(1, dtype=torch.float32, device='cuda')
    ops.reshape_and_cache(key, val, kc, vc, slots, 'auto', one, one)
    b, o = slots // bs, slots % bs
    kref = key.view(T, nh, hs // x, x)
    k_ok = (kc[b, :, :, o, :] == kref).all(-1).all(-1)      # [T, nh]
    v_ok = (vc[b, :, :, o] == val).all(-1)                    # [T, nh]
    heads_ok = int((k_ok.all(0) & v_ok.all(0)).sum())
    res[nh] = dict(heads=nh, heads_written_correctly=heads_ok, launcher_threads=min(nh * hs // x, 512))
    print(res[nh], flush=True)
json.dump(res, open(sys.argv[1], 'w'), indent=2)
