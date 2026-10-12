#!/bin/bash
# usage: setup.sh <sha>  -> creates c/libdivide/<short>/{old,new}/libdivide.h (+ side.h marker)
set -e
R=/srv/home/hantaolou/code/veriop/history-eq/repos/libdivide
D=/srv/home/hantaolou/code/veriop/history-eq/c/libdivide
s=$(git -C $R rev-parse --short=7 $1)
mkdir -p $D/$s/old $D/$s/new
git -C $R show $s^:libdivide.h > $D/$s/old/libdivide.h
git -C $R show $s:libdivide.h > $D/$s/new/libdivide.h
echo '#define LIBDIVIDE_SIDE_OLD 1' > $D/$s/old/side.h
echo '#define LIBDIVIDE_SIDE_NEW 1' > $D/$s/new/side.h
echo $D/$s
