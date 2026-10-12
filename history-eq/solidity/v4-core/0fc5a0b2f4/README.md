# v4-core historical optimization `0fc5a0b2f4`

Commit `0fc5a0b2f44032d5c67816ec9663dd4d02d5dc64` optimizes `Pool.tickSpacingToMaxLiquidityPerTick` by removing multiplication and a second signed division when computing the number of ticks. `source.diff` is the complete production-code change; the other changed files are Foundry gas snapshots. The commit belongs to the fixed-seed v4-core sample.

`PoolOld.sol` and `PoolNew.sol` expose the historical internal pure function as external entry points for Certora EqCheck. `audit.py` compares each wrapper's Yul assembly body with the exact parent/child `Pool.sol` and checks `TickMath.MIN_TICK=-887272`, `MAX_TICK=887272` in both revisions; `source-audit.log` records both matches.

**Verdict: `EQUIV_PARTIAL` for the source-audited function arithmetic; Certora EqCheck remains unverified.** The [exhaustive checker](exhaustive_tick_spacing.cpp) evaluates the old and new `numTicks` expressions for all 16,777,216 possible signed `int24` inputs, including zero and negatives, using EVM's zero-divisor rule and truncation-toward-zero signed division. Its [UBSan run](exhaustive.log) finds equality for every input. Computed quotients, products and counts stay within ±1,774,545, so the 64-bit calculation agrees with the 256-bit EVM word operations; the final division has an identical numerator and denominator on both sides. Together with the source audit, this establishes equal source-level return values for this one function over the full input domain. It does not verify the compiled bytecode or other commit behavior. A direct [Z3 bit-vector query](tick-spacing.smt2) [timed out](tick-spacing-z3.log) at 30 seconds and contributes no proof.

Certora EqCheck compiled both wrappers and generated rules for revert-condition and `uint128` return-value equivalence (`eqcheck-local.log` and generated `.spec`). The configuration explicitly sets `compilation_steps_only: true`. No Certora solver verdict exists: this environment has no `CERTORAKEY` (`checker-gate.log`), which the configured cloud proof requires. The pinned Foundry gas smoke is a baseline run, not a before/after benchmark for this commit.

Reproduce local preparation from the project root:

```sh
python3 history-eq/solidity/v4-core/0fc5a0b2f4/audit.py
g++ -std=c++17 -O0 -Wall -Wextra -fsanitize=undefined -fno-sanitize-recover=all history-eq/solidity/v4-core/0fc5a0b2f4/exhaustive_tick_spacing.cpp -o /tmp/veriop-v4-tick-spacing-check
/tmp/veriop-v4-tick-spacing-check
source benchmarks/env.sh
export PATH="$PWD/benchmarks/tools/solc-bin:$PATH"
benchmarks/tools/certora-venv/bin/certoraEqCheck conf history-eq/solidity/v4-core/0fc5a0b2f4/eq.conf PoolOld:tickSpacingToMaxLiquidityPerTick PoolNew:tickSpacingToMaxLiquidityPerTick
```
