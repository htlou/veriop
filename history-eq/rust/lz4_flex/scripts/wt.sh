#!/usr/bin/env bash
# usage: wt.sh <short>  -- creates wt/lz4-<short>-{old,new} worktrees at <short>^ and <short>
set -euo pipefail
H=/srv/home/hantaolou/code/veriop/history-eq
s=$1
for side in old new; do
  d=$H/wt/lz4-$s-$side
  [ -d "$d" ] && continue
  if [ $side = old ]; then rev="$s^"; else rev="$s"; fi
  git -C $H/repos/lz4_flex worktree add --detach "$d" "$rev" >/dev/null 2>&1
done
echo ok
