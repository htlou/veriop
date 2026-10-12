#!/bin/sh
set -eu
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
root=$(CDPATH= cd -- "$here/../../../.." && pwd)
python3 -B "$here/recover.py" > "$here/source-recovery.log"
python3 -B "$here/check_error_path.py" > "$here/source-check.log"
clang -O0 -g -fsanitize=address,undefined -DNATIVE_TEST "$here/error_path.c" -o /tmp/zstd-4d1a0ef5-witness
ASAN_OPTIONS=detect_leaks=0 /tmp/zstd-4d1a0ef5-witness
printf '%s\n' 'ASan/UBSan witness passed' > "$here/native-witness.log"
"$root/alive2/toolchain/usr/bin/clang-20" -O2 -fno-strict-aliasing -emit-llvm -S "$here/error_path.c" -o "$here/error_path-O2.ll"
"$root/alive2/build/alive2/alive-tv" --src-fn=zstd_old_observe --tgt-fn=zstd_new_observe --always-verify --fail-src-ub --smt-to=45000 "$here/error_path-O2.ll" > "$here/alive2-error-path.log" 2>&1
grep -q 'ERROR: Value mismatch' "$here/alive2-error-path.log"
grep -q 'Target value: #xa5' "$here/alive2-error-path.log"
printf '%s\n' 'Exact blobs, sanitizer witness, and Alive2 value mismatch checked'
