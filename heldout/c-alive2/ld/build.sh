#!/usr/bin/env bash
# libdivide signed (s32/s64) branchfull: build the official test/benchmark_branchfree.cpp
#   stock : unmodified libdivide.h
#   {old,select}_obj : libdivide.h whose s32/s64 do_raw bodies call target_s32/target_s64, linked
#                      with the native object compiled (codegen only) from the Alive2-checked IR
#   {old,select}_lto : same, but checked IR llvm-linked into the benchmark module and optimized
#                      together (allows inlining; post-check optimization is trusted LLVM)
#   patched : libdivide.h with ld/libdivide-signed-select.patch applied (plain build)
set -euo pipefail
H="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"; source "$H/../../alive2/env.sh"
LD="$H/repos/libdivide"; B="$H/ld/build"; IR="$H/ld/ir"; mkdir -p "$B"
F=(-O3 -march=x86-64-v3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize)
CXX=(clang++ --gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11 "${F[@]}" -std=c++17)
python3 - "$LD/libdivide.h" "$B/hdr/libdivide.h" <<'PY'
import sys, pathlib
src, dst = sys.argv[1:]; h = pathlib.Path(src).read_text()
for bits in (32, 64):
    sig = f"static LIBDIVIDE_INLINE int{bits}_t libdivide_s{bits}_do_raw(int{bits}_t numer, int{bits}_t magic, uint8_t more) {{"
    s = h.index(sig); e = h.index("\n}\n", s) + 2
    h = h[:s] + sig + f"\n    return target_s{bits}(numer, magic, more);\n}}" + h[e:]
pre = '#include <stdint.h>\n#ifdef __cplusplus\nextern "C" {\n#endif\nint32_t target_s32(int32_t, int32_t, uint8_t);\nint64_t target_s64(int64_t, int64_t, uint8_t);\n#ifdef __cplusplus\n}\n#endif\n'
p = pathlib.Path(dst); p.parent.mkdir(parents=True, exist_ok=True); p.write_text(pre + h)
PY
"${CXX[@]}" -I "$LD" -I "$LD/test" "$LD/test/benchmark_branchfree.cpp" -o "$B/stock_varying"
"${CXX[@]}" -I "$B/hdr" -I "$LD/test" -S -emit-llvm "$LD/test/benchmark_branchfree.cpp" -o "$B/harness.ll"
for v in old select; do
  clang -O3 -Xclang -disable-llvm-optzns -c "$IR/libdivide_s_$v.ll" -o "$B/libdivide_s_$v.o"
  "${CXX[@]}" -I "$B/hdr" -I "$LD/test" "$LD/test/benchmark_branchfree.cpp" "$B/libdivide_s_$v.o" -o "$B/${v}_obj_varying"
  llvm-link "$B/harness.ll" "$IR/libdivide_s_$v.ll" -o "$B/${v}_lto.bc"
  "${CXX[@]}" "$B/${v}_lto.bc" -o "$B/${v}_lto_varying"
  "${CXX[@]}" -S "$B/${v}_lto.bc" -o "$B/${v}_lto_varying.s"
done
rm -rf "$B/patched-src"; mkdir -p "$B/patched-src"; cp "$LD/libdivide.h" "$B/patched-src/"
(cd "$B/patched-src" && patch -s -p1 < "$H/ld/libdivide-signed-select.patch")
"${CXX[@]}" -I "$B/patched-src" -I "$LD/test" "$LD/test/benchmark_branchfree.cpp" -o "$B/patched_varying"
"${CXX[@]}" -I "$B/patched-src" -I "$LD/test" -S "$LD/test/benchmark_branchfree.cpp" -o "$B/patched_varying.s"
sha256sum "$IR"/*.ll "$B"/*.o "$B"/*_varying
