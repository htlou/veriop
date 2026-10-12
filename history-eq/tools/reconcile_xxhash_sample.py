#!/usr/bin/env python3
"""Map the completed xxHash Alive2 study onto the pinned source history."""

from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/xxHash"
pin = next(r["pin"] for r in json.loads((results / "pinned-samples.json").read_text())["repos"]
           if r["repo"] == "xxHash")
fixed = json.loads((results / "xxHash-pinned-sample-audit.json").read_text())
assert fixed["pin"] == pin
hidden = json.loads((root / "history-eq/c/xxHash/revalidated-hidden-partials.json").read_text())
hidden_by_commit = {r["commit"]: r for r in hidden["records"]}
assert len(hidden_by_commit) == 4


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True,
                          check=True, env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout.strip()


scope = ["xxhash.h", "xxhash.c", "xxh3.h", "xxh_x86dispatch.c", "xxh_x86dispatch.h"]
source = set(git("log", pin, "--no-merges", "--min-parents=1", "--format=%H", "--", *scope).splitlines())
assert len(source) == 715
sample = []
for part in ("pre2020", "2020on"):
    prior = json.loads((results / f"xxHash-{part}.json").read_text())
    for entry in prior["commits"]:
        full = git("rev-parse", entry["commit"] + "^{commit}")
        assert full in source, (entry["commit"], full)
        verdict = entry["commit_verdict"]
        if entry["coverage"] == "partial" and verdict in ("EQUIV", "REFINES"):
            verdict += "_PARTIAL"
        record = {
            "commit": full, "subject": entry["subject"], "selected_by": entry["selected_by"],
            "screen": "confirmed_optimization", "verdict": verdict,
            "source_verdict": entry["commit_verdict"],
            "coverage": entry["coverage"], "checker_target": "Alive2",
            "checker_status": "checked", "source_part": part,
            "prior_record": entry["commit"], "evidence": f"history-eq/results/xxHash-{part}.json",
        }
        if full.startswith("b2929c4"):
            case = root / "history-eq/c/xxHash/b2929c4"
            proof = json.loads((case / "ternary-proof.json").read_text())
            assert verdict == "EQUIV_BOUNDED" and proof["commit"] == full
            assert proof["changed_paths"] == ["xxhash.h"] and proof["verdict"] == "EQUIV"
            assert proof["historical_blob_oids"] == {
                side: git("rev-parse", full + ("^:" if side == "old" else ":") + "xxhash.h")
                for side in ("old", "new")}
            assert len(proof["truth_table"]) == 8
            assert all(row["old_xor"] == row["new_0x96"] for row in proof["truth_table"])
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + exhaustive Intel ternary truth table",
                           "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/b2929c4/README.md"})
        if full.startswith("c5a6a14"):
            case = root / "history-eq/c/xxHash/c5a6a14"
            proof = json.loads((case / "declaration-proof.json").read_text())
            assert verdict == "EQUIV_BOUNDED" and proof["commit"] == full
            assert proof["changed_paths"] == ["xxhash.h"] and proof["verdict"] == "EQUIV"
            assert proof["historical_blob_oids"] == {
                side: {name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                       for name in ("xxhash.h", "xxhash.c")}
                for side in ("old", "new")}
            assert {name: mode["difference"] for name, mode in proof["modes"].items()} == {
                "default": "XXH64_finalize declaration attributes only",
                "forced_hints": "XXH64_finalize declaration attributes only",
                "inline_all": "none", "inline_all_no_hints": "none"}
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Clang preprocessing + bounded Alive2",
                           "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/c5a6a14/README.md"})
        if full.startswith("60c7cc7"):
            case = root / "history-eq/c/xxHash/60c7cc7"
            proof = json.loads((case / "pragma-proof.json").read_text())
            assert verdict == "EQUIV_BOUNDED" and proof["commit"] == full
            assert proof["changed_paths"] == ["xxh3.h"] and proof["verdict"] == "EQUIV"
            assert proof["blobs"] == {
                side: {name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                       for name in ("xxh3.h", "xxhash.h", "xxhash.c")}
                for side in ("old", "new")}
            assert all(summary == "60 correct, 0 incorrect, 0 failed, 0 errors"
                       for summary in proof["alive2"].values())
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Clang preprocessing + bidirectional Alive2",
                           "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/60c7cc7/README.md"})
        if full.startswith("57d44d5"):
            case = root / "history-eq/c/xxHash/57d44d5"
            proof = json.loads((case / "finalizer-proof-audit.json").read_text())
            assert verdict == "EQUIV_PARTIAL" and proof["child"] == full and proof["commit_verdict"] == "EQUIV"
            assert proof["header_git_oids"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert proof["pairs"] == 128 and len(proof["results"]) == 4
            assert all(item == {"verdict": "EQUIV", "functions": 32}
                       for item in proof["results"].values())
            record.update({"verdict": "EQUIV", "source_verdict": "EQUIV",
                           "checker_target": "exact-source audit + Alive2",
                           "coverage": "normal C runtime hash outputs under Clang x86-64-v3 -O3; all XXH32 finalizer residues, alignment modes, and branch settings; compile-time macro inspection and other targets unverified",
                           "evidence": "history-eq/c/xxHash/57d44d5/README.md"})
        if full.startswith("d2602b9"):
            case = root / "history-eq/c/xxHash/d2602b9/clang-default-proof"
            proof = json.loads((case / "result.json").read_text())
            audit = json.loads((case / "audit.json").read_text())
            assert verdict == "EQUIV_PARTIAL" and audit["child"] == full
            assert audit["changed_paths"] == ["xxhash.h"] and audit["functions"] == len(proof["functions"]) == 111
            assert proof["verdict"] == "EQUIV" and all(
                value == {"fwd": "correct", "bwd": "correct"} for value in proof["functions"].values())
            assert (case / "old.i").read_bytes() == (case / "new.i").read_bytes()
            assert (case / "old.ll").read_bytes() == (case / "new.ll").read_bytes()
            assert audit["git_blobs"] == {
                side + "/" + name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                for side in ("old", "new") for name in ("xxhash.h", "xxhash.c")}
            assert all("111 correct transformations" in (case / f"alive-{direction}.log").read_text()
                       for direction in ("forward", "backward"))
            record.update({"verdict": "EQUIV", "source_verdict": "EQUIV",
                           "checker_target": "exact-source Clang preprocessing + Alive2",
                           "coverage": "all 111 definitions in the historical xxhash.c translation unit under Clang 20 x86-64 -std=c99 -O0 -Drestrict=; __clang__ without __GNUC__ and other configurations unverified",
                           "evidence": "history-eq/c/xxHash/d2602b9/README.md"})
        if full.startswith("090b389"):
            case = root / "history-eq/c/xxHash/090b389"
            proof = json.loads((case / "a64-recheck-result.json").read_text())
            assert verdict == "EQUIV_PARTIAL" and proof["commit"] == full and proof["verdict"] == "EQUIV"
            assert proof["source_blobs"] == {
                side: {name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                       for name in ("xxh3.h", "xxhash.h", "xxhash.c")}
                for side in ("old", "new")}
            assert proof["model_sha256"] == hashlib.sha256((case / "neon_model.h").read_bytes()).hexdigest()
            assert proof["checks"] == {f"target_acc512_w{width}": {
                "verdict": "EQUIV", "fwd": "correct", "bwd": "correct"} for width in (64, 128)}
            for side in ("old", "new"):
                assert proof["ir_sha256"][side] == hashlib.sha256(
                    (case / "r_acc_a64_id" / f"{side}.ll").read_bytes()).hexdigest()
            for direction in ("fwd", "bwd"):
                log = (case / f"a64-recheck-{direction}.log").read_bytes()
                assert proof["log_sha256"][direction] == hashlib.sha256(log).hexdigest()
                assert b"2 correct transformations" in log and b"0 Alive2 errors" in log
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Alive2",
                           "coverage": proof["scope"] + "; " + proof["limits"],
                           "evidence": "history-eq/c/xxHash/090b389/README.md"})
        if full.startswith("9b6fa10"):
            case = root / "history-eq/c/xxHash/9b6fa10"
            assert verdict == "EQUIV_BOUNDED"
            assert "#  define XXH_RESTRICT   restrict" in (case / "old/xxh3.h").read_text()
            for side in ("old", "new"):
                assert git("hash-object", str(case / side / "xxh3.h")) == git(
                    "rev-parse", full + ("^:" if side == "old" else ":") + "xxh3.h")
            for width in ("64", "128"):
                directory = case / f"pre_acc512_{width}_scalar"
                proof = json.loads((directory / "result.json").read_text())
                assert proof["functions"]["target_acc512"] == {
                    "verdict": "EQUIV", "fwd": "correct", "bwd": "correct"}
                assert all(hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest()
                           == proof[f"{side}_ll_sha256"] for side in ("old", "new"))
                assert (case / f"scalar-{width}.log").read_text().strip() == "unsat"
            assert (case / "scalar-negative.log").read_text().strip() == "sat"
            record.update({"coverage": "complete 64-byte scalar accumulator output for both widths with a fresh aligned, non-aliasing accumulator on x86-64; source-locked symbolic eight-lane update algebra for both widths; ARM inlining, vector paths, and arbitrary public hashes unproved",
                           "evidence": "history-eq/c/xxHash/9b6fa10/README.md"})
        if full.startswith("e876423"):
            audit = json.loads((root / "history-eq/c/xxHash/e876423/finalize-proof-audit.json").read_text())
            assert verdict == "EQUIV_PARTIAL" and audit["child"] == full
            assert audit["commit_verdict"] == "EQUIV" and audit["cases"] == 64
            assert audit["bidirectional"] and not audit["bounded"]
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Alive2",
                           "coverage": "functional XXH64 outputs for all defined C executions: complete inline-only commit; all 32 tail residues and both alignments checked bidirectionally on Clang 20; machine code and compiler diagnostics unproved",
                           "evidence": "history-eq/c/xxHash/e876423/README.md"})
        if full.startswith("268fde4"):
            result = json.loads((root / "history-eq/c/xxHash/268fde4/helper-check/result.json").read_text())
            assert verdict == "EQUIV_PARTIAL" and result["commit"] == full
            assert result["commit_verdict"] == "EQUIV"
            assert result["alive2"] == {f"{bits}_{direction}": "proved"
                                        for bits in (64, 128)
                                        for direction in ("forward", "reverse")}
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Alive2",
                           "coverage": "functional XXH3 long-hash outputs for defined C executions: complete inline-control-only commit; both changed helpers proved bidirectionally on Clang -O1 x86-64-v3; machine code and compiler diagnostics unproved",
                           "evidence": "history-eq/c/xxHash/268fde4/README.md"})
        if full.startswith("d80f820"):
            case = root / "history-eq/c/xxHash/d80f820"
            assert verdict == "EQUIV_PARTIAL"
            audit = json.loads((case / "defined-outputs-audit.json").read_text())
            assert audit["commit"] == full and audit["verdict"] == "EQUIV"
            assert audit["blobs"] == {side: git("hash-object", str(case / side / "xxhash.h"))
                                      for side in ("old", "new")}
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Alive2",
                           "coverage": audit["scope"],
                           "evidence": "history-eq/c/xxHash/d80f820/README.md"})
        if full.startswith("71566df"):
            witness = json.loads((root / "history-eq/c/xxHash/71566df/result.json").read_text())
            assert witness["commit"] == full and witness["verdict"] == "NOT_EQUIV"
            assert witness["alive2"]["verdict"] == "incorrect transformation: 128-bit value mismatch"
            assert verdict == "UNKNOWN"
            record.update({"verdict": "NOT_EQUIV",
                           "coverage": "Alive2 fixed 300-byte XXH3_128bits_withSecret counterexample under XXH_NO_PREFETCH/XXH_NO_INLINE_HINTS, corroborated by exact historical native default builds; other inputs untested",
                           "checker_target": "Alive2 + exact historical native execution",
                           "evidence": "history-eq/c/xxHash/71566df/result.json"})
        if full.startswith("6090b0d1"):
            case = root / "history-eq/c/xxHash/6090b0d1"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["selected_verdict"] == "EQUIV_PARTIAL"
            assert proof["checks"] == {"old_to_new": "correct", "new_to_old": "correct",
                                       "direct_historical_entry": "unsupported interprocedural global-table change"}
            assert all(hashlib.sha256((case / name).read_bytes()).hexdigest() == digest
                       for name, digest in proof["sha256"].items())
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] +
                           "; CPU feature detection, global initialization, and public hashes unproved",
                           "evidence": "history-eq/c/xxHash/6090b0d1/README.md"})
        if full.startswith("d4dbf709"):
            case = root / "history-eq/c/xxHash/d4dbf70"
            proof = json.loads((case / "feature-scalar-on-result.json").read_text())
            public = json.loads((case / "public-short-64-result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                side: git("rev-parse", full + ("^:" if side == "old" else ":") + "xxh_x86dispatch.c")
                for side in ("old", "new")}
            assert all(git("hash-object", str(case / side / "xxh_x86dispatch.c")) == blob
                       for side, blob in proof["source_blobs"].items())
            assert proof["checks"] == {f"cpu{cpu}/{direction}": "correct"
                                       for cpu in (0, 2) for direction in ("fwd", "bwd")}
            for name, digest in proof["ir_sha256"].items():
                cpu, side = name.split("/")
                ir = case / f"feature-scalar-on-{cpu}" / side
                assert hashlib.sha256(ir.read_bytes()).hexdigest() == digest
                assert "@XXH_featureTest(" not in ir.read_text()
            assert "@xxm_cpuid(" in (case / "feature-scalar-on-cpu0/old.ll").read_text()
            assert all("1 correct transformations" in (case / f"feature-scalar-on-cpu{cpu}" / f"{direction}.log").read_text()
                       for cpu in (0, 2) for direction in ("fwd", "bwd"))
            assert public["commit"] == full and public["verdict"] == "EQUIV_PARTIAL"
            assert public["whole_commit_verdict"] == "UNKNOWN"
            for side, blobs in public["source_blobs"].items():
                for name, blob in blobs.items():
                    revision = full + ("^:" if side == "old" else ":") + name
                    assert blob == git("rev-parse", revision)
                    assert blob == git("hash-object", str(case / side / name))
                raw = case / "public-short-64" / f"{side}.raw.ll"
                normalized = case / "public-short-64" / f"{side}.ll"
                assert hashlib.sha256(raw.read_bytes()).hexdigest() == public["ir_sha256"][f"{side}.raw.ll"]
                assert hashlib.sha256(normalized.read_bytes()).hexdigest() == public["ir_sha256"][f"{side}.ll"]
                ir = normalized.read_text()
                assert re.sub(r"\b(?:noalias|nocapture)\b\s*", "", raw.read_text()) == ir
                assert "@XXH3_kSecret = hidden constant [192 x i8]" in ir
                assert "define dso_local i64 @target_short_hash" in ir
                assert "define hidden fastcc i64 @XXH3_len_129to240_64b" in ir
                assert all(name not in ir for name in ("@XXH_featureTest", "@setDispatch", "@g_dispatch"))
            assert public["checks"] == {"forward": "2 correct transformations",
                                        "reverse": "2 correct transformations"}
            assert all("2 correct transformations" in (case / "public-short-64" / f"{direction}.log").read_text()
                       for direction in ("forward", "reverse"))
            record.update({"verdict": "EQUIV_PARTIAL",
                           "coverage": public["scope"] +
                           "; also internal XXH_featureTest with scalar dispatch enabled and modeled CPU features" +
                           "; long inputs, streaming updates, other APIs, and whole commit unproved",
                           "evidence": "history-eq/c/xxHash/d4dbf70/README.md"})
        if full.startswith("681ea2aa"):
            case = root / "history-eq/c/xxHash/681ea2aa"
            proof = json.loads((case / "result.json").read_text())
            arm = json.loads((case / "arm-strict-result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert arm["commit"] == full and arm["source_blobs"] == proof["source_blobs"]
            assert proof["source_blobs"] == {
                "old": {name: git("rev-parse", full + "^:" + name) for name in ("xxhash.c", "xxhash.h")},
                "new": {name: git("rev-parse", full + ":" + name) for name in ("xxhash.c", "xxhash.h")}}
            assert proof["normalized_xxh32_ir"] == "identical"
            assert proof["checks"] == {"old_to_new": "correct", "new_to_old": "correct"}
            assert all(hashlib.sha256((case / name).read_bytes()).hexdigest() == digest
                       for name, digest in proof["sha256"].items())
            assert all("1 correct transformations" in (case / f"{direction}.log").read_text()
                       for direction in proof["checks"])
            assert len(arm["checks"]) == 8
            assert all(("1 correct transformations" if outcome == "refines" else
                        "1 incorrect transformations") in (case / f"arm-strict-{name}.log").read_text()
                       for name, outcome in arm["checks"].items())
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] +
                           "; ARMv7 strict-alignment XXH32 old-to-new at lengths 5/16 and bidirectional for aligned inputs; other lengths, targets, and incremental-state API unproved",
                           "evidence": "history-eq/c/xxHash/681ea2aa/README.md"})
        if full.startswith("4b12376"):
            case = root / "history-eq/c/xxHash/4b12376"
            proof = json.loads((case / "revalidated-lanes.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                side: {name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                       for name in ("xxh3.h", "xxhash.c", "xxhash.h")}
                for side in ("old", "new")}
            assert set(proof["checks"]) == {"64", "128"}
            for width, check in proof["checks"].items():
                assert check["lanes"] == 8 and check["old_to_new"] == check["new_to_old"] == "correct"
                for side in ("old", "new"):
                    assert hashlib.sha256((case / f"r_raw_lanes{width}" / f"{side}.ll").read_bytes()).hexdigest() == check[f"{side}_ir_sha256"]
                for direction in ("fwd", "bwd"):
                    log = (case / f"r_raw_lanes{width}" / f"recheck-{direction}.log").read_text()
                    assert "8 correct transformations" in log and "0 Alive2 errors" in log
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] +
                           "; complete hashes and other AVX-512 paths unproved",
                           "evidence": "history-eq/c/xxHash/4b12376/README.md"})
        if full.startswith("16f728f"):
            case = root / "history-eq/c/xxHash/16f728f"
            proof = json.loads((case / "unsupported-241.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["selected_verdict"] == "UNSUPPORTED"
            assert proof["source_blobs"] == {
                side: {name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                       for name in blobs}
                for side, blobs in proof["source_blobs"].items()}
            for name, digest in proof["sha256"].items():
                path = case / "wrap_disp_241.c" if name == "wrap_disp_241.c" else case / "r_disp_cpu1_t1_len241" / name
                assert hashlib.sha256(path.read_bytes()).hexdigest() == digest
            assert all(hashlib.sha256((case / name).read_bytes()).hexdigest() == digest
                       for name, digest in proof["model_sha256"].items())
            assert "Unsupported interprocedural transformation: non-constant global variable @g_dispatch_hashLong64_default" in (case / "r_disp_cpu1_t1_len241/forward.log").read_text()
            record.update({"verdict": "UNSUPPORTED", "coverage": proof["scope"] +
                           "; other changed paths and whole-commit behavior unverified",
                           "evidence": "history-eq/c/xxHash/16f728f/README.md"})
        if full.startswith("b8c3176"):
            case = root / "history-eq/c/xxHash/b8c3176"
            proof = json.loads((case / "ctor-boundary.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["selected_verdict"] == "UNSUPPORTED"
            assert proof["source_blobs"] == {
                side: {name: git("rev-parse", full + ("^:" if side == "old" else ":") + name)
                       for name in blobs}
                for side, blobs in proof["source_blobs"].items()}
            assert all(hashlib.sha256((case / name).read_bytes()).hexdigest() == digest
                       for name, digest in proof["sha256"].items())
            assert "@llvm.global_ctors = appending global [1 x" in (case / "r_entry_t6_cpu2/new.ll").read_text()
            assert "@llvm.global_ctors" not in (case / "r_entry_t6_cpu2/old.ll").read_text()
            assert "1 incorrect transformations" in (case / "ctor-control-alive2-O0.log").read_text()
            assert (case / "ctor-control-old-native-O0.log").read_text() == (case / "ctor-control-new-native-O0.log").read_text() == "7\n"
            record.update({"verdict": "UNSUPPORTED", "coverage": proof["scope"] +
                           "; public hash behavior and whole commit unverified",
                           "evidence": "history-eq/c/xxHash/b8c3176/README.md"})
        if full.startswith("3584844"):
            case = root / "history-eq/c/xxHash/3584844"
            proof = json.loads((case / "revalidated-partial.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_BOUNDED"
            assert proof["source_blobs"] == {
                "old_xxh3": git("rev-parse", full + "^:xxh3.h"),
                "new_xxh3": git("rev-parse", full + ":xxh3.h"),
                "shared_xxhash_h": git("rev-parse", full + ":xxhash.h"),
                "shared_xxhash_c": git("rev-parse", full + ":xxhash.c")}
            assert set(proof["checks"]) == {"256", "300"}
            for length, check in proof["checks"].items():
                directory = case / f"api64_len{length}_msvc_x86"
                assert check["old_to_new"] == check["new_to_old"] == "correct"
                assert check["ir"] == "differs" and check["unresolved_calls"] == 0
                for side in ("old", "new"):
                    digest = check[f"{side}_ir_sha256"]
                    assert hashlib.sha256((directory / f"{side}.ll").read_bytes()).hexdigest() == digest
                for direction in ("fwd", "bwd"):
                    log = (directory / f"recheck-{direction}.log").read_text()
                    assert "1 correct transformations" in log and "0 Alive2 errors" in log
            record.update({"verdict": "EQUIV_BOUNDED",
                           "coverage": proof["scope"] + "; 128-bit hash and other lengths unproved",
                           "evidence": "history-eq/c/xxHash/3584844/revalidated-partial.json"})
        if full.startswith("e6732e9"):
            support = json.loads((root / "history-eq/c/xxHash/e6732e9/result.json").read_text())
            assert support["commit"] == full and support["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert verdict == support["whole_commit_verdict"] == "UNKNOWN"
            assert support["checker_result"] == "UNSUPPORTED" and "Unsupported metadata:" in support["output"]
            case = root / "history-eq/c/xxHash/e6732e9"
            proof = json.loads((case / "modeled-result.json").read_text())
            assert proof["commit"] == full and proof["source_blobs"] == support["source_blobs"]
            assert proof["verdict"] == "EQUIV_PARTIAL" and proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["checks"] == {"old_to_new": "2 correct transformations",
                                       "new_to_old": "2 correct transformations"}
            for name, digest in proof["raw_ir_sha256"].items():
                assert hashlib.sha256((case / "r_accm_a64_id" / name).read_bytes()).hexdigest() == digest
            for name, digest in proof["ir_sha256"].items():
                assert hashlib.sha256((case / "modeled-a64" / name).read_bytes()).hexdigest() == digest
            for direction in ("forward", "reverse"):
                log = (case / "modeled-a64" / f"{direction}.log").read_text()
                assert "2 correct transformations" in log and "0 Alive2 errors" in log
            record.update({"verdict": "EQUIV_PARTIAL",
                           "coverage": proof["scope"] + "; explicit ARM instruction and empty guard models plus LLVM simplification; public hashes and other configurations unverified",
                           "evidence": "history-eq/c/xxHash/e6732e9/modeled-result.json"})
        if full.startswith("abf8f038"):
            case = root / "history-eq/c/xxHash/abf8f038"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert set(proof["checks"]) == {"2", "4", "6", "8"}
            for lane, check in proof["checks"].items():
                assert set(check["functions"]) == {"target_acc512_neon", "target_scramble_neon"}
                assert all(x["fwd"] == x["bwd"] == "correct" for x in check["functions"].values())
                assert check["asm_guard_rewrites"] == [0, 0]
                assert check["accumulator_ir"] == "differs"
                for side, digest in check["ir_sha256"].items():
                    assert hashlib.sha256((case / f"a64-l{lane}" / f"{side}.ll").read_bytes()).hexdigest() == digest
                for direction in ("fwd", "bwd"):
                    log = (case / f"a64-l{lane}" / f"{direction}.log").read_text()
                    assert "2 correct transformations" in log and "0 Alive2 errors" in log
            record.update({"verdict": "EQUIV_PARTIAL",
                           "coverage": proof["scope"] + "; NEON widening multiplication modeled; GCC/ARMv7 paths and public hashes unverified",
                           "evidence": "history-eq/c/xxHash/abf8f038/result.json"})
        if full.startswith("15abfc22"):
            proof = json.loads((root / "history-eq/c/xxHash/15abfc2/result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert all("1 correct transformations" in proof["checks"]["low_" + direction]
                       for direction in ("forward", "reverse"))
            assert "ERROR: Timeout" in proof["checks"]["high_forward"]
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; high64 times out, full 128-bit result unproved",
                           "evidence": "history-eq/c/xxHash/15abfc2/result.json"})
        if full.startswith("a16928e0"):
            proof = json.loads((root / "history-eq/c/xxHash/a16928e0/result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxh3.h"),
                "new": git("rev-parse", full + ":xxh3.h"),
                "shared_xxhash": git("rev-parse", full + ":xxhash.h")}
            assert all("1 correct transformations" in proof["checks"][arch + "_" + direction]
                       for arch in ("x86_64", "armv7_neon")
                       for direction in ("forward", "reverse"))
            assert proof["checks"]["armv7_neon_new_ir"]["modeled_asm_count"] == 4
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; four ARMv7 empty assembly guards modeled identity; public hashes and other configurations unproved",
                           "evidence": "history-eq/c/xxHash/a16928e0/result.json"})
        if full.startswith("267bf168"):
            proof = json.loads((root / "history-eq/c/xxHash/267bf168/result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxh3.h"),
                "new": git("rev-parse", full + ":xxh3.h"),
                "shared_xxhash": git("rev-parse", full + ":xxhash.h")}
            assert all("1 correct transformations" in proof["checks"][arch + "_" + direction]
                       for arch in ("x86_64", "aarch64")
                       for direction in ("forward", "reverse"))
            assert proof["checks"]["aarch64_new_ir"]["modeled_asm_count"] == 1
            assert "Large constant initializer removed" in proof["checks"]["aarch64_standard_checker_diagnostic"]
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; AArch64 empty asm modeled identity and locally modified Alive2 used for 192-byte constant; public hash calls unproved",
                           "evidence": "history-eq/c/xxHash/267bf168/result.json"})
        if full.startswith("620facc"):
            case = root / "history-eq/c/xxHash/620facc"
            proof = json.loads((case / "recheck-l4-result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert proof["checks"] == {"forward": "correct", "reverse": "correct"}
            assert all("1 correct transformations" in (case / name).read_text() and
                       "0 Alive2 errors" in (case / name).read_text()
                       for name in proof["proof_logs"])
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; modeled NEON multiplication and empty compiler guard; public hashes and ARMv7 unverified",
                           "evidence": "history-eq/c/xxHash/620facc/recheck-l4-result.json"})
        if full.startswith("02303104"):
            case = root / "history-eq/c/xxHash/02303104"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert proof["normalized_ir"] == "identical"
            assert proof["checks"] == {"forward": "correct", "reverse": "correct"}
            assert all("1 correct transformations" in (case / name).read_text() and
                       "0 Alive2 errors" in (case / name).read_text()
                       for name in proof["proof_logs"])
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; modeled NEON multiplication and empty compiler guards; GCC guard and public hashes unverified",
                           "evidence": "history-eq/c/xxHash/02303104/result.json"})
        if full.startswith("0e73b84"):
            case = root / "history-eq/c/xxHash/0e73b84"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert set(proof["checks"]) == {"acc", "scr"}
            for kind, lanes in proof["checks"].items():
                assert set(lanes) == {"2", "4", "6", "8"}
                for lane, check in lanes.items():
                    assert check["forward"] == check["reverse"] == "correct"
                    assert all("1 correct transformations" in (case / f"{kind}-l{lane}-{direction}.log").read_text() and
                               "0 Alive2 errors" in (case / f"{kind}-l{lane}-{direction}.log").read_text()
                               for direction in ("forward", "reverse"))
            assert proof["checks"]["acc"]["6"]["normalized_ir"] == "differs"
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; modeled NEON multiplication and empty compiler guards; public hashes and ARMv7 unverified",
                           "evidence": "history-eq/c/xxHash/0e73b84/result.json"})
        if full.startswith("df8f699"):
            case = root / "history-eq/c/xxHash/df8f6994"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert set(proof["checks"]) == {"acc", "scr"}
            for kind, lanes in proof["checks"].items():
                assert set(lanes) == {"2", "4", "6", "8"}
                for lane, check in lanes.items():
                    assert check["forward"] == check["reverse"] == "correct"
                    assert check["asm_guard_rewrites"] == [0, 0]
                    assert all("1 correct transformations" in (case / f"{kind}-l{lane}-{direction}.log").read_text() and
                               "0 Alive2 errors" in (case / f"{kind}-l{lane}-{direction}.log").read_text()
                               for direction in ("forward", "reverse"))
            assert all(proof["checks"][kind]["6"]["normalized_ir"] == "differs"
                       for kind in ("acc", "scr"))
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; modeled NEON widening multiplication; public hashes and ARMv7 unverified",
                           "evidence": "history-eq/c/xxHash/df8f6994/result.json"})
        if full.startswith("94e7193e"):
            case = root / "history-eq/c/xxHash/94e7193e"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert set(proof["checks"]) == {"aarch64", "x86_64_sse41"}
            for arch, check in proof["checks"].items():
                assert check["forward"] == check["reverse"] == "2 correct"
                assert all("2 correct transformations" in (case / f"{arch}-{direction}.log").read_text() and
                           "0 Alive2 errors" in (case / f"{arch}-{direction}.log").read_text()
                           for direction in ("forward", "reverse"))
            assert proof["checks"]["aarch64"]["normalized_ir"]["target_xxh32_64"]["ir"] == "differs"
            assert proof["checks"]["aarch64"]["asm_guard_rewrites"] == [0, 16]
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; empty compiler guard modeled identity; other lengths and public XXH3 unverified",
                           "evidence": "history-eq/c/xxHash/94e7193e/result.json"})
        if full.startswith("e701df3"):
            case = root / "history-eq/c/xxHash/e701df3"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == proof["whole_commit_verdict"] == "UNKNOWN"
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert set(proof["checks"]) == {"4", "6"}
            for lane, check in proof["checks"].items():
                assert check["checks"] == {"old_to_new": "correct", "new_to_old": "correct"}
                assert check["named_asm_modeled"] == {"umaddl": 4 if lane == "4" else 2,
                                                        "umlal": 1, "umlal2": 1}
                assert all(hashlib.sha256((case / f"l{lane}-{name}").read_bytes()).hexdigest() == digest
                           for name, digest in check["ir_sha256"].items())
                assert all("1 correct transformations" in (case / f"l{lane}-modeled-{direction}-opt.log").read_text() and
                           "0 Alive2 errors" in (case / f"l{lane}-modeled-{direction}-opt.log").read_text()
                           for direction in ("forward", "reverse"))
            assert "Function asm umaddl" in (case / "l4-unmodeled-forward.log").read_text()
            record.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"] + "; explicit ARM instruction and empty guard models plus LLVM simplification; public hashes and other configurations unverified",
                           "evidence": "history-eq/c/xxHash/e701df3/result.json"})
        if full.startswith("f7280a3"):
            partial = json.loads((root / "history-eq/c/xxHash/f7280a3/revalidated-partial.json").read_text())
            assert partial["commit"] == full and partial["verdict"] == "REFINES_PARTIAL"
            assert len(partial["checks"]) == 6 and verdict == "UNKNOWN"
            record.update({"verdict": "REFINES_PARTIAL",
                           "coverage": "empty-input XXH32/XXH64 heap state API paths refine old to new; XXH3 create/free equal; data-bearing streaming paths unproved",
                           "evidence": "history-eq/c/xxHash/f7280a3/revalidated-partial.json"})
        if full.startswith("0e5dab97"):
            base = root / "history-eq/c/xxHash/0e5dab9"
            proofs = [json.loads((base / part / "result.json").read_text())
                      for part in ("short_range", "tail_lemma", "valid_blocks")]
            assert verdict == "UNKNOWN" and [p["verdict"] for p in proofs] == [
                "EQUIV_BOUNDED", "EQUIV_PARTIAL", "EQUIV_BOUNDED"]
            assert [len(p["checks"]) for p in proofs] == [64, 128, 448]
            assert all(p["commit"] == full and all(
                "1 correct transformations" in c["output"] and
                "0 incorrect transformations" in c["output"] and
                "0 failed-to-prove transformations" in c["output"] and
                "0 Alive2 errors" in c["output"] for c in p["checks"]) for p in proofs)
            assert all(all(blob == git("rev-parse", (full + "^" if path.startswith("old/")
                                             else full) + ":" + path.split("/", 1)[1])
                           for path, blob in p["source_blobs"].items()) for p in proofs)
            assert (base / "tail_lemma/stream_state.log").read_text().splitlines() == [
                "sat", "sat", "unsat", "unsat"]
            record.update({"verdict": "EQUIV_PARTIAL",
                           "coverage": "XXH64 one-shot fixed lengths 0..255, symbolic 32-byte tail relation, and initialized streaming-length arithmetic invariant; pointer-loop bridge and arbitrary whole calls unproved",
                           "evidence": "history-eq/c/xxHash/0e5dab9/tail_lemma/README.md"})
        if full.startswith("0bced631"):
            case = root / "history-eq/c/xxHash/0bced63"
            witness = json.loads((case / "public-ub-result.json").read_text())
            raw = json.loads((case / "r_raw_sse2/result.json").read_text())
            assert verdict == "NOT_EQUIV" and witness["commit"] == full
            assert witness["public_api"] == "XXH3_64bits_withSeed"
            assert witness["sides"]["old"]["ubsan_signed_overflow"] is False
            assert witness["sides"]["new"]["ubsan_signed_overflow"] is True
            assert raw["functions"]["target_initsec"]["fwd"] == "incorrect"
            record.update({"checker_target": "Alive2 + exact historical UBSan execution",
                           "coverage": "definedness difference at public XXH3_64bits_withSeed, 256 input bytes, seed 2^63, SSE2 Clang -O1: parent returns and child hits signed overflow; other modes unproved",
                           "evidence": "history-eq/c/xxHash/0bced63/README.md"})
        if full.startswith("11126e38"):
            case = root / "history-eq/c/xxHash/11126e3"
            proof = json.loads((case / "defined-outputs-audit.json").read_text())
            assert verdict == "EQUIV_PARTIAL" and proof["commit"] == full
            assert proof["alive2_correct_directions"] == len(proof["checks"]) == 16
            assert proof["complete_source_diff"] == "nine XXH_ALIGN removals on local xacc pointer objects"
            assert proof["historical_blobs"] == {
                side: git("hash-object", str(case / side / "xxhash.h"))
                for side in ("old", "new")}
            assert all("1 correct transformations" in (root / check["log"]).read_text()
                       for check in proof["checks"])
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Alive2",
                           "coverage": "functional outputs and memory effects for defined C executions: complete commit removes only nine storage-alignment hints from unobserved local pointer objects; 16 Alive2 directions cover scalar/SSE2/AVX2/AVX512 stripe routines; generated code, diagnostics and resource use excluded",
                           "evidence": "history-eq/c/xxHash/11126e3/README.md"})
        if full.startswith("b8dfa44b"):
            case = root / "history-eq/c/xxHash/b8dfa44"
            proof = json.loads((case / "defined-outputs-audit.json").read_text())
            assert verdict == "UNKNOWN" and proof["commit"] == full and proof["verdict"] == "EQUIV"
            assert proof["default_alive2_directions"] == 14 and len(proof["noinline_alive2_directions"]) == 10
            assert proof["blobs"]["old/xxhash.h"] == git("hash-object", str(case / "old/xxhash.h"))
            assert proof["blobs"]["new/xxhash.h"] == git("hash-object", str(case / "new/xxhash.h"))
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Alive2",
                           "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/b8dfa44/README.md"})
        if full.startswith("d14b2934"):
            case = root / "history-eq/c/xxHash/d14b2934"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == "UNKNOWN" and proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert len(proof["proof_logs"]) == 6 and all(
                "1 correct transformations" in (case / name).read_text() and
                "0 Alive2 errors" in (case / name).read_text()
                for name in proof["proof_logs"])
            record.update({"verdict": "EQUIV_PARTIAL",
                           "coverage": "XXH32 reset/update/digest returned hash for fixed 16-, 32-, and 64-byte inputs with symbolic bytes and seed; other lengths and state observations unproved",
                           "evidence": "history-eq/c/xxHash/d14b2934/result.json"})
        if full.startswith("662b223e"):
            proof = json.loads((root / "history-eq/c/xxHash/662b223e/result.json").read_text())
            assert verdict == "UNKNOWN" and proof["commit"] == full and proof["verdict"] == "EQUIV_BOUNDED"
            assert len(proof["checks"]) == 28
            record.update({"verdict": "EQUIV_BOUNDED",
                           "coverage": "public 64/128-bit reset-update-digest returned hashes for symbolic valid inputs at seven fixed lengths under Clang 20 -O2; state representation and other lengths unproved",
                           "evidence": "history-eq/c/xxHash/662b223e/result.json"})
        if full.startswith("1cc96340"):
            proof = json.loads((root / "history-eq/c/xxHash/1cc9634/recheck-range-result.json").read_text())
            assert verdict == "UNKNOWN" and proof["commit"] == full and proof["verdict"] == "EQUIV_BOUNDED"
            assert all(proof["source_blobs"][side][name] == git(
                "rev-parse", (full + "^" if side == "old" else full) + ":" + name)
                for side in ("old", "new") for name in ("xxh3.h", "xxhash.h", "xxhash.c"))
            assert "0..16384" in proof["scope"] and len(proof["checks"]) == 4 and all(
                "1 correct transformations" in c["output"] and
                "0 incorrect transformations" in c["output"] and
                "0 failed-to-prove transformations" in c["output"] and
                "0 Alive2 errors" in c["output"] for c in proof["checks"])
            record.update({"verdict": "EQUIV_BOUNDED", "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/1cc9634/recheck-range-result.json"})
        if full.startswith("9c1a86e2"):
            audit = json.loads((root / "history-eq/c/xxHash/9c1a86e2/result.json").read_text())
            assert verdict == audit["verdict"] == "UNKNOWN" and audit["commit"] == full
            proof = json.loads((root / "history-eq/c/xxHash/9c1a86e2/inlined-result.json").read_text())
            assert proof["commit"] == full and proof["verdict"] == "EQUIV_BOUNDED"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert len(proof["checks"]) == 4 and all(
                "1 correct transformations" in c["output"] and
                "0 incorrect transformations" in c["output"] and
                "0 failed-to-prove transformations" in c["output"] and
                "0 Alive2 errors" in c["output"] for c in proof["checks"])
            record.update({"verdict": "EQUIV_BOUNDED", "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/9c1a86e2/inlined-result.json"})
        if full.startswith("5bc51925"):
            proof = json.loads((root / "history-eq/c/xxHash/5bc51925/result.json").read_text())
            assert verdict == "UNKNOWN" and proof["commit"] == full and proof["verdict"] == "EQUIV_BOUNDED"
            assert proof["source_blobs"] == {
                "old": git("rev-parse", full + "^:xxhash.h"),
                "new": git("rev-parse", full + ":xxhash.h")}
            assert len(proof["checks"]) == 4 and all(
                "1 correct transformations" in c["output"] and
                "0 incorrect transformations" in c["output"] and
                "0 failed-to-prove transformations" in c["output"] and
                "0 Alive2 errors" in c["output"] for c in proof["checks"])
            record.update({"verdict": "EQUIV_BOUNDED", "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/5bc51925/result.json"})
        if full in hidden_by_commit:
            partial = hidden_by_commit[full]
            assert verdict == "UNKNOWN" and partial["verdict"] == "EQUIV_PARTIAL"
            assert len(partial["checks"]) == 2
            record.update({"verdict": "EQUIV_PARTIAL",
                           "coverage": "selected old/new Alive2 function pair in " + partial["unit"] + "; other configurations or inputs unproved",
                           "evidence": "history-eq/c/xxHash/revalidated-hidden-partials.json"})
        if full.startswith("7ad2406"):
            case = root / "history-eq/c/xxHash/7ad2406/full-module"
            proof = json.loads((case / "result.json").read_text())
            assert record["verdict"] == "EQUIV_PARTIAL" and proof["commit"] == full and proof["verdict"] == "EQUIV"
            assert proof["blobs"] == {side: {name: git("rev-parse", rev + ":" + name)
                                            for name in ("xxhash.c", "xxhash.h")}
                                      for side, rev in (("old", proof["parent"]), ("new", full))}
            assert len(proof["identical_exported_definitions"]) == 17
            assert all(hashlib.sha256((case / f"{side}.ll").read_bytes()).hexdigest()
                       == proof["full_module_ir_sha256"] for side in ("old", "new"))
            assert proof["alive2"] == {f"{name}_{direction}": "correct"
                                       for name in ("XXH32", "XXH64")
                                       for direction in ("forward", "reverse")}
            assert all("1 correct transformations" in (case / f"{name}-{direction}.log").read_text()
                       for name in ("XXH32", "XXH64") for direction in ("forward", "reverse"))
            record.update({"verdict": "EQUIV", "checker_target": "full-module LLVM identity + Alive2",
                           "coverage": proof["scope"] + "; " + proof["limits"],
                           "evidence": "history-eq/c/xxHash/7ad2406/full-module/README.md"})
        if full.startswith("d2df04e"):
            case = root / "history-eq/c/xxHash/d2df04e/full-module"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == "EQUIV_BOUNDED" and proof["commit"] == full and proof["verdict"] == "EQUIV"
            assert proof["blobs"] == {side: {name: git("rev-parse", rev + ":" + name)
                                            for name in ("xxhash.c", "xxhash.h")}
                                      for side, rev in (("old", proof["parent"]), ("new", full))}
            assert proof["exported_definitions"] == 19
            assert all(hashlib.sha256((case / f"{side}.ll").read_bytes()).hexdigest()
                       == proof["ir_sha256"][side] for side in ("old", "new"))
            assert proof["alive2"] == {f"{name}_{direction}": "correct"
                                       for name in proof["changed_ir_definitions"]
                                       for direction in ("forward", "reverse")}
            assert len(proof["changed_ir_definitions"]) == 4
            assert all("1 correct transformations" in (case / f"{name}-{direction}.log").read_text()
                       for name in proof["changed_ir_definitions"]
                       for direction in ("forward", "reverse"))
            record.update({"verdict": "EQUIV", "checker_target": "complete C++17 module + Alive2",
                           "coverage": proof["scope"] + "; " + proof["limits"],
                           "evidence": "history-eq/c/xxHash/d2df04e/full-module/README.md"})
        if full.startswith("9231e6d"):
            case = root / "history-eq/c/xxHash/9231e6d/version-witness"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == "EQUIV_BOUNDED" and proof["commit"] == full and proof["verdict"] == "NOT_EQUIV"
            assert proof["blobs"] == {side: {name: git("rev-parse", rev + ":" + name)
                                            for name in ("xxhash.c", "xxhash.h")}
                                      for side, rev in (("old", proof["parent"]), ("new", full))}
            assert proof["native_outputs"] == {"old": "604", "new": "605"}
            assert all(hashlib.sha256((case / f"{side}.ll").read_bytes()).hexdigest()
                       == proof["ir_sha256"][side] for side in ("old", "new"))
            assert proof["alive2"] == {"forward": "incorrect transformation",
                                       "reverse": "incorrect transformation"}
            assert all("1 incorrect transformations" in (case / f"{direction}.log").read_text()
                       for direction in ("forward", "reverse"))
            record.update({"verdict": "NOT_EQUIV", "checker_target": "Alive2 + exact historical native call",
                           "coverage": proof["scope"] + "; " + proof["limits"],
                           "evidence": "history-eq/c/xxHash/9231e6d/version-witness/README.md"})
        if full.startswith("8293860"):
            case = root / "history-eq/c/xxHash/8293860/public-legacy"
            proof = json.loads((case / "result.json").read_text())
            assert verdict == "EQUIV_BOUNDED" and proof["commit"] == full and proof["verdict"] == "EQUIV_PARTIAL"
            assert proof["blobs"] == {side: {name: git("rev-parse", rev + ":" + name)
                                            for name in ("xxhash.c", "xxhash.h", "xxh3.h")}
                                      for side, rev in (("old", proof["parent"]), ("new", full))}
            assert proof["unchanged_callees"] == ["XXH32_finalize", "XXH64_finalize"]
            assert all(hashlib.sha256((case / f"{side}.ll").read_bytes()).hexdigest()
                       == proof["ir_sha256"][side] for side in ("old", "new"))
            assert proof["alive2"] == {f"{name}_{direction}": "correct"
                                       for name in ("XXH32", "XXH64")
                                       for direction in ("forward", "reverse")}
            assert all("1 correct transformations" in (case / f"{name}-{direction}.log").read_text()
                       for name in ("XXH32", "XXH64")
                       for direction in ("forward", "reverse"))
            record.update({"verdict": "EQUIV_PARTIAL", "checker_target": "exact-source full modules + Alive2",
                           "coverage": proof["scope"] + "; " + proof["limits"],
                           "evidence": "history-eq/c/xxHash/8293860/public-legacy/README.md"})
        if full.startswith("f534e5b"):
            case = root / "history-eq/c/xxHash/f534e5b"
            proof = json.loads((case / "defined-outputs-audit.json").read_text())
            assert record["verdict"] == "EQUIV_PARTIAL" and proof["commit"] == full
            assert proof["verdict"] == "EQUIV" and len(proof["alive2"]) == 4
            assert proof["blobs"] == {side: git("hash-object", str(case / side / "xxhash.h"))
                                      for side in ("old", "new")}
            record.update({"verdict": "EQUIV", "checker_target": "exact-source audit + Z3 + Alive2",
                           "coverage": proof["scope"],
                           "evidence": "history-eq/c/xxHash/f534e5b/README.md"})
        sample.append(record)
