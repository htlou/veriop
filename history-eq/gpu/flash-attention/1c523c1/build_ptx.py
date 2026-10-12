"""Rebuild the historical interleaved rotary specialization on the local H100."""

import importlib.util
import json
import re
import sys
from pathlib import Path

import torch


ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent
torch.manual_seed(42)
x = torch.randn((1, 4, 1, 32), device="cuda", dtype=torch.float16)
cos = torch.randn((4, 16), device="cuda", dtype=torch.float16)
sin = torch.randn((4, 16), device="cuda", dtype=torch.float16)
outputs = {}
for label in ("old", "new"):
    source = ROOT / "wt" / f"flash-rotary-{label}" / "flash_attn/ops/triton/rotary.py"
    name = f"flash_rotary_{label}"
    spec = importlib.util.spec_from_file_location(name, source)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    out = torch.empty_like(x)
    compiled = module.rotary_kernel[(1, 1, 1)](
        out, x, cos, sin, 0, 4, 1, 32, 4, 0,
        *out.stride(), *x.stride(), 32, False, True, False, 4,
    )
    torch.cuda.synchronize()
    ptx = compiled.asm["ptx"]
    (OUT / f"{label}.ptx").write_text(ptx)
    (OUT / f"{label}.ttir").write_text(compiled.asm["ttir"])
    normalized = ptx.replace(".u64 .ptr .global .align 1 ", ".u64 ")
    normalized, scalar_groups = re.subn(r"\{ (%[A-Za-z][A-Za-z0-9_]*) \}", r"\1", normalized)
    assert ptx.count(".u64 .ptr .global .align 1 ") == 5
    assert scalar_groups == (6 if label == "old" else 5)
    (OUT / f"{label}-volta.ptx").write_text(normalized)
    outputs[label] = out
    print(label, compiled.name, compiled.metadata.num_warps, len(compiled.asm["ptx"]))

same = torch.equal(outputs["old"], outputs["new"])
(OUT / "runtime-check.json").write_text(json.dumps({"same_on_seed_42": same, "shape": list(x.shape), "dtype": str(x.dtype)}, indent=2) + "\n")
assert same, "old and new outputs differ on the fixed sanity input"
