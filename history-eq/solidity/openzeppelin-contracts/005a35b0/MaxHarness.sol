// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Math as OldMath} from "./sources/old/Math.sol";
import {Math as NewMath} from "./sources/new/Math.sol";
import {SignedMath as OldSignedMath} from "./sources/old/SignedMath.sol";
import {SignedMath as NewSignedMath} from "./sources/new/SignedMath.sol";

contract MaxHarness {
    function checkUnsigned(uint256 a, uint256 b) external pure {
        assert(OldMath.max(a, b) == NewMath.max(a, b));
    }

    function checkSigned(int256 a, int256 b) external pure {
        assert(OldSignedMath.max(a, b) == NewSignedMath.max(a, b));
    }
}
