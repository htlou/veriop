#!/bin/bash
# Address-trace constant-time experiment (valgrind lackey), as run for ct_trace_results.txt.
# Builds ct_driver against each tree's library, traces bignum_normalize only, and hashes the
# filtered instruction+data address trace for several input patterns per size k.
set -e
here=$(cd "$(dirname "$0")" && pwd); W=$here/../../../history-eq/wt; T=${TMPDIR:-/tmp}
for v in base new; do
  cc -O1 -static -o $T/ct_$v $here/ct_driver.c $W/s2n-asmhol-$v/x86/libs2nbignum.a
  lo=$(nm $T/ct_$v | awk '$3=="bignum_normalize"{print $1}')
  sz=$(nm -S $T/ct_$v | awk '$4=="bignum_normalize"{print $2}')
  hi=$(printf "%x" $((0x$lo + 0x$sz)))
  for k in 1 2 3 5 8 13 32; do
    sums=""
    for pat in 0 1 2 3 4 5; do
      h=$(taskset -c 117 valgrind --tool=lackey --trace-mem=yes $T/ct_$v $k $pat 2>&1 >/dev/null \
          | grep -E '^(I| [LSM]) ' | python3 $here/ct_filter.py $lo $hi | sha256sum | cut -c1-12)
      sums="$sums $h"
    done
    echo "$v k=$k:$sums"
  done
done
