# xxHash `6e5d5d76`: exact block-boundary output change

The historical change avoids scrambling when the input length is a whole processing block and also changes which secret is used for the last stripe. Run `python3 history-eq/c/xxHash/6e5d5d76/reproduce.py` from the project root. It audits the exact parent and child source blobs and calls the public `XXH3_64bits` API on the same valid 1024-byte zero input.

Clang 20 and GCC 11 each return `08f1c8e108dd9d2e` on the parent and `3ebe8236f7d5d322` on the child. This concrete witness establishes **`NOT_EQUIV`** for the public API. The script also compiles a wrapper with the changed hash body inlined, confirms that the compared target IR differs, and attempts Alive2; Alive2 times out, so the inequality conclusion rests on the exact native executions, not on an Alive2 counterexample. A direct un-inlined wrapper produces an identical call site and is not used as proof.

No official historical xxHash benchmark before/after score was measured.
