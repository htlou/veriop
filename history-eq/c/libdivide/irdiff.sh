#!/bin/bash
# usage: irdiff.sh <short> <wrapper> <clang flags...>   -> compiles both sides into /tmp-ish scratch and reports diff size
D=/srv/home/hantaolou/code/veriop/history-eq/c/libdivide
export PATH=/srv/home/hantaolou/code/veriop/alive2/toolchain/usr/lib/llvm-20/bin:$PATH
s=$1; w=$2; shift 2
T=$(mktemp -d)
for side in old new; do clang "$@" -w -I$D/$s/$side -S -emit-llvm $D/$s/$w -o $T/$side.ll 2> $T/$side.err || { echo "$side COMPILE ERROR: $(grep -m1 error $T/$side.err)"; }; done
[ -f $T/old.ll ] && [ -f $T/new.ll ] && echo "difflines=$(diff $T/old.ll $T/new.ll | wc -l) defs_old=$(grep -c '^define' $T/old.ll) defs_new=$(grep -c '^define' $T/new.ll) asm=$(grep -c 'call.*asm' $T/new.ll)"
rm -rf $T
