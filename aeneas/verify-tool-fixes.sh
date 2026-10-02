#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
dev_aeneas="$AENEAS_WORK/repos/aeneas/src/_build/default/main.exe"
for fixture in bool-not bool-cmp bitwise scalars never-call fnonce-mut trait-module-shadow string-literal; do
  dest="results/dev-$fixture"
  mkdir -p "$dest"
  charon_args=()
  if [ "$fixture" = fnonce-mut ]; then
    charon_args=(--monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*')
  fi
  charon rustc --preset=aeneas "${charon_args[@]}" --dest-file "results/$fixture.llbc" \
    -- "repos/aeneas/tests/src/$fixture.rs" --crate-type lib --edition=2021 \
    > "logs/dev-$fixture-charon.log" 2>&1
  namespace=BoolNot
  if [ "$fixture" = never-call ]; then namespace=NeverCall; fi
  if [ "$fixture" = fnonce-mut ]; then namespace=FnonceMut; fi
  if [ "$fixture" = trait-module-shadow ]; then namespace=TraitShadow; fi
  if [ "$fixture" = string-literal ]; then namespace=StringLiteral; fi
  "$dev_aeneas" -backend lean -loops-to-rec -no-progress-bar \
    -namespace "$namespace" -dest "$dest" "results/$fixture.llbc" \
    > "logs/dev-$fixture-aeneas.log" 2>&1
  if rg -n 'Generated the partial file' "logs/dev-$fixture-aeneas.log"; then exit 1; fi
  if rg -n '\b(sorry|axiom|admit)\b' "$dest"; then exit 1; fi
  (cd proof; for file in "../$dest/"*.lean; do lake env lean "$file"; done) \
    > "logs/dev-$fixture-lean.log" 2>&1
done
cat results/dev-bool-not/Bool-not.lean tool-tests/bool-not-checks.lean.inc \
  > results/BoolNotAfter/BoolNotChecked.lean
(cd proof && lake env lean ../results/BoolNotAfter/BoolNotChecked.lean) \
  > logs/bool-not-regression-lean.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/bool-not-regression-lean.log; then exit 1; fi
cat logs/bool-not-regression-lean.log
cat results/dev-never-call/Never-call.lean tool-tests/never-call-checks.lean.inc \
  > results/NeverCallAfter/NeverCallChecked.lean
(cd proof && lake env lean ../results/NeverCallAfter/NeverCallChecked.lean) \
  > logs/never-call-semantic-checks.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/never-call-semantic-checks.log; then exit 1; fi
cat logs/never-call-semantic-checks.log
cat results/dev-fnonce-mut/Fnonce-mut.lean tool-tests/fnonce-mut-checks.lean.inc \
  > results/FnonceMutAfter/FnonceMutChecked.lean
(cd proof && lake env lean ../results/FnonceMutAfter/FnonceMutChecked.lean) \
  > logs/fnonce-mut-semantic-checks.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/fnonce-mut-semantic-checks.log; then exit 1; fi
cat logs/fnonce-mut-semantic-checks.log
cat results/dev-trait-module-shadow/Trait-module-shadow.lean tool-tests/trait-shadow-checks.lean.inc \
  > results/dev-trait-module-shadow/TraitShadowChecked.lean
(cd proof && lake env lean ../results/dev-trait-module-shadow/TraitShadowChecked.lean) \
  > logs/trait-shadow-semantic-checks.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/trait-shadow-semantic-checks.log; then exit 1; fi
cat logs/trait-shadow-semantic-checks.log
cat results/dev-string-literal/String-literal.lean tool-tests/string-literal-checks.lean.inc \
  > results/dev-string-literal/StringLiteralChecked.lean
(cd proof && lake env lean ../results/dev-string-literal/StringLiteralChecked.lean) \
  > logs/string-literal-semantic-checks.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/string-literal-semantic-checks.log; then exit 1; fi
cat logs/string-literal-semantic-checks.log
(cd proof && lake env lean ../tool-tests/trait-helper-default.lean) \
  > logs/trait-helper-after.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/trait-helper-after.log; then exit 1; fi
cat logs/trait-helper-after.log
echo 'PASS: boolean, never-call, specialized FnOnce, trait/module-name, kernel-checked strings, and trait-default helpers; semantic checks including mutation and divergence; three upstream fixtures.'
