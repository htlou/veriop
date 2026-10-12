# HACL* seeded nonkeyword optimization screen

The pinned HACL* history has 7,262 in-scope source commits. The original keyword population contains 429; the remaining 6,833 were shuffled with seed `veriop-history-v1:hacl-star:nonkeyword` and audited in that fixed order. The [raw audit](hacl-star-nonkeyword-first6833-blob-audit.json) checks exact old/new changed blobs without lazy Git fetching: 65 of 6,833 commits have every changed blob locally available.

A metadata screen of 61 messages with work-reduction cues identified the following six runtime optimization intents outside the keyword population. Their commit messages and changed paths justify inclusion; no speedup is inferred from a message alone. Every selected pair lacks at least one historical changed source blob, so no source-matched F* equivalence/refinement check has run. Their verdict is `UNKNOWN`, not `UNSUPPORTED` or verified equal.

| Seeded draw | Commit | Changed implementation | Missing changed blobs |
|---:|---|---|---:|
| 1107 | `f444c8de78` | Precomputed fixed-window exponentiation table | 12 |
| 1128 | `7af192a319` | Precomputed SHA-2 message schedule | 5 |
| 4095 | `ad69239058` | Removed extra P256 scalar multiplication in key validation | 12 |
| 5404 | `0d46a8e81b` | Removed Blake2s allocation | 2 |
| 5876 | `6a0ab77406` | Removed SHA3 copy | 4 |
| 6689 | `466f81e988` | Removed redundant modular addition after upstream fix | 2 |

The other metadata hits include specification, proof, build, or ambiguous changes. This cue screen is not a complete semantic review of all 6,833 commit diffs. Historical source availability, not an executed checker failure, currently limits these six cases.
