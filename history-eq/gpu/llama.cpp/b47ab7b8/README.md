# llama.cpp `b47ab7b8`: scheduler copy-state synchronization

The historical commit changes only `ggml/src/ggml-backend.cpp`. [`verify.py`](verify.py) reads the exact parent/child Git blobs from the local llama.cpp history, checks their object IDs, and extracts the unchanged public `ggml_backend_sched_synchronize` body apart from its new `if (!sched->is_alloc)` guard. The same file sets `is_alloc = true` after graph allocation and advances `cur_copy` modulo `n_copies` after graph computation, so an allocated scheduler with a nonzero copy index is a relevant state.

The script compiles each exact historical synchronization body into a small Clang 20 x86-64 LLVM module and checks the resulting `cur_copy` projection with Alive2 in both directions. [The result](result.json) records a concrete mismatch for `is_alloc = true, cur_copy = 1`: the parent returns `0`, the child returns `1`. Alive2 also proves both directions equal when `is_alloc = false`. The generated C++ wrappers model `ggml_backend_synchronize` as a no-op because both versions call it identically; the claim concerns only `cur_copy` after synchronization.

**This is a verified internal-state difference, not a public tensor-output counterexample.** The same commit also replaces one scheduler call during graph reallocation, and neither that call path nor subsequent tensor results are checked. Volta cannot compare this host-side C++ graph scheduler through its PTX-kernel relation. The selected whole-commit label therefore remains `UNSUPPORTED`; this run adds scoped Alive2 evidence and changes its execution status to `checked`. No official before/after benchmark score was measured.

Recheck from the project root:

```sh
python3 -B history-eq/gpu/llama.cpp/b47ab7b8/verify.py
```
