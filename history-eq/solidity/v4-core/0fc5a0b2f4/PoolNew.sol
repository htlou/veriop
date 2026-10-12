// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract PoolNew {
    function tickSpacingToMaxLiquidityPerTick(int24 tickSpacing) external pure returns (uint128 result) {
        int24 MAX_TICK = 887272;
        int24 MIN_TICK = -887272;
        assembly ("memory-safe") {
            tickSpacing := signextend(2, tickSpacing)
            let minTick := sdiv(MIN_TICK, tickSpacing)
            let maxTick := sdiv(MAX_TICK, tickSpacing)
            let numTicks := add(sub(maxTick, minTick), 1)
            result := div(sub(shl(128, 1), 1), numTicks)
        }
    }
}
