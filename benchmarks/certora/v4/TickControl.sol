// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {TickMath} from "../../repos/v4-core/src/libraries/TickMath.sol";

contract TickControl {
    function maxUsableTick(int24 spacing) external pure returns (int24) {
        return TickMath.maxUsableTick(spacing);
    }
}
