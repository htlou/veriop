#!/bin/bash
T=/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_tools
XCF='"-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w"'      # cross-target base flags (no -march)
VCF='"-O3 -march=x86-64-v3 -fno-strict-aliasing -w"'                       # autovectorizer ON, AVX2 machine
VCF1='"-O3 -march=x86-64 -fno-strict-aliasing -w"'                         # autovectorizer ON, SSE2 baseline
CF1='"-O3 -march=x86-64 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w"'  # SSE2 baseline, vectorizer off
SYS="-nostdlibinc -isystem $T/sysinc"
AF="--alive-func target_xxh3_64 --alive-func target_xxh128 --alive-func target_oneshot --alive-func target_stream --alive-func target_symlen --alive-func target_accum --alive-func target_fold64 --alive-func target_acc512 --alive-func target_scramble"
RUN="--smt-to 600000 --timeout 3600"
# j commit unit wrapper "extra" [more alive_check args]
j(){ local r=""; [ $# -gt 4 ] && r=$(printf "%q " "${@:5}"); echo "EXTRA=$(printf %q "$4") $T/xx.sh $1 $2 $T/$3 $RUN $AF $r"; }
X64="-DXXH_VECTOR=0"
# ---------- 8719a6a  s390x zvector port of the VSX path
j 8719a6a api64_len256_avx2 wrapB.c "-DLEN=256"
j 8719a6a api64_len256_s390x wrapB.c "$SYS -DLEN=256" --target s390x-linux-gnu --cflags "$(eval echo $XCF) -march=z14 -mzvector"
j 8719a6a api128_len256_s390x wrapB.c "$SYS -DLEN=256 -DH128" --target s390x-linux-gnu --cflags "$(eval echo $XCF) -march=z14 -mzvector"
j 8719a6a api64_len256_ppc64le wrapB.c "$SYS -DLEN=256" --target powerpc64le-linux-gnu --cflags "$(eval echo $XCF) -mcpu=power8"
# ---------- 1cc9634  prefetch in XXH3_accumulate
for L in 256 1100; do for V in avx2 scalar; do F=""; [ $V = scalar ] && F=$X64
  j 1cc9634 api64_len${L}_$V wrapB.c "-DLEN=$L $F"; j 1cc9634 api128_len${L}_$V wrapB.c "-DLEN=$L -DH128 $F"; done; done
j 1cc9634 raw_accum_nb4_scalar wrapC.c "$X64 -DNBMAX=4 -DACCW=XXH3_acc_64bits" --unroll 8
# ---------- 9b6fa10  scalar accumulate_512 loop
for L in 256 1100; do j 9b6fa10 api64_len${L}_scalar wrapB.c "-DLEN=$L $X64"; j 9b6fa10 api128_len${L}_scalar wrapB.c "-DLEN=$L -DH128 $X64"; done
j 9b6fa10 pre_acc512_64_scalar wrapR.c "$X64 -DACC512=,XXH3_acc_64bits"
j 9b6fa10 pre_acc512_128_scalar wrapR.c "$X64 -DACC512=,XXH3_acc_128bits"
# ---------- c94e68d  better 128-bit multiply; unroll pragma removed; FORCE_MEMORY_ACCESS removed
j c94e68d raw_fold64_x86_64 wrapR.c "-DFOLD=XXH3_mul128_fold64"
j c94e68d raw_fold64_i386 wrapR.c "$SYS -DFOLD=XXH3_mul128_fold64" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4"
j c94e68d raw_fold64_armv7 wrapR.c "$SYS -DFOLD=XXH3_mul128_fold64" --target armv7a-linux-gnueabihf --cflags "$(eval echo $XCF)"
j c94e68d api128_sym4to8_i386 wrapB.c "$SYS -DH128 -DMINLEN=4 -DSYMLEN=8" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4"
j c94e68d api64_sym9to16_i386 wrapB.c "$SYS -DMINLEN=9 -DSYMLEN=16" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4"
j c94e68d api128_sym9to16_i386 wrapB.c "$SYS -DH128 -DMINLEN=9 -DSYMLEN=16" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4"
j c94e68d api64_len256_i386_scalar wrapB.c "$SYS -DLEN=256 $X64" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4"
for L in 256 1100; do j c94e68d api64_len${L}_avx2 wrapB.c "-DLEN=$L"; j c94e68d api64_len${L}_scalar wrapB.c "-DLEN=$L $X64"; done
j c94e68d raw_accum_nb4_scalar wrapC.c "$X64 -DNBMAX=4 -DACCW=XXH3_acc_64bits" --unroll 8
j c94e68d raw_accum_nb4_avx2 wrapC.c "-DNBMAX=4 -DACCW=XXH3_acc_64bits" --unroll 8
for n in 16 17 33; do for a in armv7a armv6; do
  j c94e68d api_xxh32_len${n}_$a wrapA.c "$SYS -DLEN=$n" --target $a-linux-gnueabihf --cflags "$(eval echo $XCF)"
  j c94e68d api_xxh64_len${n}_$a wrapA.c "$SYS -DLEN=$n -DH64" --target $a-linux-gnueabihf --cflags "$(eval echo $XCF)" --unroll 8; done; done
# ---------- 60c7cc7  no unroll pragma on emscripten
for L in 256 1100; do j 60c7cc7 api64_len${L}_wasm wrapB.c "$SYS -DLEN=$L" --target wasm32-unknown-emscripten --cflags "$(eval echo $XCF)"; done
j 60c7cc7 raw_accum_nb4_wasm wrapC.c "$SYS -DNBMAX=4" --target wasm32-unknown-emscripten --cflags "$(eval echo $XCF)" --unroll 8
j 60c7cc7 api64_len256_avx2 wrapB.c "-DLEN=256"
# ---------- d5e42a6 / 1e4aca9  static vs FORCE_INLINE for hashLong_internal_loop (auto-vectorizer)
for c in d5e42a6 1e4aca9; do for L in 256 1100; do
  j $c api64_len${L}_avx2 wrapB.c "-DLEN=$L"
  j $c api64_len${L}_scalar_v3_vecon wrapB.c "-DLEN=$L $X64" --cflags "$(eval echo $VCF)"
  j $c api64_len${L}_scalar_sse2_vecon wrapB.c "-DLEN=$L $X64" --cflags "$(eval echo $VCF1)"
  j $c api128_len${L}_avx2 wrapB.c "-DLEN=$L -DH128"; done; done
# ---------- ac897be  alignment hint (+ last-stripe secret offset -1)
for V in scalar avx2; do F=""; [ $V = scalar ] && F=$X64
  j ac897be api64_len256_$V wrapB.c "-DLEN=256 -DSEED0 $F"; j ac897be api64_len256_seed_$V wrapB.c "-DLEN=256 $F"
  j ac897be api64_len1100_$V wrapB.c "-DLEN=1100 -DSEED0 $F"; j ac897be api64_len16_$V wrapB.c "-DLEN=16 $F"; done
j ac897be api64_len256_scalar_v3_vecon wrapB.c "-DLEN=256 -DSEED0 $X64" --cflags "$(eval echo $VCF)"
j ac897be pre_scramble_scalar wrapR.c "$X64 -DSCRAMBLE"
j ac897be pre_acc512_scalar wrapR.c "$X64 -DACC512="
# ---------- 0ab31bc  fixed perf regression of XXH3_64bits (refactor of hashLong)
for V in avx2 scalar; do F=""; [ $V = scalar ] && F=$X64
  j 0ab31bc api64_seed0_len256_$V wrapB.c "-DLEN=256 -DSEED0 $F"; j 0ab31bc api64_seed_len256_$V wrapB.c "-DLEN=256 $F"
  j 0ab31bc api64_seed0_len100_$V wrapB.c "-DLEN=100 -DSEED0 $F"; j 0ab31bc api64_seed0_len16_$V wrapB.c "-DLEN=16 -DSEED0 $F"
  j 0ab31bc api128_seed_len256_$V wrapB.c "-DLEN=256 -DH128 $F"; done
# ---------- a39b22e  key + n*2 instead of key += 2
for L in 256 1100; do
  j a39b22e api64_len${L}_scalar wrapB.c "-DLEN=$L $X64"; j a39b22e api64_len${L}_avx2 wrapB.c "-DLEN=$L"
  j a39b22e api64_len${L}_scalar_v3_vecon wrapB.c "-DLEN=$L $X64" --cflags "$(eval echo $VCF)"
  j a39b22e api64_len${L}_scalar_sse2_vecon wrapB.c "-DLEN=$L $X64" --cflags "$(eval echo $VCF1)"; done
j a39b22e raw_accum_nb4_scalar wrapC.c "$X64 -DNBMAX=4" --unroll 8
j a39b22e raw_accum_nb4_scalar_v3_vecon wrapC.c "$X64 -DNBMAX=4" --unroll 8 --cflags "$(eval echo $VCF)"
# ---------- 288f7dc  XXH_REROLL
for L in 17 32 33 64 65 96 97 128; do for R in 0 1; do
  j 288f7dc api64_len${L}_reroll$R wrapB.c "-DLEN=$L -DXXH_REROLL=$R"
  j 288f7dc api128_len${L}_reroll$R wrapB.c "-DLEN=$L -DH128 -DXXH_REROLL=$R"; done; done
j 288f7dc api64_sym17to128_reroll1 wrapB.c "-DMINLEN=17 -DSYMLEN=128 -DXXH_REROLL=1" --unroll 4
j 288f7dc api64_sym17to128_reroll0 wrapB.c "-DMINLEN=17 -DSYMLEN=128 -DXXH_REROLL=0" --unroll 4
j 288f7dc api64_len256_reroll1 wrapB.c "-DLEN=256 -DXXH_REROLL=1"
for R in 0 1; do
  j 288f7dc api_xxh32_sym0to15_reroll$R wrapA.c "-DSYMLEN=15 -DXXH_REROLL=$R" --unroll 8
  j 288f7dc api_xxh64_sym0to31_reroll$R wrapA.c "-DSYMLEN=31 -DH64 -DXXH_REROLL=$R" --unroll 8
  for n in 0 3 7 15 16 31 47; do j 288f7dc api_xxh32_len${n}_reroll$R wrapA.c "-DLEN=$n -DXXH_REROLL=$R" --unroll 8; done
  for n in 0 5 12 31 32 63; do j 288f7dc api_xxh64_len${n}_reroll$R wrapA.c "-DLEN=$n -DH64 -DXXH_REROLL=$R" --unroll 8; done
  j 288f7dc api_stream32_len15_reroll$R wrapA.c "-DSTREAM -DLEN=15 -DXXH_REROLL=$R" --unroll 8
  j 288f7dc api_stream64_len31_reroll$R wrapA.c "-DSTREAM -DH64 -DLEN=31 -DXXH_REROLL=$R" --unroll 8; done
for n in 7 31 63; do j 288f7dc api_xxh64_len${n}_i386 wrapA.c "$SYS -DLEN=$n -DH64" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4" --unroll 8; done
# ---------- bf16b4e  xxh128 mix2 shuffle
for V in scalar sse2 avx2; do case $V in scalar) F=$X64;; sse2) F="-DXXH_VECTOR=1";; avx2) F="-DXXH_VECTOR=2";; esac
  j bf16b4e api128_len256_$V wrapB.c "-DLEN=256 -DH128 $F"; j bf16b4e api64_len256_$V wrapB.c "-DLEN=256 $F"; done
