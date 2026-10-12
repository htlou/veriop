#!/bin/sh
set -eu
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
root=$(CDPATH= cd -- "$here/../../../.." && pwd)
rustc="$root/aeneas/env/rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc"
tmpdir=$(mktemp -d /tmp/regex-9c139f-XXXXXX)
trap 'rm -rf "$tmpdir"' EXIT
python3 -B "$here/recover.py" > "$here/recovery-run.log"
mkdir -p "$tmpdir/old" "$tmpdir/new"
GIT_NO_LAZY_FETCH=1 git -C "$root/benchmarks/repos/regex" archive '9c139f4fa5c64a89075749cd5e57148c8eea8c22^' regex-syntax | tar -x -C "$tmpdir/old"
cp -a "$tmpdir/old/regex-syntax" "$tmpdir/new/regex-syntax"
cmp "$here/hir.old.rs" "$tmpdir/old/regex-syntax/src/hir/mod.rs"
cp "$here/hir.new.rs" "$tmpdir/new/regex-syntax/src/hir/mod.rs"

build_crate() {
    side=$1
    "$rustc" --edition=2021 --crate-name "regex_syntax_$side" --crate-type rlib -O \
        --cfg 'feature="std"' --cfg 'feature="unicode"' \
        --cfg 'feature="unicode-age"' --cfg 'feature="unicode-bool"' \
        --cfg 'feature="unicode-case"' --cfg 'feature="unicode-gencat"' \
        --cfg 'feature="unicode-perl"' --cfg 'feature="unicode-script"' \
        --cfg 'feature="unicode-segment"' \
        "$tmpdir/$side/regex-syntax/src/lib.rs" -o "$tmpdir/libregex_syntax_$side.rlib"
}
build_crate old
build_crate new
"$rustc" --version > "$here/rustc-version.log"
"$rustc" --edition=2021 -O "$here/dot_exhaustive.rs" \
    --extern "regex_syntax_old=$tmpdir/libregex_syntax_old.rlib" \
    --extern "regex_syntax_new=$tmpdir/libregex_syntax_new.rlib" \
    -o "$tmpdir/dot_exhaustive"
"$tmpdir/dot_exhaustive" > "$here/dot-exhaustive.log"
grep -q 'PASS: 1112064 Unicode exclusions, 256 byte exclusions, 6 fixed Dot variants' "$here/dot-exhaustive.log"
"$rustc" --edition=2021 -O --cfg negative_control "$here/dot_exhaustive.rs" \
    --extern "regex_syntax_old=$tmpdir/libregex_syntax_old.rlib" \
    --extern "regex_syntax_new=$tmpdir/libregex_syntax_new.rlib" \
    -o "$tmpdir/dot_negative"
if "$tmpdir/dot_negative" > "$here/dot-negative.log" 2>&1; then
    printf '%s\n' 'negative control unexpectedly passed' >&2
    exit 1
fi
grep -q 'assertion `left == right` failed' "$here/dot-negative.log"
printf '%s\n' 'Exact historical crates built; exhaustive Dot comparison and negative control passed'
