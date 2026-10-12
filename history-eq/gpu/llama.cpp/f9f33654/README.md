# llama.cpp `f9f33654`: Q4_K packed scale reads

**Verdict: `EQUIV_PARTIAL`.** For every legal Q4_K scale index `0..7` and every fully initialized 12-byte scale array, the old bytewise expression and new packed-32 expression produce the same scale and minimum bytes, provided each 32-bit word reads four consecutive bytes in little-endian order. [Alive2 proves both directions](alive-old_to_new.log) without loop bounds; the [reverse log](alive-new_to_old.log) also reports one correct transformation and zero errors.

[reproduce.py](reproduce.py) checks both exact historical shader blobs, the unchanged Q4_K byte and packed-word type definitions, and the archived full diff before compiling the source-derived formulas with Clang 20. [result.json](result.json) records the Git blob IDs, model hashes, and checker results. The source edit repeats the packed expression at one matrix-vector and two matrix-matrix sites; the proof covers their common scale/min extraction formula.

The full-initialization premise matters: the packed expression reads all 12 scale bytes, including bytes an old indexed read may skip. The proof does not cover uninitialized scale bytes, GLSL/SPIR-V memory layout, shader multiplication, Q5_K paths, complete Vulkan kernels, or final tensor results. No official historical before/after benchmark score was measured.
