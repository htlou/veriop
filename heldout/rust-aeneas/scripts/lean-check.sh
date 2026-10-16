#!/usr/bin/env bash
# Check one Lean file in the proof project on non-benchmark cores.
cd "$(dirname "$0")/../proof" && taskset -c 64-79 lake env lean "$@" 2>&1 | grep -v "linter\|^Note:\|declaration uses 'sorry'\|^$\|naming conventions\|dupNamespace" | head -${LINES_MAX:-80}
