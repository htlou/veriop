#!/usr/bin/env bash
# usage: unit.sh <short> <tag> "<charon-args>" "<cargo-args>" [old-charon-args-override]
# extract both sides, typecheck, merge (if both typecheck) and build lean/build/C<s>/<Tag>Both.olean
s=$1; tag=$2; cargs=$3; kargs=$4; ocargs=${5:-$3}; Tag=${tag^}
D=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/scripts
$D/run_line.sh "$s|$tag|$ocargs|$kargs||old" &
$D/run_line.sh "$s|$tag|$cargs|$kargs||new" &
wait
ok=1
for side in old new; do
  if grep -q 'aeneas exit 0' $D/../work/$s/$tag-$side-aeneas.log 2>/dev/null; then
    $D/tc.sh $s $tag $side | grep -q 'lean exit 0' || ok=0
    tail -1 $D/../work/$s/$tag-$side-lean.log | sed "s/^/  lean $side: /"
    grep -m3 'error' $D/../work/$s/$tag-$side-lean.log | cut -c1-200
  else ok=0; fi
done
if [ $ok = 1 ]; then
  $D/merge.py $s $tag && (cd $D/../lean && $D/lchk.sh C$s/${Tag}Both.lean C$s/${Tag}Both > $D/../work/$s/$tag-both-lean.log 2>&1; echo "both exit $?" >> $D/../work/$s/$tag-both-lean.log; tail -3 $D/../work/$s/$tag-both-lean.log)
  echo "leandiff lines: $($D/leandiff.sh $s $tag | grep -c '^[<>]')"
fi
