# fast_float `fc0c8680`: big-integer conversion

**Whole-commit verdict: unverified.** The historical commit `fc0c8680a55a6e9cdd8934df366c43d9e051aa3c` introduces big-integer conversion and changes digit scanning and the slow-path handoff. `source.diff` is the complete `include/fast_float` diff. The saved old/new `ascii_number.h` and `float_common.h` files are exact historical Git objects.

There is a reachable **internal** difference in the changed exponent scan. For the valid decimal input `1e1000000`, the old `parse_number_string` returns an internal exponent of `100000`, and the new one returns `1000000` (`native-old.log`, `native-new.log`). The native wrapper in `wrap.cpp` includes the exact historical scanner and common header on each side. It supplies only the `chars_format`/`parse_options` declarations from the unavailable historical `fast_float.h`; those declarations select ordinary scientific parsing. The direct full-scanner Alive2 attempt in `o0-noex.log` is inconclusive: it reports the source as always UB in its model and cannot establish a returning execution. That result is **not** an equivalence proof.

`exp_loop.cpp` isolates the source-identical exponent accumulation loop, with the old `0x10000` and new `0x10000000` limits taken from the historical diff. Alive2 refutes both directions for the fixed seven-digit exponent (`exp-forward.log`, `exp-reverse.log`): `100000` versus `1000000`. This proves a local helper difference only. It does **not** establish a different public `from_chars` return value, because both internal exponents may lead to the same range-error behavior.

The partial historical checkout lacks `fast_float.h` on both sides and `simple_decimal_conversion.h` on the parent side; their exact blobs are required for a faithful public-parser build. The new big-integer path, all other inputs, and the full public result remain unchecked. No official performance benchmark was measured for this historical pair.

Reproduce the decisive local Alive2 check from the project root:

```sh
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -DEXP_LIMIT=0x10000 history-eq/c/fast_float/fc0c8680/exp_loop.cpp -o history-eq/c/fast_float/fc0c8680/exp-old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -DEXP_LIMIT=0x10000000 history-eq/c/fast_float/fc0c8680/exp_loop.cpp -o history-eq/c/fast_float/fc0c8680/exp-new.ll
alive2/build/alive2/alive-tv --func=target_exponent_digits --always-verify history-eq/c/fast_float/fc0c8680/exp-old.ll history-eq/c/fast_float/fc0c8680/exp-new.ll
```
