#!/usr/bin/env bash
# usage: plugin_dir.sh SHA  -> prints path of extracted blockchain-k-plugin tree at SHA
set -e
ROOT=/srv/home/hantaolou/code/veriop
SRC=$ROOT/benchmarks/tools/plugin-src
D=$ROOT/benchmarks/tools/plugin-cache/$1
if [ ! -f $D/.done ]; then
  mkdir -p $D
  git -C $SRC cat-file -e $1 2>/dev/null || git -C $SRC fetch -q origin $1 >&2
  git -C $SRC archive --format=tar $1 | tar -x -C $D
  touch $D/.done
fi
echo $D
