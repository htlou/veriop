# `cda25408`: `char16_t` eight-digit SSE2 parser

**Commit-level source verdict: unverified.** The [exact historical diff](source-scoped.diff) changes the eight-digit `char16_t` helper used by the big-integer fallback. On a build with `FASTFLOAT_SSE2=1`, the [Alive2 wrapper](checker_wrap.cpp) compares both actual historical helper bodies on symbolic inputs. Its valid-digit branch first rejects any code unit outside `'0'`–`'9'`; [old→new](valid-fwd.log) and [new→old](valid-bwd.log) still each find an incorrect transformation. One forward example parses `76640200` as **76640200** in the parent and **2550200** in the child. The two guarded `parse_if_eight_digits_unrolled` outputs are equal in [both](fwd.log) [directions](bwd.log). The [old IR](old-sse2.ll) and [new IR](new-sse2.ll) differ and pass LLVM verification.

The [public probe](public_probe.cpp) on [input](public_witness.txt) `17763508237772000257` accepts and consumes all 20 `char16_t` units in both historical binaries, but produces double bits [`43eed0951411a402`](public-old-sse2.log) versus [`43c1b229b788ddfc`](public-new-sse2.log). With `FASTFLOAT_SSE2` undefined, [parent](public-old-default.log) and [child](public-new-default.log) both return `43eed0951411a402`; the default Clang IR for the helper is byte-identical.

However, both historical SSE2 binaries report the **same pre-existing undefined behavior** under UBSan: `fast_read_u64(const char16_t*)` loads 16 bytes from a four-element `char16_t masks[]`, which has only 8 bytes ([parent](san-old.log), [child](san-new.log)). The native output difference therefore is not a defined-C++ public counterexample. Alive2's refutation establishes an LLVM IR-level difference for the compiled helper, not source-level inequivalence of the complete commit. We keep the commit in `unverified` and retain the counterexample and diagnostic separately. No official historical benchmark score was measured.

Reproduce the public witness from the project root:

```sh
mkdir -p /tmp/ff-cda-old /tmp/ff-cda-new
git -C benchmarks/repos/fast_float archive cda25408^ include | tar -x -C /tmp/ff-cda-old
git -C benchmarks/repos/fast_float archive cda25408 include | tar -x -C /tmp/ff-cda-new
g++ -std=c++20 -O2 -msse2 -DFASTFLOAT_SSE2=1 -I /tmp/ff-cda-old/include history-eq/c/fast_float/cda25408/public_probe.cpp -o /tmp/ff-cda-old/public_probe
g++ -std=c++20 -O2 -msse2 -DFASTFLOAT_SSE2=1 -I /tmp/ff-cda-new/include history-eq/c/fast_float/cda25408/public_probe.cpp -o /tmp/ff-cda-new/public_probe
/tmp/ff-cda-old/public_probe < history-eq/c/fast_float/cda25408/public_witness.txt
/tmp/ff-cda-new/public_probe < history-eq/c/fast_float/cda25408/public_witness.txt
alive2/build/alive2/alive-tv --func=target_raw_valid --always-verify history-eq/c/fast_float/cda25408/old-sse2-tv.ll history-eq/c/fast_float/cda25408/new-sse2-tv.ll
```
