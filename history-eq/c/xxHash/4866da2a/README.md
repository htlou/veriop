# xxHash `4866da2a`: IBM XL vector intrinsics

The [exact historical diff](source.diff) switches the VSX multiplication helpers to `vec_mulo` and `vec_mule` when `__ibmxl__` is defined. [`reproduce.py`](reproduce.py) verifies both `xxhash.h` Git blob IDs and cross-compiles the historical variants for little-endian PowerPC/POWER9. Minimal freestanding C-header declarations replace the unavailable target libc; `-D__ibmxl__ -U__clang__` selects the historical IBM XL preprocessor branches under Clang 20. Both fixed-256-byte XXH3 wrappers emit LLVM IR and object files, recorded in the [result](result.json).

Direct Alive2 checks of the changed `mulo` and `mule` helpers [both](alive2-mulo.log) [stop](alive2-mule.log) at unknown `llvm.ppc.altivec.vmuleuw/vmulouw` semantics; they report failed to prove and no counterexample. Only inline-assembly source-location metadata was removed symmetrically. The fixed-length wrapper's `target` calls a same-named `noinline` internal hash function, so checking only that wrapper would miss the changed operations.

**Verdict: `UNSUPPORTED` by this Clang/Alive2 pipeline.** No IBM XL compiler or PowerPC execution is available here. Clang's macro-branch emulation cannot establish IBM XL behavior, and no equality proof or counterexample follows from the helper checks. No official historical benchmark score was measured.

Reproduce from the project root with `python3 -B history-eq/c/xxHash/4866da2a/reproduce.py`.
