# OpenZeppelin Contracts seeded nonkeyword optimization screen

The pinned source history has 2,172 commits: 337 keyword candidates and 1,835 other commits. The latter were shuffled with seed `veriop-history-v1:openzeppelin-contracts:nonkeyword`. The [raw audit](openzeppelin-contracts-nonkeyword-first1835-blob-audit.json) found two commits with all changed blobs locally available; both add features rather than establish an old/new optimization proof.

A metadata screen of 82 work-reduction cue hits identified the 20 runtime or gas-saving intents below. Their messages and changed Solidity paths justify inclusion, but no gas improvement or semantic equivalence is inferred from a message alone. Every selected commit lacks at least one exact historical changed blob locally; all remain `UNKNOWN` and no source-matched checker ran.

| Seeded draw | Commit | Intent evidence | Missing changed blobs |
|---:|---|---|---:|
| 137 | `6363a776f7` | Removes ERC20 require checks duplicated by SafeMath. | 2 |
| 243 | `00f323d132` | Short-circuits vestedAmount after vesting ends. | 2 |
| 246 | `54ce38c2e5` | Removes proxy runtime storage-slot checks. | 6 |
| 506 | `9558e546d9` | Removes redundant memory use from ERC2981 royaltyInfo. | 2 |
| 519 | `d20d03c149` | Removes redundant ERC721 safeTransferFrom modifiers. | 2 |
| 539 | `8b778fa20d` | Moves additions to permit unchecked PaymentSplitter arithmetic. | 1 |
| 598 | `82a63f6389` | Removes a redundant ERC721 require check. | 2 |
| 810 | `a55fabc405` | Removes unnecessary Pausable state initialization. | 2 |
| 850 | `324eda228c` | Removes a redundant ECDSA constraint. | 1 |
| 864 | `1ebeef7ffd` | Removes an unnecessary SLOAD in Roles. | 2 |
| 924 | `5fbf494511` | Uses unchecked arithmetic in ERC20 transfer, mint, and burn. | 2 |
| 929 | `c4f78a5dd5` | Removes redundant SafeMath.safeDiv checks. | 2 |
| 1070 | `f491e98d37` | Uses unchecked arithmetic for ERC721 balance updates. | 2 |
| 1202 | `b840341a77` | Removes ERC20 decimals storage. | 4 |
| 1212 | `1e7ca3eea6` | Removes a redundant array access in Checkpoints. | 2 |
| 1272 | `809ded806f` | Removes a redundant P256 modulo operation. | 2 |
| 1342 | `d2ba1f6251` | Removes redundant memory use in Checkpoints. | 2 |
| 1390 | `7417c5946f` | Removes a redundant Governor.getVotes call. | 2 |
| 1616 | `a5ed318634` | Avoids a memory copy when accessing a Checkpoint struct. | 2 |
| 1666 | `8b1f1ab67b` | Removes redundant StandardToken checks. | 2 |

The cue screen is not a complete semantic review of all 1,835 diffs. The blob audit covers changed files only, not unchanged dependencies.
