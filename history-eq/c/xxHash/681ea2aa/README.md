# xxHash `681ea2aa`: x86-64 and ARMv7 `XXH32` comparison

**Selected result: `EQUIV_PARTIAL`; whole-commit result: `UNKNOWN`.** The exact parent and child `xxhash.c` and `xxhash.h` Git blobs are archived in `old/` and `new/`, and their IDs are checked by [`verify.py`](verify.py). The [historical diff](source.diff) adds an alignment-sensitive path for strict-alignment CPUs and changes state layout, allocation hooks, and declarations. The checks below cover the one-shot `XXH32` function on x86-64 and two fixed lengths on ARMv7.

Clang 20 `-O2` compiles the historical `XXH32` definitions into [old](old.ll) and [new](new.ll) LLVM modules. After removing unsupported `nocapture`/`noalias` hints and LLVM metadata from both sides, the complete `XXH32` function bodies are byte-identical ([old](old-xxh32.ir), [new](new-xxh32.ir)). The function body has no unresolved calls; its only calls are to `llvm.fshl.i32` rotate intrinsics. Both modules pass LLVM verification, and Alive2 reports one correct transformation and zero errors in each direction ([old→new](old_to_new.log), [new→old](new_to_old.log)). The compiler-selected x86-64 path therefore preserves this function's result and memory effects for inputs defined in both LLVM modules.

The [ARMv7 strict-alignment check](verify_arm_strict.py) uses the same exact historical C and header blobs, compiled with Clang 20 `-mno-unaligned-access`. Alive2 proves old-to-new refinement at input lengths **5 and 16** for arbitrary defined old inputs. With a four-byte-aligned pointer assumption, it proves both directions at both lengths. Without that assumption, new-to-old fails because the old LLVM path has undefined behavior for unaligned 32-bit reads; the new packed path accepts those inputs ([eight run logs and result](arm-strict-result.json)). Each checked wrapper has the actual `XXH32` body inlined, with no unresolved `XXH32` call. The Alive2 input removes unsupported LLVM hints and metadata from both modules. Minimal cross-target headers supply only `malloc`, `free`, and `memcpy` declarations; the checked wrappers make no external C calls.

Other input lengths, strict-alignment targets beyond this ARMv7 configuration, incremental-state API, changed state layout, allocation hooks, and the complete commit remain unverified. This is a scoped result, not a whole-library proof or an official before/after benchmark measurement.

Reproduce from the project root:

```sh
python3 -B history-eq/c/xxHash/681ea2aa/verify.py
python3 -B history-eq/c/xxHash/681ea2aa/verify_arm_strict.py
```
