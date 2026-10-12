#!/usr/bin/env bash
# usage: run_plan.sh plan.txt [P]
P=${2:-24}
grep -v '^#' "$1" | grep . | xargs -d '\n' -P $P -I{} $(dirname "$0")/run_line.sh {}
