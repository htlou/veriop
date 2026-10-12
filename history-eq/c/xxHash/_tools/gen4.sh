#!/bin/bash
T=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_tools
XCF='-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w'
SYS="-nostdlibinc -isystem $T/sysinc"
NA="-mllvm -enable-noalias-to-md-conversion=false"   # sret/noalias params -> no !noalias metadata (unsupported by this Alive2)
AF="--alive-func target_xxh3_64 --alive-func target_xxh128 --alive-func target_oneshot --alive-func target_stream --alive-func target_symlen --alive-func target_accum --alive-func target_fold64 --alive-func target_acc512 --alive-func target_scramble --alive-func target_xxh32 --alive-func target_xxh32_stream"
RUN="--smt-to 600000 --timeout 3600"
j(){ local r=""; [ $# -gt 4 ] && r=$(printf "%q " "${@:5}"); echo "EXTRA=$(printf %q "$4") $T/xx.sh $1 $2 $T/$3 $RUN $AF $r"; }
X64="-DXXH_VECTOR=0"; G="-fgnuc-version=4.3.0"
# MSVC SSE2-detection emulation (stub headers fixed)
for H in 64 128; do F=""; [ $H = 128 ] && F=-DH128
  for L in 256 300; do
  j 0117f18 api${H}_len${L}_msvc_x64 wrapB.c "$SYS -U__SSE2__ -DLEN=$L $F" --target x86_64-pc-windows-msvc --cflags "$XCF"
  j 3584844 api${H}_len${L}_msvc_x86 wrapB.c "$SYS $NA -U__SSE2__ -DLEN=$L $F" --target i686-pc-windows-msvc --cflags "$XCF -msse2"; done; done
# len 300 (not a multiple of the 64-byte stripe: exercises the last-stripe code)
for c in 1cc9634 c94e68d d5e42a6 1e4aca9 a39b22e 11ded56 e6433e8 8719a6a 021668b 8293860 028c0fd 0ab31bc ac897be 9b6fa10 bf16b4e; do
  O=""
  for V in avx2 scalar; do F=""; [ $V = scalar ] && F=$X64
    j $c api64_len300_$V wrapB.c "-DLEN=300 $F $O"; j $c api128_len300_$V wrapB.c "-DLEN=300 -DH128 $F $O"; done; done
for V in avx2 scalar; do F=""; [ $V = scalar ] && F=$X64
  j ac897be api64_seed0_len300_$V wrapB.c "-DLEN=300 -DSEED0 $F"; j 0ab31bc api64_seed0_len300_$V wrapB.c "-DLEN=300 -DSEED0 $F"
  for c in c5953f1 7558f18 8d34547; do j $c api64_len300_$V wrapB.c "-DLEN=300 -DOLDNAMES $F"; done
  j 8d34547 api64_seed0_len300_$V wrapB.c "-DLEN=300 -DOLDNAMES -DSEED0 $F"; done
j bf16b4e api128_len300_sse2 wrapB.c "-DLEN=300 -DH128 -DXXH_VECTOR=1"
j 60c7cc7 api64_len300_wasm wrapB.c "$SYS -DLEN=300" --target wasm32-unknown-emscripten --cflags "$XCF"
# len 1100 (one full block + scramble + partial stripes + last stripe) with loop unrolling
for c in 1cc9634 9b6fa10 c94e68d c5953f1 e6433e8; do for V in avx2 scalar; do F=""; [ $V = scalar ] && F=$X64; O=""; [ $c = c5953f1 ] && O=-DOLDNAMES
  j $c api64_len1100_${V}_u20 wrapB.c "-DLEN=1100 $F $O" --unroll 20; done; done
j 1cc9634 api128_len1100_scalar_u20 wrapB.c "-DLEN=1100 -DH128 $X64" --unroll 20
j 9b6fa10 api128_len1100_scalar_u20 wrapB.c "-DLEN=1100 -DH128 $X64" --unroll 20
j 60c7cc7 api64_len1100_wasm_u20 wrapB.c "$SYS -DLEN=1100" --target wasm32-unknown-emscripten --cflags "$XCF" --unroll 20
j 028c0fd api64_len256_ppc64be_u20 wrapB.c "$SYS -DLEN=256" --target powerpc64-linux-gnu --cflags "$XCF" --unroll 20
# 128-bit on targets that return XXH128_hash_t via sret (noalias -> metadata)
j 8719a6a api128_len256_s390x_na wrapB.c "$SYS $NA -DLEN=256 -DH128" --target s390x-linux-gnu --cflags "$XCF -march=z14 -mzvector"
j 11ded56 api128_len256_armv7_neon_na wrapB.c "$SYS $NA -DLEN=256 -DH128" --target armv7a-linux-gnueabihf --cflags "$XCF -mfpu=neon"
j c94e68d api128_sym4to8_i386_na wrapB.c "$SYS $NA -DH128 -DMINLEN=4 -DSYMLEN=8" --target i386-linux-gnu --cflags "$XCF -march=pentium4"
j c94e68d api128_sym9to16_i386_na wrapB.c "$SYS $NA -DH128 -DMINLEN=9 -DSYMLEN=16" --target i386-linux-gnu --cflags "$XCF -march=pentium4"
j c94e68d api128_len300_i386_scalar_na wrapB.c "$SYS $NA -DLEN=300 -DH128 $X64" --target i386-linux-gnu --cflags "$XCF -march=pentium4"
j c94e68d api64_len300_i386_scalar wrapB.c "$SYS -DLEN=300 $X64" --target i386-linux-gnu --cflags "$XCF -march=pentium4"
# key-alignment precondition for 11ded56 raw units
j 11ded56 pre_acc512_scalar_keyalign8 wrapR.c "$X64 -DACC512= -DKEYALIGN=8"
j 11ded56 raw_accum_nb4_aarch64_scalar_keyalign8 wrapC.c "$SYS $X64 -DNBMAX=4 -DKEYALIGN=8" --target aarch64-linux-gnu --cflags "$XCF" --unroll 8
j 11ded56 raw_accum_nb4_scalar wrapC.c "$X64 -DNBMAX=4" --unroll 8
j 11ded56 raw_accum_nb4_scalar_keyalign8 wrapC.c "$X64 -DNBMAX=4 -DKEYALIGN=8" --unroll 8
