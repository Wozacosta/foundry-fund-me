// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "lib/forge-std/src/Test.sol";
// import {console} from "lib/forge-std/src/console.sol";

contract FundMeTest is Test {
    uint256 num = 1;
    function setUp() external {
        num = 2;
    }

    function testDemo() public {
        console.log(num);
        assertEq(num, 2);
    }
}
