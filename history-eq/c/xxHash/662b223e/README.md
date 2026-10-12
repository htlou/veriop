# xxHash `662b223e`: shorter streaming reset

The exact historical change reorders `XXH3_state_t` fields and reduces the bytes cleared during reset. Run `python3 -B history-eq/c/xxHash/662b223e/reproduce.py` from the project root. The script verifies both changed Git blobs on each side, builds the same public reset-update-digest calls with Clang 20 `-O2`, and asks Alive2 to compare the returned 64-bit and 128-bit hashes in both directions for lengths 0, 1, 32, 255, 256, 257, and 1024. All 28 queries pass for symbolic valid input bytes.

The comparison removes LLVM alias metadata and `noalias.scope.decl` annotations symmetrically because the installed Alive2 cannot parse them; these annotations do not execute or alter hash values. The verdict is **bounded equivalence of returned hashes** in this build, not equality of the exposed state representation, arbitrary lengths, or all configurations. No official historical xxHash benchmark before/after score was measured. Kuiper was not used.
