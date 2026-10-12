# fast_float `1e0a9da5`: AArch64 NEON gate

Commit `1e0a9da5382f552b2134975d951056c4ade0ddc6` changes the `FASTFLOAT_HAS_SIMD` condition from `FASTFLOAT_ARM64` to `FASTFLOAT_NEON`. On AArch64, the same historical header defines `FASTFLOAT_NEON`, so a runtime `char16_t` eight-character read switches from the scalar `read8_to_u64` loop to `simd_read8_to_u64`. [`check_source.py`](check_source.py) confirms the saved [old](float_common.old.txt) and [new](float_common.new.txt) macro headers, unchanged [ASCII helper header](ascii_number.old.txt), and [complete commit diff](source.diff) against Git. The [local C input](neon_read8.c) reproduces the relevant scalar byte truncation/packing and NEON load/narrow/extract operations.

**Verdict: EQUIV_PARTIAL.** Clang 20 targeted AArch64 little-endian at `-O2`, generating different scalar and NEON LLVM bodies without needing an AArch64 C++ sysroot. [Bidirectional Alive2](alive2.log) proves both `uint64_t` results equal for every readable eight-element 16-bit input in its LLVM memory model. A one-bit mutant of the NEON result is [rejected](alive2-negative.log), demonstrating that the check compares values. [`check_ir.py`](check_ir.py) removes only the LLVM `nocapture` hint and nonsemantic TBAA, loop, and module metadata that this Alive2 front end rejects.

The proof covers this selected helper result. It does not check the entire `char16_t` digit-validation path, compile-time constant evaluation, full `from_chars` behavior, non-little-endian targets, or the whole commit. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/c/fast_float/1e0a9da5/check_source.py
alive2/toolchain/usr/bin/clang-20 -target aarch64-linux-gnu -ffreestanding -nostdinc -isystem alive2/toolchain/usr/lib/llvm-20/lib/clang/20/include -O2 -emit-llvm -S history-eq/c/fast_float/1e0a9da5/neon_read8.c -o history-eq/c/fast_float/1e0a9da5/neon_read8.ll
python3 history-eq/c/fast_float/1e0a9da5/check_ir.py
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=old_read8 --tgt-fn=new_read8 history-eq/c/fast_float/1e0a9da5/neon_read8.checked.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=old_read8 --tgt-fn=new_read8_bad history-eq/c/fast_float/1e0a9da5/neon_read8.checked.ll
```
