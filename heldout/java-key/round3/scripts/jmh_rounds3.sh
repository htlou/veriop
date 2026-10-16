#!/bin/bash
# Alternating rounds base / cand3 / A-A (second base run). usage: OUT NROUNDS REGEX [jmh args]
OUT=$1; N=$2; REGEX=$3; shift 3
J=/srv/home/hantaolou/code/veriop/benchmarks/tools/java17/jdk-17.0.20.1+1/bin/java
WT=/srv/home/hantaolou/code/veriop/heldout/java-key/wt
mkdir -p $OUT
ORDERS=("base cand aa" "cand aa base" "aa base cand" "cand base aa" "base aa cand" "aa cand base")
for ((r=1; r<=N; r++)); do
  for v in ${ORDERS[$(( (r-1) % 6 ))]}; do
    jar=$WT/base/jmh/build/libs/benchmarks.jar; [ $v = cand ] && jar=$WT/cand3/jmh/build/libs/benchmarks.jar
    { echo "round $r variant $v start $(date -Is)"; uptime; sha256sum $jar; } >> $OUT/meta.log
    timeout 7200 taskset -c 168,169 $J -jar $jar "$REGEX" -f 3 "$@" -rf json -rff $OUT/r${r}-$v.json > $OUT/r${r}-$v.txt 2>&1
    { echo "round $r variant $v end $(date -Is) exit $?"; uptime; } >> $OUT/meta.log
  done
done
echo DONE >> $OUT/meta.log
