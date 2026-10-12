#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null
export JAVA_HOME="$JAVA17_HOME"
export PATH="$DAFNY410_HOME:$JAVA17_HOME/bin:$PATH"

verify_target() {
  local repo="$1" file="$2" symbol="$3" limit="$4" log="$5"
  (cd "$VERIOP_BENCH_ROOT/repos/$repo" &&
    timeout 150s dafny verify "$file" --cores 2 \
      --unicode-char false --function-syntax 3 --enforce-determinism \
      --allow-deprecation --allow-external-contracts \
      --filter-symbol="$symbol." --verification-time-limit 90 \
      --resource-limit "$limit" --progress Symbol) > "$log" 2>&1
  rg -q -F "Waiting for $symbol to verify" "$log"
  rg -q '^Dafny program verifier finished with 1 verified, 0 errors$' "$log"
}

verify_target aws-encryption-sdk/AwsEncryptionSDK \
  dafny/AwsEncryptionSdk/src/Serialize/Frames.dfy \
  Frames.WriteRegularFrame 10000000 \
  "$VERIOP_BENCH_ROOT/logs/aws-esdk-frame-dafny.log"

verify_target aws-database-encryption-sdk-dynamodb/DynamoDbEncryption \
  dafny/DynamoDbEncryption/src/NormalizeNumber.dfy \
  DynamoDbNormalizeNumber.SkipAllTrailingZeros 20000000 \
  "$VERIOP_BENCH_ROOT/logs/db-esdk-normalize-dafny.log"

printf 'Pinned AWS Encryption SDK frame and DynamoDB number-normalization Dafny obligations passed.\n'