# ---------- 11ded56  ARM & scalar improvements
for H in 64 128; do F=""; [ $H = 128 ] && F=-DH128
  j 11ded56 api${H}_len256_scalar wrapB.c "-DLEN=256 $F $X64"; j 11ded56 api${H}_len1100_scalar wrapB.c "-DLEN=1100 $F $X64"
  j 11ded56 api${H}_len256_aarch64_scalar wrapB.c "$SYS -DLEN=256 $F $X64" --target aarch64-linux-gnu --cflags "$(eval echo $XCF)"
  j 11ded56 api${H}_len256_aarch64_neon wrapB.c "$SYS -DLEN=256 $F" --target aarch64-linux-gnu --cflags "$(eval echo $XCF)"
  j 11ded56 api${H}_len256_armv7_neon wrapB.c "$SYS -DLEN=256 $F" --target armv7a-linux-gnueabihf --cflags "$(eval echo $XCF) -mfpu=neon"; done
j 11ded56 pre_acc512_scalar wrapR.c "$X64 -DACC512="
j 11ded56 raw_accum_nb4_aarch64_scalar wrapC.c "$SYS $X64 -DNBMAX=4" --target aarch64-linux-gnu --cflags "$(eval echo $XCF)" --unroll 8
# ---------- 155f560  len 4-8 formula (latency)
for L in 4 5 8; do j 155f560 api64_len$L wrapB.c "-DLEN=$L"; done
j 155f560 api64_sym4to8 wrapB.c "-DMINLEN=4 -DSYMLEN=8"
j 155f560 api64_sym9to16 wrapB.c "-DMINLEN=9 -DSYMLEN=16"
j 155f560 api128_sym4to8 wrapB.c "-DH128 -DMINLEN=4 -DSYMLEN=8"
j 155f560 api64_sym0to3 wrapB.c "-DMINLEN=0 -DSYMLEN=3"
# ---------- e6433e8 / c5953f1  clang unroll pragma on XXH3_accumulate
j e6433e8 api64_len256_avx2 wrapB.c "-DLEN=256"; j e6433e8 api64_len1100_avx2 wrapB.c "-DLEN=1100"; j e6433e8 api64_len256_scalar wrapB.c "-DLEN=256 $X64"
j e6433e8 raw_accum_nb4_avx2 wrapC.c "-DNBMAX=4" --unroll 8; j e6433e8 raw_accum_nb4_scalar wrapC.c "$X64 -DNBMAX=4" --unroll 8
j c5953f1 api64_len256_avx2 wrapB.c "-DLEN=256 -DOLDNAMES"; j c5953f1 api64_len1100_avx2 wrapB.c "-DLEN=1100 -DOLDNAMES"; j c5953f1 api64_len256_scalar wrapB.c "-DLEN=256 -DOLDNAMES $X64"
j c5953f1 raw_accum_nb4_avx2 wrapC.c "-DNBMAX=4" --unroll 8; j c5953f1 raw_accum_nb4_scalar wrapC.c "$X64 -DNBMAX=4" --unroll 8
# ---------- 97952e9  inline-asm fence against clang vectorizing XXH32
for n in 16 32; do j 97952e9 api_xxh32_len$n wrapA.c "-DLEN=$n" --unroll 8; j 97952e9 api_xxh32_len${n}_nosse41 wrapA.c "-DLEN=$n" --unroll 8 --cflags "$(eval echo $CF1)"; done
# ---------- 7558f18  128-bit multiply via 32-bit products; XXH_mult32to64
j 7558f18 raw_mul128_x86_64 wrapR.c "-DFOLD=XXH3_mul128"
j 7558f18 raw_mul128_i386 wrapR.c "$SYS -DFOLD=XXH3_mul128" --target i386-linux-gnu --cflags "$(eval echo $XCF) -march=pentium4"
j 7558f18 raw_mul128_armv7 wrapR.c "$SYS -DFOLD=XXH3_mul128" --target armv7a-linux-gnueabihf --cflags "$(eval echo $XCF)"
for V in scalar avx2; do F=""; [ $V = scalar ] && F=$X64
  j 7558f18 api64_len256_$V wrapB.c "-DLEN=256 -DOLDNAMES $F"; done
