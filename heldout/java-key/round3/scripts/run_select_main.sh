#!/bin/bash
# Official bitmapcontainer.SelectBenchmark with the benchmark's own warmup/measurement annotations
# (10 x 1 s warmup, 20 x 1 s measurement), 3 forks, 4 rotated rounds base/cand3/A-A.
D=/srv/home/hantaolou/code/veriop/heldout/java-key/round3
exec $D/scripts/jmh_rounds3.sh $D/jmh/select-main 4 '^org\.roaringbitmap\.bitmapcontainer\.SelectBenchmark\.bitmapContainer_selectBothSides$'