assert len(sample) == len({entry["commit"] for entry in sample}) == 131
assert Counter((e["source_verdict"], e["verdict"]) for e in sample
               if e["source_verdict"] != e["verdict"]) == {
                   ("EQUIV", "EQUIV_PARTIAL"): 1,
                   ("EQUIV_PARTIAL", "EQUIV"): 2,
                   ("EQUIV_BOUNDED", "EQUIV"): 4,
                   ("EQUIV_BOUNDED", "NOT_EQUIV"): 1,
                   ("EQUIV_BOUNDED", "EQUIV_PARTIAL"): 1,
                   ("REFINES", "REFINES_PARTIAL"): 1,
                   ("UNKNOWN", "NOT_EQUIV"): 1,
                   ("UNKNOWN", "REFINES_PARTIAL"): 1,
                   ("UNKNOWN", "EQUIV"): 3,
                   ("UNKNOWN", "EQUIV_PARTIAL"): 19,
                   ("UNKNOWN", "EQUIV_BOUNDED"): 5,
                   ("UNKNOWN", "UNSUPPORTED"): 2,
               }
boundary = json.loads((root / "history-eq/c/xxHash/b8543951/result.json").read_text())
assert boundary["verdict"] == "EQUIV_BOUNDED" and len(boundary["checks"]) == 52
assert boundary["commit"] in source and boundary["commit"] not in {e["commit"] for e in sample}
sample.append({
    "commit": boundary["commit"], "subject": "moved long size test near the beginning",
    "selected_by": "seeded-nonkeyword", "screen": "confirmed_optimization",
    "verdict": "EQUIV_BOUNDED", "coverage": "partial", "checker_target": "Alive2",
    "checker_status": "checked", "evidence": "history-eq/c/xxHash/b8543951/result.json",
})
assert len(sample) == len({entry["commit"] for entry in sample}) == 132
screen = json.loads((results / "xxHash-nonkeyword-full-screen.json").read_text())
assert screen["pin"] == pin and screen["draws_reviewed"] == 542
for entry in screen["entries"]:
    if entry["screen"] != "confirmed_optimization" or entry["commit"] in {e["commit"] for e in sample}:
        continue
    assert entry["exact_changed_blobs_available"] and entry["commit"] in source
    proved = entry["draw"] == 228
    xl_gap = entry["draw"] == 2
    build_gap = entry["draw"] == 7
    cross_gap = entry["draw"] == 51
    alias_gap = entry["draw"] == 232
    native_inequal = entry["draw"] == 493
    macro_helpers = entry["draw"] == 200
    if macro_helpers:
        proof = json.loads((root / "history-eq/c/xxHash/eaffecc7/result.json").read_text())
        assert proof["commit"] == entry["commit"] and proof["verdict"] == "EQUIV_PARTIAL"
        assert len(proof["checks"]) == 6
    if proved:
        proof = json.loads((root / "history-eq/c/xxHash/20429ed5/result.json").read_text())
        assert proof["commit"] == entry["commit"] and proof["verdict"] == "EQUIV"
        assert proof["whole_library_verdict"] == "UNKNOWN" and not proof["target_ir_differs"]
        assert proof["source_blobs"] == {
            side: git("rev-parse", entry["commit"] + ("^:" if side == "old" else ":") + "xxhash.h")
            for side in ("old", "new")}
        assert {check["direction"] for check in proof["checks"]} == {"forward", "backward"}
        assert all("1 correct transformations" in check["output"] and "0 Alive2 errors" in check["output"]
                   for check in proof["checks"])
    if xl_gap:
        attempt = json.loads((root / "history-eq/c/xxHash/4866da2a/result.json").read_text())
        assert attempt["commit"] == entry["commit"] and attempt["verdict"] == "UNSUPPORTED"
        assert attempt["checker_status"] == "checked" and set(attempt["helper_checks"]) == {"mulo", "mule"}
        assert all("1 failed-to-prove transformations" in output for output in attempt["helper_checks"].values())
    if build_gap:
        attempt = json.loads((root / "history-eq/c/xxHash/a80dac44/result.json").read_text())
        assert attempt["commit"] == entry["commit"] and attempt["verdict"] == "UNSUPPORTED"
        baseline = json.loads((root / "history-eq/c/xxHash/a80dac44/x86-baseline-result.json").read_text())
        assert baseline["commit"] == entry["commit"] and baseline["verdict"] == "EQUIV_PARTIAL"
        assert baseline["shared_functions"] == 15
    if alias_gap:
        attempt = json.loads((root / "history-eq/c/xxHash/6078dd6a/result.json").read_text())
        assert attempt["commit"] == entry["commit"] and attempt["verdict"] == "UNSUPPORTED"
        readonly = json.loads((root / "history-eq/c/xxHash/6078dd6a/readonly-result.json").read_text())
        assert readonly["commit"] == entry["commit"] and readonly["verdict"] == "EQUIV_PARTIAL"
        assert len(readonly["checks"]) == 2
    if cross_gap:
        attempt = json.loads((root / "history-eq/c/xxHash/b63643dd/result.json").read_text())
        assert attempt["commit"] == entry["commit"] and attempt["verdict"] == "UNSUPPORTED"
        assert attempt["checker_status"] == "checked" and set(attempt["helper_checks"]) == {"mulo", "mule"}
        assert attempt["compilation"]["old"]["object_exit_code"] != 0
        assert attempt["compilation"]["new"]["object_exit_code"] == 0
    if native_inequal:
        attempt = json.loads((root / "history-eq/c/xxHash/6e5d5d76/result.json").read_text())
        assert attempt["commit"] == entry["commit"] and attempt["verdict"] == "NOT_EQUIV"
    sample.append({"commit": entry["commit"], "subject": entry["subject"],
                   "selected_by": "seeded-nonkeyword", "screen": "confirmed_optimization",
                   "verdict": "NOT_EQUIV" if native_inequal else "EQUIV" if proved else "EQUIV_PARTIAL" if build_gap or alias_gap or macro_helpers else
                   "UNSUPPORTED" if xl_gap or cross_gap else "UNKNOWN",
                   "coverage": "public API counterexample" if native_inequal else "three direct libc helper calls at Clang 20 -O1 checked bidirectionally; other API paths and builds unproved" if macro_helpers else proof["scope"] + "; public hashes and other compiler/ISA configurations unproved" if proved else
                   "all 15 matched dispatcher translation-unit functions at Clang 20 -O2 baseline x86-64; x86-64-v3 old side cannot compile" if build_gap else
                   "historical IBM XL macro branches cross-build under Clang; Alive2 cannot model changed PowerPC vector multiply intrinsics" if xl_gap else
                   "read-only XXH3_hashLong_64b_withSeed value result and fixed-256-byte caller under Clang 20 -O1, combining source audit with Alive2 after alias-attribute normalization" if alias_gap else
                   "historical s390x fixed-256-byte wrappers reach IR; old Clang object build rejects vmulouw; Alive2 cannot model new vmlof/vmlef" if cross_gap else
                   "exact changed source available; checker not run",
                   "checker_target": "Alive2 + native execution" if native_inequal else "Alive2",
                   "checker_status": "checked" if proved or build_gap or alias_gap or macro_helpers or native_inequal or cross_gap or xl_gap else "not_run",
                   "evidence": "history-eq/c/xxHash/eaffecc7/result.json" if macro_helpers else
                   "history-eq/c/xxHash/20429ed5/README.md" if proved else
                   "history-eq/c/xxHash/4866da2a/result.json" if xl_gap else
                   "history-eq/c/xxHash/a80dac44/x86-baseline-result.json" if build_gap else
                   "history-eq/c/xxHash/6078dd6a/readonly-result.json" if alias_gap else
                   "history-eq/c/xxHash/b63643dd/result.json" if cross_gap else
                   "history-eq/c/xxHash/6e5d5d76/result.json" if native_inequal else
                   "history-eq/results/xxHash-nonkeyword-full-screen.json"})
