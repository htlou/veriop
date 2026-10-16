#!/usr/bin/env bash
# splitter.sh <outfile> <family-suffix> <wall> : re-run every failed case of run_<x>.out as w0/w1 splits
HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"; cd "$HERE"; source ../../../alive2/env.sh
in=$1; sfx=$2; wall=$3; cpus=$4
args=""
for c in $(grep FAIL "$in" | awk '{print $1}'); do
  base=${c%$sfx}; u=$(grep -o "^$c u[0-9]*" "$in" | head -1 | awk '{print $2}' | tr -d u)
  for w in w0 w1; do n=${base}_${w}${sfx}; [ -f modules/${n}_src.ll ] || python3 gen.py $n > /dev/null; args="$args $n:$u"; done
done
echo "splits: $args"
[ -n "$args" ] && python3 runall.py --jobs 6 --cpus $cpus --global-cap 16 --wall $wall --to 3600000 $args
