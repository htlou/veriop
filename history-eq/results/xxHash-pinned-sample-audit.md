# xxHash fixed-sample audit

At pin `680bf463fa1ca0461b9a7c2dab7556e1f54cf4cf`, the deterministic `veriop-history-v1` cap of 200 includes **all 173** source-touching keyword candidates. The [per-commit crosswalk](xxHash-pinned-sample-audit.json) matches every full SHA to the earlier [pre-2020](xxHash-pre2020.json) or [2020-on](xxHash-2020on.json) Alive2 audit. All 94 confirmed optimization entries have unit-level evidence records and an existing `history-eq/c/xxHash/<commit>` artifact directory.

| Fixed-sample disposition | Commits |
|---|---:|
| Confirmed historical optimizations | 94 |
| Excluded as non-optimizations | 79 |
| Verified unequal under the recorded scope | 16 |
| Verified equal/refinement at full audited scope | 10 (9 equivalent, 1 refinement) |
| Equivalent only in bounded configurations | 13 |
| Unverified/inconclusive | 36 |
| Unsupported by the selected Alive2 workflow | 19 |

The six optimization-verdict rows sum to 94. Bounded equivalence is kept separate from full equivalence: it covers only the input lengths, unroll bounds, and configurations recorded for each unit. The wider 131-commit historical study also includes 37 manually found optimization commits outside the 173 keyword candidates; its totals must not be presented as this fixed sample's results. This crosswalk reuses the prior checker runs and does not add an official performance benchmark score.
