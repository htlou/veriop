#!/usr/bin/env bash
# usage: [KVER=5.6.110] [PLUGIN_SHA=<sha>] kompile_def.sh EVMDIR OUTDIR [extra imports...]
# Builds a haskell-backend kompiled definition (module VERIFICATION = EVM + LEMMAS [+ LEMMAS-HASKELL]) from
# the historical K sources in EVMDIR. Plugin = historical blockchain-k-plugin gitlink (PLUGIN_SHA) when given.
set -uo pipefail
ROOT=/srv/home/hantaolou/code/veriop
source $ROOT/benchmarks/env.sh
TIM="--type-inference-mode simplesub"
if [ -n "${KVER:-}" ]; then
  export PATH=$ROOT/benchmarks/tools/kframework-$KVER/usr/bin:$PATH
  export LD_LIBRARY_PATH=$ROOT/benchmarks/tools/kframework-$KVER/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
  TIM=""
fi
export JAVA_HOME
EVMDIR=$(readlink -f "$1"); OUT=$2; shift 2
mkdir -p "$OUT"; OUT=$(readlink -f "$OUT")
if [ -n "${PLUGIN_SHA:-}" ]; then PLUGIN=$($ROOT/history-eq/tools/gh/k/plugin_dir.sh $PLUGIN_SHA)
else PLUGIN=$ROOT/benchmarks/repos/evm-semantics/kevm-pyk/src/kevm_pyk/kproj/plugin; fi
echo "$PLUGIN" > "$OUT/plugin_dir"; echo "${KVER:-7.1.337}" > "$OUT/kver"
IMPORTS="imports EVM"
REQ='requires "evm.md"'
if [ -f "$EVMDIR/lemmas/lemmas.k" ]; then
  REQ="$REQ"$'\n''requires "lemmas/lemmas.k"'; IMPORTS="$IMPORTS"$'\n    '"imports LEMMAS"
  grep -q "^module LEMMAS-HASKELL" "$EVMDIR/lemmas/lemmas.k" && IMPORTS="$IMPORTS"$'\n    '"imports LEMMAS-HASKELL"
fi
for x in "$@"; do IMPORTS="$IMPORTS"$'\n    '"imports $x"; done
cat > "$OUT/verification.k" <<EOF
$REQ

module VERIFICATION
    $IMPORTS

    syntax KItem ::= runLemmaInt ( Int ) [symbol(runLemmaInt)] | doneLemmaInt ( Int )
                   | runLemmaBool ( Bool ) [symbol(runLemmaBool)] | doneLemmaBool ( Bool )
                   | runLemmaBytes ( Bytes ) [symbol(runLemmaBytes)] | doneLemmaBytes ( Bytes )
 // ---------------------------------------------------------------------------------------
    rule <k> runLemmaInt( T )   => doneLemmaInt( T )   ... </k>
    rule <k> runLemmaBool( T )  => doneLemmaBool( T )  ... </k>
    rule <k> runLemmaBytes( T ) => doneLemmaBytes( T ) ... </k>
endmodule
EOF
mkdir -p "$OUT/inc"; ln -sfn "$PLUGIN/plugin" "$OUT/inc/blockchain-k-plugin"
INC="-I $EVMDIR -I $PLUGIN -I $OUT/inc"
(time kompile "$OUT/verification.k" --main-module VERIFICATION --syntax-module VERIFICATION $INC \
  --md-selector 'k & ! concrete' --hook-namespaces 'JSON KRYPTO' --emit-json --backend haskell \
  --output-definition "$OUT/kompiled" $TIM) > "$OUT/kompile.log" 2>&1
echo $? > "$OUT/kompile.exit"
