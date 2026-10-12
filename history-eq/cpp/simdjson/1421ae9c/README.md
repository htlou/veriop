# simdjson historical optimization `1421ae9c`

Commit `1421ae9cecb6e674c268e233535f33fad1b4228f` adds an intrinsic 128-bit multiplication path to `umul128` and `umul128_upper64` in `src/to_chars.cpp`; other code is unchanged (`source.diff`). The fallback schoolbook bodies remain under `#else` for compilers without `__SIZEOF_INT128__`. `umul128.cpp` contains both historical bodies with exported names. `audit.py` compares each body against the exact parent/child source and confirms that the child fallback equals the parent (`source-audit.log`). Fixed-width aliases replace `<cstdint>` solely because the local LLVM 20 toolchain lacks C++ library headers; their widths are asserted.

**Scoped verdict: `EQUIV_PARTIAL` for the two changed unsigned multiplication helpers; the full `to_chars` commit remains unverified.** Clang 20 `-O1 -ffreestanding` produces distinct LLVM IR: the old branch uses 32-bit limbs and multiple 64-bit products, while the new branch uses one `i128` multiplication (`umul128.ll`). Alive2 with bidirectional checking and a 120-second SMT budget returns `ERROR: Timeout` for both the full `{high, low}` result and `umul128_upper64` (`alive2-umul128.log`: two failed-to-prove transformations). Alive2 establishes neither a mismatch nor equality for the high half.

The independent algebraic proof covers both output halves. The [ring query](ring.smt2) proves that splitting both 64-bit inputs into 32-bit limbs yields the exact 128-bit product. The [carry query](carry.smt2) proves that the historical fallback's `intermediate`, high result, and modular low result reconstruct that product, and that both returned halves fit in unsigned 64 bits. Z3 4.13.3 reports [one `unsat`](ring.log) and [two `unsat`](carry.log) results. The [source audit](source-audit.log) matches both historical helper bodies to the wrappers; the SMT formulas were mapped to those bodies by source inspection, not mechanically extracted. Under that mapping, the two helpers agree for every pair of 64-bit inputs on the `__SIZEOF_INT128__` branch. This is independent arithmetic evidence, **not an Alive2 result or a proof of the full `to_chars` translation unit**. The Z3 executable is packaged with Kuiper; Kuiper itself did not check this commit.

The lower 64-bit projection alone is bidirectionally equivalent (`alive2-low.log`); Clang had already simplified both projected functions to a single 64-bit multiply, so this is a partial result. An IR mutant adding 1 to the new upper-half result is rejected with a concrete value mismatch, 0 versus 1 (`alive2-negative.log`). For that mutant, the original return-range attribute was removed because it no longer describes the mutated function. These checks use all 64-bit input pairs. The unchanged fallback branch is covered by the source audit, not by this Alive2 timeout result. No official simdjson benchmark before/after score is attached.

Reproduce from the project root:

```sh
python3 history-eq/cpp/simdjson/1421ae9c/audit.py
alive2/toolchain/usr/bin/clang++-20 -std=c++17 -O1 -ffreestanding -emit-llvm -S history-eq/cpp/simdjson/1421ae9c/umul128.cpp -o history-eq/cpp/simdjson/1421ae9c/umul128.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=120000 --src-fn=old_umul128 --tgt-fn=new_umul128 history-eq/cpp/simdjson/1421ae9c/umul128.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=30000 --src-fn=old_umul128_low --tgt-fn=new_umul128_low history-eq/cpp/simdjson/1421ae9c/umul128.ll
/srv/home/hantaolou/code/veriop/benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 history-eq/cpp/simdjson/1421ae9c/ring.smt2
/srv/home/hantaolou/code/veriop/benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3 history-eq/cpp/simdjson/1421ae9c/carry.smt2
```

`--src-fn=old_umul128` matches both `old_umul128` and `old_umul128_upper64` in this Alive2 version; the log names both functions and both timeouts. Alive2 may exit zero after timeout or counterexample, so inspect its verdict text.
