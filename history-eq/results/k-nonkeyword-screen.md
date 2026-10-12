# Additional nonkeyword K-tool optimization intents

The seeded [EVM semantics audit](evm-semantics-nonkeyword-first832-blob-audit.json) covers all 832 nonkeyword source commits; none has every changed blob locally. Commit `f8051d5d` caches digests to avoid rerunning unchanged claims. Six exact changed blobs are missing. Its changed path is Python proof orchestration, outside the selected `kprove` K-program relation. The `UNSUPPORTED` label is scope triage; no before/after checker ran.

The seeded [Kontrol audit](kontrol-nonkeyword-first496-blob-audit.json) covers all 496 nonkeyword source commits and finds one complete changed-blob pair. That pair, [`e8fbc990`](../k/kontrol/e8fbc990/README.md), avoids repeat K kompilation after Solidity changes when the generated K definition is unchanged, while adding build options to the digest. Exact-source Python AST execution and Z3 prove two opposite recompilation-decision witnesses, so its selected label is scoped `NOT_EQUIV`. This is a Python build decision outside `kprove`'s K-program relation; generated K and proof results remain unverified. No official before/after benchmark score was measured.

Neither commit was checked with Kuiper. An installed Kuiper package or its bundled Z3 binary is not a Kuiper proof run.
