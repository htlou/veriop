#!/usr/bin/env bash
# usage: rflproof.sh <short> <tag> <lean-fn-name>...   -- writes lean/C<s>/Proof<Tag>Rfl.lean proving Old.f = New.f by with_unfolding_all rfl
s=$1; tag=$2; shift 2; Tag=${tag^}
L=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/lean
f=$L/C$s/Proof${Tag}Rfl.lean
{ echo "import C$s.${Tag}Both"; echo "open Aeneas Aeneas.Std Result"; echo "set_option maxHeartbeats 0"; echo "set_option maxRecDepth 100000"; echo
  i=0; for fn in "$@"; do i=$((i+1)); echo "/-- identical generated models (attribute/comment-only source change) -/"
  echo "theorem L${s}_${tag}_equiv_$i : L$s${Tag}Old.$fn = L$s${Tag}New.$fn := by"; echo "  with_unfolding_all rfl"; echo "#print axioms L${s}_${tag}_equiv_$i"; echo; done; } > $f
cd $L && ../scripts/lchk.sh C$s/Proof${Tag}Rfl.lean > ../work/$s/proof-${tag}-rfl.log 2>&1; echo "exit $?" >> ../work/$s/proof-${tag}-rfl.log
echo "$s $tag: $(tail -1 ../work/$s/proof-${tag}-rfl.log) $(grep -c error ../work/$s/proof-${tag}-rfl.log) errors"
