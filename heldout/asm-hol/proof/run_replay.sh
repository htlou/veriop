#!/bin/bash
# Replay one side's HOL Light proof in the interpreted toplevel (never on CPUs 160/352).
side=$1; cpus=$2
. /srv/home/hantaolou/code/veriop/heldout/asm-hol/env.sh
export HOLLIGHT_DIR=$HOLDIR HOLLIGHT_USE_MODULE=0
cd "$(dirname "$0")"
taskset -c $cpus $HOLDIR/ocaml-hol -I $HOLDIR -init $HOLDIR/hol.ml < replay-$side.ml > replay-$side.log 2>&1
echo "exit $?" >> replay-$side.log
