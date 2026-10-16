#!/bin/bash
# Alternating-order official-benchmark rounds on CPU 160 (SMT sibling 352 left idle).
# usage: run_bench.sh <label> <binA> <binB> <rounds> <filter> <outdir>
set -u
label=$1; A=$2; B=$3; R=$4; F=$5; O=$6
mkdir -p "$O"
log="$O/$label.tsv"
echo -e "round\torder\tside\tns\tline" > "$log"
uptime > "$O/$label.uptime_before"
for r in $(seq 1 "$R"); do
  if [ $((r % 2)) -eq 1 ]; then order="AB"; else order="BA"; fi
  for side in $(echo $order | fold -w1); do
    if [ $side = A ]; then bin=$A; else bin=$B; fi
    out=$(taskset -c 160 "$bin" "$F" 2>&1 | /bin/grep "ns each")
    while IFS= read -r line; do
      ns=$(echo "$line" | sed -E 's/.*: +([0-9.]+) ns each.*/\1/')
      echo -e "$r\t$order\t$side\t$ns\t$line" >> "$log"
    done <<< "$out"
  done
done
uptime > "$O/$label.uptime_after"
