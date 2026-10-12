#!/usr/bin/env python3
"""Screen Netty source-gap candidates against exact local Git metadata."""

from collections import Counter
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/netty"
ledger = root / "history-eq/results/netty-pinned-sample-audit.json"
evidence = root / "history-eq/java/netty/metadata-source-gap-screening.md"

performance = {
    "02a6dc8b": "Adds an int-keyed map to reduce HTTP/2 map memory footprint.",
    "04bae9bc": "Adds an Unsafe-backed direct ByteBuf variant for faster direct-memory access.",
    "057c19f9": "Moves an uncommon writeUtf8 path out of line to enable hot-path inlining.",
    "064b3dc9": "Replaces AbstractNioChannel conditionals with polymorphic subtypes for performance.",
    "066f95d0": "Uses the ByteBuf array fast path when copying into an unsafe direct buffer.",
    "06f3574e": "Avoids a duplicate direct-memory-limit calculation during startup.",
    "0dc95efd": "Adds an experimental adaptive pooling allocator.",
    "128403b4": "Adds maxFastWritableBytes to let callers avoid costly buffer reallocation.",
    "15d11289": "Corrects pool capacity normalization that could double memory consumption.",
    "1658c6e6": "Replaces a PlatformDependent regexp with manual loops.",
    "187efca9": "Avoids a spinning channel-pipeline destroy loop with custom executors.",
    "1988cd04": "Reduces object allocations in CompositeByteBuf.",
    "1d22fbd7": "Avoids some ByteToMessageDecoder copies and inlines writeBytes calls.",
    "1e5fafe4": "Uses AsciiString comparisons to avoid char conversions in boolean parsing.",
    "1eafffbe": "Uses a thread-local map instead of ConcurrentHashMap for faster handler instantiation.",
    "1f1a60ae": "Uses indexed DefaultPriorityQueue for faster scheduled-task cancellation.",
    "1fa7a5e6": "Decouples epoll scheduled-task processing from epoll_wait lifetime.",
    "22d31519": "Avoids interface type checks that pollute DefaultPromise type profiles.",
    "24e1f936": "Optimizes DefaultChannelPipeline alongside channel buffer-type refactoring.",
    "25c7a783": "Avoids an unnecessary EventLoop.execute call for a reported performance gain.",
    "25f96b16": "Reduces ChannelPromise validation overhead during writes.",
    "26803574": "Caches pooled ByteBuf internal NIO-buffer views.",
    "283feda1": "Exposes internalNioBuffer to reduce ByteBuf wrapper garbage.",
    "2a4999b6": "Reduces memory use in protobuf varint length prepending.",
    "2a847770": "Adds EmbeddedChannel builder overloads to avoid varargs allocations.",
    "2af769f6": "Adds ByteBufUtil UTF-8 subsequence overloads to avoid temporary substrings.",
    "2f6d2af0": "Avoids ThreadLocal use for non-FastThreadLocalThread temporary byte arrays.",
    "371c0ca0": "Avoids unnecessary ByteBuf.asReadOnly wrapper allocation.",
    "3cf7a84f": "Adds a direct-buffer constructor option to avoid an unnecessary slice allocation.",
    "40196a63": "Rewrites Recycler to reduce allocation rate while preserving pooling behavior.",
    "433aa18b": "Removes PoolSubpage locks to reduce allocator overhead.",
    "44cca1a2": "Avoids allocations when wrapping byte arrays and ByteBuffer arrays.",
    "4875a2aa": "Caches AsciiString-to-String conversions immediately for common HTTP constants.",
    "4dc0b3a4": "Adds direct ByteBuffer wrapping from MemorySegments for faster native-memory access.",
    "506474f5": "Lazily instantiates pipeline runnables to reduce memory use.",
    "535d5984": "Adds ByteBuf.isContiguous so callers can choose efficient buffer operations.",
    "544bd195": "Uses pooled ByteBuf objects for retained slices to reduce GC pressure.",
    "5cb49747": "Reduces PoolArena contention when wrapping large SSL output.",
    "5e232121": "Breaks a Bzip2 compressor loop as soon as the result is known.",
    "5ef30b6d": "Makes ChannelHandlerContext.writeAndFlush more efficient.",
    "5fe1eea9": "Speeds up AdaptiveByteBuf.setBytes by avoiding sliced NIO buffers.",
    "60014996": "Eliminates redundant CompositeByteBuf accessor bounds checks.",
    "63116239": "Reuses EmptyByteBuf for zero-capacity buffers and optimizes it.",
    "640a22df": "Removes stale WeakOrderedQueue entries promptly to lower overhead.",
    "6ab9c177": "Fixes Snappy hashing and hash-table size for better compression and fewer allocations.",
    "6d0c0e99": "Removes a branch in WriteTask pending-byte accounting.",
    "6ffeec15": "Speeds up bulk byte moving in direct ByteBuf implementations.",
    "7145ec13": "Uses optimized AdaptiveByteBuf zeroing methods.",
    "72ec704a": "Allows ByteToMessageDecoder cumulators to reuse receive buffers.",
    "776ac4ba": "Uses FastThreadLocal in additional hot paths.",
    "77e65fe6": "Reduces byte-manipulation operations in Base64 decoding.",
    "7b91edd8": "Optimizes NetUtil IPv6 parsing with a benchmark target.",
    "7bee318f": "Uses OneTimeTask to reduce event-task object creation.",
    "7d4c0774": "Adds Unsafe-backed heap ByteBuf variants for faster access.",
    "7e96030a": "Prefers pooled direct buffers to reduce memory copies.",
    "7fb64e20": "Optimizes a ChannelBufferInputStream path.",
    "7feb9295": "Speeds up Base64 encoding and decoding.",
    "80b8a91b": "Tracks line offsets to avoid repeated frame-decoder scans.",
    "81e2db10": "Adds a ByteBufAllocator API with broad ByteBuf performance changes.",
    "85b63a00": "Speeds up HashedWheelTimer.expireTimeouts.",
    "880acbca": "Uses retained ByteBuf slices to minimize frame-decoder copies.",
    "88bd6e7a": "Optimizes native transport gathering writes.",
    "891be30a": "Eliminates a frame-extraction memory copy.",
    "8f744ecf": "Uses a stackless closed-channel exception to reduce SSL-handler GC pressure.",
    "8f7ef1ca": "Skips handler-method invocations annotated with @Skip.",
    "904e70a4": "Adds an HTTP/2 weighted-fair byte distributor with better utilization and traversal cost.",
    "93414db1": "Restores LZ4 codec performance with default xxHash32.",
    "93c30660": "Removes redundant AbstractByteBuf range checks.",
    "94124240": "Skips finalizer registration for empty PoolThreadCache instances to reduce GC work.",
    "9449efb9": "Optimizes Recycler.Stack storage and initial capacity.",
    "9a02832f": "Implements SWAR ByteBuf.indexOf search.",
    "9d457c3f": "Adds a faster ObjectUtil range-check helper without a direct old API pair.",
    "9f2221eb": "Optimizes CompositeByteBuf and flattened-component handling.",
    "a47685b2": "Uses bitwise sampling instead of modulo in leak detection.",
    "a4d8f930": "Removes unnecessary unboxing in codec paths.",
    "a5ccec5e": "Avoids logging autoboxing when debug logging is disabled.",
    "a7713069": "Optimizes HttpObjectDecoder hot paths.",
    "a9577c0a": "Reduces duplicate Zlib decoder calls while correcting an index.",
    "adcc2d4b": "Caches ChannelHandlerAdapter sharability annotation lookups.",
    "b32cd26a": "Avoids an eager ResourceLeakDetector ArrayDeque allocation.",
    "b4134640": "Optimizes asynchronous WriteTask recycling.",
    "b4bab3ff": "Narrows AdaptivePoolingAllocator lock scope.",
    "b8d26d1d": "Avoids a redundant ByteBuf.isReadable call during decode.",
    "c1341975": "Uses wider Bzip2 bit buffers to reduce byte-at-a-time operations.",
    "c353f4fe": "Speeds up Recycler claim/release bookkeeping.",
    "ca305d86": "Extends the String backing-array ASCII fast path to JDK byte arrays.",
    "d0c43c9e": "Prefers heap buffers for OIO transport to avoid copies.",
    "d3ffa1b0": "Adds a faster MPSC queue for NIO and native transports.",
    "d5faba2f": "Clears retired thread-local recycler pools to reduce retained memory.",
    "d7fa7be6": "Uses uninitialized byte-array allocation in additional buffer paths.",
    "d92c5f5f": "Limits Recycler pooling during allocation bursts to reduce retained memory.",
    "d99a8f75": "Uses a two-way ByteBuf substring-search algorithm.",
    "dcd62c25": "Removes SimpleChannelPool exception stack-trace synchronization overhead.",
    "df568c73": "Uses wider ByteBuf writes in encoders.",
    "e329ca1c": "Replaces periodic thread-death polling with ObjectCleaner cleanup.",
    "e424a2f4": "Moves flush state and includes small Channel write-path optimizations.",
    "e4531918": "Avoids allocations in IPv4/IPv6 validation.",
    "e482d933": "Adds uninitialized-array allocation to reduce heap-buffer setup cost.",
    "e57cf9d2": "Avoids Recycler debug-map access when assertions are disabled.",
    "ea3dac07": "Removes pseudo-random tree traversal while preserving allocator throughput.",
    "ec9875d0": "Reduces PoolChunk allocation overhead.",
    "ed46c4ed": "Avoids a temporary ByteBuf while copying read-only heap ByteBuffers.",
    "f1eb9204": "Uses relaxed Recycler atomics where possible.",
    "f23ffdda": "Removes a regexp from PlatformDependent parsing.",
    "f29b6ae2": "Fixes an OIO transport performance regression.",
    "f3504776": "Avoids a duplicate ByteBuf ensureWritable check.",
    "f9e20ac0": "Shares SizeClasses tables between PoolArena instances to reduce memory.",
    "fb164578": "Rounds allocator chunks and reduces release frequency.",
    "feb804dc": "Avoids extra task Runnable allocations outside the event loop.",
    "ff5aec0c": "Replaces reflective type matching with generated matching code.",
}
unsupported = {
    "02a6dc8b", "04bae9bc", "0dc95efd", "128403b4", "187efca9", "1eafffbe",
    "1f1a60ae", "1fa7a5e6", "283feda1", "2af769f6", "3cf7a84f",
    "40196a63", "433aa18b", "4dc0b3a4", "535d5984", "5cb49747", "640a22df",
    "6ffeec15", "776ac4ba",
    "7d4c0774", "81e2db10", "88bd6e7a", "904e70a4", "94124240",
    "9449efb9", "9d457c3f", "b4134640", "b4bab3ff",
    "c353f4fe", "ca305d86", "d0c43c9e", "d3ffa1b0", "d5faba2f",
    "d7fa7be6", "d92c5f5f", "e329ca1c", "e424a2f4", "e482d933",
    "e57cf9d2", "ea3dac07", "ec9875d0", "ed46c4ed", "f1eb9204",
    "f29b6ae2", "f9e20ac0", "fb164578", "feb804dc", "ff5aec0c",
}
excluded = {
    "00a9a25f": "Fixes a skipped close() call introduced by an earlier optimization.",
    "09098785": "Adds read-on-demand flow-control semantics.",
    "0b71afb8": "Stabilizes a socket test.",
    "0f8ce1b2": "Fixes incorrect temporary-array sizing.",
    "1740f366": "Fails fast on a null channel for correctness.",
    "1975fcef": "Cleans up StringUtil initialization without a speed claim.",
    "1aa20e86": "Corrects FastLzFrameDecoder documentation.",
    "1e763b65": "Fixes a LocalChannel write leak after peer close.",
    "2100a83e": "Corrects outbound pending-byte size accounting.",
    "253522fc": "Adds a convenience handler class.",
    "25d14603": "Improves a pool error message.",
    "26a7df3e": "Implements contains to preserve NIO readiness events.",
    "353e871e": "Avoids nonportable zero-byte native allocation behavior.",
    "371f8066": "Fixes a ByteBuf corruption regression.",
    "37267f95": "Fixes Recycler initialization order.",
    "37b07a04": "Reverts an allocator optimization after an assertion failure.",
    "385dadcf": "Fixes inconsistent ByteBuf checks.",
    "38a9b8df": "Fixes aligned off-heap zeroing.",
    "39631f54": "Disables Unsafe by default on Java 24 for runtime compatibility.",
    "3c5e6779": "Fixes unsafe publication and adds a loop assertion.",
    "3d7ec896": "Avoids a future java.lang.Record name clash.",
    "3ef00eaa": "Prevents a Recycler out-of-bounds exception.",
    "41d3d61a": "Merges a Bzip2 security-advisory fix.",
    "421096f3": "Removes a redundant ConcurrentHashMap factory as Java 8 cleanup.",
    "42c03598": "Fixes MAC-address selection behavior.",
    "45042366": "Changes pending-write failure order for correctness.",
    "4573c912": "Fixes InternalThreadLocalMap.size correctness.",
    "47f016bf": "Extracts a self helper to reduce warning suppressions.",
    "48f13988": "Changes cross-thread PooledByteBuf caching to avoid surprising behavior.",
    "50480e96": "Keeps an allocator test synchronized with its size-class declaration.",
    "50ffe5bd": "Implements inEventLoop behavior and deprecates an executor.",
    "536141ba": "Fixes data corruption from cached ByteBuffers.",
    "57063b6d": "Corrects missing ByteBuf method overrides.",
    "57d3d0cb": "Updates ChunkedWriteHandler to a newer revision.",
    "5b55ee43": "Avoids narrowing conversions for correctness.",
    "656d7ca0": "Improves localhost detection reliability.",
    "674f4bce": "Fixes ByteBufInputStream.readLine bounds and behavior.",
    "67ad79d0": "Handles methods missing after ProGuard processing.",
    "6ac5f350": "Uses Unsafe for Java 9 ByteBuffer address compatibility.",
    "6afab517": "Guards against repeated PoolThreadCache.free calls.",
    "6c1af903": "Simplifies native-library resolution configuration.",
    "6c8e8500": "Adds virtual-thread FastThreadLocal support API without a measured existing-path speed change.",
    "6ea64967": "Updates JUnit and leak-test scope handling.",
    "723539fe": "Adds explicit Java module support.",
    "731b7c62": "Improves ByteToMessageDecoder error text.",
    "791a8466": "Adds a ByteBuf.readString convenience API.",
    "7937553d": "Fixes direct-memory accounting across Java versions.",
    "79c8ec4d": "Adds DNS search-domain support.",
    "8b21cd9e": "Enforces byte-array index scale for correctness.",
    "8b722d29": "Adds constructors for languages without generic type parameters.",
    "8daf3ec6": "Restores ThreadExecutorMap event-executor state correctly.",
    "8f609265": "Adds a JVM memory-option override.",
    "8fb80e91": "Fixes a ServerBootstrap deadlock.",
    "94d7557d": "Fixes WeakOrderQueue collection after a strong-reference regression.",
    "9560241e": "Removes a redundant local variable.",
    "95e8ec1d": "Handles immediate asynchronous I/O callbacks correctly.",
    "9993e073": "Reverts an HTTP parser speedup after a regression.",
    "9e6f8b46": "Migrates NIO transport to a new API without a measured speed objective.",
    "a156f678": "Adds varargs constructors for encoder and decoder APIs.",
    "a2f1f216": "Synchronizes branch implementations.",
    "a6dfd088": "Marks selector initialization privileged for instrumentation.",
    "a8bb9dc1": "Fixes a readSlice bounds-check bug.",
    "a9948d68": "Changes missing-buffer behavior from null to an exception.",
    "aa6e6ae3": "Fixes shutdown timing with no quiet period.",
    "aa7cd691": "Removes redundant else branches without a speed claim.",
    "ac17a516": "Cleans up FIXME and deprecation comments.",
    "c18fc2bc": "Adds virtual-time control for EmbeddedEventLoop tests; reported benchmarks check for regressions, not speedup.",
    "c8a941d0": "Adds decoder discarding to prevent out-of-memory behavior.",
    "cb106bed": "Fixes a FastThreadLocal overflow exception.",
    "cc4b61a6": "Adds allocator parameter checks for correctness.",
    "cf8f9dd6": "Fixes native-image build configuration.",
    "d4742bbe": "Refactors handler APIs and validation without an explicit performance objective.",
    "d78f5a4f": "Changes imports and formatting only.",
    "d93c607f": "Updates Protobuf links and documentation.",
    "dae3c608": "Fixes allocator sizeBucket correctness.",
    "dbbc6ad7": "Changes shutdown behavior to reduce rejected-execution errors.",
    "dd429b24": "Contains typo, exception logging, and Recycler correctness fixes.",
    "e004b4a3": "Fixes ObjectCleaner use after FastThreadLocal.set.",
    "e7c4c3ca": "Fixes API visibility and build-time compatibility checks.",
    "ead99389": "Adds an HTTP request to an error message.",
    "eba83810": "Adds debugger metadata for asynchronous tasks.",
    "fedf3cce": "Hardens reference-count concurrency semantics.",
}
assert len(performance) + len(excluded) == 192
assert performance.keys().isdisjoint(excluded)
assert unsupported <= performance.keys()

