# fast_float `49ca5d85`: eight-digit path on big-endian targets

Commit `49ca5d855ea958a55e86c8084f9fd9c0fd6f7707` changes only `ascii_number.h`. Its old big-endian fractional parser uses a scalar digit loop; the child enables the eight-digit path by adding `byteswap`, `read_u64`, and `write_u64`. [`prepare.py`](prepare.py) checks the [exact diff](source.diff), saves the [old](ascii_number.old.txt) and [new](ascii_number.new.txt) historical headers, and extracts the old scalar update and new helpers into two [PowerPC64 big-endian](old.cpp) [translation units](new.cpp). The generated units explicitly set `FASTFLOAT_IS_BIG_ENDIAN=1`. The unchanged historical `float_common.h` blob is absent locally, so this is a source-audited local specialization, not a complete historical library build.

**Verdict: EQUIV_PARTIAL.** On the big-endian LLVM target, Alive2 proves in [both](target_is_digits-forward-final.log) [directions](target_is_digits-reverse-final.log) that the old scalar eight-character test and the new byteswapped SWAR test agree for every eight-byte input. It also proves in [both](buffer-forward.log) [directions](buffer-reverse.log) that the old scalar digit-byte output and new `read_u64`/subtract/`write_u64` output agree when guarded by eight valid ASCII digits. The wrappers use the exact changed helper bodies; their fixed-size input/output arrays model one eight-digit block in the historical parser.

The numeric update is proved compositionally. Z3 verifies the exact byte swap for arbitrary 64-bit words ([query](numeric-byteswap.smt2), [result](numeric-byteswap-z3.log)), the subtraction/byte-pair/mask steps for every valid eight-digit input ([seven bit-vector obligations](numeric-bytes.smt2), [results](numeric-bytes-z3.log)), the source's two 64-bit multiplier constants and high-word result for every two-digit pair 0–99 ([query](numeric-algebra.smt2), [result](numeric-algebra-z3.log)), and the pair-weighted decimal value ([query](numeric-decimal.smt2), [result](numeric-decimal-z3.log)). A separate [64-bit bit-vector check](numeric-accumulate.smt2) proves that eight old `i = 10*i + digit` steps equal the new `i = i*100000000 + eight_digits` update for **any initial `i`**, including wraparound ([result](numeric-accumulate-z3.log)). Together with the Alive2 digit predicate result, these establish equality of one eligible eight-digit scalar/fast-path step; two such blocks compose by applying the same relation twice. [`check_evidence.py`](check_evidence.py) audits the saved source and proof logs ([output](evidence-audit.log)).

The direct combined `target_parse` Alive2 checks [time out forward](target_parse-forward-final.log) and [time out reverse](target_parse-reverse-final.log). The compositional Z3 proof supplies the local numeric result; it does not prove the complete `parse_number_string`, `parse_decimal`, or public `from_chars` before/after behavior, nor other target configurations. No official historical before/after benchmark score was measured.

Reproduce from the project root:

```sh
python3 history-eq/c/fast_float/49ca5d85/prepare.py
for side in old new; do clang++ --target=powerpc64-unknown-linux-gnu -std=c++17 -O2 -S -emit-llvm -fno-discard-value-names -ffreestanding -nostdinc++ -nostdlibinc "history-eq/c/fast_float/49ca5d85/$side.cpp" -o "history-eq/c/fast_float/49ca5d85/$side.ll"; done
alive2/build/alive2/alive-tv --func=target_is_digits --always-verify history-eq/c/fast_float/49ca5d85/old.ll history-eq/c/fast_float/49ca5d85/new.ll
alive2/build/alive2/alive-tv --func=target_digits_buffer --always-verify history-eq/c/fast_float/49ca5d85/old.ll history-eq/c/fast_float/49ca5d85/new.ll
python3 history-eq/c/fast_float/49ca5d85/make_numeric_lemmas.py
python3 history-eq/c/fast_float/49ca5d85/make_accumulate_smt.py
source benchmarks/env.sh
z3 -smt2 history-eq/c/fast_float/49ca5d85/numeric-byteswap.smt2
z3 -smt2 history-eq/c/fast_float/49ca5d85/numeric-bytes.smt2
z3 -smt2 history-eq/c/fast_float/49ca5d85/numeric-algebra.smt2
z3 -smt2 history-eq/c/fast_float/49ca5d85/numeric-decimal.smt2
z3 -smt2 history-eq/c/fast_float/49ca5d85/numeric-accumulate.smt2
```
