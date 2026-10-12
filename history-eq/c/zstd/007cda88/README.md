# zstd `007cda88`: AVX-512 compiler guard in XXH64

Commit `007cda88ca1c7819eec966ce030934756d33c8c1` adds `XXH_COMPILER_GUARD(acc)` to `XXH64_round` when `__AVX512F__` is defined and `XXH_ENABLE_AUTOVECTORIZE` is not. The guard is the historical empty GNU inline asm statement with a tied `+r` register operand. [`check_source.py`](check_source.py) verifies the saved [parent](xxhash.old.txt), [child](xxhash.new.txt), and [complete diff](source.diff) against Git, and checks the arithmetic constants, operations, and guard in [the localized C input](xxh64_round.c) ([audit result](source-check.log)).

**Selected-checker verdict: UNSUPPORTED for the changed AVX-512 branch.** Clang 20 emits an LLVM inline-asm call for the new guard. Alive2 does not model this asm as the identity compiler barrier intended by the source: its [AVX-512 run](alive2.log) reports `Function asm ... triggered UB` and `Source is more defined than target`. That is a checker-model failure, **not a verified program counterexample**. On the branches that omit the guard, Alive2 proves the localized old/new functions bidirectionally equal: [without AVX-512](alive2-noavx.log) and [with `XXH_ENABLE_AUTOVECTORIZE`](alive2-optin.log). These controls confirm the unsupported operation is the newly added asm.

[A separate modeled check](check_modeled_guard.py) compiles a [small caller](header_driver.c) against each **exact historical header** with AVX-512 enabled. It asserts that the child's generated IR contains precisely the expected empty tied-register asm call, then replaces that call with an identity operation. LLVM verifies both raw modules and the modeled module; Alive2 proves the old and new `XXH64_round` arithmetic equal in [both](modeled-forward.log) [directions](modeled-reverse.log) for all 64-bit accumulator and input values. This result assumes the empty asm preserves its tied operand's value; it does not remove the original Alive2 limitation or prove whole-library equivalence.

Recheck from this directory:

```sh
python3 check_source.py
../../../../alive2/toolchain/usr/bin/clang-20 -O0 -Xclang -disable-O0-optnone -ffreestanding -mavx512f -emit-llvm -S xxh64_round.c -o xxh64_round.ll
../../../../alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=xxh_old_round --tgt-fn=xxh_new_round xxh64_round.ll
python3 -B check_modeled_guard.py
```

This checks the changed `XXH64_round` branch, not whole-library hashing or machine-code behavior. No official before/after benchmark score was measured for this historical commit.
