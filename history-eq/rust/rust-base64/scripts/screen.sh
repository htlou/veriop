#!/usr/bin/env bash
# usage: screen.sh <file with lines c|tag|charon args|cargo args> ; runs both sides in parallel
cd /srv/home/hantaolou/code/veriop/history-eq/rust/rust-base64
while IFS='|' read -r c t a k; do
  [ -z "$c" ] && continue
  for side in old new; do scripts/extract.sh "$c" "$t" "$side" "$a" "$k" & done
done < "$1"
wait
