#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../../../.."
case_dir=history-eq/c/xxHash/665424e/secret-bridge
clang18=/srv/home/hantaolou/code/tartarus/third_party/env/bin/clang-18
alive=alive2/build/alive2/alive-tv
test -x "$clang18"
test "$(git hash-object history-eq/c/xxHash/665424e/old/xxhash.h)" = ac2e2408e48c2fdf991d3dd44f35b4fc3e45995a
test "$(git hash-object history-eq/c/xxHash/665424e/new/xxhash.h)" = 1af5961f5040a920634f83c5c755e102e0caa114
test "$(GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash rev-parse '665424e^:xxhash.h')" = ac2e2408e48c2fdf991d3dd44f35b4fc3e45995a
test "$(GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash rev-parse '665424e:xxhash.h')" = 1af5961f5040a920634f83c5c755e102e0caa114
for unit in secret_pair zero_words long_internal; do
  for side in old new; do
    defines=(-DXXH_VECTOR=0)
    if [[ "$side" == new && "$unit" != long_internal ]]; then defines+=(-DGRPC_NEW); fi
    "$clang18" -std=c11 -O2 "${defines[@]}" -I "history-eq/c/xxHash/665424e/$side" -S -emit-llvm "$case_dir/$unit.c" -o "$case_dir/$unit.$side.ll"
    sed 's/ nocapture//g' "$case_dir/$unit.$side.ll" > "$case_dir/$unit.$side.norm.ll"
  done
done
cmp "$case_dir/long_internal.old.ll" "$case_dir/long_internal.new.ll"
for unit in secret_pair zero_words; do
  expected=1
  if [[ "$unit" == zero_words ]]; then expected=24; fi
  for direction in fwd bwd; do
    lhs=old; rhs=new
    if [[ "$direction" == bwd ]]; then lhs=new; rhs=old; fi
    "$alive" --always-verify --smt-to=60000 "$case_dir/$unit.$lhs.norm.ll" "$case_dir/$unit.$rhs.norm.ll" > "$case_dir/$unit.$direction.log"
    rg -q "$expected correct transformations" "$case_dir/$unit.$direction.log"
    rg -q '0 incorrect transformations' "$case_dir/$unit.$direction.log"
    rg -q '0 failed-to-prove transformations' "$case_dir/$unit.$direction.log"
    rg -q '0 Alive2 errors' "$case_dir/$unit.$direction.log"
  done
done
