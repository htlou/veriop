#!/usr/bin/env bash
# symcrust.sh <c8> <side old|new> <tag> <start-from pattern>
H=/srv/home/hantaolou/code/veriop/history-eq
B=/srv/home/hantaolou/code/veriop/benchmarks
c=$1; side=$2; tag=$3; unit=$4
W=$H/gh/work/SymCrypt/$c
export RUSTUP_HOME=/srv/home/hantaolou/code/veriop/aeneas/env/rustup CARGO_HOME=$H/gh/rust-aeneas/cargo-home RUSTUP_TOOLCHAIN=nightly-2026-06-01
export PATH=/srv/home/hantaolou/code/veriop/aeneas/env/cargo/bin:$PATH CARGO_BUILD_JOBS=2
export CARGO_TARGET_DIR=$H/gh/rust-aeneas/targets/sc-$c-$side
cd $W/$side/SymCRust
$B/tools/symcrust-aeneas/charon/bin/charon cargo --preset=aeneas --start-from "$unit" --dest-file $W/$tag-$side.llbc -- --lib > $W/$tag-$side-charon.log 2>&1
echo "charon_exit=$?" >> $W/$tag-$side-charon.log
if [ -f $W/$tag-$side.llbc ]; then
  rm -rf $W/$tag-$side-lean
  $B/tools/symcrust-aeneas/bin/aeneas -backend lean -loops-to-rec -sequential -no-progress-bar -dest $W/$tag-$side-lean $W/$tag-$side.llbc > $W/$tag-$side-aeneas.log 2>&1
  echo "aeneas_exit=$?" >> $W/$tag-$side-aeneas.log
fi
rm -rf $CARGO_TARGET_DIR
