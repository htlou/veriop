#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../../../.."

case_dir=history-eq/c/xxHash/a4ecded/body-proof
source_dir=history-eq/c/xxHash/a4ecded
clang18=/srv/home/hantaolou/code/tartarus/third_party/env/bin/clang-18
alive=alive2/build/alive2/alive-tv

test -x "$clang18"
test -x "$alive"
test "$(git hash-object "$source_dir/old/xxhash.h")" = 42cba79534bb6b6c5ef0826c716caa50603dc833
test "$(git hash-object "$source_dir/new/xxhash.h")" = b757c4a55cd2646ef53634f8f625f525ce2ecc17
test "$(GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash rev-parse 'a4ecded^:xxhash.h')" = 42cba79534bb6b6c5ef0826c716caa50603dc833
test "$(GIT_NO_LAZY_FETCH=1 git -C history-eq/repos/xxHash rev-parse 'a4ecded:xxhash.h')" = b757c4a55cd2646ef53634f8f625f525ce2ecc17

for side in old new; do
    for opt in O0 O2; do
        flags=(-std=c11 "-$opt")
        if [[ "$opt" == O0 ]]; then flags+=(-Xclang -disable-O0-optnone); fi
        "$clang18" "${flags[@]}" -I "$source_dir/$side" -S -emit-llvm \
            "$case_dir/long_secret.c" -o "$case_dir/$side.$opt.ll"
    done
    sed 's/ nocapture//g; s/ noalias//g' "$case_dir/$side.O0.ll" > "$case_dir/$side.O0.norm.ll"
done

cmp "$case_dir/old.O0.ll" "$case_dir/new.O0.ll"
cmp "$case_dir/old.O2.ll" "$case_dir/new.O2.ll"
! rg -q 'call.*@XXH' "$case_dir/old.O2.ll"

for function in target_64sec192_len256 XXH_INLINE_XXH3_64bits_withSecret XXH3_hashLong_64b_withSecret; do
    for direction in fwd bwd; do
        lhs=old; rhs=new
        if [[ "$direction" == bwd ]]; then lhs=new; rhs=old; fi
        "$alive" --always-verify --smt-to=30000 --func="$function" \
            "$case_dir/$lhs.O0.norm.ll" "$case_dir/$rhs.O0.norm.ll" \
            > "$case_dir/$function.$direction.log"
        rg -q '1 correct transformations' "$case_dir/$function.$direction.log"
        rg -q '0 incorrect transformations' "$case_dir/$function.$direction.log"
        rg -q '0 failed-to-prove transformations' "$case_dir/$function.$direction.log"
        rg -q '0 Alive2 errors' "$case_dir/$function.$direction.log"
    done
done
