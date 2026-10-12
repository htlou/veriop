#!/bin/bash
# report for each unit dir: identical IR?, non-target internal function defs, inline asm
D=/srv/home/hantaolou/code/veriop/history-eq/c/libdivide
for d in "$@"; do
  [ -f $D/$d/old.ll ] || { echo "$d: no ll"; continue; }
  same=$(cmp -s $D/$d/old.ll $D/$d/new.ll && echo SAME || echo DIFF)
  ho=$(grep '^define' $D/$d/old.ll | grep -v '@target_' | sed 's/.*@\([A-Za-z0-9_.]*\)(.*/\1/' | tr '\n' ',')
  hn=$(grep '^define' $D/$d/new.ll | grep -v '@target_' | sed 's/.*@\([A-Za-z0-9_.]*\)(.*/\1/' | tr '\n' ',')
  echo "$d: $same helpers_old=[$ho] helpers_new=[$hn] asm=$(grep -c 'asm ' $D/$d/new.ll)/$(grep -c 'asm ' $D/$d/old.ll)"
done
