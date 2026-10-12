#!/bin/bash
# XXH32/XXH64-era jobs
T=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_tools
L32="0 1 2 3 4 5 7 8 11 15 16 17 19 31 32 33 47 48 63 64"
L64="0 1 3 4 5 7 8 9 12 15 16 17 24 31 32 33 40 63 64 65"
AF="--alive-func target_xxh32 --alive-func target_xxh32_stream --alive-func target_xxh32_symlen --alive-func target_oneshot --alive-func target_stream --alive-func target_symlen"
j(){ g=""; case $1 in 70e65c9|56314ee|681ea2a|5176062|87ef054) g="-fgnuc-version=4.3.0";; esac; echo "EXTRA=\"$g $3\" $T/xx.sh $1 $2 $4 --unroll 8 --smt-to 600000 --timeout 3600 $AF ${@:5}"; }
# 70e65c9: 2013 API, XXH32 simple(streaming) -> fast
for n in $L32; do j 70e65c9 api_len$n "-DLEN=$n" $T/wrapA13.c; j 70e65c9 pre_nonnull_len$n "-DLEN=$n -DNONNULL" $T/wrapA13.c; done
# 56314ee: streaming update rewrite (2013 API)
for n in $L32; do j 56314ee api_stream_len$n "-DSTREAM -DLEN=$n" $T/wrapA13.c; j 56314ee pre_nonnull_stream_len$n "-DSTREAM -DNONNULL -DLEN=$n" $T/wrapA13.c; j 56314ee api_xxh32_len$n "-DLEN=$n" $T/wrapA13.c; done
for sp in "3 20" "8 24" "15 16" "15 40" "1 33" "10 64"; do set -- $sp; j 56314ee pre_nonnull_split$1_len$2 "-DSTREAM -DNONNULL -DSPLIT=$1 -DLEN=$2" $T/wrapA13.c; done
# 5176062: XXH32/XXH64 simple (reset/update/digest) -> direct
for n in $L32; do j 5176062 api_xxh32_len$n "-DLEN=$n" $T/wrapA.c; done
for n in $L64; do j 5176062 api_xxh64_len$n "-DLEN=$n -DH64" $T/wrapA.c; done
# 3bb5bb6: XXH32 finalize switch
for n in $(seq 0 20) 31 32 35 47 48 63; do j 3bb5bb6 api_xxh32_len$n "-DLEN=$n" $T/wrapA.c; j 3bb5bb6 api_stream32_len$n "-DSTREAM -DLEN=$n" $T/wrapA.c; done
# 0e5dab9: XXH64 finalize switch
for n in $(seq 0 35) 40 47 63 64 65; do j 0e5dab9 api_xxh64_len$n "-DLEN=$n -DH64" $T/wrapA.c; j 0e5dab9 api_stream64_len$n "-DSTREAM -DH64 -DLEN=$n" $T/wrapA.c; done
