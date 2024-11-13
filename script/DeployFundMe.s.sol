// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    address public fundMe;

    function run() external {
        vm.startBroadcast();
        new FundMe();
        vm.stopBroadcast();
    }

    constructor() {
        fundMe = address(new FundMe());
    }
}
