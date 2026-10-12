#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../../../.." && pwd)"
here="$root/history-eq/rust/regex/6d2b09ed"
rustc="$root/aeneas/env/rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc"
old=e063390a8ff59c3db1c47c4414440837769d7e9c
new=e3051bf3149cc60843f1c2c1b3d707b1d6a04a95

test "$(git hash-object "$here/interval.old.rs")" = "$old"
test "$(git hash-object "$here/interval.new.rs")" = "$new"
"$rustc" --version > "$here/rustc-version.log"

for mode in debug release; do
    out="$(mktemp --tmpdir "regex-6d2b09ed-$mode.XXXXXX")"
    trap 'rm -f "$out"' EXIT
    if [ "$mode" = release ]; then
        "$rustc" --edition=2021 -O "$here/witness.rs" -o "$out"
    else
        "$rustc" --edition=2021 "$here/witness.rs" -o "$out"
    fi
    "$out" > "$here/witness-$mode.log"
    rm -f "$out"
done
cmp "$here/witness-debug.log" "$here/witness-release.log"
cat "$here/witness-debug.log"
