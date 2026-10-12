#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
source_repo="$VERIOP_BENCH_ROOT/../cuda/repos/volta"
worktree="$VERIOP_BENCH_ROOT/build/volta-aggregate"
patch="$VERIOP_BENCH_ROOT/patches/volta-aggregate-param.patch"
pin=5d7530cc7fbef656c3fbeac22c6529441e4db70c
cargo_bin="$RUSTUP_HOME/toolchains/1.99.0-x86_64-unknown-linux-gnu/bin/cargo"
volta="$worktree/target/debug/volta"
ptx="$VERIOP_BENCH_ROOT/../cuda/verified_optimization/ptx/aggregate-param.ptx"
log="$VERIOP_BENCH_ROOT/logs/volta-aggregate-param-control.log"

[[ "$(git -C "$source_repo" rev-parse HEAD)" == "$pin" ]]
if [[ ! -e "$worktree/.git" ]]; then
  git -C "$source_repo" worktree add --detach "$worktree" "$pin"
fi
[[ "$(git -C "$worktree" rev-parse HEAD)" == "$pin" ]]
if git -C "$worktree" diff --quiet; then
  git -C "$worktree" apply --check "$patch"
  git -C "$worktree" apply "$patch"
fi
cmp -s "$patch" <(git -C "$worktree" diff) || {
  printf 'Volta worktree differs from the pinned aggregate-parameter patch\n' >&2
  exit 1
}
git -C "$worktree" diff --check

(
  cd "$worktree"
  PATH="$(dirname "$cargo_bin"):$PATH" "$cargo_bin" test -p volta_analysis --lib --locked -j8 \
    > "$VERIOP_BENCH_ROOT/logs/volta-aggregate-unit-tests.log" 2>&1
  PATH="$(dirname "$cargo_bin"):$PATH" "$cargo_bin" build -p volta_cli --locked -j8 \
    > "$VERIOP_BENCH_ROOT/logs/volta-aggregate-build.log" 2>&1
)

"$volta" --no-log-file compare "$ptx" "$ptx" \
  --kernel1 aggregate_param --kernel2 aggregate_param -b 128 -g 1 \
  --array input:0x10000:4:128:in --array out:0x20000:4:128:out \
  --check-array out --sample 0 \
  --param bytes:800000000000000000000200000000000000010000000000 > "$log" 2>&1
rg -q '^EQUIVALENT$' "$log"

if "$volta" --no-log-file compare "$ptx" "$ptx" \
  --kernel1 aggregate_param --kernel2 aggregate_param -b 128 -g 1 \
  --array input:0x10000:4:128:in --array out:0x20000:4:128:out \
  --check-array out --sample 0 --param bytes:80000000 \
  > "$VERIOP_BENCH_ROOT/logs/volta-aggregate-param-invalid.log" 2>&1; then
  printf 'Invalid aggregate length was accepted\n' >&2
  exit 1
fi
rg -q 'needs 24 bytes, got 4' "$VERIOP_BENCH_ROOT/logs/volta-aggregate-param-invalid.log"

generic_ptx="$VERIOP_BENCH_ROOT/build/volta-generic-global-control.ptx"
[[ "$(rg -c 'ld\.global\.f32' "$ptx")" == 2 ]]
sed 's/ld\.global\.f32/ld.f32/g' "$ptx" > "$generic_ptx"
"$volta" --no-log-file compare "$ptx" "$generic_ptx" \
  --kernel1 aggregate_param --kernel2 aggregate_param -b 128 -g 1 \
  --array input:0x10000:4:128:in --array out:0x20000:4:128:out \
  --check-array out --sample 0 \
  --param bytes:800000000000000000000200000000000000010000000000 \
  > "$VERIOP_BENCH_ROOT/logs/volta-generic-global-control.log" 2>&1
rg -q '^EQUIVALENT$' "$VERIOP_BENCH_ROOT/logs/volta-generic-global-control.log"

if "$volta" --no-log-file compare "$generic_ptx" "$generic_ptx" \
  --kernel1 aggregate_param --kernel2 aggregate_param -b 128 -g 1 \
  --array input:0x10000:4:128:in --array out:0x20000:4:128:out \
  --check-array out --sample 0 \
  --param bytes:800000000000000000000200000000000000030000000000 \
  > "$VERIOP_BENCH_ROOT/logs/volta-generic-global-out-of-bounds.log" 2>&1; then
  printf 'Generic load outside the declared global array was accepted\n' >&2
  exit 1
fi
rg -q 'out-of-bounds Global access at 0x30000' \
  "$VERIOP_BENCH_ROOT/logs/volta-generic-global-out-of-bounds.log"
printf 'Volta aggregate and generic-global controls: EQUIVALENT; invalid accesses rejected.\n'
