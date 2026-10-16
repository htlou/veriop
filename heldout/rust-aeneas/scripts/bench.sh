#!/usr/bin/env bash
# Official rust-base64 Criterion workloads (benches/benchmarks.rs, unchanged), decode_slice subset
# (same 8 sizes as the pilot's aeneas/bench.sh used for encode_slice), pinned to CPU 184.
# Usage: bench.sh <outdir-name> <baseline-repo> <candidate-repo> <aa-rounds> <abba-rounds>
set -euo pipefail
H="$(cd "$(dirname "$0")/.." && pwd)"
name=$1; base=$2; cand=$3; aa=${4:-2}; rounds=${5:-4}
filter='decode_(small|large)_input/decode_slice/(3|50|100|500|3072|3145728|10485760|31457280)$'
out="$H/results/$name"; mkdir -p "$out"
exe() { find "$H/repos/$1/target/release/deps" -maxdepth 1 -type f -name 'benchmarks-*' -executable; }
B=$(exe "$base"); C=$(exe "$cand")
[ "$(echo "$B" | wc -l)" = 1 ] && [ "$(echo "$C" | wc -l)" = 1 ]
{ echo "baseline $base $B $(sha256sum "$B" | cut -d' ' -f1)"; echo "candidate $cand $C $(sha256sum "$C" | cut -d' ' -f1)";
  echo "cpu 184 (SMT sibling $(cat /sys/devices/system/cpu/cpu184/topology/thread_siblings_list))"; echo "numactl: $(command -v numactl || echo unavailable)";
  echo "governor: $(cat /sys/devices/system/cpu/cpu184/cpufreq/scaling_governor 2>/dev/null || echo unknown)"; } > "$out/setup.txt"
run() { # tag variant-label binary
  local tag=$1 label=$2 bin=$3
  echo "$(date -Is) $tag $label start load: $(uptime | sed 's/.*load average: //')" >> "$out/load.log"
  CRITERION_HOME="$out/criterion/$tag/$label" taskset -c 184 "$bin" "$filter" --bench --noplot > "$out/logs-$tag-$label.txt" 2>&1
  echo "$(date -Is) $tag $label end   load: $(uptime | sed 's/.*load average: //')" >> "$out/load.log"
}
for r in $(seq 1 "$aa"); do run "aa$r" A1 "$B"; run "aa$r" A2 "$B"; done
for r in $(seq 1 "$rounds"); do
  if [ $((r % 2)) = 1 ]; then run "r$r" baseline "$B"; run "r$r" candidate "$C";
  else run "r$r" candidate "$C"; run "r$r" baseline "$B"; fi
done
echo done > "$out/DONE"
