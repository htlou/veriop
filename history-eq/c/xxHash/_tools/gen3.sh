#!/bin/bash
T=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_tools
XCF='-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w'
SYS="-nostdlibinc -isystem $T/sysinc"
AF="--alive-func target_xxh32 --alive-func target_xxh32_stream --alive-func target_xxh32_symlen --alive-func target_oneshot --alive-func target_stream --alive-func target_symlen"
RUN="--smt-to 600000 --timeout 3600 --unroll 8"
j(){ local r=""; [ $# -gt 4 ] && r=$(printf "%q " "${@:5}"); echo "$PFX EXTRA=$(printf %q "$4") $T/xx.sh $1 $2 $T/$3 $RUN $AF $r"; }
G="-fgnuc-version=4.3.0"
L32="0 1 3 4 7 15 16 17 31 32 33 47 64"
L64="0 1 4 7 8 15 16 31 32 33 63 64"
PFX=""
# aligned-input / non-null preconditions for the 2013/2014 simple->fast switches
for n in $L32; do j 70e65c9 pre_nonnull_aligned8_len$n wrapA13.c "$G -DLEN=$n -DNONNULL -DALIGNED=8"; j 5176062 pre_aligned8_xxh32_len$n wrapA.c "$G -DLEN=$n -DALIGNED=8"; done
for n in $L64; do j 5176062 pre_aligned8_xxh64_len$n wrapA.c "$G -DLEN=$n -DH64 -DALIGNED=8"; done
# 681ea2a: _rotl only for MSVC (perf on MinGW); aligned fast path on strict-align CPUs
for n in $L32; do
  j 681ea2a api_mingw_len$n wrapA13.c "$SYS $G -fms-extensions -DLEN=$n" --target x86_64-w64-mingw32 --cflags "$XCF"
  j 681ea2a api_x86_64_len$n wrapA13.c "$G -DLEN=$n"
  j 681ea2a api_armv5_len$n wrapA13.c "$SYS $G -DLEN=$n" --target armv5te-linux-gnueabi --cflags "$XCF"; done
# 87ef054: ARM unaligned-access detection -> direct loads, skip alignment branch
for n in $L32; do
  j 87ef054 api_xxh32_x86_64_len$n wrapA.c "$G -DLEN=$n"
  j 87ef054 api_xxh32_armv7_len$n wrapA.c "$SYS $G -DLEN=$n" --target armv7a-linux-gnueabihf --cflags "$XCF"
  j 87ef054 api_xxh32_armv5_len$n wrapA.c "$SYS $G -DLEN=$n" --target armv5te-linux-gnueabi --cflags "$XCF"
  j 87ef054 pre_aligned8_xxh32_armv7_len$n wrapA.c "$SYS $G -DLEN=$n -DALIGNED=8" --target armv7a-linux-gnueabihf --cflags "$XCF"; done
for n in $L64; do
  j 87ef054 api_xxh64_x86_64_len$n wrapA.c "$G -DLEN=$n -DH64"
  j 87ef054 api_xxh64_armv7_len$n wrapA.c "$SYS $G -DLEN=$n -DH64" --target armv7a-linux-gnueabihf --cflags "$XCF"
  j 87ef054 pre_aligned8_xxh64_armv7_len$n wrapA.c "$SYS $G -DLEN=$n -DH64 -DALIGNED=8" --target armv7a-linux-gnueabihf --cflags "$XCF"; done
# 7ad2406: XXH_FORCE_ALIGN_CHECK (renamed/inverted XXH_USELESS_ALIGN_BRANCH)
for n in 0 4 15 16 33; do
  j 7ad2406 api_xxh32_x86_64_len$n wrapA.c "-DLEN=$n"; j 7ad2406 api_xxh64_x86_64_len$n wrapA.c "-DLEN=$n -DH64"
  j 7ad2406 api_xxh32_aarch64_len$n wrapA.c "$SYS -DLEN=$n" --target aarch64-linux-gnu --cflags "$XCF"
  j 7ad2406 api_xxh32_armv5_len$n wrapA.c "$SYS -DLEN=$n" --target armv5te-linux-gnueabi --cflags "$XCF"; done
# inlining-hint commits: forced full inlining (semantics) and clang's own -O3 inlining (NOINL=1)
for c in d2df04e 0e47911 9231e6d; do
  case $c in d2df04e) F="-x c++";; *) F="-DPRIVATE_API";; esac
  for n in 0 4 16 33; do
    PFX=""; j $c api_xxh32_len$n wrapA.c "$F -DLEN=$n"; j $c api_xxh64_len$n wrapA.c "$F -DLEN=$n -DH64"; j $c api_stream32_len$n wrapA.c "$F -DSTREAM -DLEN=$n"
    PFX="NOINL=1"; j $c noinl_xxh32_len$n wrapA.c "$F -DLEN=$n"; j $c noinl_xxh64_len$n wrapA.c "$F -DLEN=$n -DH64"; j $c noinl_stream32_len$n wrapA.c "$F -DSTREAM -DLEN=$n"; done; done
PFX=""
for n in 0 4 16 33; do j 9231e6d api_default_xxh32_len$n wrapA.c "-DLEN=$n"; done
