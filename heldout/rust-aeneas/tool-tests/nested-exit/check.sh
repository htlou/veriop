#!/usr/bin/env bash
# Regression fixture for the Aeneas pre-pass `lower_nested_loop_exits` (and the matcher change):
# upstream Aeneas rejects this loop shape; the patched Aeneas translates it, and evaluating the
# generated Lean model on fixed inputs reproduces the native Rust results (expected.txt).
set -euo pipefail
source "$(dirname "$0")/../../scripts/env.sh"
cd "$(dirname "$0")"
cargo run --quiet --offline --bin expected > expected.txt
CARGO_PROFILE_DEV_DEBUG_ASSERTIONS=false charon cargo --preset=aeneas --monomorphize-mut=except-types \
  --remove-adt-clauses '--lift-associated-types=*' --start-from 'nested_exit::two_chunk_loops' \
  --dest-file nested.llbc -- --lib > charon.log 2>&1
rm -rf out unpatched; mkdir -p out unpatched
"$HELDOUT/tool-validation/trees/aeneas-upstream/src/_build/default/main.exe" -backend lean -loops-no-rec \
  -no-progress-bar -namespace NestedExit -dest unpatched nested.llbc > aeneas-unpatched.log 2>&1 || true
grep -q 'Breaks to outer loops are not supported yet' aeneas-unpatched.log
"$AENEAS_DEV" -backend lean -loops-no-rec -no-progress-bar -namespace NestedExit -dest out nested.llbc > aeneas.log 2>&1
! grep -q 'Generated the partial file\|Error' aeneas.log
cat out/Nested.lean eval.lean.inc > out/NestedEval.lean
(cd ../../proof && taskset -c 64-79 lake env lean ../tool-tests/nested-exit/out/NestedEval.lean) 2>&1 \
  | grep -v 'declaration uses\|linter\|^Note\|^$' > model-output.txt
diff expected.txt model-output.txt
echo "PASS: upstream Aeneas rejects the fixture; patched model output equals native output"
