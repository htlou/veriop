#!/usr/bin/env bash
# usage: tc.sh <short> <tag> <side> -- typecheck generated lean, log to work/<short>/<tag>-<side>-lean.log
s=$1; tag=$2; side=$3; Tag=${tag^}; Side=${side^}
L=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/lean
W=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/work/$s
f=C$s/$Tag$Side/$Tag$Side.lean
cd $L && timeout 1800 lake env lean $f > $W/$tag-$side-lean.log 2>&1
echo "lean exit $?" >> $W/$tag-$side-lean.log
ax=$(grep -c '^axiom' $L/$f)
echo "$s $tag $side | $(tail -1 $W/$tag-$side-lean.log) | axioms=$ax | $(grep -m1 'error' $W/$tag-$side-lean.log | cut -c1-200)"
