#!/bin/bash
# callcheck.sh <short> <wrapper> <flags...>: list non-intrinsic calls inside target_* functions (both sides)
D=/srv/home/hantaolou/code/veriop/history-eq/c/libdivide
export PATH=/srv/home/hantaolou/code/veriop/alive2/toolchain/usr/lib/llvm-20/bin:$PATH
s=$1; w=$2; shift 2
for side in old new; do
  clang "$@" -w -I$D/$s/$side -S -emit-llvm $D/$s/$w -o - 2>/dev/null | awk '/^define/{t=($0 ~ /@target_/)} t && /call / && !/@llvm\./ {print "'$side': " $0}' | cut -c1-150
done
