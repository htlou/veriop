// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Math} from "../../repos/openzeppelin-contracts/contracts/utils/math/Math.sol";

contract MathControl {
    function add512(uint256 a, uint256 b) external pure returns (uint256 high, uint256 low) {
        return Math.add512(a, b);
    }
}
