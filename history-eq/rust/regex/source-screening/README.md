# Regex fixed sample: five source-available candidates screened

The fixed sample has eight commits for which both changed-source blobs are locally available. Three had already been checked. The five remaining cases were screened against their exact historical source diffs:

| Commit | Screening | Source basis |
|---|---|---|
| [`07ef7f1550d5`](07ef7f1550d5.source.diff) | Excluded | Adds public prefilter metadata/getters; does not optimize an existing search path. |
| [`0f32c0393a9b`](0f32c0393a9b.source.diff) | Confirmed performance | Replaces repeated DFA epsilon-closure stack push/pop with a local loop. |
| [`5e98788947b2`](5e98788947b2.source.diff) | Confirmed performance | Replaces `shortest_match_at(...).is_some()` with `is_match_at(...)` in both byte and Unicode regex wrappers. |
| [`f15f3dcbc340`](f15f3dcbc340.source.diff) | Excluded | Changes quit-state error handling to fix word-boundary behavior; the commit is a correctness fix. |
| [`fbd2537a5800`](fbd2537a5800.source.diff) | Excluded | Calls `AsRef` once to keep the stored haystack and span consistent for incorrect implementations; the commit is a safety fix. |

Both confirmed performance commits remain **not run** by Aeneas. Their changed source files are present, but the `src/` trees at those parent and child revisions are missing 26 of 28 files (`5e987889`) and 28 of 29 files (`0f32c039`) from this partial Git mirror. A changed-blob audit is not a buildability or checker verdict. No equivalence/refinement or performance score is claimed for these two commits.