j 7558f18 pre_scramble_scalar wrapR.c "$X64 -DSCRAMBLE"
j 7558f18 pre_acc512_scalar wrapR.c "$X64 -DACC512="
j 7558f18 api64_sym4to8 wrapB.c "-DOLDNAMES -DMINLEN=4 -DSYMLEN=8"
j 7558f18 api64_sym1to3 wrapB.c "-DOLDNAMES -DMINLEN=1 -DSYMLEN=3"
j 7558f18 api64_sym9to16 wrapB.c "-DOLDNAMES -DMINLEN=9 -DSYMLEN=16"
j 7558f18 api128_sym4to8 wrapB.c "-DOLDNAMES -DH128 -DMINLEN=4 -DSYMLEN=8"
# ---------- 8d34547  NEON path
j 8d34547 api64_len256_aarch64_neon wrapB.c "$SYS -DLEN=256 -DOLDNAMES -DSEED0" --target aarch64-linux-gnu --cflags "$(eval echo $XCF)"
j 8d34547 api64_len256_avx2 wrapB.c "-DLEN=256 -DOLDNAMES -DSEED0"
# ---------- 021668b  VSX path
j 021668b api64_len256_ppc64le_vsx wrapB.c "$SYS -DLEN=256" --target powerpc64le-linux-gnu --cflags "$(eval echo $XCF) -mcpu=power8"
j 021668b api64_len256_avx2 wrapB.c "-DLEN=256"
# ---------- 0117f18 / 3584844  SSE2 detection on MSVC (emulated with clang windows-msvc targets, __SSE2__ undefined like cl.exe)
for H in 64 128; do F=""; [ $H = 128 ] && F=-DH128
  j 0117f18 api${H}_len256_msvc_x64 wrapB.c "$SYS -U__SSE2__ -DLEN=256 $F" --target x86_64-pc-windows-msvc --cflags "$(eval echo $XCF)"
  j 3584844 api${H}_len256_msvc_x86 wrapB.c "$SYS -U__SSE2__ -DLEN=256 $F" --target i686-pc-windows-msvc --cflags "$(eval echo $XCF) -msse2"
  j 0117f18 api${H}_len256_linux_avx2 wrapB.c "-DLEN=256 $F"; done
