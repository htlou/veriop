#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
python3 - <<'PY'
import json, subprocess
from pathlib import Path
pins = json.loads(Path('pins.json').read_text())
for repo, commit in pins['repos'].items():
    assert subprocess.check_output(['git', '-C', f'repos/{repo}', 'rev-parse', 'HEAD'], text=True).strip() == commit
for repo in ('rust-base64', 'lz4_flex'):
    subprocess.run(['git', '-C', f'repos/{repo}', 'diff', '--exit-code', 'HEAD', '--', 'src', 'Cargo.toml'], check=True)
PY
for side in Ref Opt; do
  if [ "$side" = Ref ]; then repo=rust-base64; else repo=base64-candidate; fi
  (cd "repos/$repo" && charon cargo --preset=aeneas \
    --dest-file "$AENEAS_WORK/results/Base64$side.llbc" \
    --start-from base64::engine::general_purpose::encode_scalar_tail \
    -- --lib --no-default-features --features std) > "logs/verify-base64-$side-charon.log" 2>&1
  aeneas -backend lean -loops-to-rec -no-progress-bar -namespace "Base64$side" \
    -dest "proof/Base64$side" "results/Base64$side.llbc" > "logs/verify-base64-$side-aeneas.log" 2>&1
  mv "proof/Base64$side/Base64$side.lean" "proof/Base64$side/Base64.lean"
  if [ "$side" = Ref ]; then repo=lz4_flex; else repo=lz4-candidate; fi
  (cd "repos/$repo" && charon cargo --preset=aeneas \
    --dest-file "$AENEAS_WORK/results/Lz4$side.llbc" \
    --start-from lz4_flex::block::compress::token_from_literal \
    -- --lib --no-default-features --features std,safe-encode,safe-decode,checked-decode) \
    > "logs/verify-lz4-$side-charon.log" 2>&1
  aeneas -backend lean -loops-to-rec -no-progress-bar -namespace "Lz4$side" \
    -dest "proof/Lz4$side" "results/Lz4$side.llbc" > "logs/verify-lz4-$side-aeneas.log" 2>&1
  mv "proof/Lz4$side/Lz4$side.lean" "proof/Lz4$side/Lz4.lean"
done
if rg -n '\b(sorry|axiom|admit|native_decide|implemented_by)\b' proof/Proofs.lean proof/Base64{Ref,Opt} proof/Lz4{Ref,Opt}; then
  echo 'Unaccepted proof or model declaration' >&2; exit 1
fi
(cd proof && lake build Proofs && lake env lean Proofs.lean) > logs/verify-lean.log 2>&1
if rg -n 'sorryAx|Lean.ofReduceBool|Lean.trustCompiler' logs/verify-lean.log; then exit 1; fi
cat logs/verify-lean.log
