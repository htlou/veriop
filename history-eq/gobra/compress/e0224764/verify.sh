#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
cd "$root"
python3 -B "$case_dir/prepare_probe.py" > "$case_dir/source-recovery.log"
source "$root/benchmarks/env.sh"
(cd "$case_dir/probe" && GOWORK=off GOTOOLCHAIN=local GOCACHE=/tmp/veriop-go-cache \
  go test -count=1 -v .) > "$case_dir/go-test.log" 2>&1
java -XX:-UsePerfData -Xss128m -jar "$root/benchmarks/tools/gobra/target/scala-2.13/gobra.jar" \
  -i "$case_dir/slice_relation.gobra" > "$case_dir/gobra.log" 2>&1
rg -q 'PASS' "$case_dir/go-test.log"
rg -q 'Gobra found 0 errors' "$case_dir/gobra.log"
printf 'Historical source hashes, Go differential test, and Gobra slice relation checked.\n'
