#!/bin/bash
# Re-check of configs flagged in jmh/full-check (both rounds below the A/A band): 6 rotated rounds.
D=/srv/home/hantaolou/code/veriop/heldout/java-key
exec $D/scripts/jmh_rounds_short.sh $D/jmh/full-check-recheck 6 '^org\.roaringbitmap\.RankBenchmark\.createFastRankBitmap$' -p distribution=DENSE,SPARSE -p size=1000,100000
