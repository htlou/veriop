# xxHash `f534e5b`: SIMD shuffle replaced with shift

The complete historical commit changes only `xxhash.h`. Its four edits replace
`_mm256/_mm512_shuffle_epi32(data_key, _MM_SHUFFLE(0,3,0,1))` with
`_mm256/_mm512_srli_epi64(data_key, 32)` in the AVX2 and AVX512 one-stripe
accumulator and scramble functions. [`audit_defined_outputs.py`](audit_defined_outputs.py)
checks the exact old/new Git blobs and proves these four replacements account
for every changed byte of the header.

The intermediate vectors are **not** identical: their unused high 32 bits in
each 64-bit lane differ. Both are consumed only by `_mm*_mul_epu32`, which uses
the low 32 bits of each 64-bit lane. The source-locked Z3 queries in the
[audit result](defined-outputs-audit.json) prove that those bits agree for any
128-bit lane. A separate query confirms the full intermediate vectors can
differ, guarding against the incorrect stronger claim. The same lane rule
repeats across AVX2 and AVX512 vectors; see Intel's
[AVX-512 permutation guide](https://builders.intel.com/docs/networkbuilders/intel-avx-512-permuting-data-within-and-between-avx-registers-technology-guide-1668169807.pdf).

Alive2 independently checks the exact-source raw `XXH3_accumulate_512` and
`XXH3_scrambleAcc` wrappers with arbitrary 64-byte accumulator, input, and
secret values. The [AVX2](avx2-forward-recheck.log) and
[AVX512](avx512-forward-recheck.log) forward runs each report two correct
transformations; the reverse runs do too. Since the whole commit contains no
other edit, repeated calls compose with the unchanged public one-shot and
streaming paths. **Verdict: scoped `EQUIV` for functional hash outputs and
streaming state on defined C executions with standard AVX2/AVX512 intrinsic
semantics.** The SSE2/scalar paths are byte-identical. This says nothing about
machine-code identity, timing, or undefined executions.

Recheck from the project root with
`alive2/.venv/bin/python history-eq/c/xxHash/f534e5b/audit_defined_outputs.py`.
