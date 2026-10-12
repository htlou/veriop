#!/bin/bash
# usage: [EXTRA="-D..."] xx.sh <commit> <unit> <wrapper.c> [alive_check args...]
# Always adds BASE flags (identical on both sides):
#   -Drestrict= -D__restrict=   : this Alive2 pin rejects `noalias` params / !alias.scope metadata
#   -mllvm -inline-threshold=100000 : make sure the library code is fully inlined into target_*
B=/srv/home/hantaolou/code/veriop/history-eq
C=$1; U=$2; WR=$3; shift 3
D=$B/c/xxHash/$C
BASE="-DNDEBUG -Drestrict= -D__restrict= -mllvm -inline-threshold=100000"
# NOINL=1: keep clang's normal -O3 inlining decisions (used for inlining-hint commits)
[ "$NOINL" = 1 ] && BASE="-DNDEBUG -Drestrict= -D__restrict="
mkdir -p $D/$U
cp $D/$WR $D/$U/wrapper.c 2>/dev/null || cp $WR $D/$U/wrapper.c
echo "NOINL=$NOINL EXTRA=$EXTRA ARGS=$*" > $D/$U/cmd.txt
python3 $B/c/xxHash/_tools/alive_check_f.py --out $D/$U --old-inc $D/old --new-inc $D/new --wrapper $D/$U/wrapper.c --extra-cflags="$BASE $EXTRA" "$@" > $D/$U/summary.txt 2>&1 || true
python3 $B/c/xxHash/_tools/calls.py $D/$U/old.ll $D/$U/new.ll > $D/$U/calls.txt 2>&1 || true
python3 $B/c/xxHash/_tools/loops.py $D/$U/old.ll $D/$U/new.ll >> $D/$U/calls.txt 2>&1 || true
if cmp -s $D/$U/old.ll $D/$U/new.ll; then echo IDENTICAL_IR > $D/$U/ir_diff.txt; else echo IR_DIFFERS > $D/$U/ir_diff.txt; fi
echo "== $C/$U $(cat $D/$U/ir_diff.txt) | $(python3 -c "
import json,sys
try:
  j=json.load(open('$D/$U/result.json')); print(j['verdict'], 'bounded=%s'%j.get('bounded'), j.get('reason',''), {k:(v['fwd'][:50],v['bwd'][:50]) for k,v in j.get('functions',{}).items()})
except Exception as e: print('ERR',e)") | $(tr '\n' ' ' < $D/$U/calls.txt | sed 's|/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/||g')"
