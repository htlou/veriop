# Kontrol `c8906a19`: prebuilt definition selection

**Fixed-sample verdict: `UNSUPPORTED` by the selected K `kprove` before/after checker path.** This commit changes the Python definition builder, K module entrypoint, and loading calls. [`check.py`](check.py) checks the complete [historical source diff](../source-screening/c8906a19.source.diff) against Git, archives the exact [parent](kompile-old.py) and [child](kompile-new.py) builder blobs, parses both Python files, and submits the child to the selected `kprove` installation. The [checker log](kprove-python.log) reports an outer-parser error at Python's `from` statement (exit 113); no K semantic relation or counterexample was evaluated. Reproduce from the project root with `python3 history-eq/k/kontrol/c8906a19/check.py`.

The [source audit result](result.json) also records a **build-selection diagnostic**: for `keccak_lemmas=false` and `auxiliary_lemmas=false`, the parent builder omits both optional lemma imports, while the child selects `KONTROL-FULL`. The exact new K module imports both `KONTROL-AUX` and `KONTROL-KECCAK`, which import those lemma modules. This establishes an import-selection difference, not an EVM execution difference; the historical generated definitions and their proof behavior were not compared.

No official historical before/after build or proof-time score was measured.
