#!/bin/sh
set -eu
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
root=$(CDPATH= cd -- "$here/../../../.." && pwd)
python3 -B "$here/recover.py" > "$here/source-recovery.log"
python3 -B "$here/check_allocator_trace.py" > "$here/source-check.log"
clang -O0 -g -fsanitize=address,undefined -DNATIVE_TEST "$here/allocator_trace.c" -o /tmp/openssl-f99ffceb-trace
ASAN_OPTIONS=detect_leaks=0 /tmp/openssl-f99ffceb-trace
printf '%s\n' 'ASan/UBSan allocation-trace witness passed' > "$here/native-witness.log"
"$root/alive2/toolchain/usr/bin/clang-20" -O2 -emit-llvm -S "$here/allocator_trace.c" -o "$here/allocator_trace.ll"
"$root/alive2/build/alive2/alive-tv" --src-fn=old_free_allocations --tgt-fn=new_free_allocations --always-verify --fail-src-ub "$here/allocator_trace.ll" > "$here/alive2-allocator-trace.log" 2>&1
grep -q 'ERROR: Value mismatch' "$here/alive2-allocator-trace.log"
grep -q 'Source value: #x00000001' "$here/alive2-allocator-trace.log"
grep -q 'Target value: #x00000000' "$here/alive2-allocator-trace.log"
printf '%s\n' 'Exact blobs, sanitizer witness, and Alive2 callback-count mismatch checked'
