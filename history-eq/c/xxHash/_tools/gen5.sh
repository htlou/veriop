#!/bin/bash
T=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_tools
XCF='-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w'
SYS="-nostdlibinc -isystem $T/sysinc"
NA="-mllvm -enable-noalias-to-md-conversion=false"
AF="--alive-func target_xxh3_64 --alive-func target_xxh128 --alive-func target_oneshot --alive-func target_stream --alive-func target_symlen --alive-func target_accum --alive-func target_fold64 --alive-func target_acc512 --alive-func target_scramble --alive-func target_xxh32 --alive-func target_xxh32_stream"
RUN="--smt-to 600000 --timeout 3600"
j(){ local r=""; [ $# -gt 4 ] && r=$(printf "%q " "${@:5}"); echo "EXTRA=$(printf %q "$4") $T/xx.sh $1 $2 $T/$3 $RUN $AF $r"; }
G="-fgnuc-version=4.3.0"
# 288f7dc: rerolled XXH64_finalize uses `len > 4` (bug, fixed in ff9d808): len % 8 == 4
for n in 4 12 20 28; do
  j 288f7dc api_xxh64_len${n}_i386 wrapA.c "$SYS -DLEN=$n -DH64" --target i386-linux-gnu --cflags "$XCF -march=pentium4" --unroll 8
  j 288f7dc api_xxh64_len${n}_reroll1 wrapA.c "-DLEN=$n -DH64 -DXXH_REROLL=1" --unroll 8
  j 288f7dc api_xxh64_len${n}_reroll0 wrapA.c "-DLEN=$n -DH64 -DXXH_REROLL=0" --unroll 8; done
j 288f7dc api_stream64_len12_i386 wrapA.c "$SYS -DSTREAM -DLEN=12 -DH64" --target i386-linux-gnu --cflags "$XCF -march=pentium4" --unroll 8
j 288f7dc api64_len128_reroll1_u8 wrapB.c "-DLEN=128 -DXXH_REROLL=1" --unroll 8
j 288f7dc api128_len128_reroll1_u8 wrapB.c "-DLEN=128 -DH128 -DXXH_REROLL=1" --unroll 8
# 0117f18: 128-bit result via sret on windows-msvc
for L in 256 300; do j 0117f18 api128_len${L}_msvc_x64_na wrapB.c "$SYS $NA -U__SSE2__ -DLEN=$L -DH128" --target x86_64-pc-windows-msvc --cflags "$XCF"; done
# reruns of units possibly clobbered by an early, killed test run
j 5176062 api_xxh32_len17 wrapA.c "$G -DLEN=17" --unroll 8
j 3bb5bb6 api_stream32_len7 wrapA.c "-DSTREAM -DLEN=7" --unroll 8
j 0e5dab9 api_xxh64_len13 wrapA.c "-DLEN=13 -DH64" --unroll 8
# REFINES at unroll 8: re-check with unroll 16
j 5176062 api_xxh64_len40_u16 wrapA.c "$G -DLEN=40 -DH64" --unroll 16
j 5176062 pre_aligned8_xxh64_len63_u16 wrapA.c "$G -DLEN=63 -DH64 -DALIGNED=8" --unroll 16
# 0e5dab9 streaming digest: Z3 'tactic failed' at unroll 8 -> retry unroll 4
for n in 9 12 15 20 27 31; do j 0e5dab9 api_stream64_len${n}_u4 wrapA.c "-DSTREAM -DH64 -DLEN=$n" --unroll 4; done
for n in 31 63; do j 3bb5bb6 api_stream32_len${n}_u4 wrapA.c "-DSTREAM -DLEN=$n" --unroll 4; done
