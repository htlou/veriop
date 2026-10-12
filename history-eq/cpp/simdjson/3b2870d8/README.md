# simdjson `3b2870d8`: four-digit integer scan

**Fixed-sample verdict: `EQUIV_PARTIAL`; complete integer parser: UNKNOWN.** The [upstream historical diff](https://github.com/simdjson/simdjson/commit/3b2870d822b1797cfebb368cd76df0413a7016bb) adds a four-digit SWAR scan to `parse_integer_digits` and routes four integer accessors through it. The scan is capped at 16 digits because one caller uses an unpadded 22-byte stack buffer. [The exact parent](historical-old.h) and [child](historical-new.h) changed headers were [recovered from pinned HEAD](../source-screening/recover_recent.py); their Git blob IDs match `cdbabc1cedb5aae59fc19852b18409ed9e9b572b` and `e8d195edfc4251cdd5bd1ae6fb44ba3950633912`. Their other historical dependencies have not been restored or compiled as a full parser.

The [source-mapped projection](four_digits.cpp) uses the scalar digit loop from the exact parent and the four-digit guard and unrolled parser body from the exact child. It checks three relevant outputs: the guard for **every 32-bit packed word**, the four-digit value, and the `uint64_t` accumulator update for **every initial accumulator** (including wraparound). Invalid four-byte words leave the accumulator unchanged in this projection. [Old](old-O0.ll) and [new](new-O0.ll) unoptimized LLVM IR differ; Alive2 proves [forward](forward-O0.log) and [backward](backward-O0.log) equality with four correct transformations, zero incorrect, zero failed-to-prove, and zero errors in each direction.

The proof does not establish the surrounding 16-digit cap, continuation scan, errors, or complete accessor results. No local official before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 -B history-eq/cpp/simdjson/source-screening/recover_recent.py
clang++ -O0 -Xclang -disable-O0-optnone -std=c++17 -DHISTORICAL_OLD -S -emit-llvm history-eq/cpp/simdjson/3b2870d8/four_digits.cpp -o history-eq/cpp/simdjson/3b2870d8/old-O0.ll
clang++ -O0 -Xclang -disable-O0-optnone -std=c++17 -S -emit-llvm history-eq/cpp/simdjson/3b2870d8/four_digits.cpp -o history-eq/cpp/simdjson/3b2870d8/new-O0.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/cpp/simdjson/3b2870d8/old-O0.ll history-eq/cpp/simdjson/3b2870d8/new-O0.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 history-eq/cpp/simdjson/3b2870d8/new-O0.ll history-eq/cpp/simdjson/3b2870d8/old-O0.ll
```
