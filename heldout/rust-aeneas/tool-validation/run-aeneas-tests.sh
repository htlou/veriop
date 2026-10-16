#!/usr/bin/env bash
# Run the upstream Aeneas test target (`make test` = build-dev, extract-tests over all of
# tests/src with the test runner, cargo-test) in one validation tree.
# Usage: run-aeneas-tests.sh <tree> <charon-exe> <cpus>
set -uo pipefail
source "$(dirname "$0")/../scripts/env.sh"
tree=$1; charon=$2; cpus=$3
V="$(cd "$(dirname "$0")" && pwd)"
name=$(basename "$tree")
cd "$tree"
mkdir -p tests/llbc   # avoid the test runner's concurrent-mkdir race under -j8
log="$V/logs/aeneas-make-test-$name.log"
args=(CHARON_EXE="$charon" RUSTC_CMD="rustc +nightly-2026-09-17" CARGO_CMD="cargo +nightly-2026-09-17")
# `make test` = build-dev extract-tests cargo-test; build-dev is run serially (its dune
# invocations cannot run concurrently); then the independent test-% targets with -j8 and
# IN_CI=1, which (as in upstream CI) skips the per-test rebuild and adds `-checks`.
{ taskset -c "$cpus" make build-dev "${args[@]}" && \
  taskset -c "$cpus" make -k -j8 extract-tests IN_CI=1 "${args[@]}"; e1=$?
  taskset -c "$cpus" make cargo-test "${args[@]}"; e2=$?
  echo "extract-tests-exit=$e1 cargo-test-exit=$e2"; } > "$log" 2>&1

