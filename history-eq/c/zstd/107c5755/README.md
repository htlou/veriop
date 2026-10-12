# zstd `107c5755`: zero-length wildcopy

The historical commit `107c5755f426e0da930fc020464e32103480296b` (parent `2ec0cf21f824061c49affedd12997e70d7e2d7da`) changes `ZSTD_wildcopy` in `lib/zstd.c` from `while (op < oend) COPY8(op, ip)` to `do COPY8(op, ip) while (op < oend)`. [`check_source.py`](check_source.py) confirms that the saved [parent](zstd.old.txt), [child](zstd.new.txt), and [complete commit diff](source.diff) match Git, and that the helper bodies and `COPY8` operation in the [localized model](wildcopy.c) match the source ([audit log](source-check.log)). The commit also changes decompression call-site checks and other code; this model does not represent all those changes.

**Full-commit verdict: UNKNOWN. Local helper verdict: DIFFERENT for a valid zero-length call.** The [Alive2 check](alive2-probe-O2-builtin.log) compares two probe functions that each pass separate, valid eight-byte source and destination arrays to the historical helper body with `length == 0`. The old probe returns `0`; the new probe returns `1`. The [native run](runtime.log) agrees. Clang 20's optimized LLVM IR folds these fixed probes to different constants, so this is a deliberately small counterexample to unrestricted helper equivalence, not a proof about every call context. The direct unoptimized helper check also reports that the new helper requires eight readable/writable bytes even when length is zero ([direct check](alive2.log)).

The [internal-caller reproduction](check_exec_sequence.py) also extracts the **exact historical `ZSTD_execSequence` and `ZSTD_wildcopy` function bodies** from each revision. Its support code supplies the unchanged copy helpers, the `seq_t` layout, and a fixed call: one 40-byte array, output at byte 8, a one-past-end literal pointer at byte 40, literal length 0, match offset 8, match length 8, and output limit at byte 24. All pointers used for subtraction belong to the same array. The [parent run](exec-sequence-old.log) returns `8` with no sanitizer diagnostic; the [child run](exec-sequence-new.log) reports an eight-byte stack-buffer-overflow read along `ZSTD_execSequence → ZSTD_wildcopy → ZSTD_copy8`. The script checks both saved complete sources against Git, checks both extracted function bodies byte-for-byte, compiles with Clang's AddressSanitizer and UndefinedBehaviorSanitizer, and asserts these outcomes. `ERROR` is a minimal stub in the reproduction; neither side reaches an error return before the observed difference.

The same script now submits that source-extracted internal caller to Alive2 at `-O0`. Its [log](alive2-exec-sequence-O0.log) says `ERROR: Source function is always UB`, zero correct transformations, and one failed-to-prove transformation. This diagnostic does not establish old/new equivalence or a source-level counterexample; the sanitizer witness remains the concrete internal-call evidence.

At Clang 20 `-O2` with a high inlining threshold, the [IR audit](exec-sequence-O2-ir-collapse.log) shows that **both** caller wrappers reduce to the single instruction `ret i32 9`. Any Alive2 equality result on those optimized wrappers compares identical constants after the possible out-of-bounds read has disappeared; it cannot overturn the sanitizer witness or establish source-level equivalence. The reproduction script asserts this collapse for both historical bodies.

This establishes an instrumented internal-call memory-access difference, **not C-level definedness or reachability from a valid compressed input**. Alive2 covers the direct helper probe; the internal-caller memory-safety witness is a sanitizer run, not an Alive2 proof. The actual `ZSTD_decompressSequences` caller, literal-buffer layout, and public decompressor output have not been proved to admit this state. Consequently the selected sample remains `UNKNOWN` at public API scope, with an internal sanitizer witness and an inconclusive whole-caller Alive2 attempt. No official before/after zstd benchmark score was measured for this commit.

Recheck from the project root:

```sh
python3 history-eq/c/zstd/107c5755/check_source.py
alive2/toolchain/usr/bin/clang-20 -O2 -emit-llvm -S history-eq/c/zstd/107c5755/wildcopy.c -o history-eq/c/zstd/107c5755/wildcopy-O2-builtin.ll
alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=zstd_old_probe --tgt-fn=zstd_new_probe history-eq/c/zstd/107c5755/wildcopy-O2-builtin.ll
alive2/toolchain/usr/bin/clang-20 -O2 history-eq/c/zstd/107c5755/wildcopy.c history-eq/c/zstd/107c5755/witness_main.c -o /tmp/zstd-107c-witness
/tmp/zstd-107c-witness
python3 history-eq/c/zstd/107c5755/check_exec_sequence.py
```
