# simdjson `96462aec`: first floating-point digit branch

**Fixed-sample verdict: `EQUIV_PARTIAL`; complete parser result: UNKNOWN.** The [upstream historical diff](https://github.com/simdjson/simdjson/commit/96462aec71f573a88321ebe227dd71d6488d7b87) changes only `include/simdjson/generic/numberparsing.h`: four floating-point accessors replace `p += parse_digit(*p, i); bool leading_zero = (i == 0);` with a helper that branches on the first `parse_digit` result, then executes the same digit loop. The commit message reports `bench_number_accessors` cycles per value, but those are upstream measurements, not a local official before/after run.

[The projection](prefix.cpp) reproduces the old and new first-digit code and exposes its three outputs: accumulator value, bytes consumed, and `leading_zero`. It instantiates the `parse_digit` body shared by the [exact parent](../3b2870d8/historical-new.h) and [exact child](historical-new.h), including unsigned 8-bit subtraction and unchanged-on-failure accumulator behavior. [Recovery from pinned HEAD](../source-screening/recover_recent.py) matched both Git blob IDs, `e8d195edfc4251cdd5bd1ae6fb44ba3950633912` and `14f62a66b3c2f9839614f8caa5c0a64bad0304b3`. Other historical dependencies were not compiled as a complete parser. This proof is strictly about the displayed first-digit rewrite, not a machine-checked claim about the four complete accessors.

The old and new [unoptimized LLVM IR](old-O0.ll) / [LLVM IR](new-O0.ll) differ. Alive2 proves [old→new](forward-O0.log) and [new→old](backward-O0.log): each direction reports five correct transformations, including all three exported output fields, with zero incorrect, zero failed-to-prove, and zero errors. The first input byte is arbitrary. Since the unchanged continuation receives the same position, value, and leading-zero flag, this establishes a local state relation at its entry; later parsing and public results remain unchecked.

Reproduce from the project root:

```sh
python3 -B history-eq/cpp/simdjson/source-screening/recover_recent.py
clang++ -O0 -Xclang -disable-O0-optnone -std=c++17 -DHISTORICAL_OLD -S -emit-llvm history-eq/cpp/simdjson/96462aec/prefix.cpp -o history-eq/cpp/simdjson/96462aec/old-O0.ll
clang++ -O0 -Xclang -disable-O0-optnone -std=c++17 -S -emit-llvm history-eq/cpp/simdjson/96462aec/prefix.cpp -o history-eq/cpp/simdjson/96462aec/new-O0.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/cpp/simdjson/96462aec/old-O0.ll history-eq/cpp/simdjson/96462aec/new-O0.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/cpp/simdjson/96462aec/new-O0.ll history-eq/cpp/simdjson/96462aec/old-O0.ll
```
