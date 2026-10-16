#!/bin/bash
# Full check: whole RankBenchmark, whole ContainsRange, and a control sample; 2 rotated rounds base/cand/A-A.
D=/srv/home/hantaolou/code/veriop/heldout/java-key
REGEX='^org\.roaringbitmap\.(RankBenchmark\..*|range\.ContainsRange\..*|realdata\.RealDataBenchmark(And|Or|Xor|Iterate|Contains)\..*|serialization\.SerializationBenchmark\..*|contains\.ContainsBenchmark\..*)$'
mkdir -p $D/jmh/full-check; echo "$REGEX" > $D/jmh/full-check/regex.txt
exec $D/scripts/jmh_rounds_short.sh $D/jmh/full-check 2 "$REGEX" -p dataset=census1881,weather_sept_85 -p type=roaring -p immutable=false
