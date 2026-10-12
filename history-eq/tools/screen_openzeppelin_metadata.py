#!/usr/bin/env python3
"""Screen OpenZeppelin source-gap candidates from exact local Git metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/openzeppelin-contracts"
ledger = root / "history-eq/results/openzeppelin-contracts-pinned-sample-audit.json"
evidence = root / "history-eq/solidity/openzeppelin-contracts/metadata-source-gap-screening.md"

# UNKNOWN: old/new Solidity source is missing. UNSUPPORTED: only a new API exists.
performance = {
    "07603d58": ("UNKNOWN", "Removes a SafeMath call in an ERC721/Counter refactor."),
    "08d109d8": ("UNKNOWN", "Reduces Ownable and Pausable modifier bytecode size."),
    "08f8bf71": ("UNKNOWN", "Simplifies and optimizes the existing SimpleToken example."),
    "1200969e": ("UNKNOWN", "Reduces ReentrancyGuard gas usage."),
    "121be5dd": ("UNKNOWN", "Optimizes proxy interfaces while changing ProxyAdmin deployment."),
    "140d66fa": ("UNKNOWN", "Improves the existing integer square-root implementation."),
    "15214a53": ("UNKNOWN", "Optimizes existing ERC20Capped implementation."),
    "160bf1a6": ("UNKNOWN", "Optimizes existing Strings.toString implementation."),
    "171fa40b": ("UNSUPPORTED", "Adds an efficient ERC721 batch-minting extension without a direct old API pair."),
    "1d2d18f9": ("UNKNOWN", "Reduces SafeMath gas use."),
    "1d5bcd04": ("UNKNOWN", "Uses unchecked arithmetic in existing ECDSA tryRecover."),
    "1eb82eca": ("UNKNOWN", "Reduces ERC2771Context gas use."),
    "1ecda544": ("UNKNOWN", "Reorders ERC20 input checks to reduce gas."),
    "253bfa68": ("UNKNOWN", "Optimizes existing Strings.equal."),
    "260e082e": ("UNSUPPORTED", "Adds a new short-string library for gas-efficient use, with no direct old API pair."),
    "28b95ef5": ("UNKNOWN", "Reduces ReentrancyGuard gas use."),
    "28dd4907": ("UNKNOWN", "Removes one opcode from ERC1167 proxy creation."),
    "2ea54a19": ("UNKNOWN", "Refactors existing SafeERC20 for lower gas use."),
    "31ac59b2": ("UNKNOWN", "Reduces gas in the reentrancy mutex."),
    "3210a865": ("UNKNOWN", "Reduces ReentrancyGuard bytecode size."),
    "36b85597": ("UNKNOWN", "Optimizes existing ERC20Capped implementation."),
    "373eabec": ("UNKNOWN", "Optimizes existing P256 operations."),
    "3dadd400": ("UNKNOWN", "Avoids SafeMath overhead in BitMaps."),
    "3dfc0a44": ("UNKNOWN", "Adds an ERC1155 hook while avoiding a duplicate _asSingleton call."),
    "40d15146": ("UNKNOWN", "Changes ERC20Snapshot to on-demand snapshots."),
    "44590fe0": ("UNKNOWN", "Inlines a keccak256 result in ERC777."),
    "448efeea": ("UNKNOWN", "Optimizes the existing Math.log2 with a lookup table."),
    "48cc8a92": ("UNKNOWN", "Optimizes the existing Math.mulDiv."),
    "4fc9fd3e": ("UNKNOWN", "Adds calldata-based Merkle proof handling for more efficient verification."),
    "541e8214": ("UNKNOWN", "Optimizes EOA signature verification."),
    "547af0b5": ("UNKNOWN", "Defers signer reads until after authorization decoding succeeds."),
    "54a235f8": ("UNKNOWN", "Rearranges Governor proposal state for more efficient access."),
    "62eb4568": ("UNKNOWN", "Optimizes the existing ERC721 approval-or-owner check."),
    "6bd8842a": ("UNKNOWN", "Removes an unnecessary gas cost in ERC721 and associated mocks."),
    "6ddacdbd": ("UNKNOWN", "Clears timelock state after execution to obtain a gas refund."),
    "6f88199d": ("UNKNOWN", "Removes a redundant Address.functionCall contract check."),
    "70e616db": ("UNKNOWN", "Optimizes existing ERC721 transfer paths."),
    "750a1765": ("UNKNOWN", "Optimizes removal from EnumerableSet."),
    "8177c462": ("UNKNOWN", "Improves ECDSA gas efficiency."),
    "88a3f957": ("UNKNOWN", "Optimizes the existing Initializable._disableInitializers condition."),
    "93d990c6": ("UNKNOWN", "Optimizes the ERC777 constructor."),
    "a21482ac": ("UNKNOWN", "Uses calldata ECDSA recovery paths to avoid memory copies."),
    "a22c8862": ("UNKNOWN", "Optimizes the existing Array.quicksort."),
    "a99b31f9": ("UNKNOWN", "Uses uint256 loop iterators to reduce MerkleTree gas."),
    "a9b1f58b": ("UNKNOWN", "Adds saturating math and optimizes existing try operations."),
    "ad27fb65": ("UNKNOWN", "Optimizes nested mapping access in ERC721Enumerable."),
    "aed5720a": ("UNKNOWN", "Avoids returndatacopy in ERC2771Forwarder using inline assembly."),
    "c63b203c": ("UNKNOWN", "Reduces gas in SafeMath.add and mul."),
    "c801c8d2": ("UNKNOWN", "Uses extcodesize in Address.isContract to reduce gas."),
    "d5194725": ("UNKNOWN", "Optimizes the existing EnumerableSet implementation."),
    "d5a0cf11": ("UNKNOWN", "Reduces Heap.pop gas when the heap size is one."),
    "d5d9d4bd": ("UNKNOWN", "Simplifies ERC721Wrapper.depositFor to save gas."),
    "de239d75": ("UNKNOWN", "Avoids an ERC-1271 signature-check allocation."),
    "dfae50fa": ("UNKNOWN", "Rewrites SignedMath.abs without logical branching."),
    "e09ccd14": ("UNKNOWN", "Optimizes Votes lookups for recent checkpoints."),
    "e66e3ca5": ("UNKNOWN", "Improves EnumerableMap gas efficiency."),
    "f7c16c10": ("UNKNOWN", "Short-circuits Slice equality on a length mismatch."),
    "fdf7012d": ("UNKNOWN", "Optimizes Math.log256 binary search."),
}
excluded = {
    "0034c302": "Release branch integration, not a single identifiable optimization.",
    "022f2bc1": "Documentation wording only.",
    "02fcc75b": "Adds ERC1155URIStorage functionality.",
    "051d3401": "Replaces an obsolete type spelling.",
    "07b1b472": "Makes wording consistent in code and documentation.",
    "09329f8a": "Release branch integration, not a single identifiable optimization.",
    "09a3da50": "Uses mulDiv to prevent royalty overflow.",
    "0ac83ce2": "Repairs a test mock.",
    "0b3acb28": "Improves ERC721Consecutive without a stated gas or speed objective.",
    "0c858e20": "Improves a revert reason.",
    "0dded493": "Fixes nonfunctional typos.",
    "0df0e1b2": "Improves inline documentation.",
    "0ec1d761": "Adds GSN functionality.",
    "100ca0b8": "Adds governance-token functionality.",
    "10c8fcd3": "Changes MinimalForwarder failure behavior to consume gas.",
    "11865206": "Updates a SimpleToken example without a stated gas objective.",
    "13e113df": "Changes ERC721 toString usage without a stated gas result.",
    "14f98dbb": "Changes ERC4626 decimal handling and documentation.",
    "1e0f0775": "Adds an address enumerable-set implementation.",
    "23074676": "Documentation only.",
    "24775342": "Changes ceilDiv(0, 0) behavior and test coverage.",
    "25c416d0": "Renames EnumerableSet variables for readability.",
    "2aa5dd26": "Improves encapsulation of BreakInvariantBounty.",
    "2e6ef745": "Improves code comments.",
    "308a4c99": "Adds EIP-1820 support.",
    "315f426f": "Changes SafeERC20 allowance API and tests without a stated gas objective.",
    "352ec945": "Adds a crowdsale time-extension function.",
    "365aca6d": "Improves error-handling tests.",
    "3b117992": "Improves transparent-proxy documentation.",
    "3def8f9d": "Rewrites math comments.",
    "3e6c8639": "Release branch integration, not a single identifiable optimization.",
    "3f3774c5": "Improves ERC1363 documentation.",
    "40172c22": "Refactors address-string conversion without a stated gas objective.",
    "41f84f8b": "Removes selfdestruct behavior from a bounty contract.",
    "45c0c072": "Improves encapsulation across contracts.",
    "488dd562": "Changes revert messages.",
    "49042f2b": "Adds a base token URI feature.",
    "4b152bd8": "Changes Governor interfaces without a stated gas objective.",
    "4b33eaef": "Splits ERC721 interfaces for granularity.",
    "4c997ea0": "Changes PullPayment function visibility without a stated gas result.",
    "547a5f24": "Adds an extcodesize safety check.",
    "5480641e": "Reduces returndata memory leakage for safety, without a stated gas objective.",
    "56515380": "Clarifies a SafeMath test comment.",
    "5a2b3499": "Adds ERC777 functionality.",
    "5abbd049": "Refactors Initializable for readability.",
    "5eb047a0": "Adds a Base58 library.",
    "67dac7ae": "Improves TokenVesting events and input checks.",
    "6c4c8989": "Renames variables for code style.",
    "6d5a7381": "Fixes ERC20Snapshot transfer behavior.",
    "6f80048c": "Improves NatSpec and comments.",
    "731e1990": "Improves ERC721URIStorage documentation.",
    "76eee359": "Changes a Governor revert message.",
    "77e73221": "Renames a claimable property for compatibility.",
    "788d338c": "Renames internal variables.",
    "79dd498b": "Fixes ECDSA signature malleability.",
    "7d7cbcad": "Fixes revert reasons.",
    "7d8e3ca8": "Aligns ERC721 receiver behavior with the standard.",
    "8056433c": "Adds a PausableCrowdsale contract.",
    "80b2d1df": "Improves GovernorTimelockAccess without a stated gas objective.",
    "80d8da05": "Changes infinite-allowance transfer semantics.",
    "852e11c2": "Adds and edits documentation guides.",
    "85566fae": "Improves governance documentation.",
    "8614ef7a": "Avoids a WebAuthn slice-overflow revert for correctness.",
    "8631702b": "Release branch integration, not a single identifiable optimization.",
    "8b58fc71": "Adds a low-level call wrapper.",
    "8ba26f38": "Merges a security-advisory fix.",
    "8f8fd84f": "Improves NatSpec and revert reasons.",
    "92133be7": "Adds an ERC20 migration contract.",
    "92224533": "Merges a security-advisory fix.",
    "93cd2ecb": "Improves MerkleProof readability.",
    "94692acb": "Improves crowdsale documentation.",
    "94797978": "Changes SplitPayment constructor requirements.",
    "956d6632": "Adds ERC1155 functionality.",
    "9aa30e19": "Adds SafeMath modulo functionality.",
    "9fa6e3b8": "Release branch integration, not a single identifiable optimization.",
    "a0749979": "Changes SplitPayment events and visibility.",
    "a07f28b0": "Improves AccessManager documentation.",
    "a0f6bd39": "Adds deploy-ready token contracts.",
    "a1b4477b": "Improves Solidity compiler compatibility.",
    "a2e71038": "Improves SafeMath comments.",
    "a503ba1a": "Prevents empty multiproof overflow.",
    "a9f910d3": "Increases test coverage.",
    "aa4b9017": "Improves ERC20FlashMint documentation.",
    "aa4c9fea": "Adds ERC20 compatibility to ERC777.",
    "ab133796": "Improves contract encapsulation.",
    "ac5480e7": "Release branch integration, not a single identifiable optimization.",
    "ae753b7e": "Improves VestingWallet and RSA documentation.",
    "af7ec04b": "Strengthens onlyGovernance security checks.",
    "b5a3e693": "Improves AccessManager without a stated gas objective.",
    "b66c77a1": "Release branch integration, not a single identifiable optimization.",
    "b734bf3f": "Tweaks ERC20Snapshot documentation wording.",
    "b7d60f2f": "Fixes Solidity compiler warnings.",
    "b8a70f0e": "Improves crowdsale encapsulation.",
    "b95d7e7f": "Adds an address wrapper.",
    "b99fc005": "Improves token-contract documentation.",
    "bc3db5d4": "Fixes inline-assembly indentation.",
    "bd077846": "Adds EnumerableMap and refactors ERC721 without a stated gas objective.",
    "bd994a88": "Removes legacy utility contracts.",
    "bebe85f1": "Release branch integration, not a single identifiable optimization.",
    "c05918c3": "Refactors crowdsale and adds new models.",
    "c0bda4db": "Changes sendTransaction API and adds tests.",
    "c1d9da40": "Changes test infrastructure to reduce mocks.",
    "c1edd061": "Adds TrieProof inline extension-node support.",
    "c20e620a": "Improves Pausable documentation.",
    "c3b3ae7e": "Fixes a function comment.",
    "c4be4d16": "Improves ERC721 documentation.",
    "c5fe1389": "Release branch integration, not a single identifiable optimization.",
    "c793f750": "Adds an ERC7579 decoding safety check.",
    "cc19ccfd": "Changes a packaging script.",
    "cc1c1809": "Uses a compile-time constant for consistency, without a stated gas objective.",
    "cd47fbe9": "Improves Crowdsale documentation.",
    "d17ae0b8": "Adds SignedSafeMath functionality.",
    "d183d9b0": "Release branch integration, not a single identifiable optimization.",
    "d59306bd": "Improves ERC20.decimals documentation.",
    "d6e10ab7": "Adds a withdrawal API that forwards all gas.",
    "d89a62e0": "Improves ERC20FlashMint documentation.",
    "d9fa59f3": "Changes ERC1155 API behavior and documentation.",
    "da3a9ae1": "Removes inline assembly from signature decomposition without a stated gas objective.",
    "da67e435": "Removes non-constructor initialization for correctness and style.",
    "db06a6ef": "Adds AccessManager cancellation granularity.",
    "dc4869eb": "Prevents an ERC165Checker return-bomb safety issue.",
    "dd1d7df0": "Avoids calldata decode reverts for correctness.",
    "e2fa301b": "Renames parameters and removes unnecessary returns without a stated gas objective.",
    "e41daba7": "Changes API documentation.",
    "e855ca45": "Improves an IRelayRecipient comment.",
    "e96164fe": "Implements ERC721 functionality.",
    "ebd4b5e7": "Fixes ERC20 approval comparison.",
    "ecf0725d": "Improves ERC721 documentation.",
    "ed5652b0": "Adds a documentation site setup.",
    "ee7ff817": "Changes a packaging script.",
    "eedca5d8": "Release branch integration, not a single identifiable optimization.",
    "ef0273fd": "Adds a Base64 utility library.",
    "f0e12d53": "Adds test helpers.",
    "f12817e4": "Migrates role APIs.",
    "f1db3095": "Removes deprecated APIs and contracts.",
    "f3888bb0": "Removes an unnecessary override without a stated gas objective.",
    "f4eb51a7": "Improves role-contract encapsulation.",
    "f7e53d90": "Adds an Arrays library and tests.",
    "fbf23566": "Improves transfer error-message grammar.",
    "feb7ead0": "Adds a bytecode-length safety revert.",
}
assert len(performance) + len(excluded) == 198
assert performance.keys().isdisjoint(excluded)

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
lines = [
    "# OpenZeppelin Contracts fixed-sample metadata screen", "",
    "All 198 source-gap candidates were screened against exact local Git commit messages "
    "and changed-path trees. The historical changed Solidity source is missing locally. "
    "`UNKNOWN` and `UNSUPPORTED` here are scope classifications, not executed proof results. "
    "Upstream gas claims are not official benchmark reruns in this workspace.", "",
    "| Commit | Subject | Classification | Reason | Changed paths |", "|---|---|---|---|---:|",
]
for prefix in sorted(performance.keys() | excluded.keys()):
    item = items[prefix]
    assert item["source_status"] == "missing_changed_blob"
    assert item["screen"] in ("intent_pending", "confirmed_optimization", "excluded_non_optimization")
    obj = subprocess.run(["git", "-C", str(repo), "cat-file", "-p", item["commit"]],
                         check=True, capture_output=True, text=True).stdout
    assert "\n\n" in obj and " ".join(item["subject"].split()) in " ".join(obj.split("\n\n", 1)[1].split())
    paths = subprocess.run(["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", item["commit"]],
                           check=True, capture_output=True, text=True).stdout.splitlines()
    assert paths
    if prefix in performance:
        verdict, reason = performance[prefix]
        item.update({"screen": "confirmed_optimization", "checker_status": "not_run", "verdict": verdict,
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched old/new Solidity proof run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/OpenZeppelin/openzeppelin-contracts/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (60, 140, 0)
assert (verdicts["UNKNOWN"], verdicts["UNSUPPORTED"], verdicts["EQUIV"], verdicts["EQUIV_PARTIAL"]) == (56, 2, 1, 1)
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(verdicts.values()),
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_or_refinement_full": verdicts["EQUIV"],
    "verified_equal_or_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
