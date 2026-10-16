# Final verification status (written by the coordinator after the wrap-up agent was stopped)

Agent stopped at 18:24 PDT 2026-10-15 after ~95 min without progress; nothing below was run after that.

| Item | Verdict | Evidence |
|---|---|---|
| `rank-two-sided.patch` (RankBenchmark 1.77× on affected configs) | **NOT VERIFIED** | Relational KeY proof (`../key/relational/`) closes only under the cardinality invariant; the public constructor `BitmapContainer(long[], int)` can violate it (witness: `rank(60000)` old 60001 vs new -535, `../difftest/invariant-witness.log`). |
| `select` 4-word block skip (`../round3/select-block4.patch`, SelectBenchmark 1.42×) | **NOT VERIFIED** | Per-version contract proofs: old closes for 4 of 6 behaviour cases (`po_old_{eF,eN,nF,nN}.closed.proof`), new closes for 0 of 6 (`po_new_*.open.proof`); null-input cases close for both. The relational obligations `po_rel_*.key` were generated but never run. |
