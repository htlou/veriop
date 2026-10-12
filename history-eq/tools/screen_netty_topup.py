#!/usr/bin/env python3
"""Audit the first 142 Netty candidates in the seeded top-up order."""

from collections import Counter
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/netty"
queue = json.loads((results / "topup-candidate-order.json").read_text())
item = next(r for r in queue["repos"] if r["repo"] == "netty")
fixed = json.loads((results / "netty-pinned-sample-audit.json").read_text())
assert fixed["pin"] == item["pin"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

# Decisions use full local commit messages and changed-path metadata.
decisions = [
    ("97361fa2", True, "Removes synchronization from bootstrap option maps."),
    ("dcfcae68", True, "Optimizes PoolChunk usage and free-byte queries."),
    ("c55ffbe1", True, "Eliminates a large temporary allocation in ZstdDecoder."),
    ("4f156c9e", True, "Replaces eligible modulo operations with cheaper bitwise operations."),
    ("7d08b4fc", False, "Removes an optional type-matching dependency."),
    ("69a6ad94", True, "Changes the buddy allocation search strategy for efficiency."),
    ("2351b8dd", True, "Adds a lower-GC composite-buffer API; no old function pair exists."),
    ("b2eaab09", True, "Optimizes header hash and equality hotspots."),
    ("cac51ab8", True, "Optimizes ASCII writes from AsciiString."),
    ("5b87cdc8", True, "Reduces initial seed lookup latency."),
    ("fe796fc8", False, "Adds text-writing helper APIs without replacing a measured existing path."),
    ("8e2e22c2", False, "Changes the thread model in preparation for future improvements."),
    ("ec368fea", True, "Ramps receive buffer size during reads to avoid selector latency."),
    ("0aa99606", False, "Fixes a concurrent buffer race."),
    ("21e54111", False, "Fixes duplicate-slice capacity semantics."),
    ("19b4adf7", True, "Avoids Runnable-to-Callable adapter allocation."),
    ("da68c1df", False, "Removes a one-use platform variable without a performance claim."),
    ("6b93eb6b", False, "Fixes executor suspension/cancellation races."),
    ("de25e7ac", True, "Removes two atomic reference-count operations per allocation."),
    ("a803e107", True, "Restores an HTTP/1.1 parsing speedup by reverting its revert."),
    ("5ca90a70", True, "Introduces size classes into the adaptive allocator."),
    ("34bfcc7d", False, "Fixes eviction of chunks with live buffers."),
    ("f6fca0c7", True, "Speeds ByteBuf firstIndexOf with a better operation order."),
    ("63d33b39", True, "Removes repeated accessibility checks from ByteBuf methods."),
    ("55461aa7", False, "Adds JFR observation events for future allocator analysis."),
    ("b3d3269b", False, "Narrows a future interface for API decoupling."),
    ("b50ebe44", False, "Simplifies a redundant condition without a demonstrated performance objective."),
    ("0a6f7395", False, "Merges the Redis codec."),
    ("9cfa4675", False, "Fixes a big-endian ASCII hash result."),
    ("13d7ee1b", True, "Optimizes pipeline writes by using fields instead of calls."),
    ("37946625", False, "Upgrades the zstd-jni dependency and uses its constants."),
    ("a0c8ddc0", False, "Adds a missing buffer bounds check."),
    ("06f8920d", True, "Avoids buffer duplication in setBytes."),
    ("b9af2e68", True, "Uses ByteBuf's faster indexOf search."),
    ("d3a41b8b", False, "Fixes integer overflow in ensureWritable."),
    ("7aac50a7", True, "Optimizes object-map hash indexing."),
    ("2278991d", True, "Replaces CMPXCHG with lower-overhead XADD for memory accounting."),
    ("47e0f4fc", False, "Introduces a new Zstandard decoder codec."),
    ("026715e8", False, "Changes the pipeline API to support stacked codecs."),
    ("129a2af8", True, "Bundled commit explicitly optimizes existing discardReadBytes."),
    ("27bfdfb1", True, "Optimizes FastThreadLocal removal and initialization."),
    ("005fd55b", False, "Improves an embedded-channel warning."),
    ("07024a4e", True, "Reworks IntObjectHashMap with linear probing and optimized cleanup."),
    ("e6658072", True, "Inlines threadLocalRandom on Java 8+."),
    ("3cae6f60", True, "Makes AdaptiveByteBuf setBytes allocation-free."),
    ("b53fa5dd", True, "Allows NioMessageUnsafe.read to inline."),
    ("0289dadc", True, "Avoids a reflective Field.get call."),
    ("d65f6ae6", False, "Fixes ReadOnlyAbstractByteBuf cast behavior."),
    ("bc026ef8", True, "Uses a lookup table to speed hex-digit decoding."),
    ("2d4d64dc", False, "Adds a ChannelOutboundBuffer unit test."),
    ("94cfa608", False, "Adds a buffer-conversion interface."),
    ("1e0146da", True, "Optimizes MessageList.add."),
    ("12f1d969", True, "Relaxes refcount memory ordering for lower overhead."),
    ("e58095c4", False, "Simplifies branching for clarity, without a measured speed claim."),
    ("967b5424", True, "Uses Unsafe to avoid slow reflective channel access."),
    ("ae079d1a", True, "Reuses an internal NIO buffer to avoid object creation."),
    ("e0ef01cf", True, "Doubles default pool arenas to reduce allocation contention."),
    ("86b970df", True, "Avoids unnecessary reflective probes during initialization."),
    ("98eb69f1", True, "Uses per-thread name caches to remove synchronization."),
    ("dcd3cade", False, "Changes a fallback socket backlog limit without a performance objective."),
    ("f72f162e", False, "Fixes an ObjectCleaner reference-queue blocking bug."),
    ("b7415a33", True, "Reuses a per-thread ArrayList to avoid allocations."),
    ("f4b536ed", False, "Adds BlockHound integration for detecting blocking calls."),
    ("1039f69e", False, "Fixes CompositeByteBuf component values."),
    ("f8789296", False, "Guards io_uring buffer-ring reads to avoid overrunning a consumer."),
    ("23da1180", True, "Moves pinned-memory decrement to reduce concurrent allocation overhead."),
    ("393f7b23", False, "Exposes pending-write size for possible future batching optimization."),
    ("1c4d0d0f", True, "Optimizes AioEventLoop channel lookup."),
    ("9c0d1a99", True, "Allows attributes and values to be reclaimed earlier."),
    ("8b1f247a", True, "Avoids an ArrayList allocation in CompositeByteBuf iteration."),
    ("8180f792", True, "Reduces pipeline initialization time and memory."),
    ("0d5774a8", False, "Adds non-array buffer support to compression codecs."),
    ("92bfeeca", True, "Avoids releasing and reacquiring an allocator lock."),
    ("cfd6db79", False, "Fixes missed promise signals."),
    ("77e2a683", True, "Allows recycler resources to be reclaimed promptly after thread exit."),
    ("eb3feb47", True, "Corrects a size-class calculation to save memory."),
    ("d7c977dd", True, "Chooses copying over composites for SSL write aggregation."),
    ("6d1220b5", True, "Reduces flush-path garbage."),
    ("c22c6b84", True, "Adds UDP segmentation offload to reduce send overhead."),
    ("9fe796e1", True, "Adds a ChannelOutboundBuffer type-check fast path."),
    ("54af70f0", False, "Fixes bootstrap concurrent-modification behavior."),
    ("6ff87cc2", True, "Limits volatile reads."),
    ("900ad151", True, "Avoids a byte-array allocation in channel-ID creation."),
    ("02cb7adf", True, "Reuses an NIO buffer to reduce bulk-operation garbage."),
    ("c41d4611", True, "Adds specialized maps and queues to speed PoolChunk access."),
    ("5d76daf3", True, "Adds select strategies for high-throughput low-latency workloads."),
    ("c882d807", True, "Uses Java locks to improve virtual-thread allocation under contention."),
    ("ba3616da", True, "Uses optimized CharSequence writes to avoid conversion overhead."),
    ("3d81afb8", True, "Allows cancelled timer objects to be garbage-collected sooner."),
    ("26fe3d9a", True, "Optimizes PoolChunk.free."),
    ("6464c987", False, "Orders thread-local cleanup before a termination notification."),
    ("3ce9ab2e", True, "Replaces selected-key storage for less garbage and 1–2% reported gain."),
    ("c3416d8a", False, "Standardizes precondition checks and exception messages."),
    ("e8456700", False, "Adds stack-trace elements to cached exceptions for diagnostics."),
    ("768a8250", True, "Avoids constructing CancellationException on a promise path."),
    ("2b3ac3d4", True, "Reuses PendingWrite to reduce SSL and chunked-write GC pressure."),
    ("5b2bdd84", False, "Fixes a timer-task cancellation race."),
    ("59a8bd07", False, "Extends Snappy's accepted input size."),
    ("02e7e53c", False, "Adds a queue-writing API."),
    ("9352e4f5", False, "Fixes concurrent chunk writes."),
    ("bbe880f5", False, "Documents decoder pitfalls."),
    ("c79ce23a", True, "Avoids costly shared arenas for unpooled buffers."),
    ("30d9404b", False, "Fixes shared static buffers that callers could mutate."),
    ("bf036480", False, "Speeds a leak detector used only in tests."),
    ("1ce52aa0", True, "Switches Brotli encoding from single-shot to streaming compression."),
    ("90ea3ec9", False, "Adjusts IBM J9 test compatibility."),
    ("507e0a05", False, "Fixes unsafe sharing of a CompositeByteBuf NIO buffer."),
    ("1611acf4", False, "Fixes AsciiString byte conversion."),
    ("e40c27d9", True, "Avoids HTTP/2 child-stream object allocations."),
    ("27c68647", True, "Copies between direct buffers and ByteBuffer without an intermediate."),
    ("71793c16", False, "Fixes maxFastWritableBytes accounting."),
    ("3e55cfd9", False, "Documents frame-decoder command-smuggling behavior."),
    ("c0462c0c", True, "Optimizes PoolChunk structures and access."),
    ("2f7d60f2", True, "Shrinks HashedWheelTimer memory and context switches."),
    ("6bd8c5d4", True, "Changes the PoolChunk allocation search strategy for efficiency."),
    ("ae875c35", True, "Avoids extra FastLzFrameDecoder copies for direct buffers."),
    ("70a51bcd", False, "Fixes an embedded-channel memory leak."),
    ("350bd0f6", True, "Caches network-interface discovery for faster startup."),
    ("869687bd", None, "Ports a bundle of ChannelOutboundBuffer changes; optimization intent needs source review."),
    ("91517395", True, "Removes an unnecessary Bzip2 encoding copy."),
    ("b4fa8af0", True, "Caches outbound ByteBuffers to reduce allocations and GC."),
    ("50fafdc3", False, "Rewrites SSL handling around a deadlock fix."),
    ("c9668ce4", True, "Precomputes constants at compile time."),
    ("4bafb4f9", False, "Fixes a double-release bug."),
    ("804e1fa9", False, "Fixes retained-slice reference counting."),
    ("9f5eb7d6", False, "Adds CharSequence APIs for possible implementation-specific optimizations."),
    ("9daa15f2", True, "Removes reflective access after raising the Java baseline."),
    ("2d9e0f53", True, "Reduces AttributeMap synchronization."),
    ("5b13ecd4", False, "Fixes EventLoop autoscaling capability checks."),
    ("7d9374a5", False, "Uses a foreach loop for brevity at no stated cost improvement."),
    ("e5386b05", True, "Defers hex-dump utility loading to shorten ByteBufUtil initialization."),
    ("dffcb418", False, "Preserves a read exception."),
    ("db6b72da", True, "Uses Unsafe for faster zero-filled buffer writes."),
    ("709b3abd", True, "Uses copy-on-write storage in AioChannelFinder."),
    ("2791f0fe", True, "Removes contention on a global ScheduledFutureTask ID counter."),
    ("681d4609", True, "Reworks headers and adds a dedicated HTTP encoder for speed."),
    ("8cd005ba", True, "Caches PooledByteBuf NIO buffers to reduce garbage."),
    ("9bee78f9", True, "Adds optimized atomic field updater implementations."),
    ("824a0b80", True, "Optimizes length-field frame decoding."),
    ("6fd0a0c5", True, "Reduces HTTP-family header memory and processing time."),
    ("d580245a", False, "Fixes reentrant connection-close stream-map modification."),
    ("b1c57257", True, "Sizes a write-result map to exclude server channels and save memory."),
]
assert len(decisions) == 142

entries = []
for draw, (expected, confirmed, reason) in enumerate(decisions):
    candidate = item["order"][draw]
    commit = candidate["commit"]
    assert commit.startswith(expected)
    raw = subprocess.run(["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--raw",
                          "-r", commit], capture_output=True, text=True, check=True, env=env).stdout.splitlines()
    paths, blobs = [], []
    for line in raw:
        if not line.startswith(":"):
            continue
        ids, path = line.split("\t", 1)
        paths.append(path)
        blobs.extend(sha for sha in ids.split()[2:4] if sha != "0" * 40)
    missing = [sha for sha in blobs if subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-e", sha], capture_output=True, env=env
    ).returncode]
    assert paths and missing, commit
    entry = {"draw": draw, "commit": commit, "subject": candidate["subject"],
             "screen": "confirmed_optimization" if confirmed is True else
                       "excluded_non_optimization" if confirmed is False else "intent_unresolved",
             "reason": reason, "changed_paths": paths, "missing_changed_blob_ids": missing}
    if confirmed is True:
        entry.update(checker_status="not_run", verdict="UNSUPPORTED" if draw in {6, 78, 85, 137} else "UNKNOWN",
                     coverage="metadata scope triage; exact historical changed Java source missing; no KeY run")
    entries.append(entry)

fixed_confirmed = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
all_added = [e for e in entries if e["screen"] == "confirmed_optimization"]
added = all_added[:85]
assert len(fixed_confirmed) == 115 and len(added) == 85
assert len({e["commit"] for e in fixed_confirmed + added}) == 200
(results / "netty-topup-first142-audit.json").write_text(json.dumps({
    "repo": "netty", "pin": item["pin"], "draws_reviewed": 142,
    "confirmed_optimizations": len(all_added), "entries": entries,
}, indent=2) + "\n")
(results / "netty-optimization-sample.json").write_text(json.dumps({
    "repo": "netty", "pin": item["pin"],
    "selection": "fixed 200-candidate draw, followed by seeded top-up candidates until 85 more confirmed optimizations were found; only confirmed optimizations retained",
    "sample_size": 200, "entries": fixed_confirmed + added,
    "summary": dict(Counter(e["verdict"] for e in fixed_confirmed + added)),
    "checker_execution_summary": dict(Counter(e["checker_status"] for e in fixed_confirmed + added)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": 142, "confirmed_topup": len(all_added),
                  "sampled_topup": len(added), "sample_size": 200,
                  "all_new_source_gapped": True}, sort_keys=True))
