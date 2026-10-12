# llama.cpp `f0c7b5ed`: C thread-barrier optimization

**Selected-checker verdict: `UNSUPPORTED`.** The historical change separates two atomic counters onto cache lines and changes the barrier's exit from a sequence-consistent read-modify-write to a fence for non-TSAN builds. The [reproduction script](reproduce.py) extracts the exact parent and child `ggml_barrier` bodies from `ggml.c`, builds the non-OpenMP path with Clang 20 at `-O2`, and verifies both LLVM modules with `opt`. It tries normal and `GGML_TSAN_ENABLED` configurations.

In both configurations, [Alive2 stops at the first atomic load](alive2-normal.log) with `Unsupported instruction: load atomic`; the [TSAN log](alive2-tsan.log) reports the same. It gives no equality proof or counterexample. The wrapper uses a canonical three-counter structure and makes the thread-relax hint a no-op, but Alive2 rejects the atomic instruction before either difference matters. It also does not model the complete historical threadpool layout, multiple threads, or scheduling. Source-body hashes and the two attempted results are in [result.json](result.json).

No official before/after llama.cpp benchmark score for this historical pair was measured here. Run `python3 -B history-eq/gpu/llama.cpp/f0c7b5ed/reproduce.py` from the project root.
