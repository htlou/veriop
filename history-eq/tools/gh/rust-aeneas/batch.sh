#!/usr/bin/env bash
# batch.sh REPO commits-file [parallel]
H=/srv/home/hantaolou/code/veriop/history-eq
repo=$1; list=$2; par=${3:-8}
cat $list | cut -c1-8 | xargs -P $par -I{} bash -c "timeout 3000 python3 $H/tools/gh/rust-aeneas/pipeline.py $repo {} > $H/gh/rust-aeneas/logs/$repo-{}.log 2>&1; echo done {} >> $H/gh/rust-aeneas/logs/$repo-batch.done"
