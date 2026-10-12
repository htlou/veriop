#!/bin/bash
# usage: extract.sh <sha>  -> c/xxHash/<short7>/{old,new}/ with all library files at <sha>^ and <sha>
set -e
R=/srv/home/hantaolou/code/veriop/history-eq/repos/xxHash
B=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash
s=$(git -C $R rev-parse --short=7 $1)
for side in old new; do
  rev=$1; [ $side = old ] && rev=$1^
  d=$B/$s/$side; mkdir -p $d
  for f in xxhash.h xxhash.c xxh3.h xxh_x86dispatch.c xxh_x86dispatch.h; do
    git -C $R show $rev:$f > $d/$f 2>/dev/null || rm -f $d/$f
  done
done
echo $B/$s
