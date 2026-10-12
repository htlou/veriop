#!/usr/bin/env bash
# usage: leandiff.sh <short> <tag> -- diff generated Old vs New Lean after normalizing namespace and Source lines
s=$1; tag=$2; Tag=${tag^}
L=/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/lean/C$s
norm() { sed -E "s/L${s}${Tag}(Old|New)/LNS/g; /^    Source: /d; /Source: '/d" "$1"; }
diff <(norm $L/${Tag}Old/${Tag}Old.lean) <(norm $L/${Tag}New/${Tag}New.lean)
