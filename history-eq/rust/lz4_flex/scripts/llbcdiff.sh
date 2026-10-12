#!/usr/bin/env bash
# usage: llbcdiff.sh <short> <tag> -- pretty-print both LLBC files (aeneas -print-llbc) and diff them.
# Normalised diff ignores source-span lines and #[inline...]/#[cold]/#[optimize] attribute lines.
s=$1; tag=$2; Tag=${tag^}
W=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/work/$s
A=/srv/home/hantaolou/code/veriop/aeneas/repos/aeneas/src/_build/default/main.exe
for side in Old New; do
  $A -print-llbc -borrow-check -no-progress-bar $W/$Tag$side.llbc 2>&1 | sed 's/\x1b\[[0-9;]*m//g' | grep -v '^\[\(Info\|Warn\|Error\)' > $W/$Tag$side.llbc.txt
  grep -v -E "^\s*(Source: |Definition span: |#\[inline|#\[cold\]|#\[optimize|//)" $W/$Tag$side.llbc.txt | sed "s/[ \t]*$//" > $W/$Tag$side.llbc.norm.txt
done
diff $W/${Tag}Old.llbc.txt $W/${Tag}New.llbc.txt > $W/$tag.llbc.diff
diff $W/${Tag}Old.llbc.norm.txt $W/${Tag}New.llbc.norm.txt > $W/$tag.llbc.norm.diff
echo "$s $tag llbc raw-diff: $(grep -c '^[<>]' $W/$tag.llbc.diff) norm-diff: $(grep -c '^[<>]' $W/$tag.llbc.norm.diff) (old $(wc -l < $W/${Tag}Old.llbc.txt) lines, new $(wc -l < $W/${Tag}New.llbc.txt) lines)"
