#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../../../.."
case_dir=history-eq/c/xxHash/662b223/layout_diagnostic
test "$(git hash-object history-eq/c/xxHash/662b223/old/xxhash.h)" = b14092f2b5371f2a6eaf18f69b4e17af564a6c27
test "$(git hash-object history-eq/c/xxHash/662b223/new/xxhash.h)" = 66f9116f71040f128d158067bb03b5064df63a32
test "$(GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash rev-parse '662b223^:xxhash.h')" = b14092f2b5371f2a6eaf18f69b4e17af564a6c27
test "$(GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash rev-parse '662b223:xxhash.h')" = 66f9116f71040f128d158067bb03b5064df63a32
clang -std=c11 -O2 -S -emit-llvm -I history-eq/c/xxHash/662b223/old "$case_dir/probe.c" -o "$case_dir/old.ll"
clang -std=c11 -O2 -S -emit-llvm -I history-eq/c/xxHash/662b223/new "$case_dir/probe.c" -o "$case_dir/new.ll"
alive2/build/alive2/alive-tv --always-verify "$case_dir/old.ll" "$case_dir/new.ll" > "$case_dir/alive2.log"
rg -q 'ret i64 520' "$case_dir/old.ll"
rg -q 'ret i64 536' "$case_dir/new.ll"
rg -q 'ret i64 544' "$case_dir/old.ll"
rg -q 'ret i64 528' "$case_dir/new.ll"
rg -q '2 incorrect transformations' "$case_dir/alive2.log"
rg -q '1 correct transformations' "$case_dir/alive2.log"
