#!/usr/bin/env bash
# usage: extract.sh <short> <tag> <side:old|new> "<charon args>" "<cargo args>" ["<aeneas args>"]
# Produces work/<short>/<tag>-<side>.llbc + logs, lean/C<short>/<Tag><Side>/... (generated Lean)
set -uo pipefail
H=/srv/home/hantaolou/code/veriop/history-eq
R=$H/rust/lz4_flex
source /srv/home/hantaolou/code/veriop/aeneas/env.sh
AENEAS=${AENEAS:-/srv/home/hantaolou/code/veriop/aeneas/repos/aeneas/src/_build/default/main.exe}
s=$1; tag=$2; side=$3; cargs=$4; kargs=$5; aargs=${6:-"-loops-to-rec"}
export RUSTFLAGS="--cap-lints=warn"
export CARGO_HOME=$R/cargo-home
export CARGO_TARGET_DIR=$H/wt/.target-lz4-$s-$side
W=$R/work/$s; mkdir -p $W
Side=${side^}; Tag=${tag^}
ns="L${s}${Tag}${Side}"
dest=$R/lean/C$s/${Tag}${Side}
rm -rf $dest; mkdir -p $dest
llbc=$W/${Tag}${Side}.llbc
rm -f $llbc
( cd $H/wt/lz4-$s-$side && echo "+ charon cargo --preset=aeneas --dest-file $llbc $cargs -- --lib $kargs" && eval charon cargo --preset=aeneas --dest-file $llbc $cargs -- --lib $kargs ) > $W/$tag-$side-charon.log 2>&1
echo "charon exit $?" | tee -a $W/$tag-$side-charon.log
[ -f $llbc ] || { echo "NO LLBC"; grep -m5 -E '^error' $W/$tag-$side-charon.log; exit 1; }
echo "+ $AENEAS -backend lean $aargs -no-progress-bar -namespace $ns -dest $dest $llbc" > $W/$tag-$side-aeneas.log
eval $AENEAS -backend lean $aargs -no-progress-bar -namespace $ns -dest $dest $llbc >> $W/$tag-$side-aeneas.log 2>&1
echo "aeneas exit $?" | tee -a $W/$tag-$side-aeneas.log
grep -n -i -E 'error|partial|warning' $W/$tag-$side-aeneas.log | head -10
ls $dest
