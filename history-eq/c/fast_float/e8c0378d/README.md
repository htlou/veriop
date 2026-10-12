# fast_float `e8c0378d`: attempted ARM NEON path

Commit `e8c0378d6d8834c019a657a95b10c6a499a5b647` adds an ARM NEON eight-digit path. [`check_source.py`](check_source.py) verifies the saved [parent](ascii_number.old.txt), [child](ascii_number.new.txt), and [complete diff](source.diff) against Git and extracts the exact added functions into [a standalone AArch64 C++ probe](neon_optin.cpp). Only standard type and inline/warning macro definitions are supplied around those unchanged function bodies.

**Verdict: UNSUPPORTED for the intended NEON optimization path.** The historical child defines `FASTFLOAT_NEON` on AArch64 but gates `FASTFLOAT_HAS_SIMD` on the different `FASTFLOAT_ARM64` macro. The [default gate check](gate-default.log) confirms that NEON is defined while SIMD dispatch remains disabled. If `FASTFLOAT_ARM64` is supplied to reach the added functions, Clang 20 [rejects the exact source bodies](optin-compile.log): the first non-void helper omits a return, and the second uses undeclared `values` instead of its `chars` parameter. An ill-formed target branch cannot be translated to LLVM for Alive2. This is a buildability result, **not a semantic counterexample**; default-build parser behavior was not proved at whole-library scope.

Reproduce from the project root:

```sh
python3 history-eq/c/fast_float/e8c0378d/check_source.py
alive2/toolchain/usr/bin/clang-20 -target aarch64-linux-gnu -ffreestanding -nostdinc -dM -E history-eq/c/fast_float/e8c0378d/gate_default.c
alive2/toolchain/usr/bin/clang++-20 -target aarch64-linux-gnu -ffreestanding -nostdinc -isystem alive2/toolchain/usr/lib/llvm-20/lib/clang/20/include -std=c++14 -Werror=return-type -fsyntax-only history-eq/c/fast_float/e8c0378d/neon_optin.cpp
```

No official historical before/after benchmark score was measured for this commit.
