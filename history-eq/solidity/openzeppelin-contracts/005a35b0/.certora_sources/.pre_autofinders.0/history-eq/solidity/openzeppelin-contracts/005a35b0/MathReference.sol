// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Math} from "./sources/old/Math.sol";
import {SignedMath} from "./sources/old/SignedMath.sol";

contract MathReference {
    function maxUint(uint256 a, uint256 b) external pure returns (uint256) {
        return Math.max(a, b);
    }

    function maxInt(int256 a, int256 b) external pure returns (int256) {
        return SignedMath.max(a, b);
    }
}
