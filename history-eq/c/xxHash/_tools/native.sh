#!/bin/bash
# usage: native.sh <commit> <unit>   -- recompiles <unit>/wrapper.c natively (host x86-64) with the unit's EXTRA
# flags (minus cross-target bits) against old/ and new/, runs both, and reports whether outputs differ.
B=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash; C=$1; U=$2; D=$B/$C/$U
CL=/srv/home/hantaolou/code/veriop/alive2/toolchain/usr/lib/llvm-20/bin/clang
export LD_LIBRARY_PATH=/srv/home/hantaolou/code/veriop/alive2/toolchain/usr/lib/x86_64-linux-gnu
EX=$(sed -n 's/.*EXTRA=\(.*\) ARGS=.*/\1/p' $D/cmd.txt | sed 's/-nostdlibinc//; s/-isystem [^ ]*//')
for s in old new; do
  $CL -O1 -w -march=native -DNDEBUG -Drestrict= $EX -I $B/$C/$s $D/wrapper.c $B/_tools/native_main.c -o $D/native_$s 2> $D/native_$s.err || { echo "compile-fail $s"; cat $D/native_$s.err | head -3; }
  $D/native_$s > $D/native_$s.out 2>&1
done
if cmp -s $D/native_old.out $D/native_new.out; then echo "$C/$U native: SAME outputs ($(wc -l < $D/native_old.out) values)"; else echo "$C/$U native: DIFFERENT outputs"; paste $D/native_old.out $D/native_new.out | head -3; fi
