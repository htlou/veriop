#!/usr/bin/env bash
# usage: axioms.sh <short> <tag> -- list axiom decls (non-core) in generated Old/New
s=$1; tag=$2; Tag=${tag^}
L=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/lean/C$s
for side in Old New; do
  f=$L/$Tag$side/$Tag$side.lean; [ -f $f ] || { echo "$side: (no file)"; continue; }
  echo "$side: $(grep -A1 '^axiom' $f | grep -o '^axiom [^ ]*\|^  [a-z][^ ]*' | sed 's/^axiom //' | grep -v '^  ' | tr '\n' ' ')"
done
