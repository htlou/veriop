#!/usr/bin/env python3
"""Reproduce the pinned FlashAttention benchmark's PyTorch 16k failure."""
import ast
import math
import sys
from pathlib import Path

import torch
import torch.nn.functional as F
from einops import rearrange

if len(sys.argv) != 2 or sys.argv[1] not in {"causal", "noncausal"}:
    raise SystemExit("usage: diagnose_flash_pytorch_oom.py causal|noncausal")

source = Path(__file__).resolve().parent / "repos/flash-attention/benchmarks/benchmark_flash_attention.py"
node = next(n for n in ast.parse(source.read_text()).body
            if isinstance(n, ast.FunctionDef) and n.name == "attention_pytorch")
exec(compile(ast.Module(body=[node], type_ignores=[]), str(source), "exec"))

causal = sys.argv[1] == "causal"
print("GPU:", torch.cuda.get_device_name(), "free/total bytes:", torch.cuda.mem_get_info(), flush=True)
try:
    qkv = torch.randn(1, 16384, 3, 32, 64, device="cuda", dtype=torch.float16, requires_grad=True)
    out = attention_pytorch(qkv, 0.0, causal)
    print("forward succeeded", flush=True)
    out.sum().backward()
    print("backward succeeded", flush=True)
except torch.OutOfMemoryError as exc:
    print("backward OOM:", exc, flush=True)
