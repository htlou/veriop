#!/usr/bin/env bash
# Full official Criterion suite (benches/benchmarks.rs, no filter; all 88 cases that build with
# --no-default-features --features std), baseline vs candidate, CPU 184 only.
# Order: A/A pair (baseline twice), then rounds r1: B C, r2: C B, ... Upstream Criterion settings
# (each group sets 0.5 s warm-up / 3 s measurement / 100 samples), identical for both binaries.
# Usage: full-bench.sh <outdir-name> <baseline-repo> <candidate-repo> <rounds>
set -euo pipefail
H="$(cd "$(dirname "$0")/.." && pwd)"
name=$1; base=$2; cand=$3; rounds=${4:-2}
out="$H/results/$name"; mkdir -p "$out"
exe() { find "$H/repos/$1/target/release/deps" -maxdepth 1 -type f -name 'benchmarks-*' -executable; }
B=$(exe "$base"); C=$(exe "$cand")
{ echo "baseline $base $B $(sha256sum "$B" | cut -d' ' -f1)"; echo "candidate $cand $C $(sha256sum "$C" | cut -d' ' -f1)";
  echo "filter: none (full suite); cpu 184; numactl: $(command -v numactl || echo unavailable)";
  echo "governor: $(cat /sys/devices/system/cpu/cpu184/cpufreq/scaling_governor 2>/dev/null || echo unknown)"; } > "$out/setup.txt"
run() {
  local tag=$1 label=$2 bin=$3
  echo "$(date -Is) $tag $label start uptime: $(uptime)" >> "$out/load.log"
  CRITERION_HOME="$out/criterion/$tag/$label" taskset -c 184 "$bin" --bench --noplot > "$out/logs-$tag-$label.txt" 2>&1
  echo "$(date -Is) $tag $label end   uptime: $(uptime)" >> "$out/load.log"
}
run aa1 A1 "$B"; run aa1 A2 "$B"
for r in $(seq 1 "$rounds"); do
  if [ $((r % 2)) = 1 ]; then run "r$r" baseline "$B"; run "r$r" candidate "$C";
  else run "r$r" candidate "$C"; run "r$r" baseline "$B"; fi
done
echo done > "$out/DONE"
