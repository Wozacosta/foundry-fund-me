// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    function testMinDollar() public view {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsSender() public view {
        console.log(fundMe.i_owner(), msg.sender);
        assertEq(fundMe.i_owner(), address(this));
    }

    function testPriceFeedVersion() public view {
        console.log("HERE");
        uint256 version = fundMe.getVersion();
        console.log(version);
        assertEq(fundMe.getVersion(), 4);
    }
}
