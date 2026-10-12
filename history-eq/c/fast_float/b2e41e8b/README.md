# `b2e41e8b`: move JavaScript parsing off the common path

**Verdict: verified difference for an unrestricted format-bit combination.** The [exact historical diff](source-scoped.diff) changes dispatch precedence. With `chars_format::json | chars_format::javascript` (underlying value 565), the parent tests the JSON bit first and parses as JSON; the child tests the JavaScript bit first and enters its cold JavaScript parser. Both format bits can be combined with the header's public `operator|`, as the [public probe](public_probe.cpp) checks at compile time. The combination is not one of the individually named modes.

On [input](public_witness.txt) `.5`, exact historical public binaries return [parent](native-old.log) `invalid_argument`, zero consumed, unchanged value 123.0 and [child](native-new.log) success, two consumed, value 0.5. The same file includes controls: named `javascript` accepts `.5` on both sides, while named `json` rejects it on both. Rebuilt [parent](san-old.log) and [child](san-new.log) with ASan/UBSan produce the same outputs without diagnostics.

The [source-audited dispatcher slice](dispatch_slice.cpp) calls the exact parser specialization selected by each historical `from_chars_float_advanced` branch for this fixed input and format. Its [parent IR](old.ll) and [child IR](new.ll) differ and pass LLVM verification. Alive2 [parent→child](fwd.log) and [child→parent](bwd.log) each refute all three parser outputs: validity, parse error, and consumed position. This is corroboration at the selected parser boundary, not a proof over the full public floating-point function.

The result concerns a combined mode; it does not show a regression for either named format. No local official before/after benchmark score was measured.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-b2-old /tmp/ff-b2-new
git -C benchmarks/repos/fast_float archive b2e41e8b^ include | tar -x -C /tmp/ff-b2-old
git -C benchmarks/repos/fast_float archive b2e41e8b include | tar -x -C /tmp/ff-b2-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b2-old/include history-eq/c/fast_float/b2e41e8b/public_probe.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-b2-old/public_probe
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b2-new/include history-eq/c/fast_float/b2e41e8b/public_probe.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-b2-new/public_probe
/tmp/ff-b2-old/public_probe < history-eq/c/fast_float/b2e41e8b/public_witness.txt
/tmp/ff-b2-new/public_probe < history-eq/c/fast_float/b2e41e8b/public_witness.txt
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/b2e41e8b/old.ll history-eq/c/fast_float/b2e41e8b/new.ll
```
