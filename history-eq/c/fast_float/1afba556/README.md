# fast_float `1afba556`: rare fast-path recovery

The historical change is `1afba556e344360c403ea060b041fa27032fa4b4` (parent `395764249902646d4471e94c60114b295678694b`). The production diff in `source.diff` adds `is_divisible` and changes `compute_float`: when the approximate product's low word is all ones, the old code requests slow-path recomputation, while the new code continues on the fast path if the normalized mantissa is divisible by `5**-q`.

`prepare.py` extracts the exact old/new `decimal_to_binary.h` and unchanged `fast_table.h` objects from the pinned historical repository, checks their hashes, and generates a source-audited local branch model. The model uses the unchanged historical `compute_product_approximation` text, the new `is_divisible` text, the unchanged table values, and a mathematical unsigned 128-bit multiplication in place of `full_multiplication`, whose historical `float_common.h` object is absent locally. It does **not** compile the full historical parser.

The valid decimal input `7450580596923828125e-27` gives `q=-27` and normalized `w=14901161193847656250`. The approximation low word is `0xffffffffffffffff`; the divisibility test returns true. Thus the old branch requests slow-path recomputation (`1`) and the new branch does not (`0`). `witness.json` records the intermediate values. Alive2 refutes equality of the fixed-input internal recomputation flag in both directions (`forward.log`, `reverse.log`). Native executions of the generated local model also return exit codes 1 and 0 respectively.

**Verdict: unverified for the public parser.** The internal flag mismatch is the intended optimization and does not imply different parsed floating-point values. Exact parent objects for `parse_number.h` and `float_common.h` are unavailable in this partial historical checkout (`GIT_NO_LAZY_FETCH=1 git cat-file -e` returns 1 for each), so the old and new public `from_chars` paths have not been built or compared. No official performance benchmark has been run for this pair.

Reproduce the available check from the project root:

```sh
python3 history-eq/c/fast_float/1afba556/prepare.py
clang++ -std=c++17 -O2 -S -emit-llvm -fno-discard-value-names -Xclang -opaque-pointers -ffreestanding -nostdinc++ -nostdlibinc history-eq/c/fast_float/1afba556/old.cpp -o history-eq/c/fast_float/1afba556/old.ll
clang++ -std=c++17 -O2 -S -emit-llvm -fno-discard-value-names -Xclang -opaque-pointers -ffreestanding -nostdinc++ -nostdlibinc history-eq/c/fast_float/1afba556/new.cpp -o history-eq/c/fast_float/1afba556/new.ll
alive-tv --func=target_recompute_flag --always-verify history-eq/c/fast_float/1afba556/old.ll history-eq/c/fast_float/1afba556/new.ll
```
