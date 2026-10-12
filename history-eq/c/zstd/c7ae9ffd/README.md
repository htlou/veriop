# zstd `c7ae9ffd`: offset prefix lookup

The sampled commit `c7ae9ffde33a5e114fd71d0a46df75a6e007790b` replaces the offset prefix shift in `ZSTD_decodeSequence` with a 27-entry lookup table and changes `MaxOff` from 31 to 26. It changes only `lib/zstd.c`. [`check_source.py`](check_source.py) verifies the saved [parent](zstd.old.txt), [child](zstd.new.txt), and [complete diff](source.diff) against the historical Git objects. It also checks that [the Alive2 input](offset_prefix.c) uses the exact old/new prefix expressions, zero-code fallback, and all 27 historical table values ([audit result](source-check.log)).

**Verdict: verified equal for the changed prefix computation, conditional on `offsetCode <= 26`; whole-commit status remains unresolved.** The model couples the unchanged `BIT_readBits` result as a common `suffix`, the unchanged previous offset as `prevOffset`, and returns the post-fallback offset. Both functions explicitly restrict the code to `0..26`. Alive2 proves **both directions** for all such codes, suffixes, and previous offsets on x86-64 ([log](alive2.log)) and i386 ([log](alive2-i386.log)). The command uses `--bidirectional --always-verify --fail-src-ub` on Clang 20 `-O0` IR. A deliberately wrong final table entry produces a concrete mismatch at code 26 ([negative control](alive2-negative.log)).

The range premise matters. The new source comments that FSE table construction bounds the decoded symbol, and its `MaxOff` is 26, but this local check does not prove that premise for every compressed input. The RLE table path reads a symbol byte from the input, so malformed streams need separate analysis. Without the range restriction, Alive2 finds that the old expression remains defined for code 32 while the new table lookup is out of bounds ([diagnostic](alive2-unbounded.log)). This is a local counterexample to an unrestricted prefix relation, **not** a demonstrated public decompression counterexample. The FSE decoder, input validation, and whole zstd API are outside this proof.

Recheck from this directory:

```sh
python3 check_source.py
../../../../alive2/toolchain/usr/bin/clang-20 -O0 -Xclang -disable-O0-optnone -ffreestanding -emit-llvm -S offset_prefix.c -o offset_prefix.ll
../../../../alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=zstd_old_prefix --tgt-fn=zstd_new_prefix offset_prefix.ll
../../../../alive2/toolchain/usr/bin/clang-20 -O0 -Xclang -disable-O0-optnone -ffreestanding -target i386-pc-linux-gnu -emit-llvm -S offset_prefix.c -o offset_prefix-i386.ll
../../../../alive2/build/alive2/alive-tv --bidirectional --always-verify --fail-src-ub --smt-to=45000 --src-fn=zstd_old_prefix --tgt-fn=zstd_new_prefix offset_prefix-i386.ll
```

No official before/after benchmark score was measured for this historical commit.
