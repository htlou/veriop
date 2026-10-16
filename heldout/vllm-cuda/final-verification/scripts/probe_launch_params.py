"""CPU-only (CUDA_VISIBLE_DEVICES=''): record the rope module parameters that benchmark_rope.py builds, which fix
the Volta launch model of sweep_rope.py (cache shape/dtype, NeoX, rotary_dim, head_size, positions dtype).
Run: CUDA_VISIBLE_DEVICES='' PYTHONPATH=pkg/baseline venv/bin/python final-verification/scripts/probe_launch_params.py"""
import json, os
from pathlib import Path
import torch
from vllm.benchmarks.lib.utils import default_vllm_config
from vllm.model_executor.layers.rotary_embedding import get_rope

assert os.environ.get('CUDA_VISIBLE_DEVICES') == '', 'CPU only'


@default_vllm_config()
def probe():
    head_size, rotary_dim, max_position = 128, 32, 8192  # benchmark_rope.py defaults
    rope = get_rope(head_size, max_position, True, {'partial_rotary_factor': rotary_dim / head_size})
    rope = rope.to(dtype=torch.bfloat16)
    positions = torch.randint(0, max_position, (4, 64))
    return dict(rope_class=type(rope).__name__, cos_sin_cache_shape=list(rope.cos_sin_cache.shape),
                cos_sin_cache_dtype=str(rope.cos_sin_cache.dtype), is_neox_style=rope.is_neox_style,
                rotary_dim=rope.rotary_dim, head_size=rope.head_size,
                use_flashinfer=getattr(rope, 'use_flashinfer', None),
                positions_dtype=str(positions.dtype), valid_positions=[0, max_position],
                note='forward_cuda passes cos_sin_cache cast to the query dtype (bf16), rope_dim_offset=0, inverse=False')


out = Path(__file__).resolve().parents[1] / 'launch-params-rope.json'
r = probe()
out.write_text(json.dumps(r, indent=1) + '\n')
print(r)
