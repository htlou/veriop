#!/usr/bin/env bash
# usage: extract.sh <short> <tag> <side:old|new> "<charon args>" "<cargo args>" ["<aeneas args>"]
# Produces work/<short>/<Tag><Side>.llbc, lean/C<short>/<Tag><Side>/<Tag><Side>.lean (+ olean in lean/build),
# logs work/<short>/<Tag><Side>-{charon,aeneas,lean}.log
set -uo pipefail
H=/srv/home/hantaolou/code/veriop/history-eq
R=$H/rust/rust-base64
source /srv/home/hantaolou/code/veriop/history-eq/rust/rust-base64/scripts/env.sh
# patched Aeneas build from the sibling experiment (includes patches/aeneas-*.patch)
AENEAS=${AENEAS:-/srv/home/hantaolou/code/veriop/aeneas/repos/aeneas/src/_build/default/main.exe}
export RUSTFLAGS="--cap-lints=warn"
s=$1; tag=$2; side=$3; cargs=$4; kargs=$5; aargs=${6:-"-loops-to-rec"}
[ -n "$s" ] && [ -n "$tag" ] && [ -n "$side" ] || { echo "bad args"; exit 9; }
W=$R/work/$s; mkdir -p "$W"
Side=${side^}; Tag=${tag^}
name="${Tag}${Side}"
ns="B${s}${Tag}${Side}"
dest="$R/lean/C$s/$name"
mkdir -p "$dest"
rm -f "$dest/$name.lean"
llbc="$W/$name.llbc"
rm -f "$llbc"
( cd "$H/wt/base64-$s-$side" && eval charon cargo --preset=aeneas --dest-file "$llbc" $cargs -- --lib $kargs ) > "$W/$name-charon.log" 2>&1
rc=$?; echo "charon exit $rc" >> "$W/$name-charon.log"
if [ ! -f "$llbc" ]; then echo "$s $tag $side: CHARON FAIL: $(grep -m1 -E '^error' "$W/$name-charon.log")"; exit 1; fi
eval "$AENEAS" -backend lean $aargs -no-progress-bar -namespace "$ns" -dest "$dest" "$llbc" > "$W/$name-aeneas.log" 2>&1
rc=$?; echo "aeneas exit $rc" >> "$W/$name-aeneas.log"
if grep -q 'Generated the partial file' "$W/$name-aeneas.log" || [ $rc -ne 0 ]; then
  echo "$s $tag $side: AENEAS FAIL: $(grep -m1 -A1 'Error' "$W/$name-aeneas.log" | tr '\n' ' ')"; exit 2; fi
f="C$s/$name/$name.lean"
"$R/scripts/lchk.sh" "$f" "C$s/$name/$name" > "$W/$name-lean.log" 2>&1
rc=$?; echo "lean exit $rc" >> "$W/$name-lean.log"
if [ $rc -ne 0 ]; then echo "$s $tag $side: LEAN FAIL: $(grep -m1 'error' "$W/$name-lean.log")"; exit 3; fi
if ! grep -q "^def \|^@\[\|^  def\|^def" "$R/lean/$f"; then echo "$s $tag $side: EMPTY (start-from matched nothing)"; exit 4; fi
echo "$s $tag $side: OK (external axioms: $(grep '^axiom' "$R/lean/$f" | awk '{print $2}' | tr '\n' ' '))"
