// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract PoolOld {
    function tickSpacingToMaxLiquidityPerTick(int24 tickSpacing) external pure returns (uint128 result) {
        int24 MAX_TICK = 887272;
        int24 MIN_TICK = -887272;
        assembly ("memory-safe") {
            tickSpacing := signextend(2, tickSpacing)
            let minTick := mul(sdiv(MIN_TICK, tickSpacing), tickSpacing)
            let maxTick := mul(sdiv(MAX_TICK, tickSpacing), tickSpacing)
            let numTicks := add(sdiv(sub(maxTick, minTick), tickSpacing), 1)
            result := div(sub(shl(128, 1), 1), numTicks)
        }
    }
}
