#!/usr/bin/env bash
# usage: mat.sh REPO COMMIT  -> materialize + prune non-source files
set -u
R=$1; C=$2; ROOT=/srv/home/hantaolou/code/veriop
D=$ROOT/history-eq/gh/work/$R/${C:0:8}
[ -f $D/.pruned ] && exit 0
python3 $ROOT/history-eq/tools/gh/materialize.py $R $C $D >/dev/null 2>$D.err || { mkdir -p $D; cp $D.err $D/materialize.err; }
rm -f $D.err
for s in old new; do
  [ -d $D/$s ] && find $D/$s -type f ! -name '*.go' ! -name '*.s' ! -name 'go.mod' ! -name 'go.sum' ! -name '*.h' -delete
  [ -d $D/$s ] && find $D/$s -depth -type d -empty -delete
done
touch $D/.pruned