assert len(sample) == len({entry["commit"] for entry in sample}) == 139
rechecks = {
    "755445db": ("755445d/recheck-128-result.json", 9),
    "fdf28f68": ("fdf28f6/recheck-midrange-result.json", 5),
    "18f0991c": ("18f0991/recheck-reset-t2-result.json", 2),
}
for entry in sample:
    match = next((v for prefix, v in rechecks.items() if entry["commit"].startswith(prefix)), None)
    if match is None:
        continue
    rel, expected = match
    proof = json.loads((root / "history-eq/c/xxHash" / rel).read_text())
    checks = proof.get("checks", proof.get("proved_bidirectional"))
    assert proof["commit"] == entry["commit"][:len(proof["commit"])]
    assert len(checks) == expected and entry["verdict"] == "UNKNOWN"
    if isinstance(checks, dict):
        assert all(v == "correct" for pair in checks.values()
                   for v in (pair.values() if isinstance(pair, dict) else [pair]))
    entry.update({"verdict": "EQUIV_PARTIAL", "coverage": proof["scope"],
                  "evidence": f"history-eq/c/xxHash/{rel}"})
fixed_confirmed = {e["commit"] for e in fixed["entries"] if e["screen"] == "confirmed_optimization"}
assert len(fixed_confirmed) == 94 and fixed_confirmed <= {e["commit"] for e in sample}

(results / "xxHash-optimization-sample.json").write_text(json.dumps({
    "repo": "xxHash", "pin": pin,
    "selection": "all 173 keyword candidates plus all 542 seeded nonkeyword source commits after message/path intent screening",
    "source_commits": len(source), "fixed_keyword_confirmed": len(fixed_confirmed),
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"source": len(source), "sample": len(sample),
                  "fixed_subset": len(fixed_confirmed),
                  "verdicts": dict(Counter(e["verdict"] for e in sample))}, sort_keys=True))
