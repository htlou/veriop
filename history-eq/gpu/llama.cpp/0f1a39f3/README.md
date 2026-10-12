# llama.cpp `0f1a39f3`: AArch64 Q4/Q8 kernels

`check_build.py` verifies the complete archived production diff and exact Git blobs for the parent's generic quantization path, the child's changed generic path, and the newly added AArch64 kernel. The parent has no same-name specialized kernel.

**Verdict: `UNKNOWN` (unverified).** The installed AArch64 cross compiler stops in a required `<math.h>` dependency because the target libc headers are absent (`result.json`). It produces no faithful historical LLVM IR, so Alive2 has not compared the old generic path and new AArch64 path. The new kernel also contains inline AArch64 assembly; no output-equivalence or counterexample claim follows from source inspection. No official historical performance delta was measured.
