#!/bin/bash
# Like jmh_rounds_short.sh, but "cand" = base benchmarks.jar with an override class dir prepended
# (exploration only; the override dir holds the variant BitmapContainer classes).
OUT=$1; N=$2; OVR=$3; REGEX=$4; shift 4
J=/srv/home/hantaolou/code/veriop/benchmarks/tools/java17/jdk-17.0.20.1+1/bin/java
JAR=/srv/home/hantaolou/code/veriop/heldout/java-key/wt/base/jmh/build/libs/benchmarks.jar
mkdir -p $OUT
ORDERS=("base cand aa" "cand aa base" "aa base cand" "cand base aa")
for ((r=1; r<=N; r++)); do
  for v in ${ORDERS[$(( (r-1) % 4 ))]}; do
    cp=$JAR; [ $v = cand ] && cp=$OVR:$JAR
    { echo "round $r variant $v start $(date -Is)"; uptime; echo "cp=$cp"; } >> $OUT/meta.log
    timeout 1200 taskset -c 168,169 $J -cp $cp org.openjdk.jmh.Main "$REGEX" -f 3 -wi 3 -w 1s -i 3 -r 1s "$@" \
      -rf json -rff $OUT/r${r}-$v.json > $OUT/r${r}-$v.txt 2>&1
    { echo "round $r variant $v end $(date -Is) exit $?"; uptime; } >> $OUT/meta.log
  done
done
echo DONE >> $OUT/meta.log
