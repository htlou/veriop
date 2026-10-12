#!/usr/bin/env bash
# Run EverParse's benchmark.sh workload and report with the pinned external tools.
set -euo pipefail

bench_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$bench_root/everparse_env.sh"
repo="$bench_root/repos/everparse"
out="$bench_root/logs/everparse-smt"
mkdir -p "$out"

mode="${1:---quick}"
case "$mode" in
  --full)
    find "$repo/src" -name '*.checked' -delete
    python3 - "$repo" <<'PY'
from pathlib import Path
import sys
for name in ('.depend', '.depend.aux', '.depend.rsp'):
    (Path(sys.argv[1]) / name).unlink(missing_ok=True)
PY
    ;;
  --quick) ;;
  *) echo "usage: $0 [--full|--quick]" >&2; exit 2 ;;
esac

jobs="${VERIOP_EVERPARSE_JOBS:-4}"
build_rc=0
(cd "$repo" && make -j"$jobs" all OTHERFLAGS=--query_stats) > "$out/benchmark_profile.log" 2>&1 || build_rc=$?
if grep -q 'Query-stats' "$out/benchmark_profile.log"; then
  (cd "$repo" && bash benchmark.sh --report-only "$out/benchmark_profile.log" --output-dir "$out")
else
  python3 - "$out" <<'PY'
from pathlib import Path
import sys
for name in ('benchmark_report.txt', 'benchmark_queries.csv'):
    (Path(sys.argv[1]) / name).unlink(missing_ok=True)
PY
  if [[ "$mode" == --quick && "$build_rc" == 0 ]]; then
    echo "Incremental build passed; no new SMT queries (all verification results cached)."
  else
    echo "Build produced no SMT queries; see $out/benchmark_profile.log" >&2
    exit 1
  fi
fi
exit "$build_rc"
