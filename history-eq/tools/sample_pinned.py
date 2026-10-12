#!/usr/bin/env python3
"""Reproducibly sample historical performance *candidates* at the 25 target pins."""

import csv
import hashlib
import json
from pathlib import Path
import random
import subprocess

ROOT = Path(__file__).resolve().parents[2]
BENCH = ROOT / "benchmarks"
OUT = ROOT / "history-eq/results/pinned-samples.json"
SEED = "veriop-history-v1"
KEYWORDS = (
    r"perf|fast|speed|optimi|faster|slow|inline|simd|unroll|latency|"
    r"throughput|efficien|vectori|cheap|bench|improv|reduce|avoid|hot|"
    r"branch|bound.?check|cost|gas"
)
SCOPE = {
    "zstd": ["lib/"],
    "xxHash": ["xxhash.h", "xxhash.c", "xxh3.h", "xxh_x86dispatch.c", "xxh_x86dispatch.h"],
    "aws-lc": ["crypto/"],
    "fast_float": ["include/"],
    "simdjson": ["include/", "src/"],
    "SymCrypt": ["SymCRust/"],
    "rust-base64": ["src/"],
    "regex": ["src/", "regex-automata/src/", "regex-syntax/src/", "regex-lite/src/"],
    "v4-core": ["src/"],
    "openzeppelin-contracts": ["contracts/"],
    "hacl-star": ["code/", "lib/", "specs/"],
    "everparse": ["src/"],
    "aws-encryption-sdk": ["AwsEncryptionSDK/", "libraries/"],
    "aws-database-encryption-sdk-dynamodb": ["DynamoDbEncryption/"],
    "compress": ["flate/", "zstd/", "s2/", "snappy/", "fse/", "huff0/", "gzip/", "zlib/", "zip/", "lzw/", "gzhttp/", "xpress/", "internal/"],
    "scion": ["pkg/", "private/", "router/", "gateway/", "daemon/", "scion/"],
    "RoaringBitmap": ["roaringbitmap/src/main/", "RoaringBitmap/src/main/"],
    "netty": ["common/src/main/", "buffer/src/main/", "codec/src/main/", "transport/src/main/"],
    "s2n-bignum": ["x86/", "arm/", "riscv/"],
    "openssl": ["crypto/", "providers/"],
    "evm-semantics": ["kevm-pyk/", "optimizer/"],
    "kontrol": ["src/"],
    "llama.cpp": ["ggml/src/"],
    "cutlass": ["include/", "python/", "operators/"],
    "flash-attention": ["csrc/", "flash_attn/", "hopper/"],
}


def git(repo, *args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True).strip()


def main():
    with (BENCH / "targets.tsv").open(newline="") as f:
        targets = list(csv.DictReader(f, delimiter="\t"))
    assert set(SCOPE) == {t["repo"] for t in targets}
    result = {"seed": SEED, "sample_size": 200, "keyword_regex": KEYWORDS,
              "status": "unreviewed keyword candidates; not verified optimizations or checker verdicts",
              "repos": []}
    for target in targets:
        name = target["repo"]
        repo = BENCH / "repos" / name
        assert git(repo, "rev-parse", "HEAD") == target["sha"], name
        assert git(repo, "rev-parse", "--is-shallow-repository") == "false", name
        common = ["log", "HEAD", "--no-merges", "--min-parents=1",
                  "--format=%H%x09%aI%x09%s"]
        scope = SCOPE[name]
        all_commits = git(repo, *common, "--", *scope).splitlines()
        candidate_lines = git(repo, *common, "-i", "-E", f"--grep={KEYWORDS}",
                              "--", *scope).splitlines()
        candidates = [line.split("\t", 2) for line in candidate_lines]
        assert len(candidates) == len({c[0] for c in candidates}), name
        assert len(candidates) <= len(all_commits), name
        rng = random.Random(int.from_bytes(hashlib.sha256(f"{SEED}/{name}".encode()).digest(), "big"))
        chosen = rng.sample(sorted(candidates), min(200, len(candidates)))
        result["repos"].append({
            "repo": name, "family": target["family"], "checker": target["checker"],
            "pin": target["sha"], "scope": scope,
            "source_commits": len(all_commits), "keyword_candidates": len(candidates),
            "sample": [{"commit": sha, "date": date, "subject": subject}
                       for sha, date, subject in sorted(chosen)],
        })
        print(f"{name:32} {len(all_commits):6} source {len(candidates):5} candidates {len(chosen):3} sampled")
    OUT.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n")


if __name__ == "__main__":
    main()
