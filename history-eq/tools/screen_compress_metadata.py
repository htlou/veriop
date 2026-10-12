#!/usr/bin/env python3
"""Screen klauspost/compress source-gap candidates from exact local Git metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/compress"
ledger = root / "history-eq/results/compress-pinned-sample-audit.json"
evidence = root / "history-eq/gobra/compress/metadata-source-gap-screening.md"

performance = {
    "0309165d": "Tunes zstd assembly decoding with SSE instructions.",
    "0a376436": "Improves level-three flate compression.",
    "0d728f0a": "Reduces deflate table sizes and allocation footprint.",
    "0d78ef07": "Avoids S2 decode-size checks when the source is large enough.",
    "0d84c42a": "Introduces a faster Huffman-only bitwriter.",
    "0e43f04a": "Bounds non-preemptive xxhash assembly work to reduce GC stop latency.",
    "0e54620e": "Packs zstd FSE decoding state into a compound symbol for better generated code.",
    "0ff8ec17": "Uses BMI1 in huff0 assembly on GOAMD64=v3.",
    "117430d3": "Re-enables unsafe zstd decodeSync assembly memory copies.",
    "15b48b68": "Avoids goroutines and unused buffer allocations for single-worker zstd streaming.",
    "1a8c0e48": "Avoids an extra allocation in zlib Reset.",
    "1b2c27a2": "Reduces allocations in the flate sorter.",
    "204adfa3": "Speeds up huff0 four-way decompression by avoiding bounds checks.",
    "216f3e54": "Reduces flate history allocations.",
    "2393e1cb": "Keeps zstd encoder hash primes in registers on ARM64.",
    "24a27106": "Speeds up the flate token writer.",
    "258a0cee": "Adds two-pass ARM64 zstd decoding with match-source prefetch across Go and assembly paths.",
    "272358c8": "Reduces huff0 bit-reader bounds checks.",
    "275e1fc8": "Adds amd64 huff0 assembly for low table logs.",
    "2878205b": "Improves zstd best-compression encoder throughput.",
    "2a50b5f9": "Uses float arithmetic for speed in S2 command-line tools.",
    "2ad8e193": "Adds a faster Snappy-replacement package while changing S2 paths; the new package has no direct old API pair.",
    "2bb69be1": "Speeds up small zstd dictionary encodes.",
    "2beb6a6d": "Avoids a memory copy in S2 ReadFrom.",
    "2f437394": "Speeds up zstd decoder memory-copy assembly.",
    "2f993587": "Improves zstd best-compression efficiency.",
    "30993c63": "Refactors deflate encoders and assembly for lower-level speed and efficiency.",
    "32215906": "Uses a compound Huffman code for faster flate encoding.",
    "32dbb2c4": "Regenerates huff0 assembly with a branch-free refill.",
    "34dac29a": "Specializes huff0 four-symbol encoding for better code generation.",
    "35a5ed5a": "Backports faster ARM64 xxhash assembly.",
    "38d4ba98": "Improves amd64 S2 decompression assembly speed.",
    "38ece4ff": "Reduces flate decoder allocations.",
    "3cfb0881": "Speeds up zstd decompression copies.",
    "3d86b893": "Pools S2 encoder hash tables to reduce allocations.",
    "3e74d56e": "Reduces allocations in the Huffman encoder.",
    "3ec2174b": "Inlines the flate bitwriter for measured encoding speedups.",
    "4005c155": "Clamps S2 Go encoder skipping to improve compressed size after noise runs.",
    "415e5345": "Fixes a zstd decoder race while explicitly tuning decoder performance.",
    "463e7df6": "Improves S2 best-compression match skipping.",
    "48791b0c": "Improves zstd best-compression match selection.",
    "48fd9c21": "Defers ZIP data-descriptor reads to restore continuous I/O and avoid slow range reads.",
    "49d8cf2e": "Extends S2 better-compression hashing in Go and generated amd64 assembly.",
    "4a23b9a2": "Trades some small-input compression ratio for faster flate levels one to three on hard input.",
    "4a2d40e4": "Reduces per-decoder zstd allocations.",
    "4a32b53c": "Tunes zstd encoder hot paths for Go 1.17.",
    "4a97174a": "Uses a dedicated S2 scoring function to reduce generated code.",
    "4b3cc069": "Passes one bitReader pointer to huff0 assembly to free registers and shrink context.",
    "4cc176c3": "Adds truly concurrent zstd stream encoding.",
    "4dc0d324": "Uses separate histogram tables to avoid serialized store-to-load forwarding.",
    "4e2bbb39": "Adds a new constant-time flate encoder mode for predictable speed, without an old same-mode function pair.",
    "4fa2036c": "Adds unsafe little-endian loaders across flate Go paths; the selected Gobra relation does not model unsafe loads.",
    "4fd183f4": "Improves flate entropy compression.",
    "505dc06d": "Improves flate level-seven/eight speed and compression.",
    "51128322": "Merges Snappy encoder changes that fix overly aggressive skipping.",
    "52069689": "Shrinks generated amd64 zstd assembly return sequences, explicitly targeting code size.",
    "5491145d": "Reads more bits at once to improve flate inflate speed.",
    "54a3e1eb": "Skips S2 matches whose encoded cost is not beneficial.",
    "56999ed8": "Adds a better zstd compression mode with speed and ratio tradeoffs.",
    "5782b70a": "Inlines writeBits for a reported encoding speed gain.",
    "5cfbd116": "Routes zlib through the optimized deflate implementation.",
    "5fe15d9e": "Removes BP register saving from S2 assembly through a generator upgrade.",
    "60b19fac": "Improves flate decompression speed by reported five to ten percent.",
    "60e376bd": "Tunes huff0 decompression assembly.",
    "61f58c10": "Inlines flate level-one encoder helpers for reported speed gain.",
    "6274b7e0": "Improves Huffman encoding speed and compression ratio.",
    "629c2ea1": "Breaks false partial-register dependencies in zstd and huff0 assembly.",
    "68c93109": "Adds amd64 assembly for S2 better compression.",
    "6a59dbb3": "Improves zstd better/best compression.",
    "6b919959": "Keeps zstd and huff0 bit writers in registers.",
    "6bf960e5": "Shortens and speeds up zstd decSymbol assembly.",
    "6c7dd07f": "Hoists source-value loads in the zstd encoder.",
    "6f71bfc4": "Improves flate level-seven to nine compression.",
    "701ca28b": "Reduces stateless flate allocations after a Go runtime CPU regression.",
    "7269defe": "Fixes and optimizes flate bit estimates.",
    "76e0660f": "Adds x86 huff0 Decode4X specialization with reported throughput gains.",
    "781b247d": "Improves flate level-seven to nine compression.",
    "7892b3d6": "Speeds up huff0 table decoding.",
    "79fabe87": "Adds a Snappy-derived deflate compressor faster than level one.",
    "7a74de4a": "Speeds up huff0 short-block compression with merged loads and stores.",
    "7bfeec64": "Speeds up huff0 single-stream decompression.",
    "800d1eca": "Adds a faster fillWindow path for dictionary-backed flate writers.",
    "8061b326": "Uses 32-bit hash entries and avoids clearing unused slots on reset.",
    "80b543bf": "Speeds up and improves the zstd best encoder.",
    "8219c0c5": "Reuses dictionary sequence tables during zstd encoding.",
    "84e0164a": "Inlines flate literal emission for reported speed gain.",
    "893eb62d": "Uses a larger S2 output margin to reduce memmove branching in generated amd64 assembly.",
    "8949d941": "Uses a static huff0 decompression buffer for reported speed gain.",
    "8a5e589b": "Keeps zstd default-encoder hash primes in registers on ARM64.",
    "8c016bf6": "Adds branchless zstd fill paths across Go and amd64 assembly.",
    "8f7526c4": "Avoids a compiler-inserted nil check in huff0 symbol counting.",
    "901aaf25": "Unifies zstd block-encoding loops and avoids checks.",
    "94128a06": "Backports Go 1.7 flate optimizations including amd64 assembly.",
    "951333e5": "Reduces zstd and huff0 per-block table-setup work across Go and assembly.",
    "970d4dcf": "Inlines match-length code to speed the fastest zstd encoder.",
    "9a951bee": "Adds forward hashing in S2 Better encoding across Go and assembly.",
    "9adfc2a0": "Rebalances flate compression levels toward higher speed.",
    "9b2eb1bd": "Combines literal-loop Huffman code operations.",
    "9ff01f5f": "Adjusts a flate penalty to avoid a speed regression.",
    "a0c1f611": "Uses selection trees for zstd best-match selection.",
    "a0dc84a8": "Adds a lower-memory zstd encoder option with speed tradeoffs.",
    "a17685a0": "Backports Go 1.11 flate inflate optimizations.",
    "a1a9cfc8": "Improves S2 matching and adds a faster GOAMD64-v3 assembly variant.",
    "a1f81239": "Adds concurrent S2 stream decompression for throughput scaling.",
    "a511cd14": "Rebalances flate levels so most levels compress faster.",
    "a63f67b7": "Speeds zstd better-compression end-of-match search.",
    "ab2e3cc7": "Adds ARM64 zstd decoder assembly.",
    "b2d7bff7": "Triggers Go bounds-check elimination in zstd decoding.",
    "b3140cec": "Speeds up large stateless flate blocks.",
    "b41026b8": "Tunes zstd decoder for reported one-percent improvement.",
    "b5a73a16": "Speeds up incompressible-data zstd and Huffman-only compression.",
    "b95ee962": "Improves flate level-five/six compression ratio.",
    "ba2263cb": "Improves flate level-five/six compression via extra match checking.",
    "badde523": "Reduces padding in compressor and decoder structs.",
    "bcfe07b9": "Allocates advanced flate compression state only when needed.",
    "bd0982aa": "Adds a zero-bit encoding fast path.",
    "bdd2ba20": "Splits flate encode functions so hash and match length inline.",
    "bf8e0704": "Optimizes single-block huff0 encoding.",
    "c06ba5f9": "Uses sorted search for S2 indexes.",
    "c0817963": "Reduces flate window-end checks for a reported speed gain.",
    "c1dcc382": "Adds overlapping S2 assembly match checks for long-match speed.",
    "c1e79a0a": "Improves zstd best-encoder end-of-match search.",
    "c7c6a276": "Removes the last zstd decoder allocation.",
    "c8a84704": "Speeds up small-block S2 Go compression without assembly.",
    "caa0a00f": "Skips redundant flate table-choice checks at levels one to three.",
    "d3349be0": "Writes zstd table clearing so the Go compiler recognizes the fast form.",
    "d5778b21": "Skips entropy compression on random data in fastest zstd mode.",
    "d6a4830f": "Uses more accurate S2 best-mode scoring for better compression.",
    "d9b6e1ec": "Tunes the no-assembly zstd FSE decoder with benchmark evidence.",
    "da4df9cb": "Lets zstd decode at full speed into exact-size output destinations.",
    "de4073a3": "Detects and encodes zstd RLE blocks to improve sparse-data compression.",
    "e29d4d38": "Uses bufio.Reader.Peek rather than per-byte ReadByte for faster flate decoding.",
    "e3d11eb1": "Accounts for raw and RLE blocks in zstd maxSyncLen so later blocks use the fast copy path.",
    "e48015ba": "Improves zstd dictionary compression.",
    "e5c6ce29": "Checks zero symbols early to avoid a conditional move in huff0 counting.",
    "e766bf73": "Skips zero entries during FSE table building.",
    "e7c028f7": "Decompresses huff0 directly into output across generated amd64 assembly.",
    "e9934bb5": "Reworks zstd fast compression to simplify source and history handling.",
    "ebd81903": "Replaces hand-rolled Huffman sorts with counting and insertion sorts.",
    "ece71048": "Reduces raw zstd block allocations.",
    "eda62270": "Uses a full-sized token slice instead of append for reported flate speedup.",
    "f118b5f6": "Adds configurable zstd decoder window size and reduces default allocations.",
    "f1afa183": "Tunes flate bitwriter with a stated throughput range.",
    "f51c216c": "Reduces gzhttp allocations.",
    "f5ee0f4f": "Limits variable shifts in inflate for measured amd64 speedups.",
    "f82c96c2": "Skips random zstd data approximately twice as fast.",
    "f9c5ca4d": "Eliminates nil checks in flate bitwriter code lookup.",
    "fae4e3f6": "Checks zstd checksum-skip option once per block for faster decoding.",
    "fb371c60": "Adds a new S2 best-compression option with ratio/speed tradeoff and no old same-mode pair.",
    "fbaccdc0": "Uses one fewer goroutine for zstd stream decoding.",
    "fc272ea3": "Copies short literal and match blocks unconditionally in generated zstd assembly.",
    "fd5b254e": "Inlines inflate symbol handling for measured speedup.",
    "fdcc9b63": "Avoids an unused BuildDict encoder allocation.",
}
unsupported = {
    "0309165d", "0e43f04a", "0ff8ec17", "117430d3", "258a0cee", "275e1fc8",
    "2ad8e193", "2f437394", "30993c63", "32dbb2c4", "35a5ed5a", "38d4ba98", "49d8cf2e",
    "4b3cc069", "4e2bbb39", "4fa2036c", "52069689", "5fe15d9e", "60e376bd",
    "629c2ea1", "68c93109", "6bf960e5", "76e0660f",
    "893eb62d", "8c016bf6", "94128a06", "951333e5", "9a951bee", "a1a9cfc8",
    "ab2e3cc7", "c1dcc382",
    "e7c028f7", "fb371c60", "fc272ea3",
}
excluded = {
    "0b31f265": "Vendors xxhash to simplify dependencies and benchmarks.",
    "0f734cf3": "Adds an optional SHA256 paranoid mode.",
    "28b89252": "Adds experimental dictionary functionality.",
    "2d596579": "Limits a decompression fuzzer runtime.",
    "444d5d9b": "Fixes invalid flate encoding for one input class.",
    "469ba13d": "Adds a stream-index feature.",
    "469cca62": "Fixes S2 fast-skipping behavior.",
    "54198fb0": "Fixes huff0 state reuse after rejecting weak compression.",
    "5453ad36": "Adds full Snappy-output support to S2.",
    "5a16edcc": "Fixes gzip reader stack exhaustion.",
    "5a210a09": "Adds S2 dictionary functionality.",
    "5d45bca0": "Adds corpus smoke tests and benchmark inputs.",
    "67a538e2": "Adds a reader buffer-capacity accessor.",
    "6c9bcdc8": "Adds zstd sequence microbenchmarks and tests.",
    "6efddf27": "Reverts an incorrect encoder speedup caused by a bug.",
    "7ce6eae0": "Fixes zstd reset overflow.",
    "7e212262": "Adds an LZ4-to-S2 block converter.",
    "861ca972": "Addresses a downstream ZIP security vulnerability.",
    "8eb6542f": "Fixes corrupted zstd best-encoder output.",
    "9ae30d92": "Simplifies flate index handling with no measured speed gain.",
    "9ebf8870": "Adds documentation and reduces indentation.",
    "abf55597": "Fixes incorrectly rejected zstd blocks.",
    "aeed8112": "Adds BREACH mitigation to gzhttp.",
    "ba74977e": "Changes CI Go versions and tests.",
    "bf9102c4": "Adds zstd transport support to gzhttp.",
    "c628f16a": "Removes zero-by-copying for readability, without a speed gain.",
    "d86ea119": "Simplifies S2 memory move by removing AVX code without a documented speed objective.",
    "dc198c14": "Fixes the WithAllLitEntropyCompression option behavior.",
    "f44517c7": "Simplifies flate matchlen using a dedicated function; only an autogenerated summary claims speedup.",
    "ff8c845b": "Adds LZW reader and writer functionality.",
}
assert len(performance) + len(excluded) == 183
assert performance.keys().isdisjoint(excluded)
assert unsupported <= performance.keys()

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
lines = [
    "# Compress fixed-sample metadata screen", "",
    "All 183 previously pending source-gap candidates were screened from exact local "
    "Git commit messages and changed-path trees. `UNKNOWN` means the historical Go old/new "
    "source is missing, so no Gobra relation was run. `UNSUPPORTED` marks whole-commit "
    "assembly, unsafe-loader, or new-API paths outside the selected Gobra source relation. These are intent "
    "and scope classifications, not executed proofs. Upstream speed numbers are not local official benchmark reruns.", "",
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
        reason = performance[prefix]
        verdict = "UNSUPPORTED" if prefix in unsupported else "UNKNOWN"
        item.update({"screen": "confirmed_optimization", "checker_status": "not_run", "verdict": verdict,
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched Gobra old/new relation run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/klauspost/compress/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (155, 45, 0)
assert (verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (1, 120, 34)
data["summary"] = {
    "confirmed_optimizations": screens["confirmed_optimization"],
    "checked_optimizations": sum(verdicts.values()),
    "pending_checker_optimizations": 0,
    "excluded_non_optimizations": screens["excluded_non_optimization"],
    "pending_intent_screening": screens["intent_pending"],
    "verified_inequal": verdicts["NOT_EQUIV"],
    "verified_equal_or_refinement_partial": verdicts["EQUIV_PARTIAL"],
    "unverified": verdicts["UNKNOWN"],
    "unsupported": verdicts["UNSUPPORTED"],
}
ledger.write_text(json.dumps(data, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
print(json.dumps(data["summary"], sort_keys=True))