# ---------- 8293860  __builtin_rotateleft
for n in 16 33; do j 8293860 api_xxh32_len$n wrapA.c "-DLEN=$n" --unroll 8; j 8293860 api_xxh64_len$n wrapA.c "-DLEN=$n -DH64" --unroll 8; done
j 8293860 api64_len256_avx2 wrapB.c "-DLEN=256"
# ---------- a1da6e2  XXH_FORCE_MEMORY_ACCESS restored (GCC-compatible ARM)
for a in armv7a armv6; do for n in 16 17 33; do
  j a1da6e2 api_xxh32_len${n}_$a wrapA.c "$SYS -DLEN=$n" --target $a-linux-gnueabihf --cflags "$(eval echo $XCF)" --unroll 8
  j a1da6e2 api_xxh64_len${n}_$a wrapA.c "$SYS -DLEN=$n -DH64" --target $a-linux-gnueabihf --cflags "$(eval echo $XCF)" --unroll 8; done
  j a1da6e2 api64_len16_$a wrapB.c "$SYS -DLEN=16" --target $a-linux-gnueabihf --cflags "$(eval echo $XCF)"
  j a1da6e2 api64_len100_$a wrapB.c "$SYS -DLEN=100" --target $a-linux-gnueabihf --cflags "$(eval echo $XCF)"; done
j a1da6e2 api_xxh32_len33_x86_64 wrapA.c "-DLEN=33" --unroll 8
# ---------- 028c0fd  compile-time endianness detection
for n in 16 33; do j 028c0fd api_xxh32_len$n wrapA.c "-DLEN=$n" --unroll 8; j 028c0fd api_xxh64_len$n wrapA.c "-DLEN=$n -DH64" --unroll 8
  j 028c0fd api_xxh32_len${n}_ppc64be wrapA.c "$SYS -DLEN=$n" --target powerpc64-linux-gnu --cflags "$(eval echo $XCF)" --unroll 8
  j 028c0fd api_xxh64_len${n}_ppc64be wrapA.c "$SYS -DLEN=$n -DH64" --target powerpc64-linux-gnu --cflags "$(eval echo $XCF)" --unroll 8; done
j 028c0fd api64_len256_avx2 wrapB.c "-DLEN=256"; j 028c0fd api64_len16_ppc64be wrapB.c "$SYS -DLEN=16" --target powerpc64-linux-gnu --cflags "$(eval echo $XCF)"
j 028c0fd api64_len256_ppc64be wrapB.c "$SYS -DLEN=256" --target powerpc64-linux-gnu --cflags "$(eval echo $XCF)"