data = json.loads(ledger.read_text())
items = {e["commit"][:8]: e for e in data["entries"]}
assert len(items) == len(data["entries"]) == 200
lines = [
    "# Netty fixed-sample metadata screen", "",
    "All 192 previously pending source-gap candidates were screened from exact local "
    "Git commit messages and changed-path trees. `UNKNOWN` means historical Java source is "
    "missing, so no old/new KeY relation was run. `UNSUPPORTED` marks new APIs, native/JVM "
    "internals, or concurrent and multi-object runtime effects outside the selected sequential KeY pair. These "
    "are intent and checker-scope classifications, not executed proofs or local official benchmark reruns.", "",
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
                     "reason": reason, "coverage": "historical commit message and changed-path screen; no source-matched KeY old/new relation run",
                     "evidence": str(evidence.relative_to(root))})
        label = f"optimization; {verdict}"
    else:
        reason = excluded[prefix]
        item.update({"screen": "excluded_non_optimization", "checker_status": "not_run", "reason": reason,
                     "evidence": str(evidence.relative_to(root))})
        item.pop("verdict", None)
        item.pop("coverage", None)
        label = "excluded"
    url = f"https://github.com/netty/netty/commit/{item['commit']}"
    lines.append(f"| [`{prefix}`]({url}) | {item['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(paths)} |")

screens = Counter(e["screen"] for e in data["entries"])
verdicts = Counter(e.get("verdict") for e in data["entries"] if e["screen"] == "confirmed_optimization")
assert (screens["confirmed_optimization"], screens["excluded_non_optimization"], screens["intent_pending"]) == (115, 85, 0)
assert (verdicts["NOT_EQUIV"], verdicts["EQUIV_PARTIAL"], verdicts["UNKNOWN"], verdicts["UNSUPPORTED"]) == (3, 2, 62, 48)
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
