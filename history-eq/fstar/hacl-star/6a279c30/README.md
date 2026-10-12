# HACL* `6a279c30`: SHA-2 extraction annotation

**Verdict: unverified for the extracted optimization.** Parent `8adb2618b501f53db2abd7257e452e4def0a933b`; child `6a279c30997faca82599a29ff89f6899ed2a9c3f`.

The [source audit and F* attempts](check.py) read the exact historical Git blobs and check that the complete `.fsti` change is one `inline_for_extraction` marker before `hash_st`; its type specification is otherwise byte-identical. `code/Makefile` changes the warning option from `+9` to `@4`, and the binary `.fsti.hints` cache also changes. [Source IDs and run status](result.json) are saved.

Both historical interfaces were submitted to the installed F* 2026.03.24 development build, which has `FStar.HyperStack.ST`. Both stop before checking `hash_st` because the unchanged historical `Spec.Hash.Common` dependency is absent locally ([old log](fstar-old.log), [new log](fstar-new.log)). The source-text identity does not prove generated C equivalence: the changed marker is meant to affect extraction. No corresponding generated-C pair or official before/after benchmark score is available.

Run from the project root:

```sh
python3 history-eq/fstar/hacl-star/6a279c30/check.py
```
