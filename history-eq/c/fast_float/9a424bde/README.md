# `9a424bde`: revert the digit-test microoptimization

**Verdict: VERIFIED_INEQUAL.** The [complete source diff](source-scoped.diff) changes the hot-path `is_integer(char)` predicate from `(c & 0x30) == 0x30` to `c >= '0' && c <= '9'`. The old predicate accepts non-digits such as `':'` and `'z'`. This commit reverts a microoptimization and fixes its incorrect acceptance behavior; no official before/after performance score was measured.

The identical [checker wrapper](wrap.cpp) compiled against the exact parent and child historical header trees with Clang 20.1.8 `-std=c++17 -O2`. Their [old](old.ll) and [new](new.ll) LLVM IR differ. Alive2 refutes old→new refinement of the changed [digit predicate](digit-fwd.log) and the real one-byte parser's [valid result](parser-valid-fwd.log): both logs give input `0x7a` (`'z'`), with old result `1` and new result `0`. Each reports one incorrect transformation, no failed proofs, and no Alive2 errors. The parser mantissa check was [not translated](parser-mantissa-fwd.log) because of metadata; it is not needed for the `valid` counterexample.

The identical [public witness](public_witness.cpp) was also compiled with GCC against each historical header tree. For `':'`, old `from_chars<double>` [returns success, consumes one byte, and writes 10.0](native-old.log); new [returns `invalid_argument`, consumes zero, and preserves the input value](native-new.log). The same behavior appears for `';'` through `'?'`. Both [ASan/UBSan runs](san-old.log) / [ASan/UBSan runs](san-new.log) exited zero without reported errors. Direct Alive2 translation of the full public `from_chars<double>` definition is [unsupported](public-function-fwd.log) at an `invoke` in `parse_long_mantissa`; the public result is native witness evidence corroborated by a checker counterexample at the parser boundary, not a full public-API Alive2 proof.

Reproduce from the project root:

```sh
mkdir -p /tmp/ff-9a-old /tmp/ff-9a-new
git -C benchmarks/repos/fast_float archive 9a424bde^ include | tar -x -C /tmp/ff-9a-old
git -C benchmarks/repos/fast_float archive 9a424bde include | tar -x -C /tmp/ff-9a-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-9a-old/include history-eq/c/fast_float/9a424bde/wrap.cpp -o history-eq/c/fast_float/9a424bde/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++17 -O2 -S -emit-llvm -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-9a-new/include history-eq/c/fast_float/9a424bde/wrap.cpp -o history-eq/c/fast_float/9a424bde/new.ll
alive2/build/alive2/alive-tv --always-verify --smt-to=30000 --func=target_parser_valid history-eq/c/fast_float/9a424bde/old.ll history-eq/c/fast_float/9a424bde/new.ll
g++ -std=c++17 -O2 -I /tmp/ff-9a-old/include history-eq/c/fast_float/9a424bde/public_witness.cpp -o /tmp/ff-9a-old/public_witness
g++ -std=c++17 -O2 -I /tmp/ff-9a-new/include history-eq/c/fast_float/9a424bde/public_witness.cpp -o /tmp/ff-9a-new/public_witness
/tmp/ff-9a-old/public_witness
/tmp/ff-9a-new/public_witness
```
