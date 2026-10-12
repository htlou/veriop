# xxHash `57d44d5`: `XXH32_finalize` control flow

**Verdict: scoped runtime `EQUIV`.** The commit changes only `README.md` and `xxhash.h`. The exact historical header blobs, complete non-comment source comparison, and proof outputs are checked by `python3 -B history-eq/c/xxHash/57d44d5/check_finalizer.py`; see [audit](finalizer-proof-audit.json). After isolating the renamed branch-selector macro and its default logic, every other executable header line is identical. Thus all unchanged callers supply the same inputs to the sole changed routine, `XXH32_finalize`.

Alive2 checked 16 `len & 15` residues × 2 pointer-alignment modes × 4 old/new branch-setting pairs: **128 pairs, correct in both directions, zero failures**. Each wrapper keeps the incoming hash and input bytes symbolic. The aligned wrappers require a 4-byte-aligned pointer. The historical function masks `len` to those 16 residues in both branches; its null-pointer assertion is unchanged. All generated IR paths are loop-free, so no loop unrolling or bound was used for the comparisons. This establishes equal normal C hash results for the recorded Clang x86-64-v3 `-O3` configuration, including one-shot and streaming callers that reach this finalizer.

To rerun the four comparisons from the project root:

```bash
for old in 0 1; do
  for new in 0 1; do
    python3 history-eq/c/xxHash/_tools/alive_check_f.py \
      --out "history-eq/c/xxHash/57d44d5/finalizer_modes/old${old}_new${new}" \
      --old-inc history-eq/c/xxHash/57d44d5/old \
      --new-inc history-eq/c/xxHash/57d44d5/new \
      --wrapper history-eq/c/xxHash/57d44d5/wrap_finalizer_residues.c \
      --extra-cflags "-DXXH_REROLL=${old} -DXXH32_ENDJMP=${new}" \
      --smt-to 30000 --timeout 180
  done
done
python3 history-eq/c/xxHash/57d44d5/check_finalizer.py
```

The earlier symbolic-length streaming Alive2 checks timed out; the source-composition argument above resolves their functional result without claiming those timed-out solver queries passed. Compile-time inspection of `XXH_REROLL`/`XXH32_ENDJMP`, non-hash observations, and other compiler/target configurations remain outside this scoped verdict. No official historical before/after benchmark score was measured.
