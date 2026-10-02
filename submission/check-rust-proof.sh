#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")/../aeneas/proof"
# Requires elan/Lean 4.31.0. Fetch only the pinned Lean dependencies and caches.
lake update
lake exe cache get
lake build Base64Unroll8Proof Base64CapacityProof Base64Unroll8PublicRef Base64Unroll8PublicOpt
lake env lean Base64Unroll8PublicProof.lean
