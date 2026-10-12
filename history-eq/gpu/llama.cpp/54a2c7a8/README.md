# llama.cpp `54a2c7a8`: ARM Q4_K × Q8_K i8mm

**Verdict: `UNKNOWN`.** This historical commit adds an ARM i8mm `nrc=2` path to `ggml_vec_dot_q4_K_q8_K` and changes its caller trait to allow two rows. The selected relation compares four old `nrc=1` calls with one new `nrc=2` call, for two Q4_K blocks, two Q8_K blocks, and `n=256`. Both sides write the same four output positions. The source files and the ABI header hashes are recorded in [manifest.json](manifest.json).

[reproduce.py](reproduce.py) extracts the exact parent/child function bodies, supplies the historical block layout, cross-compiles them with Clang 20 at `-O2` for AArch64 `armv8.6-a+i8mm` without SVE, and verifies the generated LLVM IR with `opt`. It removes only attributes and metadata unsupported by this Alive2 build before comparison. The [Alive2 run](alive2.log) reached the selected function but reported `ERROR: Timeout`, zero correct transformations, zero incorrect transformations, and one failed-to-prove transformation. It established neither equality nor a counterexample.

The changed caller trait and the full ggml matmul path were not checked. No official before/after llama.cpp benchmark score for this historical pair was measured here. Kuiper and Volta were not used on this CPU optimization.

Run from the project root: `python3 -B history-eq/gpu/llama.cpp/54a2c7a8/reproduce.py`.
