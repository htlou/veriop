#!/usr/bin/env bash
# Re-run the upstream Lean verification (tests/lean of the final Aeneas tree) after the Lean-library
# change patches/aeneas-lean-tostr-kernel-proof.patch, exactly as tool-validation/run-lean-tests.sh
# does, and compare with the recorded pre-change run (tool-validation/logs/lean-tests-aeneas-final.log):
# same exit status, same set of built modules, same `sorry` warnings.
# Usage: run-lean-tests-tostr.sh [cpus]   (default 0-63; never 160-191 / 352-383)
set -uo pipefail
cpus=${1:-0-63}
H="$(cd "$(dirname "$0")/.." && pwd)"
F=$H/final-verification
T=$H/tool-validation/trees/aeneas-final
log=$F/logs/lean-tests-aeneas-final-tostr.log
mkdir -p "$F/logs"
git -C "$T" diff backends/lean/Aeneas/Std/String.lean | cmp - "$H/patches/aeneas-lean-tostr-kernel-proof.patch" \
  || { echo "FAIL: String.lean differs from the recorded patch"; exit 1; }
if [ "${COMPARE_ONLY:-0}" != 1 ]; then
  start=$(date +%s)
  ( cd "$T/tests/lean" && { make prepare-projects && taskset -c "$cpus" lake build -KCI=1 2>&1; echo "lake-build-exit=$?"; } ) > "$log" 2>&1
  echo "elapsed-seconds=$(( $(date +%s) - start ))" >> "$log"
fi
old=$H/tool-validation/logs/lean-tests-aeneas-final.log
built() { grep -oE '(Built|Replayed) [A-Za-z0-9_.]+' "$1" | awk '{print $2}' | sort -u; }
sorry() { grep -oE "warning: [^ ]+\.lean:[0-9]+:[0-9]+: declaration uses .sorry." "$1" | sed -E 's/:[0-9]+:[0-9]+:/:/' | sort | uniq -c; }
grep -q '^lake-build-exit=0$' "$log" || { echo "FAIL: lake build failed (see $log)"; exit 1; }
built "$log" > "$F/logs/lean-tests-tostr-built.txt"
sorry "$log" > "$F/logs/lean-tests-tostr-sorry.txt"
# (a) every test module of the recorded pre-change run (tool-validation/logs/lean-final-built.txt,
#     123 modules) is built again in this run;
comm -23 <(sort -u "$H/tool-validation/logs/lean-final-built.txt") "$F/logs/lean-tests-tostr-built.txt" > "$F/logs/lean-tests-tostr-missing.txt"
[ -s "$F/logs/lean-tests-tostr-missing.txt" ] && { echo "FAIL: test modules not built:"; cat "$F/logs/lean-tests-tostr-missing.txt"; exit 1; }
# (b) the patched library module was rebuilt (Lake's traces then force every module importing it,
#     in the library or the tests, to be rebuilt before `lake build` can succeed; the library is
#     shared with the proof project's build, which may have rebuilt part of it first);
[ "$T/backends/lean/.lake/build/lib/lean/Aeneas/Std/String.olean" -nt "$T/backends/lean/Aeneas/Std/String.lean" ] \
  || { echo "FAIL: Aeneas.Std.String not rebuilt"; exit 1; }
# (c) the same `sorry` warnings.
cmp <(sorry "$old") "$F/logs/lean-tests-tostr-sorry.txt" || { echo "FAIL: sorry set changed"; exit 1; }
echo "PASS: tests/lean builds with the toStr change: all $(wc -l < "$H/tool-validation/logs/lean-final-built.txt") test modules rebuilt, patched library rebuilt, same sorry set"
