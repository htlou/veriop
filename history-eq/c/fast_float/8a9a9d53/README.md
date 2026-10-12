# `8a9a9d53`: eight `char16_t` digits with SIMD

**Verdict: UNSUPPORTED (historical child build failure).** The [source diff](source-scoped.diff) introduces a SIMD eight-digit helper. The same [public API smoke source](smoke.cpp) instantiates `from_chars<double,char>` and `from_chars<double,char16_t>` on ten-character decimal inputs using the exact parent and child `include/` trees. Clang 20.1.8, C++20 `-O2 -msse2` generated [parent LLVM IR](old.ll) with an empty [parent compiler log](compile-old.log), but the [child compilation](compile-new.log) failed. No child IR exists for Alive2 to compare.

The default child errors include `FASTFLOAT_SSE2` used as a C++ expression without a definition, a call to `parse_if_eight_digits_unrolled(p)` despite both overloads requiring an accumulator argument, and a missing `char16_t` overload of `parse_eight_digits_unrolled` on the slow conversion path. Explicitly defining `FASTFLOAT_SSE2=0` still [fails](compile-new-sse0.log) at the latter two errors. Defining `FASTFLOAT_SSE2=1` [adds](compile-new-sse1.log) invalid intrinsic call and missing-parenthesis errors; it does not make the commit buildable in this configuration. These are compiler diagnostics on the unmodified historical source. The source also contains `i * 100000000 * parse_eight_digits_unrolled(chars)` in the new `char` helper, but no semantic verdict is inferred from unreachable code.

This is a build-support classification, not a proof that the two parsers differ on executable inputs. No official historical before/after benchmark score could be measured for this pair.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-8a-old /tmp/ff-8a-new
git -C benchmarks/repos/fast_float archive 8a9a9d53^ include | tar -x -C /tmp/ff-8a-old
git -C benchmarks/repos/fast_float archive 8a9a9d53 include | tar -x -C /tmp/ff-8a-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++20 -O2 -msse2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-8a-old/include history-eq/c/fast_float/8a9a9d53/smoke.cpp -o /tmp/ff-8a-old/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++20 -O2 -msse2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-8a-new/include history-eq/c/fast_float/8a9a9d53/smoke.cpp -o /tmp/ff-8a-new/new.ll
```
