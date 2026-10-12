#!/usr/bin/env bash
# usage: run_line.sh "short|tag|charon-args|cargo-args[|aeneas-args[|sides]]"
IFS='|' read -r s tag cargs kargs aargs sides <<< "$1"
aargs=${aargs:-"-loops-to-rec"}
sides=${sides:-"old new"}
D=$(dirname "$0")
for side in $sides; do
  "$D/extract.sh" "$s" "$tag" "$side" "$cargs" "$kargs" "$aargs" > /dev/null 2>&1
done
W=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/work/$s
Tag=${tag^}
for side in $sides; do
  c=$(grep -o 'charon exit [0-9]*' $W/$tag-$side-charon.log 2>/dev/null)
  a=$(grep -o 'aeneas exit [0-9]*' $W/$tag-$side-aeneas.log 2>/dev/null)
  ce=$(grep -m1 -E '^error' $W/$tag-$side-charon.log 2>/dev/null | cut -c1-150)
  ae=$(grep -m1 -E 'Error' $W/$tag-$side-aeneas.log 2>/dev/null | sed 's/\x1b\[[0-9;]*m//g' | cut -c1-150)
  echo "$s $tag $side | $c | $a | $ce | $ae"
done
