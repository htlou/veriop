#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
case "${1:-except-types}" in
  except-types) mode=except-types; model=SinkReborrow; log=sink-reborrow ;;
  all) mode=all; model=SinkReborrowAll; log=sink-reborrow-all ;;
  *) echo 'Usage: reproduce-sink-reborrow.sh [except-types|all]' >&2; exit 2 ;;
esac
(cd tool-tests/sink-reborrow && charon cargo --preset=aeneas \
  "--monomorphize-mut=$mode" --remove-adt-clauses '--remove-associated-types=*' \
  --start-from sink_reborrow::through_generic --start-from sink_reborrow::through_trait \
  --start-from sink_reborrow::directly --dest-file "$AENEAS_WORK/results/$model.llbc" \
  -- --lib) > "logs/$log-charon.log" 2>&1
taskset -c 64-79 repos/aeneas/src/_build/default/main.exe \
  -backend lean -loops-no-rec -no-progress-bar -namespace "$model" \
  -dest "results/$model" "results/$model.llbc" > "logs/$log-aeneas.log" 2>&1
