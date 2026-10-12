# `8faa1d4d`: non-contiguous CUDA concat

**Scoped verdict: `EQUIV_PARTIAL`.** [Nine Volta comparisons](result.json) report `EQUIVALENT`. Three cover every output of a one-CTA dimension-0 concat, including contiguous and strided layouts and two split points. For each of dimensions 1, 2, and 3, two comparisons cover the first and second CTA slabs of a valid four-element shape; each CTA writes two outputs. Inputs are symbolic F32 values under Volta's model, with 256 threads per CTA.

[`reproduce.py`](reproduce.py) verifies that the historical commit changes only `concat.cu`, checks the exact parent/child Git blob IDs, extracts their complete `concat_f32_non_cont` kernel bodies, compiles both with CUDA 12.8 to PTX, and runs Volta. The standalone source changes only kernel linkage so NVCC emits the old entry; on the new side it instantiates dimensions 0–3 and adds an unused runtime dimension parameter so both launches accept the same arguments. The historical kernel bodies remain intact. Because Volta executes CTA 0, the second-slab checks replace exactly one `%ctaid.x`, `%ctaid.y`, or `%ctaid.z` operand with `1` in both PTX kernels; all other instructions are unchanged. The [old](old.ptx), [new](new.ptx), and specialized PTX files and their hashes are retained.

Volta checks one CTA per invocation. The two slabs exercise both source branches for one shape per added dimension, but general shapes, interactions across CTAs, host dispatch, whole-commit behavior, and official historical benchmark performance remain unverified. Kuiper was not used.

Run from the project root with `python3 -B history-eq/gpu/llama.cpp/8faa1d4d/reproduce.py`.
