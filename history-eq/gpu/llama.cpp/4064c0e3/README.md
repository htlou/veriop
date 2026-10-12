# llama.cpp `4064c0e3`: Vulkan Q4_K/Q5_K scale bytes

**Verdict: `EQUIV_PARTIAL`.** The exact historical commit rewrites scale and minimum-byte extraction in both Vulkan Q4_K and Q5_K dequantization shaders. [`reproduce.py`](reproduce.py) checks the archived diff against Git, checks both shader revisions, and asks Z3 whether the old and new integer expressions can differ for any legal lane (`is` and `is + 1`, spanning 0–7) and arbitrary scale bytes. Both counterexample queries return `unsat` in [`result.json`](result.json).

The unchanged floating-point expressions consume these same extracted bytes. This is a source-level proof of the scale/minimum extraction only; compiled SPIR-V behavior and complete output tensors have not been checked. Volta does not accept these Vulkan shaders, and Kuiper was not used. No official historical before/after benchmark score was measured.

Run `alive2/.venv/bin/python history-eq/gpu/llama.cpp/4064c0e3/reproduce.py` from the project root.
